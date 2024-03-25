import 'dart:convert';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/picking_and_loadin_counts_model/picking_and_loadin_counts_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: IPickingAndLoadinCountRepo)
class PickingAndLoadinCountRepo implements IPickingAndLoadinCountRepo {
  @override
  Future<Either<MainFailures, PickingAndLoadinCountsModel>> plCount(
      String userID) async {
    var logger = Logger();
    try {
      final response =
          await http.post(Uri.parse(baseUrl + totalpickingandloadincountsurl));
      if (response.statusCode == 200) {
        logger.w('Response: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final pickingandloadincount =
            PickingAndLoadinCountsModel.fromJson(json["result"][0]);
        return right(pickingandloadincount);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Wrong count'),
        );
      }
    } catch (e) {
      logger.e('Picking and loadin count error : $e');
      return left(const MainFailures.serverfailure());
    }
  }
}
