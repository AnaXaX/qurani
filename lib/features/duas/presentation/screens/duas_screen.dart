import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../shared/widgets/gradient_header.dart';
import '../../data/duas_data.dart';
import 'dua_list_screen.dart';

/// Icon mapping for dua categories.
const _categoryIcons = <String, IconData>{
  'morning': Icons.wb_sunny_rounded,
  'evening': Icons.nightlight_round,
  'sleep': Icons.bedtime_rounded,
  'waking': Icons.alarm_rounded,
  'mosque': Icons.mosque_rounded,
  'eating': Icons.restaurant_rounded,
  'travel': Icons.flight_rounded,
  'rain': Icons.water_drop_rounded,
  'healing': Icons.healing_rounded,
  'forgiveness': Icons.favorite_rounded,
  'parents': Icons.family_restroom_rounded,
  'difficulty': Icons.support_rounded,
};

class DuasScreen extends StatelessWidget {
  const DuasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          GradientHeader(
            gradient: isDark
                ? AppColors.gradientWarmDark
                : AppColors.gradientWarm,
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
                      child: const Icon(Icons.arrow_back, color: Colors.white),
                    ),
                    const SizedBox(width: 12),
                    Text(
                      "Du'as",
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
                  'الأدعية المأثورة',
                  style: TextStyle(
                    fontFamily: 'AmiriQuran',
                    fontSize: 20,
                    color: Colors.white.withAlpha(200),
                  ),
                  textDirection: TextDirection.rtl,
                ),
                Text(
                  '${duaCategories.length} categories',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.white.withAlpha(160),
                  ),
                ),
              ],
            ),
          ),
          ListView.builder(
            padding: const EdgeInsets.all(16),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: duaCategories.length,
            itemBuilder: (context, index) {
              final category = duaCategories[index];
              final icon = _categoryIcons[category.icon] ?? Icons.star_rounded;

              return Card(
                margin: const EdgeInsets.only(bottom: 12),
                child: ListTile(
                  contentPadding: const EdgeInsets.all(16),
                  leading: Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      color: AppColors.accentDua.withAlpha(26),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(icon, color: AppColors.accentDua),
                  ),
                  title: Text(
                    category.title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    category.titleArabic,
                    style: const TextStyle(
                        fontFamily: 'AmiriQuran', fontSize: 16),
                    textDirection: TextDirection.rtl,
                  ),
                  trailing: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: AppColors.accentDua.withAlpha(20),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      '${category.duas.length}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.accentDua,
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>
                            DuaListScreen(category: category),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
