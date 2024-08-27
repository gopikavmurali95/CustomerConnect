import 'dart:convert';


import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/merchanding_survey_model/merchanding_survey_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: IMerchandinsingSurveyRepo)
class MerchandisingSurveyRepo implements IMerchandinsingSurveyRepo {
  @override
  Future<Either<MainFailures, List<MerchandingSurveyModel>>> getSurveyItems(
      String fromDate, String toDate, String status) async {
    try {
      final response = await http.post(
          Uri.parse(baseUrl + merchandisingSurveyUrl),
          body: {"FromDate": fromDate, "ToDate": toDate, "Status": status});
      //log("FromDate: $fromDate, ToDate: $toDate, Status: $status");
      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> surveydata = json['result'];
        List<MerchandingSurveyModel> data = surveydata
            .map<MerchandingSurveyModel>(
                (json) => MerchandingSurveyModel.fromJson(json))
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
