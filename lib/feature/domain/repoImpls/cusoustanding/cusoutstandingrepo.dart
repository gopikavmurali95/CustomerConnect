import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/cus_ins_outstanding_header_model/cus_ins_outstanding_header_model.dart';
import 'package:customer_connect/feature/data/models/cus_out_standing_in_model/cus_out_standing_in_model.dart';
import 'package:customer_connect/feature/data/models/cus_outstanding_count_model/cus_outstanding_count_model.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: ICusOutstandingRepo)
class CusOutStandingRepo implements ICusOutstandingRepo {
  @override
  Future<Either<MainFailures, List<CusInsOutstandingHeaderModel>>>
      getCusOutstanding(CusOutStandingInModel outIn) async {
    try {
      final response = await http.post(
          Uri.parse(baseUrl + cusInsOutStandingHeaderUrl),
          body: outIn.toJson());
      log(response.body);
      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);

        final List<dynamic> outheaderdata = json['result'];
        List<CusInsOutstandingHeaderModel> headerlist = outheaderdata
            .map<CusInsOutstandingHeaderModel>(
                (json) => CusInsOutstandingHeaderModel.fromJson(json))
            .toList();

        return right(headerlist);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log('Outstanding error$e');
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, CusOutstandingCountModel>> getOutStandingCounts(
      CusOutStandingInModel outIn) async {
    try {
      final response = await http.post(
          Uri.parse(baseUrl + cusOutsandingCOuntUrl),
          body: outIn.toJson());
      if (response.statusCode == 200) {
        logger.w('Response: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final outtotal = CusOutstandingCountModel.fromJson(json["result"][0]);
        return right(outtotal);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log('Outstandingcount error : $e');
      return left(const MainFailures.serverfailure());
    }
  }
}
