import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../shared/widgets/feature_tile.dart';
import '../../../../shared/widgets/gradient_header.dart';
import '../../../azkar/presentation/screens/azkar_screen.dart';
import '../../../prayer_times/presentation/screens/prayer_times_screen.dart';
import '../../../prayer_times/presentation/screens/qibla_screen.dart';
import '../../../prayer_times/presentation/screens/hijri_screen.dart';
import '../../../donate/presentation/screens/donate_screen.dart';
import '../../../hifz/presentation/screens/hifz_setup_screen.dart';
import '../../../reading_plans/presentation/screens/khatmah_screen.dart';
import '../../../duas/presentation/screens/duas_screen.dart';
import '../../../ahkam/presentation/screens/ahkam_screen.dart';
import '../../../ahadith/presentation/screens/ahadith_screen.dart';
import 'settings_screen.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          GradientHeader(
            gradient: isDark
                ? AppColors.gradientGreenDark
                : AppColors.gradientGreen,
            height: 140,
            showMosque: true,
            padding: EdgeInsets.fromLTRB(
              24, MediaQuery.of(context).padding.top + 12, 24, 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'More',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white.withAlpha(230),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Explore all features',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white.withAlpha(170),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                // Feature grid — 3 columns, 3 rows
                GridView.count(
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  childAspectRatio: 0.85,
                  children: [
                    FeatureTile(
                      icon: Icons.access_time_rounded,
                      label: 'Prayer',
                      color: AppColors.accentPrayer,
                      onTap: () => _push(context, const PrayerTimesScreen()),
                    ),
                    FeatureTile(
                      icon: Icons.auto_awesome_rounded,
                      label: 'Azkar',
                      color: AppColors.accentAzkar,
                      onTap: () => _push(context, const AzkarScreen()),
                    ),
                    FeatureTile(
                      icon: Icons.explore_rounded,
                      label: 'Qibla',
                      color: AppColors.accentQibla,
                      onTap: () => _push(context, const QiblaScreen()),
                    ),
                    FeatureTile(
                      icon: Icons.calendar_month_rounded,
                      label: 'Hijri',
                      color: AppColors.accentHijri,
                      onTap: () => _push(context, const HijriScreen()),
                    ),
                    FeatureTile(
                      icon: Icons.menu_book_rounded,
                      label: 'Hifz',
                      color: AppColors.accentHifz,
                      onTap: () => _push(context, const HifzSetupScreen()),
                    ),
                    FeatureTile(
                      icon: Icons.track_changes_rounded,
                      label: 'Khatmah',
                      color: AppColors.accentKhatmah,
                      onTap: () => _push(context, const KhatmahScreen()),
                    ),
                    FeatureTile(
                      icon: Icons.volunteer_activism_rounded,
                      label: "Du'as",
                      color: AppColors.accentDua,
                      onTap: () => _push(context, const DuasScreen()),
                    ),
                    FeatureTile(
                      icon: Icons.gavel_rounded,
                      label: 'Ahkam',
                      color: AppColors.accentAhkam,
                      onTap: () => _push(context, const AhkamScreen()),
                    ),
                    FeatureTile(
                      icon: Icons.auto_stories_rounded,
                      label: 'Ahadith',
                      color: AppColors.accentAhadith,
                      onTap: () => _push(context, const AhadithScreen()),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                // Settings
                ListTile(
                  leading: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Theme.of(context)
                          .colorScheme
                          .primaryContainer
                          .withAlpha(77),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(Icons.settings_rounded,
                        color: Theme.of(context).colorScheme.primary),
                  ),
                  title: const Text('Settings'),
                  subtitle: const Text('Theme, language, audio preferences'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () => _push(context, const SettingsScreen()),
                ),
                const Divider(),
                ListTile(
                  leading: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.pink.withAlpha(26),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child:
                        const Icon(Icons.favorite_rounded, color: Colors.pink),
                  ),
                  title: const Text('Support Qurani'),
                  subtitle: const Text(
                      'Help keep this app free - Sadaqah Jariyah'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () => _push(context, const DonateScreen()),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _push(BuildContext context, Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => screen));
  }

}
