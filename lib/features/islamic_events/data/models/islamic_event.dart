class IslamicEvent {
  final String name;
  final String nameArabic;
  final int hijriDay;
  final int hijriMonth;
  final bool isMajor;
  final String? description;

  // Computed field — set after creation
  DateTime? gregorianDate;
  int? daysUntil;

  IslamicEvent({
    required this.name,
    required this.nameArabic,
    required this.hijriDay,
    required this.hijriMonth,
    required this.isMajor,
    this.description,
    this.gregorianDate,
    this.daysUntil,
  });
}
