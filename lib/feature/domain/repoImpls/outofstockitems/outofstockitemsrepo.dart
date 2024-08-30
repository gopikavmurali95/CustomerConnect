import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/out_of_stock_items_customers_model/out_of_stock_items_customers_model.dart';
import 'package:customer_connect/feature/data/models/out_of_stock_items_model/out_of_stock_items_model.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: IOutOfStockProductsRepo)
class OutOfStockItemsRepo implements IOutOfStockProductsRepo {
  @override
  Future<Either<MainFailures, List<OutOfStockItemsModel>>> getOutOfStockItems(
      String fromDate, String toDate) async {
    try {
      final response = await http.post(Uri.parse(baseUrl + outOfStockitemsUrl),
          body: {"FromDate": fromDate, "ToDate": toDate});

      if (response.statusCode == 200) {
        log("outofstockitem : ${response.body}");
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> headerdata = json['result'];
        List<OutOfStockItemsModel> headers = headerdata
            .map<OutOfStockItemsModel>(
                (json) => OutOfStockItemsModel.fromJson(json))
            .toList();
        return right(headers);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, List<OutOfStockItemsCustomersModel>>>
      getOutOfStockItemsCustomers(String osiID) async {
    try {
      final response = await http.post(
          Uri.parse(baseUrl + outOfStockitemCustomersUrl),
          body: {"osi_ID": osiID});

      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> detaildata = json['result'];
        List<OutOfStockItemsCustomersModel> details = detaildata
            .map<OutOfStockItemsCustomersModel>(
                (json) => OutOfStockItemsCustomersModel.fromJson(json))
            .toList();
        return right(details);
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
