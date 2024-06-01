import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/models/load_req_detail_model/LoadReqDetailModel.dart';
import 'package:customer_connect/feature/data/models/load_req_header_model/LoadReqHeaderModel.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/api/endpoints.dart';
import '../../../data/abstractrepo/abstractrepo.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: ILoadRequestHeaderRepo)
class LoadRequestHeaderRepo implements ILoadRequestHeaderRepo {
  @override
  Future<Either<MainFailures, List<LoadReqHeaderModel>>> loadreqHeaderList(
      String userId) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + loadReqHeaderUrl),
          body: {"UserId": userId});

      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> loadreqheaderdata = json['result'];
        List<LoadReqHeaderModel> loadreqheaders = loadreqheaderdata
            .map<LoadReqHeaderModel>(
                (json) => LoadReqHeaderModel.fromJson(json))
            .toList();
        return right(loadreqheaders);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log("Load request header error resp $e");
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, List<LoadReqDetailModel>>> loadreqdetailList(
      String reqId) async {
    try {
      final response = await http.post(
          Uri.parse(approvalBaseUrl + loadReqDetailUrl),
          body: {"ReqID": reqId});

      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> detaildatas = json['result'];
        List<LoadReqDetailModel> reqdetail = detaildatas
            .map<LoadReqDetailModel>(
                (json) => LoadReqDetailModel.fromJson(json))
            .toList();
        return right(reqdetail);
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
}
