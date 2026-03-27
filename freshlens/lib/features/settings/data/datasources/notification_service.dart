import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class NotificationService {
  final FlutterLocalNotificationsPlugin _plugin = FlutterLocalNotificationsPlugin();

  Future<void> initialize() async {
    const androidSetup = AndroidInitializationSettings('@mipmap/ic_launcher');
    const iosSetup = DarwinInitializationSettings();
    const initSettings = InitializationSettings(android: androidSetup, iOS: iosSetup);
    
    await _plugin.initialize(initSettings);
  }

  Future<void> showExpiryWarning(int id, String title, String body) async {
    const androidDets = AndroidNotificationDetails(
      'expiry_channel',
      'Expiry Reminders',
      channelDescription: 'Notifications for food nearing expiry',
      importance: Importance.max,
      priority: Priority.high,
    );
    const iosDets = DarwinNotificationDetails();
    const platformDets = NotificationDetails(android: androidDets, iOS: iosDets);

    await _plugin.show(id, title, body, platformDets);
  }
}
