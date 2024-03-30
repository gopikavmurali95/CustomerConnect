import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/edit_profile_in_model/edit_profile_in_model.dart';
import 'package:customer_connect/feature/data/models/edit_profile_resp_model/edit_profile_resp_model.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: IProfileEditRepo)
class ProfileEditingRepo implements IProfileEditRepo {
  @override
  Future<Either<MainFailures, EditProfileRespModel>> editProfile(
      EditProfileInModel outIn) async {
    try {
      final response = await http.post(Uri.parse(baseUrl + cusProfileEditUrl),
          body: outIn.toJson());
      if (response.statusCode == 200) {
        log(response.body);
        Map<String, dynamic> json = jsonDecode(response.body);
        final artotal = EditProfileRespModel.fromJson(json["result"][0]);
        return right(artotal);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log('profile edit error : $e');
      return left(const MainFailures.serverfailure());
    }
  }
}
