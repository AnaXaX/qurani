import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/router/route_names.dart';
import '../../../../shared/widgets/gradient_header.dart';
import '../../../../shared/widgets/feature_tile.dart';
import '../../../azkar/presentation/screens/azkar_screen.dart';
import '../../../bookmarks/presentation/providers/bookmark_providers.dart';
import '../../../prayer_times/presentation/screens/prayer_times_screen.dart';
import '../../../quran/data/models/surah_info.dart';
import '../../../quran/presentation/screens/reading_screen.dart';

/// A curated list of well-known ayahs for the Daily Ayah card.
/// Each entry: (arabic, translation, reference)
const _dailyAyahs = [
  (
    'إِنَّ مَعَ ٱلْعُسْرِ يُسْرًا',
    'Indeed, with hardship comes ease.',
    'Ash-Sharh (94:6)',
  ),
  (
    'وَمَن يَتَوَكَّلْ عَلَى ٱللَّهِ فَهُوَ حَسْبُهُۥ',
    'And whoever relies upon Allah - then He is sufficient for him.',
    'At-Talaq (65:3)',
  ),
  (
    'فَٱذْكُرُونِىٓ أَذْكُرْكُمْ',
    'So remember Me; I will remember you.',
    'Al-Baqarah (2:152)',
  ),
  (
    'وَلَسَوْفَ يُعْطِيكَ رَبُّكَ فَتَرْضَىٰٓ',
    'And your Lord is going to give you, and you will be satisfied.',
    'Ad-Duha (93:5)',
  ),
  (
    'رَبِّ ٱشْرَحْ لِى صَدْرِى',
    'My Lord, expand for me my breast.',
    'Ta-Ha (20:25)',
  ),
  (
    'وَقُل رَّبِّ زِدْنِى عِلْمًا',
    'And say, "My Lord, increase me in knowledge."',
    'Ta-Ha (20:114)',
  ),
  (
    'إِنَّ ٱللَّهَ مَعَ ٱلصَّـٰبِرِينَ',
    'Indeed, Allah is with the patient.',
    'Al-Baqarah (2:153)',
  ),
  (
    'وَهُوَ مَعَكُمْ أَيْنَ مَا كُنتُمْ',
    'And He is with you wherever you are.',
    'Al-Hadid (57:4)',
  ),
  (
    'لَا يُكَلِّفُ ٱللَّهُ نَفْسًا إِلَّا وُسْعَهَا',
    'Allah does not burden a soul beyond that it can bear.',
    'Al-Baqarah (2:286)',
  ),
  (
    'أَلَا بِذِكْرِ ٱللَّهِ تَطْمَئِنُّ ٱلْقُلُوبُ',
    'Verily, in the remembrance of Allah do hearts find rest.',
    'Ar-Ra\'d (13:28)',
  ),
  (
    'وَنَحْنُ أَقْرَبُ إِلَيْهِ مِنْ حَبْلِ ٱلْوَرِيدِ',
    'And We are closer to him than his jugular vein.',
    'Qaf (50:16)',
  ),
  (
    'وَإِذَا سَأَلَكَ عِبَادِى عَنِّى فَإِنِّى قَرِيبٌ',
    'And when My servants ask you about Me - indeed I am near.',
    'Al-Baqarah (2:186)',
  ),
  (
    'قُلْ هُوَ ٱللَّهُ أَحَدٌ',
    'Say, "He is Allah, the One."',
    'Al-Ikhlas (112:1)',
  ),
  (
    'وَمَا تَوْفِيقِىٓ إِلَّا بِٱللَّهِ',
    'And my success is not but through Allah.',
    'Hud (11:88)',
  ),
];

class DashboardScreen extends ConsumerWidget {
  const DashboardScreen({super.key});

