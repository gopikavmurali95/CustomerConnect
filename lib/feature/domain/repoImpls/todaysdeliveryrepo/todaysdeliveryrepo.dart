import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/todays_delivery_details_model/todays_delivery_details_model.dart';
import 'package:customer_connect/feature/data/models/todays_delivery_header_model/todays_delivery_header_model.dart';
import 'package:customer_connect/feature/data/models/todays_delivery_in_paras/todays_delivery_in_paras.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: ITodaysDeliveryRepo)
class TodaysDelivery implements ITodaysDeliveryRepo {
  @override
  Future<Either<MainFailures, List<TodaysDeliveryHeaderModel>>>
      getTodaysDelivery(TodaysDeliveryInParas deliveryIn) async {
    var logger = Logger();
    try {
      final response = await http.post(
          Uri.parse(baseUrl + todaysdeliveryheaderurl),
          body: deliveryIn.toJson());
          log(jsonEncode(deliveryIn));
      if (response.statusCode == 200) {
        logger.w('response: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> todaysdeliverydata = json['result'];
        List<TodaysDeliveryHeaderModel> orders = todaysdeliverydata
            .map<TodaysDeliveryHeaderModel>(
                (json) => TodaysDeliveryHeaderModel.fromJson(json))
            .toList();
        return right(orders);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      logger.e('Todays Delivery error$e');
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, List<TodaysDeliveryDetailsModel>>>
      getDeliveryDetail(String id) async {
    try {
      final response = await http.post(
          Uri.parse(baseUrl + todaysdeliverydetailsurl),
          body: {"ID": id});
      log('response: ${response.body}');
      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> todaysdeliverydet = json['result'];
        List<TodaysDeliveryDetailsModel> orders = todaysdeliverydet
            .map<TodaysDeliveryDetailsModel>(
                (json) => TodaysDeliveryDetailsModel.fromJson(json))
            .toList();
        return right(orders);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log('Todays Delivery details error$e');
      return left(const MainFailures.serverfailure());
    }
  }
}
