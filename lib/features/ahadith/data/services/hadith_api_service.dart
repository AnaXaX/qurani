import '../../../../core/network/api_client.dart';

/// Metadata for a hadith collection (hardcoded, not from API).
class HadithCollectionInfo {
  final String key; // e.g. 'bukhari'
  final String name;
  final String nameArabic;
  final String author;
  final int hadithCount;

  const HadithCollectionInfo({
    required this.key,
    required this.name,
    required this.nameArabic,
    required this.author,
    required this.hadithCount,
  });
}

/// Section metadata parsed from the API.
class HadithSectionInfo {
  final int sectionNumber;
  final String name;
  final int hadithStartNumber;
  final int hadithEndNumber;

  const HadithSectionInfo({
    required this.sectionNumber,
    required this.name,
    required this.hadithStartNumber,
    required this.hadithEndNumber,
  });
}

/// A single hadith parsed from the API.
class HadithData {
  final int hadithNumber;
  final String textArabic;
  final String textEnglish;

  const HadithData({
    required this.hadithNumber,
    required this.textArabic,
    required this.textEnglish,
  });
}

/// The 6 major hadith collections.
const hadithCollections = [
  HadithCollectionInfo(
    key: 'bukhari',
    name: 'Sahih al-Bukhari',
    nameArabic: 'صحيح البخاري',
    author: 'Imam al-Bukhari',
    hadithCount: 7563,
  ),
  HadithCollectionInfo(
    key: 'muslim',
    name: 'Sahih Muslim',
    nameArabic: 'صحيح مسلم',
    author: 'Imam Muslim',
    hadithCount: 7453,
  ),
  HadithCollectionInfo(
    key: 'abudawud',
    name: 'Sunan Abu Dawud',
    nameArabic: 'سنن أبي داود',
    author: 'Imam Abu Dawud',
    hadithCount: 5274,
  ),
  HadithCollectionInfo(
    key: 'tirmidhi',
    name: "Jami' at-Tirmidhi",
    nameArabic: 'جامع الترمذي',
    author: 'Imam at-Tirmidhi',
    hadithCount: 3956,
  ),
  HadithCollectionInfo(
    key: 'nasai',
    name: "Sunan an-Nasa'i",
    nameArabic: 'سنن النسائي',
    author: "Imam an-Nasa'i",
    hadithCount: 5758,
  ),
  HadithCollectionInfo(
    key: 'ibnmajah',
    name: 'Sunan Ibn Majah',
    nameArabic: 'سنن ابن ماجه',
    author: 'Imam Ibn Majah',
    hadithCount: 4341,
  ),
];

class HadithApiService {
  final ApiClient _client;

  HadithApiService({required ApiClient client}) : _client = client;

  /// Fetch all section metadata for a collection.
  /// Uses the minified endpoint for smaller payloads.
  Future<List<HadithSectionInfo>> fetchSections(String collectionKey) async {
    final response = await _client.hadithApiDio.get(
      '/editions/eng-$collectionKey.min.json',
    );
    final data = response.data as Map<String, dynamic>;
    final metadata = data['metadata'] as Map<String, dynamic>;
    final sections = metadata['sections'] as Map<String, dynamic>;
    final sectionDetails =
        metadata['section_detail'] as Map<String, dynamic>? ?? {};

    final result = <HadithSectionInfo>[];
    for (final entry in sections.entries) {
      final num = int.tryParse(entry.key);
      if (num == null || num == 0) continue; // skip section 0 (empty)
      final name = entry.value as String;
      if (name.isEmpty) continue;

      final detail = sectionDetails[entry.key] as Map<String, dynamic>?;
      result.add(HadithSectionInfo(
        sectionNumber: num,
        name: name,
        hadithStartNumber:
            (detail?['hadithnumber_first'] as int?) ?? 0,
        hadithEndNumber:
            (detail?['hadithnumber_last'] as int?) ?? 0,
      ));
    }

    result.sort((a, b) => a.sectionNumber.compareTo(b.sectionNumber));
    return result;
  }

  /// Fetch hadiths for a specific section (Arabic + English).
  Future<List<HadithData>> fetchHadithsForSection(
      String collectionKey, int sectionNumber) async {
    // Fetch Arabic and English in parallel
    final responses = await Future.wait([
      _client.hadithApiDio
          .get('/editions/ara-$collectionKey/sections/$sectionNumber.json'),
      _client.hadithApiDio
          .get('/editions/eng-$collectionKey/sections/$sectionNumber.json'),
    ]);

    final arabicData = responses[0].data as Map<String, dynamic>;
    final englishData = responses[1].data as Map<String, dynamic>;

    final arabicHadiths = arabicData['hadiths'] as List;
    final englishHadiths = englishData['hadiths'] as List;

    // Build a map of english hadiths by number for quick lookup
    final englishMap = <int, String>{};
    for (final h in englishHadiths) {
      englishMap[h['hadithnumber'] as int] = h['text'] as String? ?? '';
    }

    return arabicHadiths.map((h) {
      final num = h['hadithnumber'] as int;
      return HadithData(
        hadithNumber: num,
        textArabic: h['text'] as String? ?? '',
        textEnglish: englishMap[num] ?? '',
      );
    }).toList();
  }
}
