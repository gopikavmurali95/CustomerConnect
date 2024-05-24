import 'dart:convert';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/customer_insight_group_model/customer_insight_group_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: ICusInsightGroupRepo)
class CusInsightGroupRepo implements ICusInsightGroupRepo {
  @override
  Future<Either<MainFailures, List<CustomerInsightGroupModel>>> getGroupItems(
      String iD, String mode) async {
    try {
      final response = await http.post(
          Uri.parse(baseUrl + cusInsPromotionSelectGroupUrl),
          body: {"ID": iD, "Mode": mode});
      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> groupdata = json['result'];
        List<CustomerInsightGroupModel> group = groupdata
            .map<CustomerInsightGroupModel>(
                (json) => CustomerInsightGroupModel.fromJson(json))
            .toList();
        return right(group);
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
