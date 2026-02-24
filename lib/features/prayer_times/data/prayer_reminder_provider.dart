import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Prayer names that support reminders (no sunrise)
const reminderPrayers = ['Fajr', 'Dhuhr', 'Asr', 'Maghrib', 'Isha'];

const _arabicNames = {
  'Fajr': 'الفجر',
  'Dhuhr': 'الظهر',
  'Asr': 'العصر',
  'Maghrib': 'المغرب',
  'Isha': 'العشاء',
};

String prayerArabicName(String name) => _arabicNames[name] ?? name;

class PrayerReminderSettings {
  final Map<String, bool> enabled;
  final Map<String, int> offsetMinutes; // 0 = at prayer time

  const PrayerReminderSettings({
    this.enabled = const {},
    this.offsetMinutes = const {},
  });

  bool isEnabled(String prayer) => enabled[prayer] ?? false;
  int getOffset(String prayer) => offsetMinutes[prayer] ?? 0;

  PrayerReminderSettings copyWith({
    Map<String, bool>? enabled,
    Map<String, int>? offsetMinutes,
  }) {
    return PrayerReminderSettings(
      enabled: enabled ?? this.enabled,
      offsetMinutes: offsetMinutes ?? this.offsetMinutes,
    );
  }
}

class PrayerReminderSettingsNotifier
    extends StateNotifier<PrayerReminderSettings> {
  PrayerReminderSettingsNotifier() : super(const PrayerReminderSettings()) {
    _load();
  }

  Future<void> _load() async {
    final prefs = await SharedPreferences.getInstance();
    final enabled = <String, bool>{};
    final offsets = <String, int>{};

    for (final prayer in reminderPrayers) {
      enabled[prayer] =
          prefs.getBool('prayer_reminder_${prayer}_enabled') ?? false;
      offsets[prayer] =
          prefs.getInt('prayer_reminder_${prayer}_offset') ?? 0;
    }

    state = PrayerReminderSettings(
      enabled: enabled,
      offsetMinutes: offsets,
    );
  }

  Future<void> togglePrayer(String prayer) async {
    final current = state.isEnabled(prayer);
    final newEnabled = Map<String, bool>.from(state.enabled);
    newEnabled[prayer] = !current;
    state = state.copyWith(enabled: newEnabled);

    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('prayer_reminder_${prayer}_enabled', !current);
  }

  Future<void> setOffset(String prayer, int minutes) async {
    final newOffsets = Map<String, int>.from(state.offsetMinutes);
    newOffsets[prayer] = minutes;
    state = state.copyWith(offsetMinutes: newOffsets);

    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('prayer_reminder_${prayer}_offset', minutes);
  }
}

final prayerReminderSettingsProvider = StateNotifierProvider<
    PrayerReminderSettingsNotifier, PrayerReminderSettings>(
  (ref) => PrayerReminderSettingsNotifier(),
);
