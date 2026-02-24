import '../../../core/utils/hijri_utils.dart';
import 'models/islamic_event.dart';

// Static list of recurring Islamic events (fixed Hijri dates).
// This is the offline fallback — always available, no API needed.
final _staticEvents = [
  IslamicEvent(
    name: 'Islamic New Year',
    nameArabic: 'رأس السنة الهجرية',
    hijriDay: 1,
    hijriMonth: 1,
    isMajor: true,
    description: 'First day of Muharram, the Islamic new year',
  ),
  IslamicEvent(
    name: 'Ashura',
    nameArabic: 'عاشوراء',
    hijriDay: 10,
    hijriMonth: 1,
    isMajor: true,
    description: 'Day of fasting, 10th of Muharram',
  ),
  IslamicEvent(
    name: 'Mawlid an-Nabi',
    nameArabic: 'المولد النبوي',
    hijriDay: 12,
    hijriMonth: 3,
    isMajor: true,
    description: 'Birth of the Prophet Muhammad (PBUH)',
  ),
  IslamicEvent(
    name: 'Isra wal Mi\'raj',
    nameArabic: 'الإسراء والمعراج',
    hijriDay: 27,
    hijriMonth: 7,
    isMajor: true,
    description: 'The Night Journey and Ascension',
  ),
  IslamicEvent(
    name: 'Mid-Sha\'ban',
    nameArabic: 'ليلة النصف من شعبان',
    hijriDay: 15,
    hijriMonth: 8,
    isMajor: false,
    description: 'Night of forgiveness',
  ),
  IslamicEvent(
    name: 'Start of Ramadan',
    nameArabic: 'بداية رمضان',
    hijriDay: 1,
    hijriMonth: 9,
    isMajor: true,
    description: 'First day of the holy month of fasting',
  ),
  IslamicEvent(
    name: 'Laylat al-Qadr',
    nameArabic: 'ليلة القدر',
    hijriDay: 27,
    hijriMonth: 9,
    isMajor: true,
    description: 'The Night of Power, better than a thousand months',
  ),
  IslamicEvent(
    name: 'Eid al-Fitr',
    nameArabic: 'عيد الفطر',
    hijriDay: 1,
    hijriMonth: 10,
    isMajor: true,
    description: 'Festival of breaking the fast',
  ),
  IslamicEvent(
    name: 'Day of Arafah',
    nameArabic: 'يوم عرفة',
    hijriDay: 9,
    hijriMonth: 12,
    isMajor: true,
    description: 'Standing at Arafat during Hajj',
  ),
  IslamicEvent(
    name: 'Eid al-Adha',
    nameArabic: 'عيد الأضحى',
    hijriDay: 10,
    hijriMonth: 12,
    isMajor: true,
    description: 'Festival of sacrifice',
  ),
];

class IslamicEventsService {
  IslamicEventsService._();

  /// Get upcoming events sorted by proximity, with Gregorian dates computed.
  static List<IslamicEvent> getUpcomingEvents({int limit = 10}) {
    final now = DateTime.now();
    final hijriToday = gregorianToHijri(now);
    final currentYear = hijriToday.year;

    final events = <IslamicEvent>[];

    // Check current year and next year events
    for (final year in [currentYear, currentYear + 1]) {
      for (final template in _staticEvents) {
        final gregorianDate = hijriToGregorian(
          year,
          template.hijriMonth,
          template.hijriDay,
        );
        final daysUntil = gregorianDate.difference(now).inDays;

        // Include events from today onwards (up to ~400 days ahead)
        if (daysUntil >= -1) {
          events.add(IslamicEvent(
            name: template.name,
            nameArabic: template.nameArabic,
            hijriDay: template.hijriDay,
            hijriMonth: template.hijriMonth,
            isMajor: template.isMajor,
            description: template.description,
            gregorianDate: gregorianDate,
            daysUntil: daysUntil < 0 ? 0 : daysUntil,
          ));
        }
      }
    }

    // Sort by date, nearest first
    events.sort((a, b) => (a.daysUntil ?? 999).compareTo(b.daysUntil ?? 999));

    // Deduplicate (same event name from different years)
    final seen = <String>{};
    final unique = <IslamicEvent>[];
    for (final event in events) {
      if (seen.add(event.name)) {
        unique.add(event);
      }
    }

    return unique.take(limit).toList();
  }

  /// Get today's Islamic event, if any.
  static IslamicEvent? getTodayEvent() {
    final events = getUpcomingEvents(limit: 20);
    for (final event in events) {
      if (event.daysUntil == 0) return event;
    }
    return null;
  }

  /// Get the next major event with countdown.
  static IslamicEvent? getNextMajorEvent() {
    final events = getUpcomingEvents(limit: 20);
    for (final event in events) {
      if (event.isMajor && (event.daysUntil ?? 0) > 0) return event;
    }
    return null;
  }

  /// Get Hijri month name for a given month number (1-12).
  static String getHijriMonthName(int month) {
    return hijriMonthNames[(month - 1).clamp(0, 11)];
  }
}
