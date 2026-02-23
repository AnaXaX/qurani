import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../data/models/hadith.dart';
import 'hadith_list_screen.dart';

class HadithCollectionScreen extends StatelessWidget {
  final HadithCollection collection;

  const HadithCollectionScreen({super.key, required this.collection});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(collection.name)),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: collection.books.length,
        itemBuilder: (context, index) {
          final book = collection.books[index];

          return Card(
            margin: const EdgeInsets.only(bottom: 8),
            child: ListTile(
              leading: Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: AppColors.accentAhadith.withAlpha(20),
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: Text(
                  '${book.bookNumber}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: AppColors.accentAhadith,
                    fontSize: 13,
                  ),
                ),
              ),
              title: Text(
                book.name,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
              subtitle: Text(
                book.nameArabic,
                style: const TextStyle(fontFamily: 'AmiriQuran', fontSize: 14),
                textDirection: TextDirection.rtl,
              ),
              trailing: Text(
                '${book.hadiths.length}',
                style: TextStyle(
                  color: Theme.of(context)
                      .colorScheme
                      .onSurface
                      .withAlpha(140),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => HadithListScreen(
                      book: book,
                      collectionName: collection.name,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
