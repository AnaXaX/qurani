class HadithCollection {
  final String id;
  final String name;
  final String nameArabic;
  final String author;
  final int hadithCount;
  final List<HadithBook> books;

  const HadithCollection({
    required this.id,
    required this.name,
    required this.nameArabic,
    required this.author,
    required this.hadithCount,
    required this.books,
  });
}

class HadithBook {
  final int bookNumber;
  final String name;
  final String nameArabic;
  final List<Hadith> hadiths;

  const HadithBook({
    required this.bookNumber,
    required this.name,
    required this.nameArabic,
    required this.hadiths,
  });
}

class Hadith {
  final int number;
  final String arabic;
  final String translation;
  final String narrator;
  final HadithGrade grade;

  const Hadith({
    required this.number,
    required this.arabic,
    required this.translation,
    required this.narrator,
    required this.grade,
  });
}

enum HadithGrade {
  sahih('Sahih', 'صحيح'),
  hasan('Hasan', 'حسن'),
  daif('Da\'if', 'ضعيف');

  final String name;
  final String nameArabic;

  const HadithGrade(this.name, this.nameArabic);
}
