import 'package:flutter/material.dart';
import 'app.dart';
import 'core/di/injection.dart';
import 'features/settings/data/datasources/background_worker.dart';
import 'features/settings/data/datasources/notification_service.dart';

void main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
    await configureDependencies();
    await getIt<NotificationService>().initialize();
    await BackgroundWorker.initialize();
    runApp(const FreshLensApp());
  } catch (e, stack) {
    debugPrint('Startup Error: $e\n$stack');
    runApp(MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('Startup Error:\n$e\n\n$stack', style: const TextStyle(color: Colors.red)),
            ),
          ),
        ),
      ),
    ));
  }
}
