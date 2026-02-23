class DuaCategory {
  final String id;
  final String title;
  final String titleArabic;
  final String icon;
  final List<Dua> duas;

  const DuaCategory({
    required this.id,
    required this.title,
    required this.titleArabic,
    required this.icon,
    required this.duas,
  });
}

class Dua {
  final String arabic;
  final String transliteration;
  final String translation;
  final String reference;
  final int repeatCount;

  const Dua({
    required this.arabic,
    required this.transliteration,
    required this.translation,
    required this.reference,
    this.repeatCount = 1,
  });
}
