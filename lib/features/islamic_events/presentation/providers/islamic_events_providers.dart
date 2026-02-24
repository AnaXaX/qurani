import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/islamic_events_service.dart';
import '../../data/models/islamic_event.dart';

final upcomingEventsProvider = Provider<List<IslamicEvent>>((ref) {
  return IslamicEventsService.getUpcomingEvents(limit: 10);
});

final nextMajorEventProvider = Provider<IslamicEvent?>((ref) {
  return IslamicEventsService.getNextMajorEvent();
});

final todayEventProvider = Provider<IslamicEvent?>((ref) {
  return IslamicEventsService.getTodayEvent();
});
