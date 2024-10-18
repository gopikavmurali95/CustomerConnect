import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/free_sample_approval_detail_model/free_sample_approval_detail_model.dart';
import 'package:customer_connect/feature/data/models/free_sample_approval_resp_model/free_sample_approval_resp_model.dart';
import 'package:customer_connect/feature/data/models/free_sample_approve_in_model/free_sample_approve_in_model.dart';
import 'package:customer_connect/feature/data/models/free_sample_header_model/free_sample_header_model.dart';
import 'package:customer_connect/feature/data/models/free_sample_reson_model/free_sample_reson_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IFreeSampleApprovalRepo)
class FreeSampleApprovalRepo implements IFreeSampleApprovalRepo {
  @override
  Future<Either<MainFailures, List<FreeSampleHeaderModel>>>
      getFreeSampleHeaders(String mode) async {
    try {
      Dio dio = Dio();

      final response = await dio.post(
        baseUrl + freesampleApprovalHeaderUrl,
        data: {"Status_Value": mode},
      );

      // log(jsonEncode(response.data));

      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.data);
        final List<dynamic> headerdata = json['result'];
        List<FreeSampleHeaderModel> headerlist = headerdata
            .map<FreeSampleHeaderModel>(
                (json) => FreeSampleHeaderModel.fromJson(json))
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

  @override
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
  }

  @override
  Future<Either<MainFailures, FreeSampleApprovalRespModel>> approvefreeSample(
      FreeSampleApproveInModel approve) async {
    try {
      Dio dio = Dio();
      log({
        "Json": jsonEncode(approve.products),
        "UserId": approve.userId,
        "HeaderID": approve.headerId,
      }.toString());
      final response = await dio.post(
        approvalBaseUrl + submitfreesampleurl,
        data: {
          "JSONString": jsonEncode(approve.products),
          "UserId": approve.userId,
          "HeaderID": approve.headerId,
        },
      );

      if (response.statusCode == 200) {
        log('Approve Response: ${response.data}');
        Map<String, dynamic> json = jsonDecode(response.data);
        final approve = FreeSampleApprovalRespModel.fromJson(json["result"][0]);

        return right(approve);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log("freesample approve error resp $e");
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, List<FreeSampleResonModel>>> getFreeSamplereasons(
      String userID, String rsnType) async {
    try {
      Dio dio = Dio();

      final response = await dio.post(
        baseUrl + freesampleReasonUrl,
        data: {"ReasonType": rsnType, "UserId": userID},
      );

      // log(jsonEncode(response.data));

      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.data);
        final List<dynamic> reasondata = json['result'];
        List<FreeSampleResonModel> reasonlist = reasondata
            .map<FreeSampleResonModel>(
                (json) => FreeSampleResonModel.fromJson(json))
            .toList();
        return right(reasonlist);
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
}
