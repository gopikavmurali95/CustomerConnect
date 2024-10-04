import 'dart:developer';

import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/view/approvals/approvalscreen.dart';
import 'package:customer_connect/feature/view/notification/notification.dart';
import 'package:customer_connect/main.dart';
import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class MessageHandler extends StatefulWidget {
  final Widget child;
  const MessageHandler({super.key, required this.child});

  @override
  State createState() => MessageHandlerState();
}

class MessageHandlerState extends State<MessageHandler> {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging.instance;
  late Widget child;

  @override
  void initState() {
    super.initState();
    child = widget.child;
    init();
    // Request permissions for iOS
    _firebaseMessaging.requestPermission();

    // Handle messages when the app is in the foreground
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      log('Message received in foreground');
      handleMessage(message);
    });

    // Handle messages when the app is opened from the background
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      log('Message opened from background');
      handleMessage(message);
    });

    FirebaseMessaging.onBackgroundMessage((message) async {
      log('Handling background message');
      handleMessage(message);
    });

    checkForInitialMessage();
  }

  Future<void> checkForInitialMessage() async {
    RemoteMessage? initialMessage =
        await _firebaseMessaging.getInitialMessage();
    if (initialMessage != null) {
      handleMessage(initialMessage);
    }
  }

  init() async {
    FlutterLocalNotificationsPlugin flp = FlutterLocalNotificationsPlugin();

    var androidi = const AndroidInitializationSettings(
      "@mipmap/ic_launcher",
    );

    var ios = const DarwinInitializationSettings();

    var inisettings = InitializationSettings(android: androidi, iOS: ios);

    await flp.initialize(
      inisettings,
      onDidReceiveNotificationResponse: (details) {
        handleNotificationTap(details.payload);
      },
      onDidReceiveBackgroundNotificationResponse: notificationTapBackground,
    );
  }

  void handleMessage(RemoteMessage message) async {
    // Extracting click_action and screen from data
    final screen = message.data['Key'];
    final clickAction = message.data['click_action'];

    if (screen != null || clickAction != null) {
      LoginUserModel? user = await getuserdata();
      WidgetsBinding.instance.addPostFrameCallback((_) {
        // Handling screen navigation based on the key
        if (screen == "val1") {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => NotificationScreen(user: user!),
          ));
        } else if (screen == "val2") {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ApprovalScreen(user: user!),
          ));
        }

        // Handling navigation based on click_action
        if (clickAction == "com.example.app.OPEN_NOTIFICATION_ACTIVITY") {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => NotificationScreen(user: user!),
          ));
        }
      });
    }
  }

  void handleNotificationTap(String? payload) async {
    // Handle navigation based on notification tap
    LoginUserModel? user = await getuserdata();
    if (payload != null && payload == "val1") {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => NotificationScreen(user: user!),
      ));
    }
  }

  @pragma('vm:entry-point')
  void notificationTapBackground(
      NotificationResponse notificationResponse) async {
    log('Notification tapped in background');
    // Handle background notification taps if needed
  }

  @override
  Widget build(BuildContext context) {
    return child;
  }
}
