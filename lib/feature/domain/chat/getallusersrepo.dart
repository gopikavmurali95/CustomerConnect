/* import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/data/models/users_model/users_model.dart';
import 'package:customer_connect/feature/domain/chat/allchateduserrepo.dart';
import 'package:customer_connect/feature/domain/chat/models/chat_user_model/chat_user_model.dart';
import 'package:customer_connect/feature/domain/chat/msgabstractrepos.dart';
import 'package:customer_connect/main.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: IChatUserRepo)
class AllUsersRepo implements IChatUserRepo {
  @override
  Future<Either<MainFailures, List<ChatUserModel>>> getAllusers() async {
    try {
      final response = await http.post(
        Uri.parse(baseUrl + getUserForChatUrl),
      );
      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> headerdata = json['result'];
        List<ChatUserModel> headers = headerdata
            .map<ChatUserModel>((json) => ChatUserModel.fromJson(json))
            .toList();

        List<UsersModel> interactedUsers = [];
        LoginUserModel? user = await getuserdata();
        final stream = GetAllChatRepo().getUsersStream(user!.usrId ?? '');
        await for (var userModels in stream) {
          interactedUsers = userModels;
          break;
        }
        final interactedEmails =
            interactedUsers.map((user) => user.tomail).toSet();

        final filteredUsers = headers.where((user) {
          return !interactedEmails.contains(user.id);
        }).toList();
        return right(filteredUsers);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log("field service header error resp $e");
      return left(const MainFailures.serverfailure());
    }
  }
}
 */
