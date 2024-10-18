import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/customer_foc_approval_in_model/customer_foc_approval_in_model.dart';
import 'package:customer_connect/feature/data/models/customer_foc_approve_and_reject_model/customer_foc_approve_and_reject_model.dart';
import 'package:customer_connect/feature/data/models/customer_foc_detail_model/customer_foc_detail_model.dart';
import 'package:customer_connect/feature/data/models/customer_foc_header_model/customer_foc_header_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ICustomerFocRepo)
class CustomerFocHeaderRepo implements ICustomerFocRepo {
  @override
  Future<Either<MainFailures, List<CustomerFocHeaderModel>>> getHeaderList(
      String mode) async {
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
      log('Customer FOC error $e');
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, List<CustomerFocDetailModel>>> getDetailList(
      String headerID) async {
    try {
      Dio dio = Dio();

      final response = await dio.post(
        baseUrl + customerFocDetailUrl,
        data: {"HeaderID": headerID},
      );

      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.data);
        final List<dynamic> detaildata = json['result'];
        List<CustomerFocDetailModel> detaillist = detaildata
            .map<CustomerFocDetailModel>(
                (json) => CustomerFocDetailModel.fromJson(json))
            .toList();
        return right(detaillist);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log('Customer FOC Error $e');
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, CustomerFocApproveAndRejectModel>>
      customerFocApprove(CustomerFocApprovalInModel approve) async {
    try {
      Dio dio = Dio();

      final response = await dio.post(
        baseUrl + customerFocApprovalUrl,
        data: {
          "remarks": approve.remarks,
          "userId": approve.userId,
          "HeaderId": approve.headerId,
          "JSONString": jsonEncode(approve.jsonString)
        },
      );
      
      log(jsonEncode(approve));

      if (response.statusCode == 200) {
        log(response.data);
        Map<String, dynamic> json = jsonDecode(response.data);
        final approve =
            CustomerFocApproveAndRejectModel.fromJson(json["result"][0]);

        return right(approve);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log('Customer FOC approval Error $e');
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, CustomerFocApproveAndRejectModel>>
      customerFocReject(CustomerFocApprovalInModel reject) async {
    try {
      Dio dio = Dio();

      final response = await dio.post(
        baseUrl + customerFocRejectUrl,
        data: {
          "remarks": reject.remarks,
          "userId": reject.userId,
          "HeaderId": reject.headerId,
          "JSONString": jsonEncode(reject.jsonString)
        },
      );

      // log("reasonId: $reasonId, cfh_ID: $cfhID, userId: $userId");

      if (response.statusCode == 200) {
        log(response.data);
        Map<String, dynamic> json = jsonDecode(response.data);
        final reject =
            CustomerFocApproveAndRejectModel.fromJson(json["result"][0]);

        return right(reject);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log('Customer FOC rejection Error $e');
      return left(const MainFailures.serverfailure());
    }
  }
}
