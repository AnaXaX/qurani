import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'app.dart';
import 'core/services/notification_service.dart';
import 'features/widgets/home_widget_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize notification service (prayer reminders, Islamic events)
  try {
    await NotificationService.instance.init();
  } catch (_) {}

  // Initialize home screen widgets
  try {
    HomeWidgetService.initialize();
  } catch (_) {}

  runApp(
    const ProviderScope(
      child: QuranApp(),
    ),
  );
}
