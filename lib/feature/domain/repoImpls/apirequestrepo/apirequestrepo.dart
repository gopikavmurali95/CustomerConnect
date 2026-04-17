import 'dart:developer';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IApiRequestRepo)
class ApiRequestRepo implements IApiRequestRepo {
  @override
  Future<Either<MainFailures, String>> getApiRequest(
      String urlEndPont, Map<String, dynamic> jsonInPara) async {
    final dio = Dio();
    try {
      final options = Options(
        contentType: Headers.formUrlEncodedContentType,
        /*   sendTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10), */
      );
      final response = await dio.post(baseUrl /* wsUrl */ + urlEndPont,
          data: jsonInPara, options: options);
      log("$baseUrl$urlEndPont inpara :- $jsonInPara ||:\n response :- ${response.data}");
      if (response.statusCode == 200) {
        return right(response.data);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log('Api Request error $baseUrl$urlEndPont:-$e');
      return left(const MainFailures.serverfailure());
    }
  }
}
