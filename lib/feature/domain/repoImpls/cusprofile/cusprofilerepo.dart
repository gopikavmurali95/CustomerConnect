import 'dart:convert';
import 'dart:developer';
import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/cu_s_profile_model/cu_s_profile_model.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: ICusProfileRepo)
class CusProfileRepo implements ICusProfileRepo {
  @override
  Future<Either<MainFailures, CuSProfileModel>> getCusProfile(
      String userId, String cusId) async {
    try {
      final response = await http.post(Uri.parse(baseUrl + cusProfileUrl),
          body: {"UserID": userId, "cus_ID": cusId});
      if (response.statusCode == 200) {
        // log(response.body);
        Map<String, dynamic> json = jsonDecode(response.body);
        final cusprofile = CuSProfileModel.fromJson(json["result"][0]);
        return right(cusprofile);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log('profile error : $e');
      return left(const MainFailures.serverfailure());
    }
  }
}
