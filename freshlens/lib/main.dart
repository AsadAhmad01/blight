import 'package:flutter/material.dart';
import 'app.dart';
import 'core/di/injection.dart';
import 'features/settings/data/datasources/background_worker.dart';
import 'features/settings/data/datasources/notification_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  await getIt<NotificationService>().initialize();
  await BackgroundWorker.initialize();
  runApp(const FreshLensApp());
}
