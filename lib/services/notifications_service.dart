import 'dart:io';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationsService {
  NotificationsService._(this._service);

  final FlutterLocalNotificationsPlugin _service;

  static NotificationsService _instance;

  static NotificationsService get instance => _instance;

  static Future<NotificationsService> init() async {
    if (_instance == null) {
      final notificationsPlugin = await _initDependencies();
      _instance = NotificationsService._(notificationsPlugin);
    }
    return _instance;
  }

  static Future<FlutterLocalNotificationsPlugin> _initDependencies() async {
    final notificationsPlugin = FlutterLocalNotificationsPlugin();

    // Android
    // Here app_icon is image name which we had put inside the drawable directory.
    // If you didn’t put that then you can use default icon for that you have to use
    // ‘@mipmap/ic_launcher’ instead of ‘app_icon’.
    const androidSettings = AndroidInitializationSettings(
      '@mipmap/ic_launcher',
    );

    // ios
    const iosSettings = IOSInitializationSettings(
      requestSoundPermission: false,
    );

    // MacOs
    const macOSSettings = MacOSInitializationSettings(
      requestAlertPermission: false,
      requestBadgePermission: false,
      requestSoundPermission: false,
    );

    const settings = InitializationSettings(
      android: androidSettings,
      iOS: iosSettings,
      macOS: macOSSettings,
    );

    await notificationsPlugin.initialize(settings);

    return notificationsPlugin;
  }

  Future<void> requestPermission() async {
    if (Platform.isMacOS) {
      await _requestMacOsPermission();
    }
  }

  Future<void> _requestMacOsPermission() async {
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
    // Android
    final android = AndroidNotificationDetails('id', 'channel ', 'description',
        importance: Importance.max,
        priority: Priority.high,
        playSound: withSound);

    // MacOs
    final macOs = MacOSNotificationDetails(
      presentSound: withSound ?? true,
      attachments: filePath != null
          ? [
              MacOSNotificationAttachment(filePath),
            ]
          : null,
    );

    await _service.show(
      0,
      title,
      body,
      NotificationDetails(android: android, macOS: macOs),
    );
  }
}
