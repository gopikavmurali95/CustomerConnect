import 'dart:convert';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/notification_replay_in_model/notification_replay_in_model.dart';
import 'package:customer_connect/feature/data/models/notification_replay_out_model/notification_replay_out_model.dart';
import 'package:customer_connect/feature/data/models/user_notification_model/user_notification_model.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: INotificationRepo)
class NotificationRepo implements INotificationRepo {
  @override
  Future<Either<MainFailures, List<UserNotificationModel>>>
      getUserNotifications(String userID) async {
    try {
      final response = await http.post(
          Uri.parse(baseUrl + userNotificationsUrl),
          body: {"UserID": userID});
      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> notidata = json['result'];
        List<UserNotificationModel> notilist = notidata
            .map<UserNotificationModel>(
                (json) => UserNotificationModel.fromJson(json))
            .toList();
        return right(notilist.reversed.toList());
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, NotificationReplayOutModel>> sendNotiReplay(
      NotificationReplayInModel replay) async {
    try {
      final response = await http.post(
          Uri.parse(baseUrl + notificationReplayUrl),
          body: replay.toJson());
      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final replayModel =
            NotificationReplayOutModel.fromJson(json["result"][0]);
        return right(replayModel);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, NotificationReplayOutModel>> updateNotiReadFlag(
      String rntID) async {
    try {
      final response = await http.post(
        Uri.parse(baseUrl + notiReadFlagUpdateUrl),
        body: {"rnt_ID": rntID},
      );
      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final readflagModel =
            NotificationReplayOutModel.fromJson(json["result"][0]);
        return right(readflagModel);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      return left(const MainFailures.serverfailure());
    }
  }
}
