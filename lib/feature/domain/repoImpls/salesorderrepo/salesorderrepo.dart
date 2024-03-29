import 'dart:convert';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/sales_oder_count_model/sales_oder_count_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: ISalesOrderRepo)
class SalesOrderCountRepo implements ISalesOrderRepo {
  @override
  Future<Either<MainFailures, SalesOderCountModel>> soCount(
      String userID) async {
    // var logger = Logger();
    try {
      final response = await http.post(
          Uri.parse(baseUrl + salesorderscountsurl),
          body: {"UserID": userID});
      if (response.statusCode == 200) {
        // logger.w('Response: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final salescount = SalesOderCountModel.fromJson(json["result"][0]);
        return right(salescount);
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
