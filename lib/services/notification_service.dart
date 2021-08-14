import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

class NotificationService {
  static final NotificationService _notificationService = NotificationService._internal();

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  factory NotificationService(){
    return _notificationService;
  }

  NotificationService._internal();

  Future<void> init() async{
    final AndroidInitializationSettings initializationSettingsAndroid = AndroidInitializationSettings('background');

    final IOSInitializationSettings initializationSettingsIOS = IOSInitializationSettings(
      requestAlertPermission: false,
      requestBadgePermission: false,
      requestSoundPermission: false,
    );

    final InitializationSettings initializationSettings =
    InitializationSettings(
        android: initializationSettingsAndroid,
        iOS: initializationSettingsIOS,
        macOS: null);
    await flutterLocalNotificationsPlugin.initialize(initializationSettings,onSelectNotification: selectNotification);
    tz.initializeTimeZones();
  }

  Future selectNotification(String payload) async {
    //Handle notification tapped logic here
  }
}