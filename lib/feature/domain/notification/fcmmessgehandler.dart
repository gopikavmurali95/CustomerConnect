import 'dart:developer';

import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/domain/notification/firebasenotification.dart';
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
      log('Happenign');
      handleMessage(message);
    });

    // Handle messages when the app is in the background and opened from the terminated state
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      log('Happenign open');
      handleMessage(message);
    });

    FirebaseMessaging.onBackgroundMessage((message) async {
      FlutterLocalNotificationsPlugin flp = FlutterLocalNotificationsPlugin();

      groupNotifications(flp);
    });
    checkForInitialMessage();
    // Handle messages when the app is opened from a terminated state
    // _firebaseMessaging.getInitialMessage().then((RemoteMessage? message) {
    //   if (message != null) {
    //     _handleMessage(message);
    //   }
    // });
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
    LoginUserModel? user = await getuserdata();
    await flp.initialize(
      inisettings,
      onDidReceiveBackgroundNotificationResponse: (details) {
        if (details.payload != null) {
// final screen = details.payload!['Key

          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => NotificationScreen(user: user!),
          ));
        }
      },
    );
  }

  void handleMessage(RemoteMessage message) async {
    final screen = message.data['Key'];
    if (screen != null) {
      LoginUserModel? user = await getuserdata();
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (screen == "val1") {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => NotificationScreen(user: user!),
          ));
        } else if (screen == "val2") {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ApprovalScreen(user: user!),
          ));
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return child;
  }
}
