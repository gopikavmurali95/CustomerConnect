import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/van_to_van_approval_in_paras/van_to_van_approval_in_paras.dart';
import 'package:customer_connect/feature/data/models/van_to_van_approval_model/van_to_van_approval_model.dart';
import 'package:customer_connect/feature/data/models/van_to_van_details_model/van_to_van_details_model.dart';
import 'package:customer_connect/feature/data/models/van_to_van_header_model/van_to_van_header_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: IVanToVanApprovalRepo)
class VanToVanApprovalRepo implements IVanToVanApprovalRepo {
  @override
  Future<Either<MainFailures, VanToVanApprovalModel>> approveVanToVan(
      VanToVanApprovalInParas approveIn) async {
    try {
      final response = await http
          .post(Uri.parse(approvalBaseUrl + vanToVanApprovalUrl), body: {
        "UserId": approveIn.userID,
        "ReqID": approveIn.reqID,
        "JSONString": jsonEncode(approveIn.products)
      });

      log(jsonEncode(approveIn));

      if (response.statusCode == 200) {
        log('Approve Response: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final approve = VanToVanApprovalModel.fromJson(json["result"][0]);
        return right(approve);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log('Approve error : $e');
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, List<VanToVanDetailsModel>>>
      getVanToVanApprovalDetails(String reqID) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + vanToVanDetailsUrl),
          body: {"ReqID": reqID});

      if (response.statusCode == 200) {
        // log(response.body);
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> vantovandetailsdata = json['result'];
        List<VanToVanDetailsModel> returns = vantovandetailsdata
            .map<VanToVanDetailsModel>(
                (json) => VanToVanDetailsModel.fromJson(json))
            .toList();
        return right(returns);
      } else {
        log(response.body);
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log('detail error $e');
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, List<VanToVanHeaderModel>>>
      getVanToVanApprovalHeader(String userID, String mode) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + vanToVanHeaderUrl),
          body: {"UserID": userID, "Status_Value": mode});
      if (response.statusCode == 200) {
        log(response.body);
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> vantovanheaderdata = json['result'];
        List<VanToVanHeaderModel> returns = vantovanheaderdata
            .map<VanToVanHeaderModel>(
                (json) => VanToVanHeaderModel.fromJson(json))
            .toList();
        return right(returns);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log("van to van error resp $e");
      return left(const MainFailures.serverfailure());
    }
  }
}
