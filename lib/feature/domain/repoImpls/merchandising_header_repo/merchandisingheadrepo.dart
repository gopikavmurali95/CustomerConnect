import 'dart:convert';
import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/get_out_of_stock_count_model/get_out_of_stock_count_model.dart';
import 'package:http/http.dart' as http;
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IMerchandisingDashBoardRepo)
class MerchandisingScreenRepo implements IMerchandisingDashBoardRepo {
  @override
  Future<Either<MainFailures, GetOutOfStockCountModel>>
      getoutofstockcount() async {
    try {
      final response = await http.post(
        Uri.parse(baseUrl + merchandisingGetOutofStockCountUrl),
      );
      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final stockcount = GetOutOfStockCountModel.fromJson(json["result"][0]);
        return right(stockcount);
      } else {
        return left(
          const MainFailures.networkerror(error: "Something went wrong"),
        );
      }
    } catch (e) {
      return left(const MainFailures.serverfailure());
    }
  }
}
