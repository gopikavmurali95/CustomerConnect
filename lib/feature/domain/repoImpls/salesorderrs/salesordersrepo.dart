import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/sales_order_details_inparas_model/sales_order_details_inparas_model.dart';
import 'package:customer_connect/feature/data/models/sales_order_details_model/sales_order_details_model.dart';
import 'package:customer_connect/feature/data/models/sales_orders_in_model/sales_orders_in_model.dart';
import 'package:customer_connect/feature/data/models/sales_orders_model/sales_orders_model.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: ISalesOrdersRepo)
class SalesOrdersRepo implements ISalesOrdersRepo {
  @override
  Future<Either<MainFailures, List<SalesOrdersModel>>> getSalesOrders(
      SalesOrdersInModel salesIn) async {
    try {
      final response = await http.post(Uri.parse(baseUrl + cusSalesOrdersUrl),
          body: salesIn.toJson());
      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> salesdata = json['result'];
        List<SalesOrdersModel> saleslist = salesdata
            .map<SalesOrdersModel>((json) => SalesOrdersModel.fromJson(json))
            .toList();
        return right(saleslist);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log('sales orders error $e');
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, List<SalesOrderDetailsModel>>>
      getSalesOrderdetails(SalesOrderDetailsInparasModel salesInparas) async {
    try {
      final response = await http.post(
          Uri.parse(baseUrl + salesOrderDetailsUrl),
          body: salesInparas.toJson());
      if (response.statusCode == 200) {
        log(response.body);
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> salesdata = json['result'];
        List<SalesOrderDetailsModel> saleslist = salesdata
            .map<SalesOrderDetailsModel>(
                (json) => SalesOrderDetailsModel.fromJson(json))
            .toList();
        return right(saleslist);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log('sales orders error $e');
      return left(const MainFailures.serverfailure());
    }
  }
}
