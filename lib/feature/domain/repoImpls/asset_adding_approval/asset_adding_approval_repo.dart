import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/asset_add_approval_in_model/asset_add_approval_in_model.dart';
import 'package:customer_connect/feature/data/models/asset_add_request_header_model/asset_add_request_header_model.dart';
import 'package:customer_connect/feature/data/models/asset_add_resp_out_model/asset_add_resp_out_model.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAssetAddApprovalRepo)
class AssetAddIngApprovalRepo implements IAssetAddApprovalRepo {
  @override
  Future<Either<MainFailures, List<AssetAddRequestHeaderModel>>>
      getAssetAddApprovalHeaders(String userID, /* String companyCode,
          String expStartDate, String expEndDate, String currentlevel */) async {
    try {
      final response = await http
          .post(Uri.parse(approvalBaseUrl + assetAddRequestHeaderUrl), body: {
        "UserID": userID,
        /* "CompanyCode": companyCode,
        "ExpStartDate": expStartDate,
        "ExpEndDate": expEndDate,
        "Currentlevel": currentlevel */
      });
      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> headerdata = json['result'];
        List<AssetAddRequestHeaderModel> headers = headerdata
            .map<AssetAddRequestHeaderModel>(
                (json) => AssetAddRequestHeaderModel.fromJson(json))
            .toList();
        return right(headers);
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

  @override
  Future<Either<MainFailures, AssetAddRespOutModel>> assetAddApproval(
      AssetAddApprovalInModel approve) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + assetAddApprovalUrl),
          body: approve.toJson());

      log(jsonEncode(approve));

      if (response.statusCode == 200) {
        log(response.body);
        Map<String, dynamic> json = jsonDecode(response.body);
        final status = AssetAddRespOutModel.fromJson(json["result"][0]);
        return right(status);
      } else {
        log(response.body);
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log('Approve error $e');
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, AssetAddRespOutModel>> assetAddReject(
      AssetAddApprovalInModel approve) async {
    try {
      final response = await http.post(
        Uri.parse(approvalBaseUrl + assetAddRejectUrl),
        body: {"ReqID": approve.reqId, "UserID": approve.userId},
      );

      log(jsonEncode(approve));
      if (response.statusCode == 200) {
        log(response.body);
        Map<String, dynamic> json = jsonDecode(response.body);
        final status = AssetAddRespOutModel.fromJson(json["result"][0]);
        return right(status);
      } else {
        log(response.body);
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log('Reject error $e');
      return left(const MainFailures.serverfailure());
    }
  }
}
