import 'dart:developer';
import 'dart:io';

import 'package:customer_connect/feature/domain/notification/firebasenotification.dart';
import 'package:customer_connect/feature/state/cubit/updatepercentage/update_download_percentage_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart'
    as notifications;
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:path/path.dart' as path;

class ApkInstaller {
  static const platform = MethodChannel('apkInstallerChannel');

  static Future<void> installApk(String apkPath) async {
    try {
      await platform.invokeMethod('installApk', {'apkPath': apkPath});
    } on PlatformException catch (e) {
      log("Failed to install APK: '${e.message}'.");
    }
  }

  Future<String> downloadAndInstallApk(
      String downloadUrl, BuildContext context) async {
    try {
      // Request storage permissions
      var status = await Permission.manageExternalStorage.request();
      if (status.isGranted) {
        log("Storage permission granted");
      } else if (status.isPermanentlyDenied) {
        openAppSettings();
        log("Storage permission not granted");
        return '';
      }

      // Get the external storage directory
      Directory? externalDir = await getDownloadsDirectory();
      String customFolderPath = '${externalDir?.path}/customer_connect/updates';

      Directory customDir = Directory(customFolderPath);
      if (!await customDir.exists()) {
        await customDir.create(recursive: true);
      }

      String dirPath = '/storage/emulated/0/Customer-Connect/Updates/';
      Directory dir = Directory(dirPath);
      if (!await dir.exists()) {
        await dir.create(recursive: true);
      }

      String apkPath = path.join(
          dir.path, 'Update${DateTime.now().millisecondsSinceEpoch}.apk');

      Dio dio = Dio();

      await dio.download(downloadUrl, apkPath,
          onReceiveProgress: (received, total) {
        if (total != -1) {
          log("Downloading: ${(received / total * 100).toStringAsFixed(0)}%");
          // double progress = received / total;

          context.read<UpdateDownloadPercentageCubit>().updatePercentage(
              int.parse((received / total * 100).toStringAsFixed(0)));
        }
        if (received == total) {
          log("Downloading completed");
          showCompletedNotification();
          log(apkPath);
          installApk(apkPath);
        }
      });

      log(apkPath);
      return apkPath;
    } catch (e) {
      // ignore: use_build_context_synchronously
      context.read<UpdateDownloadPercentageCubit>().updatePercentage(-1);
      log('Error downloading APK: $e');
      return '';
    }
  }

  Future<void> showCompletedNotification() async {
    FlutterLocalNotificationsPlugin flp = FlutterLocalNotificationsPlugin();

    var androidi = const AndroidInitializationSettings(
      "@mipmap/ic_launcher",
    );

    var ios = const DarwinInitializationSettings();

    var inisettings = InitializationSettings(android: androidi, iOS: ios);

    await flp.initialize(inisettings);
    var android = const AndroidNotificationDetails(
      'Customer Connect',
      'Customer Connect',
      groupAlertBehavior: GroupAlertBehavior.all,
      channelDescription: 'Customer Connect Notification',
      priority: notifications.Priority.high,
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
      'Download Complete',
      'The update has been downloaded successfully.',
      platform,
    );
  }
}

class VersionHelper {
  static const platform = MethodChannel('apkInstallerChannel');

  Future<int?> getAppVersionCode() async {
    try {
      final int? versionCode = await platform.invokeMethod('getAppVersionCode');
      log('versioncode $versionCode');
      return versionCode;
    } on PlatformException catch (e) {
      log("Failed to get app version code: '${e.message}'.");
      return null;
    }
  }
}
