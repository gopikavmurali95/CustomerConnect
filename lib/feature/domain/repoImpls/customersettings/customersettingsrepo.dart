import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/customer_settings_model/customer_settings_model.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: ICustomerSettingsRepo)
class CustomerSettingsRepo implements ICustomerSettingsRepo {
  @override
  Future<Either<MainFailures, CustomerSettingsModel>> getCustomerSettings(
      String userID) async {
    try {
      final response = await http
          .post(Uri.parse(baseUrl + cusSettingUrl), body: {"usrID": userID});

      log('Response: ${response.body}');
      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final userModel = CustomerSettingsModel.fromJson(json["result"][0]);
        return right(userModel);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log('settings error : $e');
      return left(const MainFailures.serverfailure());
    }
  }
}
