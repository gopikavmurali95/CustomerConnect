import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/models/out_standing_header/OutStandOutModel.dart';
import 'package:customer_connect/feature/data/models/out_standing_header/OutStandingHeaderModel.dart';
import 'package:customer_connect/feature/data/models/outstanding_count_model/outstanding_count_model.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import '../../../data/abstractrepo/abstractrepo.dart';

@LazySingleton(as: IOutStandingHeaderRepo)
class OutStandingHeadRepo implements IOutStandingHeaderRepo {
  @override
  Future<Either<MainFailures, List<OutStandOutModel>>> getOutStandingHeaders(
      OutStandingHeaderModel outStandIn) async {
    try {
      final response = await http.post(
          Uri.parse(baseUrl + outStandingHeaderUrl),
          body: outStandIn.toJson());
      if (response.statusCode == 200) {
        //log("outstanding response: ${response.body}");
        Map<String, dynamic> json = jsonDecode(response.body);

        final List<dynamic> outstanddata = json['result'];
        List<OutStandOutModel> outstandlist = outstanddata
            .map<OutStandOutModel>((json) => OutStandOutModel.fromJson(json))
            .toList();
        return right(outstandlist);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log('outstanding error$e');
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, OutstandingCountModel>> getoutstandingTotal(
      OutStandingHeaderModel outin) async {
    try {
      final response = await http.post(Uri.parse(baseUrl + outStandingCountUrl),
          body: outin.toJson());
      log(response.body);
      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final outstandtotal = OutstandingCountModel.fromJson(json["result"][0]);
        return right(outstandtotal);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      //  log('Outstand error : $e');
      return left(const MainFailures.serverfailure());
    }
  }
}
