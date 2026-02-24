import 'dart:async';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'prompt_dialogs.dart';

/// Tracks cumulative foreground usage time and triggers review/donation prompts.
///
/// Two independent timers:
/// - Review: triggers at 60 min. Reset to 0 on dismiss, killed on "never show".
/// - Donation: triggers at 300 min. Same logic.
class AppUsageService with WidgetsBindingObserver {
  AppUsageService({required this.navigatorKey});

  final GlobalKey<NavigatorState> navigatorKey;

  static const _reviewMinutesKey = 'review_usage_minutes';
  static const _donationMinutesKey = 'donation_usage_minutes';
  static const _reviewNeverShowKey = 'review_never_show';
  static const _donationNeverShowKey = 'donation_never_show';

  static const _reviewThreshold = 60; // 1 hour
  static const _donationThreshold = 300; // 5 hours

  DateTime? _sessionStart;
  Timer? _checkTimer;
  bool _promptShownThisSession = false;
  bool _disposed = false;

  // Cached prefs state
  int _reviewMinutes = 0;
  int _donationMinutes = 0;
  bool _reviewNeverShow = false;
  bool _donationNeverShow = false;

  /// Initialize: load persisted state, register observer, start periodic check.
  Future<void> init() async {
    final prefs = await SharedPreferences.getInstance();
    _reviewMinutes = prefs.getInt(_reviewMinutesKey) ?? 0;
    _donationMinutes = prefs.getInt(_donationMinutesKey) ?? 0;
    _reviewNeverShow = prefs.getBool(_reviewNeverShowKey) ?? false;
    _donationNeverShow = prefs.getBool(_donationNeverShowKey) ?? false;

    WidgetsBinding.instance.addObserver(this);
    _sessionStart = DateTime.now();

    // Check every 5 minutes while in foreground
    _checkTimer = Timer.periodic(const Duration(minutes: 5), (_) {
      _flushAndCheck();
    });
  }

  /// Clean up resources.
  void dispose() {
    _disposed = true;
    _checkTimer?.cancel();
    _checkTimer = null;
    WidgetsBinding.instance.removeObserver(this);
    // Flush any remaining time
    _flushElapsed();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (_disposed) return;
    switch (state) {
      case AppLifecycleState.resumed:
        _sessionStart = DateTime.now();
      case AppLifecycleState.paused:
      case AppLifecycleState.inactive:
      case AppLifecycleState.detached:
      case AppLifecycleState.hidden:
        _flushElapsed();
    }
  }

  /// Add elapsed foreground time to both active timers and persist.
  Future<void> _flushElapsed() async {
    if (_sessionStart == null) return;
    final elapsed = DateTime.now().difference(_sessionStart!).inMinutes;
    _sessionStart = DateTime.now(); // reset for next flush

    if (elapsed <= 0) return;

    final prefs = await SharedPreferences.getInstance();

    if (!_reviewNeverShow) {
      _reviewMinutes += elapsed;
      await prefs.setInt(_reviewMinutesKey, _reviewMinutes);
    }

    if (!_donationNeverShow) {
      _donationMinutes += elapsed;
      await prefs.setInt(_donationMinutesKey, _donationMinutes);
    }
  }

  /// Flush elapsed time and check thresholds.
  Future<void> _flushAndCheck() async {
    if (_disposed) return;
    await _flushElapsed();
    _checkThresholds();
  }

  /// Evaluate thresholds and show a prompt if warranted.
  void _checkThresholds() {
    if (_disposed || _promptShownThisSession) return;

    final context = navigatorKey.currentContext;
    if (context == null) return;

    // Review has priority
    if (!_reviewNeverShow && _reviewMinutes >= _reviewThreshold) {
      _promptShownThisSession = true;
      _showReview(context);
      return;
    }

    if (!_donationNeverShow && _donationMinutes >= _donationThreshold) {
      _promptShownThisSession = true;
      _showDonation(context);
    }
  }

  Future<void> _showReview(BuildContext context) async {
    final result = await PromptDialogs.showReviewPrompt(context);
    final prefs = await SharedPreferences.getInstance();

    if (result == 'action' || result == 'never') {
      // Permanently dismiss
      _reviewNeverShow = true;
      await prefs.setBool(_reviewNeverShowKey, true);
      await prefs.remove(_reviewMinutesKey);
    } else {
      // "Not Now" or barrier dismiss → reset timer to 0
      _reviewMinutes = 0;
      await prefs.setInt(_reviewMinutesKey, 0);
    }
  }

  Future<void> _showDonation(BuildContext context) async {
    final result = await PromptDialogs.showDonationPrompt(context);
    final prefs = await SharedPreferences.getInstance();

    if (result == 'action' || result == 'never') {
      // Permanently dismiss
      _donationNeverShow = true;
      await prefs.setBool(_donationNeverShowKey, true);
      await prefs.remove(_donationMinutesKey);
    } else {
      // "Not Now" or barrier dismiss → reset timer to 0
      _donationMinutes = 0;
      await prefs.setInt(_donationMinutesKey, 0);
    }
  }
}
