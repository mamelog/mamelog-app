import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';

/// DI module for third-party notification plugin.
@module
abstract class NotificationModule {
  @lazySingleton
  FlutterLocalNotificationsPlugin get notificationsPlugin => FlutterLocalNotificationsPlugin();
}
