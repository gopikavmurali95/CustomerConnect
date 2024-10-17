/* /* import 'dart:convert';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/customer_foc_header_model/customer_foc_header_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: ICustomerFocRepo)
class CustomerFocHeaderRepo implements ICustomerFocRepo {
  @override
  Future<Either<MainFailures, List<CustomerFocHeaderModel>>> getHeaderList(
      String statusValue) async {
    try {
      final response = await http.post(
          Uri.parse(baseUrl + customerFocHeaderUrl),
          body: {"Status_Value": statusValue});

      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);

        final List<dynamic> customerfocheaderdata = json['result'];
        List<CustomerFocHeaderModel> headerlist = customerfocheaderdata
            .map<CustomerFocHeaderModel>(
                (json) => CustomerFocHeaderModel.fromJson(json))
            .toList();

        return right(headerlist);
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
 */


import 'dart:convert';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/customer_foc_header_model/customer_foc_header_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';

@LazySingleton(as: ICustomerFocRepo)
class CustomerFocHeaderRepo implements ICustomerFocRepo {
  final Dio _dio;

  CustomerFocHeaderRepo() : _dio = Dio(BaseOptions(
    baseUrl: baseUrl, // Ensure base URL is set here if needed
    headers: {
      'Content-Type': 'application/json',
    },
  ));

  @override
  Future<Either<MainFailures, List<CustomerFocHeaderModel>>> getHeaderList(
      String statusValue) async {
    try {
      final response = await _dio.post(
        customerFocHeaderUrl,
        data: jsonEncode({"Status_Value": statusValue}),
      );

      // Log response details
      print('Response Status: ${response.statusCode}');
      print('Response Data: ${response.data}');

      if (response.statusCode == 200) {
        Map<String, dynamic> json = response.data;

        final List<dynamic> customerfocheaderdata = json['result'];
        List<CustomerFocHeaderModel> headerlist = customerfocheaderdata
            .map<CustomerFocHeaderModel>(
                (json) => CustomerFocHeaderModel.fromJson(json))
            .toList();

        return right(headerlist);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      if (e is DioError) {
        print('DioError: ${e.message}');
        if (e.response != null) {
          print('Response data: ${e.response?.data}');
          print('Response status: ${e.response?.statusCode}');
        }
      } else {
        print('Unexpected error: $e');
      }
      return left(const MainFailures.serverfailure());
    }
  }
}
 */

import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/customer_foc_header_model/customer_foc_header_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ICustomerFocRepo)
class CustomerFocHeaderRepo implements ICustomerFocRepo {
  @override
  Future<Either<MainFailures, List<CustomerFocHeaderModel>>>
      getHeaderList(String mode) async {
    try {
      Dio dio = Dio();

      final response = await dio.post(
        baseUrl + customerFocHeaderUrl,
        data: {"Status_Value": mode},
      );

      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.data);
        final List<dynamic> headerdata = json['result'];
        List<CustomerFocHeaderModel> headerlist = headerdata
            .map<CustomerFocHeaderModel>(
                (json) => CustomerFocHeaderModel.fromJson(json))
            .toList();
        return right(headerlist);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log('freesample error $e');
      return left(const MainFailures.serverfailure());
    }
  }

  /* @override
  Future<Either<MainFailures, List<FreeSampleApprovalDetailModel>>>
      getFreeSampleDetails(String headerID) async {
    try {
      Dio dio = Dio();

      final response = await dio.post(
        baseUrl + freesampleDetailUrl,
        data: {"HeaderID": headerID},
      );

      // log(jsonEncode(response.data));

      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.data);
        final List<dynamic> detaildata = json['result'];
        List<FreeSampleApprovalDetailModel> detaillist = detaildata
            .map<FreeSampleApprovalDetailModel>(
                (json) => FreeSampleApprovalDetailModel.fromJson(json))
            .toList();
        return right(detaillist);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log('freesample error $e');
      return left(const MainFailures.serverfailure());
    }
  }*/
}