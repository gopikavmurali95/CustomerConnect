import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/stamped_copy_model/stamped_copy_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IStampedCopyRepo)
class StampedCopyRepo implements IStampedCopyRepo {
  @override
  Future<Either<MainFailures, StampedCopyModel>> getCopy(String invID) async {
    try {
      Dio dio = Dio();

      final response = await dio.post(
        baseUrl + stampedCopyUrl,
        data: {"invID": invID},
      );

      log("invID: $invID");

      if (response.statusCode == 200) {
        log(response.data);
        Map<String, dynamic> json = jsonDecode(response.data);
        final copy = StampedCopyModel.fromJson(json["result"][0]);

        return right(copy);
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
