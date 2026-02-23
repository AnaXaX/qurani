import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../../core/constants/app_colors.dart';
import '../../data/models/hadith.dart';

class HadithListScreen extends StatelessWidget {
  final HadithBook book;
  final String collectionName;

  const HadithListScreen({
    super.key,
    required this.book,
    required this.collectionName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(book.name)),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: book.hadiths.length,
        itemBuilder: (context, index) {
          final hadith = book.hadiths[index];
          return _HadithCard(
            hadith: hadith,
            collectionName: collectionName,
          );
        },
      ),
    );
  }
}

class _HadithCard extends StatelessWidget {
  final Hadith hadith;
  final String collectionName;

  const _HadithCard({
    required this.hadith,
    required this.collectionName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.shadow.withAlpha(8),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Header row
          Row(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: AppColors.accentAhadith.withAlpha(20),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  '#${hadith.number}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: AppColors.accentAhadith,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              _GradeBadge(grade: hadith.grade),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Clipboard.setData(ClipboardData(
                    text:
                        '${hadith.arabic}\n\n${hadith.translation}\n\nNarrated by: ${hadith.narrator}\n— $collectionName #${hadith.number}',
                  ));
                  ScaffoldMessenger.of(context)
                    ..clearSnackBars()
                    ..showSnackBar(const SnackBar(
                      content: Text('Hadith copied'),
                      duration: Duration(seconds: 1),
                      behavior: SnackBarBehavior.floating,
                    ));
                },
                child: Icon(
                  Icons.copy_rounded,
                  size: 18,
                  color: Theme.of(context)
                      .colorScheme
                      .onSurface
                      .withAlpha(120),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          // Arabic text
          Text(
            hadith.arabic,
            style: const TextStyle(
              fontFamily: 'AmiriQuran',
              fontSize: 20,
              height: 2.0,
            ),
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          Divider(
            color: Theme.of(context).colorScheme.outline.withAlpha(40),
          ),
          const SizedBox(height: 8),
          // Translation
          Text(
            hadith.translation,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  height: 1.5,
                  color: Theme.of(context)
                      .colorScheme
                      .onSurface
                      .withAlpha(200),
                ),
          ),
          const SizedBox(height: 12),
          // Narrator
          Text(
            'Narrated by: ${hadith.narrator}',
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  fontStyle: FontStyle.italic,
                  color: AppColors.accentAhadith.withAlpha(180),
                ),
          ),
        ],
      ),
    );
  }
}

class _GradeBadge extends StatelessWidget {
  final HadithGrade grade;

  const _GradeBadge({required this.grade});

  @override
  Widget build(BuildContext context) {
    final color = switch (grade) {
      HadithGrade.sahih => AppColors.success,
      HadithGrade.hasan => AppColors.warning,
      HadithGrade.daif => AppColors.error,
    };

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      decoration: BoxDecoration(
        color: color.withAlpha(20),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: color.withAlpha(60)),
      ),
      child: Text(
        grade.name,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 11,
          color: color,
        ),
      ),
    );
  }
}
