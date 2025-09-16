import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/asset_removal_approval_in_model/asset_removal_approval_in_model.dart';
import 'package:customer_connect/feature/data/models/asset_removal_approve_out_model/asset_removal_approve_out_model.dart';
import 'package:customer_connect/feature/data/models/asset_removal_request_header_model/asset_removal_request_header_model.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAssetRemovalRequestRepo)
class AssetRemovalRequestRepo implements IAssetRemovalRequestRepo {
  @override
  Future<Either<MainFailures, List<AssetRemovalRequestHeaderModel>>>
      getAssetRemovalApprovalHeaders(String userID, ) async {
    try {
      final response = await http
          .post(Uri.parse(approvalBaseUrl + assetRemovalHeaderUrl), body: {
        "UserID": userID,
        
      });
      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> headerdata = json['result'];
        List<AssetRemovalRequestHeaderModel> headers = headerdata
            .map<AssetRemovalRequestHeaderModel>(
                (json) => AssetRemovalRequestHeaderModel.fromJson(json))
            .toList();
            log(jsonEncode(headers));
        return right(headers);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log("Asset removal error resp $e");
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, AssetRemovalApproveOutModel>>
      assetRemovalApproval(AssetRemovalApprovalInModel approve) async {
    try {
      final response = await http
          .post(Uri.parse(approvalBaseUrl + assetRemovalApproveUrl), body: {
        "JSONString": jsonEncode([
          {
            "arq_ID": approve.arqId,
            "asc_ID": approve.ascId,
          }
        ]),
        "UserId": approve.userId,
      });

      log({
        "JSONString": jsonEncode([
          {
            "arq_ID": approve.arqId,
            "asc_ID": approve.ascId,
          }
        ]),
        "UserId": approve.userId,
      }.toString());

      if (response.statusCode == 200) {
        log('Approve Response: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final approve = AssetRemovalApproveOutModel.fromJson(json["result"][0]);
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
  Future<Either<MainFailures, AssetRemovalApproveOutModel>> assetRemovalReject(
      AssetRemovalApprovalInModel reject) async {
    try {
      final response = await http
          .post(Uri.parse(approvalBaseUrl + assetRemovalRejectUrl), body: {
        "JSONString": jsonEncode([
          {
            "arq_ID": reject.arqId,
            "asc_ID": reject.ascId,
          }
        ]),
        "UserId": reject.userId,
      });

      log({
        "JSONString": jsonEncode([
          {
            "arq_ID": reject.arqId,
            "asc_ID": reject.ascId,
          }
        ]),
        "UserId": reject.userId,
      }.toString());

      if (response.statusCode == 200) {
        log('Reject Response: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final approve = AssetRemovalApproveOutModel.fromJson(json["result"][0]);
        return right(approve);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log('Reject error : $e');
      return left(const MainFailures.serverfailure());
    }
  }
}
