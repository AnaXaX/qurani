import 'package:adhan_dart/adhan_dart.dart' as adhan;
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../core/services/notification_service.dart';
import 'prayer_reminder_provider.dart';

// Maps prayer name to notification ID
const _prayerNotificationIds = {
  'Fajr': NotificationService.fajrId,
  'Dhuhr': NotificationService.dhuhrId,
  'Asr': NotificationService.asrId,
  'Maghrib': NotificationService.maghribId,
  'Isha': NotificationService.ishaId,
};

class PrayerReminderService {
  PrayerReminderService._();

  /// Schedule reminders for all enabled prayers using current location.
  /// Call this when: app opens, prayer times recalculated, settings change.
  static Future<void> scheduleAllReminders(
    PrayerReminderSettings settings,
  ) async {
    final prefs = await SharedPreferences.getInstance();
    final lat = prefs.getDouble('prayer_lat');
    final lng = prefs.getDouble('prayer_lng');
    if (lat == null || lng == null) {
      debugPrint('PrayerReminderService: No saved coordinates, skipping');
      return;
    }

    final methodName = prefs.getString('prayer_calc_method') ?? 'Muslim World League';
    final params = _getCalcParams(methodName);

    await _scheduleForDate(lat, lng, params, settings, DateTime.now());

    // Also schedule tomorrow's prayers (especially Fajr)
    final tomorrow = DateTime.now().add(const Duration(days: 1));
    await _scheduleForDate(lat, lng, params, settings, tomorrow);
  }

  static Future<void> _scheduleForDate(
    double lat,
    double lng,
    adhan.CalculationParameters params,
    PrayerReminderSettings settings,
    DateTime date,
  ) async {
    final coordinates = adhan.Coordinates(lat, lng);
    final dateOnly = DateTime(date.year, date.month, date.day);
    params.madhab = adhan.Madhab.shafi;

    final prayerTimes = adhan.PrayerTimes(
      coordinates: coordinates,
      date: dateOnly,
      calculationParameters: params,
    );

    final timeMap = {
      'Fajr': prayerTimes.fajr.toLocal(),
      'Dhuhr': prayerTimes.dhuhr.toLocal(),
      'Asr': prayerTimes.asr.toLocal(),
      'Maghrib': prayerTimes.maghrib.toLocal(),
      'Isha': prayerTimes.isha.toLocal(),
    };

    final ns = NotificationService.instance;

    for (final prayer in reminderPrayers) {
      final id = _prayerNotificationIds[prayer]!;
      final prayerTime = timeMap[prayer]!;

      if (!settings.isEnabled(prayer)) {
        await ns.cancel(id);
        continue;
      }

      final offset = settings.getOffset(prayer);
      final scheduledTime = offset > 0
          ? prayerTime.subtract(Duration(minutes: offset))
          : prayerTime;

      await ns.schedulePrayerReminder(
        id: id,
        prayerName: prayer,
        prayerNameArabic: prayerArabicName(prayer),
        scheduledTime: scheduledTime,
        offsetMinutes: offset,
      );
    }
  }

  /// Cancel all prayer reminders.
  static Future<void> cancelAll() async {
    await NotificationService.instance.cancelAllPrayerReminders();
  }

  static adhan.CalculationParameters _getCalcParams(String methodName) {
    final methods = <String, adhan.CalculationParameters Function()>{
      'Muslim World League': adhan.CalculationMethodParameters.muslimWorldLeague,
      'Egyptian': adhan.CalculationMethodParameters.egyptian,
      'Karachi': adhan.CalculationMethodParameters.karachi,
      'Umm Al-Qura': adhan.CalculationMethodParameters.ummAlQura,
      'Dubai': adhan.CalculationMethodParameters.dubai,
      'North America (ISNA)': adhan.CalculationMethodParameters.northAmerica,
      'Kuwait': adhan.CalculationMethodParameters.kuwait,
      'Qatar': adhan.CalculationMethodParameters.qatar,
      'Singapore': adhan.CalculationMethodParameters.singapore,
      'Turkey': adhan.CalculationMethodParameters.turkiye,
      'Tehran': adhan.CalculationMethodParameters.tehran,
      'Morocco': adhan.CalculationMethodParameters.morocco,
    };
    return (methods[methodName] ??
        adhan.CalculationMethodParameters.muslimWorldLeague)();
  }
}
