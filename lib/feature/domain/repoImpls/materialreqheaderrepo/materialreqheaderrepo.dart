import 'dart:convert';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/material_req_detail_model/MaterialReqDetailModel.dart';
import 'package:customer_connect/feature/data/models/material_req_header_model/MaterialReqHeaderModel.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import '../../../../constants/fonts.dart';
import '../../../../core/api/endpoints.dart';

@LazySingleton(as: IMaterialReqHeaderRepo)
class MaterialReqRepo implements IMaterialReqHeaderRepo
{
  @override
  Future<Either<MainFailures, List<MaterialReqHeaderModel>>> materialreqheaderList(String userId) async
  {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + materialReqHeaderUrl),
          body: {"userID": userId});
      if (response.statusCode == 200) {
         logger.w('response: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> materialReqhead = json['result'];
        List<MaterialReqHeaderModel> materialreqlist = materialReqhead
            .map<MaterialReqHeaderModel>(
                (json) => MaterialReqHeaderModel.fromJson(json))
            .toList();
        return right(materialreqlist);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      return left(const MainFailures.serverfailure());
    }


  }


  @override
  Future<Either<MainFailures, List<MaterialReqDetailModel>>> materialreqdetailList(String reqId)
  async{
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + materialReqDetailUrl),
          body: {"reqID": reqId});
      if (response.statusCode == 200) {
        // logger.w('response: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> materialReqdetail = json['result'];
        List<MaterialReqDetailModel> materialreqdetaillist = materialReqdetail
            .map<MaterialReqDetailModel>(
                (json) => MaterialReqDetailModel.fromJson(json))
            .toList();
        return right(materialreqdetaillist);
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