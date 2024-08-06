import 'dart:convert';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/out_of_stock_customer_detail_model/out_of_stock_customer_detail_model.dart';
import 'package:customer_connect/feature/data/models/out_of_stock_customer_model/out_of_stock_customer_model.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: IOutOfStockCustomersRepo)
class OutOfStockCustomersRepo implements IOutOfStockCustomersRepo {
  @override
  Future<Either<MainFailures, List<OutOfStockCustomerModel>>>
      getOutOfStockCustomers(String fromDate, String toDate) async {
    try {
      final response = await http.post(Uri.parse(baseUrl + oosCustomersUrl),
          body: {"FromDate": fromDate, "ToDate": toDate});

      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> headerdata = json['result'];
        List<OutOfStockCustomerModel> headers = headerdata
            .map<OutOfStockCustomerModel>(
                (json) => OutOfStockCustomerModel.fromJson(json))
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
  Future<Either<MainFailures, List<OutOfStockCustomerDetailModel>>>
      getOutOfStockCustomersDetail(String cusID) async {
    try {
      final response = await http.post(
          Uri.parse(baseUrl + oosCustomerdetailUrl),
          body: {"cus_ID": cusID});

      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> detaildata = json['result'];
        List<OutOfStockCustomerDetailModel> details = detaildata
            .map<OutOfStockCustomerDetailModel>(
                (json) => OutOfStockCustomerDetailModel.fromJson(json))
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
