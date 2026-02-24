import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../shared/widgets/gradient_header.dart';
import '../../data/models/azkar_models.dart';
import 'azkar_detail_screen.dart';

class AzkarScreen extends StatefulWidget {
  const AzkarScreen({super.key});

  @override
  State<AzkarScreen> createState() => _AzkarScreenState();
}

class _AzkarScreenState extends State<AzkarScreen> {
  String _searchQuery = '';

  List<AzkarCategory> get _filteredCategories {
    if (_searchQuery.isEmpty) return azkarCategories;
    final q = _searchQuery.toLowerCase();
    return azkarCategories
        .where((c) =>
            c.name.toLowerCase().contains(q) ||
            c.nameArabic.contains(_searchQuery))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    final categories = _filteredCategories;

    return Scaffold(
      body: Column(
        children: [
          GradientHeader(
            gradient:
                isDark ? AppColors.gradientGoldDark : AppColors.gradientGold,
            height: 160,
            padding: EdgeInsets.fromLTRB(
              24, MediaQuery.of(context).padding.top + 8, 24, 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child:
                          const Icon(Icons.arrow_back, color: Colors.white),
                    ),
                    const SizedBox(width: 12),
                    Text(
                      'Azkar',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white.withAlpha(230),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Text(
                  'حصن المسلم',
                  style: TextStyle(
                    fontFamily: 'AmiriQuran',
                    fontSize: 20,
                    color: Colors.white.withAlpha(200),
                  ),
                  textDirection: TextDirection.rtl,
                ),
                Text(
                  '${azkarCategories.length} categories • Hisn al-Muslim',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.white.withAlpha(160),
                  ),
                ),
              ],
            ),
          ),
          // Search bar
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 4),
            child: TextField(
              onChanged: (v) => setState(() => _searchQuery = v),
              decoration: InputDecoration(
                hintText: 'Search categories...',
                prefixIcon: const Icon(Icons.search_rounded, size: 20),
                filled: true,
                fillColor:
                    Theme.of(context).colorScheme.surfaceContainerHighest,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(vertical: 12),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: categories.length,
              itemBuilder: (context, index) {
                final category = categories[index];
                return Card(
                  margin: const EdgeInsets.only(bottom: 8),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 8),
                    leading: Container(
                      width: 44,
                      height: 44,
                      decoration: BoxDecoration(
                        color: category.color.withAlpha(26),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(category.icon, color: category.color),
                    ),
                    title: Text(
                      category.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.w600, fontSize: 14),
                    ),
                    subtitle: Text(
                      category.nameArabic,
                      style: const TextStyle(
                          fontFamily: 'AmiriQuran', fontSize: 14),
                      textDirection: TextDirection.rtl,
                    ),
                    trailing: const Icon(Icons.chevron_right, size: 20),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) =>
                              AzkarDetailScreen(category: category),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
