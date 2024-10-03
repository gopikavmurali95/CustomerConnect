import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/merchandising_display_agreement_mdel/merchandising_display_agreement_mdel.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: IMerchDisplayAgreement)
class MerchDisplayAgreementRepo implements IMerchDisplayAgreement {
  @override
  Future<Either<MainFailures, List<MerchandisingDisplayAgreementMdel>>>
      getAgreementItems(String fromDate, String toDate, String status) async {
    try {
      final response = await http.post(
          Uri.parse(baseUrl + merchDisplayAgreementUrl),
          body: {"FromDate": fromDate, "ToDate": toDate, "Status": status});
       log("FromDate: $fromDate, ToDate: $toDate, Status: $status");
      if (response.statusCode == 200) {
        log("disp agrmnt:${response.body}");
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> surveydata = json['result'];
        List<MerchandisingDisplayAgreementMdel> data = surveydata
            .map<MerchandisingDisplayAgreementMdel>(
                (json) => MerchandisingDisplayAgreementMdel.fromJson(json))
            .toList();
        return right(data);
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
