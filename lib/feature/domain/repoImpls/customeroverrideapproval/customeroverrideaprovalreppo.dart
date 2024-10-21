import 'dart:convert';
import 'dart:developer';
import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/customer_override_approval_model/customer_override_approval_model.dart';
import 'package:customer_connect/feature/data/models/overide_approv_reject_model/overide_approv_reject_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
//import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';

@LazySingleton(as: ICustomerOverrideApprovalRepo)
class CustomerOverideAppproval implements ICustomerOverrideApprovalRepo {
  @override
  Future<Either<MainFailures, List<CustomerOverrideApprovalModel>>>
      approveOverrideCustomer(String statusValue) async {
    try {
      Dio dio = Dio();
      final response = await dio.post(approvalBaseUrl + cusOverrideApprovalUrl,
          data: {"Status_Value": statusValue});
      if (response.statusCode == 200) {
        log("customer override: ${response.data}");
        Map<String, dynamic> json = jsonDecode(response.data);
        final List<dynamic> overrideData = json['result'];
        List<CustomerOverrideApprovalModel> override = overrideData
            .map<CustomerOverrideApprovalModel>(
                (json) => CustomerOverrideApprovalModel.fromJson(json))
            .toList();
        return right(override);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log("customer override error:  $e");
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, OverideApprovRejectModel>> overrideApproveReject(
      String ooaId, String userId, String status) async {
    try {
      Dio dio = Dio();
      final response = await dio.post(approvalBaseUrl + cusOverApprovRejectUrl,
          data: {"ooaID": ooaId, "UserID": userId, "status": status});

      if (response.statusCode == 200) {
        log("override approve:${response.data}");
        Map<String, dynamic> json = jsonDecode(response.data);
        final status = OverideApprovRejectModel.fromJson(json["result"][0]);
        return right(status);
      } else {
        log(response.data);
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log('Approve error $e');
      return left(const MainFailures.serverfailure());
    }
  }
}
