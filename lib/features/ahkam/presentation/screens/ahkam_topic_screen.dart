import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import '../../data/models/hukm.dart';

class AhkamTopicScreen extends StatelessWidget {
  final AhkamCategory category;

  const AhkamTopicScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(category.title)),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: category.topics.length,
        itemBuilder: (context, index) {
          final topic = category.topics[index];
          return _TopicCard(topic: topic, index: index + 1);
        },
      ),
    );
  }
}

class _TopicCard extends StatefulWidget {
  final AhkamTopic topic;
  final int index;

  const _TopicCard({required this.topic, required this.index});

  @override
  State<_TopicCard> createState() => _TopicCardState();
}

class _TopicCardState extends State<_TopicCard> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
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
        children: [
          // Header — always visible
          InkWell(
            onTap: () => setState(() => _expanded = !_expanded),
            borderRadius: _expanded
                ? const BorderRadius.vertical(top: Radius.circular(16))
                : BorderRadius.circular(16),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                      color: AppColors.accentAhkam.withAlpha(25),
                      shape: BoxShape.circle,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      '${widget.index}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        color: AppColors.accentAhkam,
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.topic.title,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          widget.topic.titleArabic,
                          style: TextStyle(
                            fontFamily: 'AmiriQuran',
                            fontSize: 14,
                            color: Theme.of(context)
                                .colorScheme
                                .onSurface
                                .withAlpha(160),
                          ),
                          textDirection: TextDirection.rtl,
                        ),
                      ],
                    ),
                  ),
                  Icon(
                    _expanded
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                    color: AppColors.accentAhkam,
                  ),
                ],
              ),
            ),
          ),
          // Expandable detail
          if (_expanded) ...[
            Divider(
              height: 1,
              color: Theme.of(context).colorScheme.outline.withAlpha(30),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Summary
                  Text(
                    widget.topic.summary,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          height: 1.5,
                          color: Theme.of(context)
                              .colorScheme
                              .onSurface
                              .withAlpha(200),
                        ),
                  ),
                  const SizedBox(height: 16),
                  // Madhab rulings
                  Text(
                    'Madhab Rulings',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: AppColors.accentAhkam,
                        ),
                  ),
                  const SizedBox(height: 8),
                  ...widget.topic.rulings.map(
                    (ruling) => _MadhabRulingCard(ruling: ruling),
                  ),
                  // Key points
                  if (widget.topic.keyPoints.isNotEmpty) ...[
                    const SizedBox(height: 16),
                    Text(
                      'Key Points',
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: AppColors.accentAhkam,
                          ),
                    ),
                    const SizedBox(height: 8),
                    ...widget.topic.keyPoints.map(
                      (point) => Padding(
                        padding: const EdgeInsets.only(bottom: 4),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('• ',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Expanded(
                              child: Text(
                                point,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(height: 1.4),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }
}

const _madhabColors = <Madhab, Color>{
  Madhab.hanafi: Color(0xFF1565C0),
  Madhab.maliki: Color(0xFF2E7D32),
  Madhab.shafii: Color(0xFF6A1B9A),
  Madhab.hanbali: Color(0xFFBF360C),
};

class _MadhabRulingCard extends StatelessWidget {
  final MadhabRuling ruling;

  const _MadhabRulingCard({required this.ruling});

  @override
  Widget build(BuildContext context) {
    final color = _madhabColors[ruling.madhab] ?? AppColors.accentAhkam;

    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: color.withAlpha(12),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withAlpha(40)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                decoration: BoxDecoration(
                  color: color.withAlpha(30),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  ruling.madhab.name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: color,
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Text(
                ruling.madhab.nameArabic,
                style: TextStyle(
                  fontFamily: 'AmiriQuran',
                  fontSize: 12,
                  color: color.withAlpha(180),
                ),
                textDirection: TextDirection.rtl,
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            ruling.ruling,
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  height: 1.4,
                ),
          ),
          const SizedBox(height: 4),
          Text(
            ruling.dalil,
            style: Theme.of(context).textTheme.labelSmall?.copyWith(
                  fontStyle: FontStyle.italic,
                  color: color.withAlpha(180),
                ),
          ),
        ],
      ),
    );
  }
}
