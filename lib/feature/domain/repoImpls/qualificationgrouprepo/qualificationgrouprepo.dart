import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/qualification_group_model/qualification_group_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:http/http.dart' as http;

@LazySingleton(as: IQualificationGroupRepo)
class QualificationGroupREpo implements IQualificationGroupRepo {
  @override
  Future<Either<MainFailures, List<QualificationGroupModel>>> getGroupItems(
      String iD, String mode) async {
   
    try {
      final response = await http.post(
          Uri.parse(baseUrl + qualificationgroupurl),
          body: {"ID": iD, "Mode": mode});
      if (response.statusCode == 200) {
        //log('qualification response: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> groupdata = json['result'];
        List<QualificationGroupModel> group = groupdata
            .map<QualificationGroupModel>(
                (json) => QualificationGroupModel.fromJson(json))
            .toList();
        return right(group);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log('Total Order error$e');
      return left(const MainFailures.serverfailure());
    }
  }
}
