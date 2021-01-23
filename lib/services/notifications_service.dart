import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationsService {
  NotificationsService._(this._service);

  final FlutterLocalNotificationsPlugin _service;

  static NotificationsService _instance;

  static NotificationsService get instance => _instance;

  static Future<NotificationsService> init() async {
    if (_instance == null) {
      final notificationsPlugin = await _initDependencie();
      _instance = NotificationsService._(notificationsPlugin);
    }
    return _instance;
  }

  static Future<FlutterLocalNotificationsPlugin> _initDependencie() async {
    final notificationsPlugin = FlutterLocalNotificationsPlugin();
    const macOSSettings = MacOSInitializationSettings(
      requestAlertPermission: false,
      requestBadgePermission: false,
      requestSoundPermission: false,
    );
    const settings = InitializationSettings(macOS: macOSSettings);

    await notificationsPlugin.initialize(settings);

    return notificationsPlugin;
  }

  Future<void> requestMacOsPermission() async {
    await _service
        .resolvePlatformSpecificImplementation<
            MacOSFlutterLocalNotificationsPlugin>()
        .requestPermissions(
          alert: true,
          badge: true,
          sound: true,
        );
  }

  Future<void> show(
    String title,
    String body, {
    String filePath,
    bool withSound,
  }) async {
    await _service.show(
      0,
      title,
      body,
      NotificationDetails(
        macOS: MacOSNotificationDetails(
          presentSound: withSound ?? true,
          attachments: filePath != null
              ? [
                  MacOSNotificationAttachment(filePath),
                ]
              : null,
        ),
      ),
    );
  }
}
