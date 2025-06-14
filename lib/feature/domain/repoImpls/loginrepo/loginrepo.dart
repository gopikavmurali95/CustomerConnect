import 'dart:convert';
import 'dart:developer';
// import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: ILoginRepo)
class UserLoginRepo implements ILoginRepo {
  @override
  Future<Either<MainFailures, LoginUserModel>> userLogin(
      String username, String password, String token) async {
    try {
      final response = await http.post(Uri.parse(baseUrl + loginUrl),
          body: {"Username": username, "Password": password, "Token": token});

      log("${baseUrl + loginUrl} ,{Username: $username, Password: $password, Token: $token}");
      log('Response: ${response.body}');
      if (response.statusCode == 200) {
        // logger.w('Response: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final userModel = LoginUserModel.fromJson(json["result"][0]);
        return right(userModel);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log('login error : $e');
      return left(const MainFailures.serverfailure());
    }
  }
}
