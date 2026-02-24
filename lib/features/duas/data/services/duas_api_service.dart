import '../../../../core/network/api_client.dart';

/// A single dua item parsed from the HisnMuslim API.
class DuaItem {
  final int itemId;
  final String arabicText;
  final int repeatCount;

  const DuaItem({
    required this.itemId,
    required this.arabicText,
    required this.repeatCount,
  });
}

class DuasApiService {
  final ApiClient _client;

  DuasApiService({required ApiClient client}) : _client = client;

  /// Fetch all du'as for a specific HisnMuslim category.
  Future<List<DuaItem>> fetchDuasForCategory(int categoryId) async {
    final response = await _client.hisnMuslimDio.get(
      '/api/ar/$categoryId.json',
    );
    final data = response.data as Map<String, dynamic>;
    final items = data.values.first as List;

    return items.map((item) {
      final map = item as Map<String, dynamic>;
      return DuaItem(
        itemId: map['ID'] as int? ?? 0,
        arabicText: map['ARABIC_TEXT'] as String? ?? '',
        repeatCount: map['REPEAT'] as int? ?? 1,
      );
    }).toList();
  }
}
