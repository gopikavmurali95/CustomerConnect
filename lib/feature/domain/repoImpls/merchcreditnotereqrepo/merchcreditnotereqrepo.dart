import 'dart:convert';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/merch_credit_note_request_model/merch_credit_note_request_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: IMerchCreditNoteReqRepo)
class MerchCreditNoteRequestRepo implements IMerchCreditNoteReqRepo {
  @override
  Future<Either<MainFailures, List<MerchCreditNoteRequestModel>>>
      getActivityItems(String fromDate, String toDate, String status) async {
    try {
      final response = await http.post(
          Uri.parse(baseUrl + merchCreditNoteReqUrl),
          body: {"FromDate": fromDate, "ToDate": toDate, "Status": status});

      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> creditnotedata = json['result'];
        List<MerchCreditNoteRequestModel> data = creditnotedata
            .map<MerchCreditNoteRequestModel>(
                (json) => MerchCreditNoteRequestModel.fromJson(json))
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
