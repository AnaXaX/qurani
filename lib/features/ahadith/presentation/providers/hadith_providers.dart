import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/database/app_database.dart';
import '../../../quran/presentation/providers/quran_providers.dart';
import '../../data/repositories/hadith_repository.dart';
import '../../data/services/hadith_api_service.dart';

final hadithApiServiceProvider = Provider((ref) {
  return HadithApiService(client: ref.watch(apiClientProvider));
});

final hadithRepositoryProvider = Provider((ref) {
  return HadithRepository(
    db: ref.watch(databaseProvider),
    api: ref.watch(hadithApiServiceProvider),
  );
});

/// Provides sections for a given collection key.
final hadithSectionsProvider =
    FutureProvider.family<List<CachedHadithSection>, String>(
  (ref, collectionKey) {
    return ref.watch(hadithRepositoryProvider).getSections(collectionKey);
  },
);

/// Provides hadiths for a given collection + section.
final hadithListProvider = FutureProvider.family<List<CachedHadith>,
    ({String collectionKey, int sectionNumber})>(
  (ref, params) {
    return ref.watch(hadithRepositoryProvider).getHadithsForSection(
          params.collectionKey,
          params.sectionNumber,
        );
  },
);
