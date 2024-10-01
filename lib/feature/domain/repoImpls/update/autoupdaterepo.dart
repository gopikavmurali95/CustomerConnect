import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/auto_update_resp_model/auto_update_resp_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAutoUpdateRepo)
class AutoUpdateRepo implements IAutoUpdateRepo {
  @override
  Future<Either<MainFailures, AutoUpdateRespModel>> getUpdateStatus(
      String type) async {
    final dio = Dio();

    try {
      final response = await dio.post(
        baseUrl + autoUpdateUrl,
        data: {"Type": type},
      );
      log(response.data);
      if (response.statusCode == 200) {
        final json = jsonDecode(response.data);
        final update = AutoUpdateRespModel.fromJson(json["result"][0]);

        return right(update);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log('auto update error $e');
      return left(const MainFailures.serverfailure());
    }
  }
}
