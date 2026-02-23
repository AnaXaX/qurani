import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../quran/data/models/surah_info.dart';
import '../providers/audio_providers.dart';
import '../screens/full_player_screen.dart';

/// Persistent mini audio player shown at the bottom of the app.
/// Height: 56dp. Tap to expand to full player.
///
/// Uses `.select()` on audio state to avoid rebuilding the entire widget
/// on every position tick (~200ms). Metadata (surah, reciter) rebuilds only
/// when track changes; progress and play button are isolated via Consumer.
class MiniPlayerWidget extends ConsumerWidget {
  const MiniPlayerWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hasTrack = ref.watch(
      currentAudioStateProvider.select((s) => s.hasTrack),
    );

    if (!hasTrack) return const SizedBox.shrink();

    final currentSurah = ref.watch(
      currentAudioStateProvider.select((s) => s.currentSurah),
    );
    final reciterName = ref.watch(
      currentAudioStateProvider.select((s) => s.reciterName),
    );

    final surahName = currentSurah != null
        ? SurahInfo.all
            .firstWhere(
              (s) => s.number == currentSurah,
              orElse: () => SurahInfo.all.first,
            )
            .nameTransliteration
        : 'Unknown';

    return Semantics(
      label: 'Mini player: $surahName. Tap to open full player',
      button: true,
      child: GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const FullPlayerScreen()),
        );
      },
      child: Container(
        height: 64,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceContainerHighest,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.shadow.withAlpha(20),
              blurRadius: 8,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: Column(
          children: [
          // Thin progress line at top
          Consumer(builder: (context, ref, _) {
            final position = ref.watch(
              currentAudioStateProvider.select((s) => s.position),
            );
            final duration = ref.watch(
              currentAudioStateProvider.select((s) => s.duration),
            );
            final progress = duration.inMilliseconds > 0
                ? (position.inMilliseconds / duration.inMilliseconds).clamp(0.0, 1.0)
                : 0.0;
            return ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
              child: LinearProgressIndicator(
                value: progress,
                minHeight: 2,
                backgroundColor: Colors.transparent,
                valueColor: AlwaysStoppedAnimation<Color>(
                  Theme.of(context).colorScheme.primary,
                ),
              ),
            );
          }),
          Expanded(child: Row(
          children: [
            const SizedBox(width: 16),
            // Surah info (rebuilds only on track change)
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    surahName,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  if (reciterName != null)
                    Text(
                      reciterName,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Theme.of(context)
                                .colorScheme
                                .onSurface
                                .withAlpha(153),
                          ),
                      overflow: TextOverflow.ellipsis,
                    ),
                ],
              ),
            ),
            // Play/Pause button (isolated — rebuilds on play state only)
            Consumer(builder: (context, ref, _) {
              final isPlaying = ref.watch(
                currentAudioStateProvider.select((s) => s.isPlaying),
              );
              final isLoading = ref.watch(
                currentAudioStateProvider.select((s) => s.isLoading),
              );
              final isBuffering = ref.watch(
                currentAudioStateProvider.select((s) => s.isBuffering),
              );
              return IconButton(
                icon: Icon(
                  isLoading || isBuffering
                      ? Icons.hourglass_top_rounded
                      : isPlaying
                          ? Icons.pause_rounded
                          : Icons.play_arrow_rounded,
                ),
                tooltip: isPlaying ? 'Pause' : 'Play',
                onPressed: () {
                  ref.read(audioPlayerServiceProvider).togglePlayPause();
                },
              );
            }),
            // Close button (no audio state dependency)
            IconButton(
              icon: const Icon(Icons.close, size: 20),
              tooltip: 'Stop playback',
              onPressed: () {
                ref.read(audioPlayerServiceProvider).stop();
              },
            ),
            const SizedBox(width: 4),
          ],
        )),
          ],
        ),
      ),
    ),
    );
  }
}
