import 'package:workmanager/workmanager.dart';
import '../../../../core/di/injection.dart';
import 'notification_service.dart';

@pragma('vm:entry-point')
void callbackDispatcher() {
  Workmanager().executeTask((taskName, inputData) async {
    try {
      // Re-initialize DI in background thread context
      await configureDependencies();
      final notifier = getIt<NotificationService>();
      await notifier.showExpiryWarning(
        0, 
        'Check your fridge!', 
        'Some items might be expiring soon. Open FreshLens to check.',
      );
      return Future.value(true);
    } catch (e) {
      return Future.value(false);
    }
  });
}

class BackgroundWorker {
  static Future<void> initialize() async {
    await Workmanager().initialize(callbackDispatcher);
  }

  static void registerPeriodicTask() {
    Workmanager().registerPeriodicTask(
      'expiryCheck',
      'checkExpiryTask',
      frequency: const Duration(hours: 24),
    );
  }

  static void cancelAll() {
    Workmanager().cancelAll();
  }
}
