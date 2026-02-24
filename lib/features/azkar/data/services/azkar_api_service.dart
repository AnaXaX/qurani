import '../../../../core/network/api_client.dart';

/// A single dhikr item parsed from the HisnMuslim API.
class AzkarItem {
  final int itemId;
  final String arabicText;
  final int repeatCount;
  final String audioUrl;

  const AzkarItem({
    required this.itemId,
    required this.arabicText,
    required this.repeatCount,
    required this.audioUrl,
  });
}

class AzkarApiService {
  final ApiClient _client;

  AzkarApiService({required ApiClient client}) : _client = client;

  /// Fetch all azkar for a specific category from HisnMuslim API.
  /// Response format: {"title": [{ ID, ARABIC_TEXT, REPEAT, AUDIO }]}
  Future<List<AzkarItem>> fetchAzkarForCategory(int categoryId) async {
    final response = await _client.hisnMuslimDio.get(
      '/api/ar/$categoryId.json',
    );
    final data = response.data as Map<String, dynamic>;

    // The response has a single key (the category title in Arabic) whose value is the list
    final items = data.values.first as List;

    return items.map((item) {
      final map = item as Map<String, dynamic>;
      return AzkarItem(
        itemId: map['ID'] as int? ?? 0,
        arabicText: map['ARABIC_TEXT'] as String? ?? '',
        repeatCount: map['REPEAT'] as int? ?? 1,
        audioUrl: map['AUDIO'] as String? ?? '',
      );
    }).toList();
  }
}
