import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/asset_add_approval_in_model/asset_add_approval_in_model.dart';
import 'package:customer_connect/feature/data/models/asset_add_request_header_model/asset_add_request_header_model.dart';
import 'package:customer_connect/feature/data/models/asset_add_resp_out_model/asset_add_resp_out_model.dart';
import 'package:customer_connect/feature/data/models/load_req_header_model/LoadReqHeaderModel.dart';
import 'package:customer_connect/feature/data/models/load_request_approval/LoadReqInApprovalModel.dart';
import 'package:customer_connect/feature/data/models/load_request_approval_out_model/LoadRequestApprovalOutModel.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: ILoadRequestApprovalRepo)
class LoadRequestApprovalRepo implements ILoadRequestApprovalRepo {
  @override
  Future<Either<MainFailures, LoadRequestApprovalOutModel>>
  loadApproval(LoadReqInApprovalModel approval) async{
    try {
          final response = await http.post(
              Uri.parse(approvalBaseUrl + loadReqApprovalUrl),
              body: {});
          if (response.statusCode == 200) {
            log('Approve Response: ${response.body}');
            Map<String, dynamic> json = jsonDecode(response.body);
            final approve = LoadRequestApprovalOutModel.fromJson(json["result"][0]);
            // Map<String, dynamic> json = jsonDecode(response.body);
            // final List<dynamic> headerdata = json['result'];
            // List<LoadRequestApprovalOutModel> approvals = headerdata
            //     .map<LoadRequestApprovalOutModel>(
            //         (json) => LoadRequestApprovalOutModel.fromJson(json))
            //     .toList();
             return right(approve);
          } else {
            return left(
              const MainFailures.networkerror(error: 'Something went Wrong'),
            );
          }
        } catch (e) {
          log("Asset Adding error resp $e");
          return left(const MainFailures.serverfailure());
        }
      }
  }




