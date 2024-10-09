import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/view/notification/notification.dart';
import 'package:customer_connect/main.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class PushNotificationService {
  final FirebaseMessaging _fcm = FirebaseMessaging.instance;
  static BuildContext? _context;

  static Future<void> onTapNotification(NotificationResponse? response) async {
    if (PushNotificationService._context == null || response?.payload == null) {
      return;
    }
    LoginUserModel? user = await getuserdata();

    Navigator.of(PushNotificationService._context!).push(MaterialPageRoute(
      builder: (context) => NotificationScreen(user: user!),
    ));
  }

  static void setContext(BuildContext context) =>
      PushNotificationService._context = context;

  Future initialize() async {
    // FirebaseAnalytics.instance.app.setAutomaticDataCollectionEnabled(true);
    // FirebaseAnalytics.instance.logEvent(name: 'pusshnotification');
/* 
    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      log('Got a message whilst in the foreground!');
      log('Message data: ${message.data}');

      if (message.notification != null) {
        log('Message also contained a notification: ${message.notification?.title}');

        await shownotification(message);
      }
    }); */

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      // _navigateToNotificationScreen(message);
    });
    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);

    await getToken();
  }

  /*  void _navigateToNotificationScreen(RemoteMessage message) async {
    log('In Navigation');
    LoginUserModel? user = await getuserdata();
    navigatorKey.currentState?.push(
      MaterialPageRoute(
        builder: (context) => NotificationScreen(
          user: user!,
        ),
      ),
    );
  } */

  Future<String?> getToken() async {
    String? token = await _fcm.getToken();
    log('Token: $token');
    return token;
  }

  Future<void> backgroundHandler(RemoteMessage message) async {
    try {
      log('Handling a background message ${message.messageId}');
    } catch (e) {
      log(e.toString());
    }
  }

  shownotification(RemoteMessage message) async {
    FlutterLocalNotificationsPlugin flp = FlutterLocalNotificationsPlugin();

    var androidi = const AndroidInitializationSettings(
      "@mipmap/ic_launcher",
    );

    var ios = const DarwinInitializationSettings();

    var inisettings = InitializationSettings(android: androidi, iOS: ios);

    await flp.initialize(inisettings);
    log('in show noti function');
    var android = const AndroidNotificationDetails(
      'Customer Connect',
      'Customer Connect',
      groupAlertBehavior: GroupAlertBehavior.all,
      channelDescription: 'Customer Connect Notification',
      priority: Priority.high,
      importance: Importance.max,
      groupKey: 'com.android.example.CCGROup',
      autoCancel: true,
      fullScreenIntent: true,
    );
// onSelectNotification
    var platform = NotificationDetails(
      android: android,
      iOS: const DarwinNotificationDetails(),
    );
    groupNotifications(flp);
    int id = getUniqueIntegerFromDateTime();
    log(id.toString());
    await flp.show(
      id,
      message.notification?.title,
      message.notification?.body,
      platform,
    );
  }
}

/* Future<void> onDidReceiveNotificationResponse(
    NotificationResponse? response) async {
  LoginUserModel? user = await getuserdata();
  log('in navigation ');
  await Navigator.of(PushNotificationService._context!).push(MaterialPageRoute(
    builder: (context) => NotificationScreen(user: user!),
  ));
} */

void groupNotifications(FlutterLocalNotificationsPlugin flp) async {
  List<ActiveNotification>? activeNotifications = await flp
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.getActiveNotifications();

  if (activeNotifications != null && activeNotifications.isNotEmpty) {
    List<String> lines =
        activeNotifications.map((e) => e.title.toString()).toList();
    InboxStyleInformation inboxStyleInformation = InboxStyleInformation(
      lines,
      contentTitle: "${activeNotifications.length - 1} Updates",
      summaryText: "${activeNotifications.length - 1} Updates",
    );
    AndroidNotificationDetails groupNotificationDetails =
        AndroidNotificationDetails(
      'Customer Connect',
      'Customer Connect',
      channelDescription: 'Customer Connect Notification',
      styleInformation: inboxStyleInformation,
      setAsGroupSummary: true,
      groupKey: "com.android.example.CCGROup",
      // onlyAlertOnce: true,
    );
    NotificationDetails groupNotificationDetailsPlatformSpefics =
        NotificationDetails(android: groupNotificationDetails);
    await flp.show(0, '', '', groupNotificationDetailsPlatformSpefics);
  }
}

int getUniqueIntegerFromDateTime() {
  DateTime now = DateTime.now();

  int uniqueInt = now.microsecondsSinceEpoch;

  int maxInt32 = (1 << 31) - 1;
  int adjustedInt = uniqueInt % maxInt32;

  return adjustedInt;
}

@pragma('vm:entry-point')
Future<void> backgroundHandler(RemoteMessage message) async {
  // FlutterLocalNotificationsPlugin flp = FlutterLocalNotificationsPlugin();
  // var androidi = const AndroidInitializationSettings(
  //   "@mipmap/ic_launcher",
  // );

  // var ios = const DarwinInitializationSettings();
  // var inisettings = InitializationSettings(android: androidi, iOS: ios);
  // await flp.initialize(inisettings);
  // groupNotifications(flp);

  FirebaseMessaging.onBackgroundMessage((message) async {
    log("_messaging onBackgroundMessage: $message");
    await Future.delayed(const Duration(seconds: 1));
  });
  // if (message.messageId != null) {
  //   log('Handling a background message ${message.messageId}');
  //   await PushNotificationService().shownotification(message);
  // }
}

@pragma('vm:entry-point')
Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  Firebase.initializeApp();
  log('Handling a background message ${message.messageId}');
  PushNotificationService().shownotification(message);
}

late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
late AndroidNotificationChannel channel;

bool isFlutterLocalNotificationsInitialized = false;
