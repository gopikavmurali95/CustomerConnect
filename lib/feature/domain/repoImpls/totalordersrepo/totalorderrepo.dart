import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/total_orders_details_model/total_orders_details_model.dart';
import 'package:customer_connect/feature/data/models/total_orders_inparas/total_orders_inparas.dart';
import 'package:customer_connect/feature/data/models/total_orders_model/total_orders_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
// import 'package:logger/logger.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: ITotalOrdersRepo)
class TotalOrderRepo implements ITotalOrdersRepo {
  @override
  Future<Either<MainFailures, List<TotalOrdersModel>>> getTotalOrders(
      TotalOrdersInparas ordersIn) async {
    // var logger = Logger();
    try {
      final response = await http.post(Uri.parse(baseUrl + totalordersurl),
          body: ordersIn.toJson());
      if (response.statusCode == 200) {
        log('response: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> totalordersdata = json['result'];
        List<TotalOrdersModel> orders = totalordersdata
            .map<TotalOrdersModel>((json) => TotalOrdersModel.fromJson(json))
            .toList();
        return right(orders);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      // logger.e('Invoice Header error$e');
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, List<TotalOrdersDetailsModel>>> getOrderDetail(
      String ordID) async {
    // var logger = Logger();
    try {
      final response = await http.post(Uri.parse(baseUrl + totalorderdetailurl),
          body: {"ord_ID": ordID});
      if (response.statusCode == 200) {
        // logger.w('response: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> orderdetailsdata = json['result'];
        List<TotalOrdersDetailsModel> ordersdet = orderdetailsdata
            .map<TotalOrdersDetailsModel>(
                (json) => TotalOrdersDetailsModel.fromJson(json))
            .toList();
        return right(ordersdet);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      // logger.e('Total Order error$e');
      return left(const MainFailures.serverfailure());
    }
  }
}
