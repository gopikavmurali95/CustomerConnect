/* import 'dart:async';
import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class FirebaseService {
  static FirebaseMessaging? _firebaseMessaging;
  static FirebaseMessaging get firebaseMessaging => FirebaseService._firebaseMessaging ?? FirebaseMessaging.instance;

  static Future<void> initializeFirebase() async {
    await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
    FirebaseService._firebaseMessaging = FirebaseMessaging.instance;
    await FirebaseService.initializeLocalNotifications();
    await FCMProvider.onMessage();
    await FirebaseService.onBackgroundMsg();
  }

  Future<String?> getDeviceToken() async => await FirebaseMessaging.instance.getToken();

  static FlutterLocalNotificationsPlugin _localNotificationsPlugin = FlutterLocalNotificationsPlugin();
  
  static Future<void> initializeLocalNotifications() async {
    final InitializationSettings _initSettings = InitializationSettings(
      android: AndroidInitializationSettings("icon_name"),
      iOS: DarwinInitializationSettings()
    );
    /// on did receive notification response = for when app is opened via notification while in foreground on android
    await FirebaseService.localNotificationsPlugin.initialize(_initSettings, onDidReceiveNotificationResponse: FCMProvider.onTapNotification);
    /// need this for ios foregournd notification
    await FirebaseService.firebaseMessaging.setForegroundNotificationPresentationOptions(
      alert: true, // Required to display a heads up notification
      badge: true,
      sound: true,
    );
  }
  
  static NotificationDetails platformChannelSpecifics = NotificationDetails(
    android: AndroidNotificationDetails(
      "high_importance_channel", "High Importance Notifications", priority: Priority.max, importance: Importance.max,
    ),
  );
  
  // for receiving message when app is in background or foreground
  static Future<void> onMessage() async {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      if (Platform.isAndroid) {
        // if this is available when Platform.isIOS, you'll receive the notification twice 
        await FirebaseService._localNotificationsPlugin.show(
          0, message.notification!.title, message.notification!.body, FirebaseService.platformChannelSpecifics,
          payload: message.data.toString(),
        );
      }
    });
  }

  static Future<void> onBackgroundMsg() async {
    FirebaseMessaging.onBackgroundMessage(FCMProvider.backgroundHandler);
  }

} */