  String _greeting() {
    final hour = DateTime.now().hour;
    if (hour < 5) return 'السلام عليكم';
    if (hour < 12) return 'صباح الخير';
    if (hour < 17) return 'مساء الخير';
    return 'مساء النور';
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lastPosition = ref.watch(lastReadingPositionProvider);
    final isDark = Theme.of(context).brightness == Brightness.dark;

    // Pick daily ayah based on day of year (changes every day)
    final now = DateTime.now();
    final dayOfYear = now.difference(DateTime(now.year)).inDays;
    final dailyAyah = _dailyAyahs[dayOfYear % _dailyAyahs.length];

    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          // Gradient sky header with greeting + daily ayah
          GradientHeader(
            gradient: isDark
                ? AppColors.gradientSkyDark
                : AppColors.gradientSky,
            height: 260,
            showMosque: true,
            padding: EdgeInsets.fromLTRB(
              24,
              MediaQuery.of(context).padding.top + 16,
              24,
              24,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Qurani',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white.withAlpha(230),
                      ),
                    ),
                    Text(
                      _greeting(),
                      style: TextStyle(
                        fontFamily: 'AmiriQuran',
                        fontSize: 18,
                        color: Colors.white.withAlpha(200),
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                  ],
                ),
                const Spacer(),
                // Daily ayah in header
                Center(
                  child: Text(
                    dailyAyah.$1,
                    style: TextStyle(
                      fontFamily: 'AmiriQuran',
                      fontSize: 22,
                      color: Colors.white.withAlpha(240),
                      height: 1.8,
                    ),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 8),
                Center(
                  child: Text(
                    '"${dailyAyah.$2}"',
                    style: TextStyle(
                      fontSize: 13,
                      fontStyle: FontStyle.italic,
                      color: Colors.white.withAlpha(180),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 4),
                Center(
                  child: Text(
                    dailyAyah.$3,
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.white.withAlpha(140),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(16, 20, 16, 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Continue Reading card
                lastPosition.when(
                  data: (position) {
                    if (position == null) return const SizedBox.shrink();

                    final surah = SurahInfo.all.firstWhere(
                      (s) => s.number == position.surahId,
                      orElse: () => SurahInfo.all.first,
                    );

                    return _ContinueReadingCard(
                      surah: surah,
                      ayahNumber: position.ayahNumber,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => ReadingScreen(
                              surah: surah,
                              initialAyah: position.ayahNumber,
                            ),
                          ),
                        );
                      },
                    );
                  },
                  loading: () => const SizedBox.shrink(),
                  error: (_, __) => const SizedBox.shrink(),
                ),
                const SizedBox(height: 24),

                // Feature grid
                Text(
                  'Features',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 16),
                GridView.count(
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 8,
                  childAspectRatio: 0.85,
                  children: [
                    FeatureTile(
                      icon: Icons.menu_book_rounded,
                      label: 'Quran',
                      color: AppColors.accentQuran,
                      onTap: () => context.go(RouteNames.quran),
                    ),
                    FeatureTile(
                      icon: Icons.headphones_rounded,
                      label: 'Listen',
                      color: AppColors.accentListen,
                      onTap: () => context.go(RouteNames.listen),
                    ),
                    FeatureTile(
                      icon: Icons.school_rounded,
                      label: 'Tajweed',
                      color: AppColors.accentTajweed,
                      onTap: () => context.go(RouteNames.learn),
                    ),
                    FeatureTile(
                      icon: Icons.auto_awesome_rounded,
                      label: 'Azkar',
                      color: AppColors.accentAzkar,
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const AzkarScreen()),
                      ),
                    ),
                    FeatureTile(
                      icon: Icons.access_time_rounded,
                      label: 'Prayer',
                      color: AppColors.accentPrayer,
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const PrayerTimesScreen()),
                      ),
                    ),
                    FeatureTile(
                      icon: Icons.more_horiz_rounded,
                      label: 'More',
                      color: Theme.of(context).colorScheme.onSurface.withAlpha(150),
                      onTap: () => context.go(RouteNames.more),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _ContinueReadingCard extends StatelessWidget {
  final SurahInfo surah;
  final int ayahNumber;
  final VoidCallback onTap;

  const _ContinueReadingCard({
    required this.surah,
    required this.ayahNumber,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final progress = ayahNumber / surah.ayahCount;

    return Card(
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primaryContainer,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.play_arrow_rounded,
                      color: Theme.of(context).colorScheme.onPrimaryContainer,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Continue Reading',
                          style:
                              Theme.of(context).textTheme.labelMedium?.copyWith(
                                    color: Theme.of(context).colorScheme.primary,
                                  ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          surah.nameTransliteration,
                          style:
                              Theme.of(context).textTheme.titleMedium?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                        Text(
                          'Ayah $ayahNumber of ${surah.ayahCount}',
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onSurface
                                        .withAlpha(153),
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    surah.nameArabic,
                    style: const TextStyle(
                      fontFamily: 'AmiriQuran',
                      fontSize: 22,
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                ],
              ),
              const SizedBox(height: 12),
              // Progress bar
              ClipRRect(
                borderRadius: BorderRadius.circular(4),
                child: LinearProgressIndicator(
                  value: progress.clamp(0.0, 1.0),
                  minHeight: 4,
                  backgroundColor: Theme.of(context)
                      .colorScheme
                      .primaryContainer
                      .withAlpha(100),
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
