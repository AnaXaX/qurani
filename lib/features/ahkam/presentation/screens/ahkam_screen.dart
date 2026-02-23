import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../shared/widgets/gradient_header.dart';
import '../../data/ahkam_data.dart';
import '../../data/models/hukm.dart';
import 'ahkam_topic_screen.dart';

const _iconMap = <IconType, IconData>{
  IconType.taharah: Icons.water_drop_rounded,
  IconType.salah: Icons.mosque_rounded,
  IconType.sawm: Icons.nights_stay_rounded,
  IconType.zakat: Icons.volunteer_activism_rounded,
  IconType.hajj: Icons.landscape_rounded,
  IconType.nikah: Icons.favorite_rounded,
  IconType.food: Icons.restaurant_rounded,
  IconType.daily: Icons.wb_sunny_rounded,
};

class AhkamScreen extends StatelessWidget {
  const AhkamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          GradientHeader(
            gradient: isDark
                ? AppColors.gradientCyanDark
                : AppColors.gradientCyan,
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
                      'Ahkam',
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
                  'الأحكام الفقهية',
                  style: TextStyle(
                    fontFamily: 'AmiriQuran',
                    fontSize: 20,
                    color: Colors.white.withAlpha(200),
                  ),
                  textDirection: TextDirection.rtl,
                ),
                Text(
                  '${ahkamCategories.length} categories • 4 madhabs',
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
            itemCount: ahkamCategories.length,
            itemBuilder: (context, index) {
              final category = ahkamCategories[index];
              final icon = _iconMap[category.icon] ?? Icons.gavel_rounded;

              return Card(
                margin: const EdgeInsets.only(bottom: 12),
                child: ListTile(
                  contentPadding: const EdgeInsets.all(16),
                  leading: Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      color: AppColors.accentAhkam.withAlpha(26),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(icon, color: AppColors.accentAhkam),
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
                      color: AppColors.accentAhkam.withAlpha(20),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      '${category.topics.length}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.accentAhkam,
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => AhkamTopicScreen(category: category),
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
