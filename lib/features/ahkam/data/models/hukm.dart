class AhkamCategory {
  final String id;
  final String title;
  final String titleArabic;
  final IconType icon;
  final List<AhkamTopic> topics;

  const AhkamCategory({
    required this.id,
    required this.title,
    required this.titleArabic,
    required this.icon,
    required this.topics,
  });
}

/// Icon identifier for categories (mapped to Material icons in the UI).
enum IconType {
  taharah,
  salah,
  sawm,
  zakat,
  hajj,
  nikah,
  food,
  daily,
}

class AhkamTopic {
  final String title;
  final String titleArabic;
  final String summary;
  final List<MadhabRuling> rulings;
  final List<String> keyPoints;

  const AhkamTopic({
    required this.title,
    required this.titleArabic,
    required this.summary,
    required this.rulings,
    required this.keyPoints,
  });
}

class MadhabRuling {
  final Madhab madhab;
  final String ruling;
  final String dalil;

  const MadhabRuling({
    required this.madhab,
    required this.ruling,
    required this.dalil,
  });
}

enum Madhab {
  hanafi('Hanafi', 'حنفي'),
  maliki('Maliki', 'مالكي'),
  shafii("Shafi'i", 'شافعي'),
  hanbali('Hanbali', 'حنبلي');

  final String name;
  final String nameArabic;

  const Madhab(this.name, this.nameArabic);
}
