import 'dart:convert';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/special_price_customer_model/special_price_customer_model.dart';
import 'package:customer_connect/feature/data/models/special_price_details_model/special_price_details_model.dart';
import 'package:customer_connect/feature/data/models/special_price_header_model/special_price_header_model.dart';
import 'package:customer_connect/feature/data/models/special_price_header_outparas/special_price_header_outparas.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: ISpecialPriceRepo)
class SpecialPriceRepo implements ISpecialPriceRepo {
  @override
  Future<Either<MainFailures, List<SpecialPriceHeaderOutparas>>>
      getSpecialPrice(SpecialPriceHeaderModel specialPriceIn) async {
    var logger = Logger();
    try {
      final response =
          await http.post(Uri.parse(baseUrl + specialpriceheaderurl));
      if (response.statusCode == 200) {
        logger.w('response: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> specialPriceData = json['result'];
        List<SpecialPriceHeaderOutparas> price = specialPriceData
            .map<SpecialPriceHeaderOutparas>(
                (json) => SpecialPriceHeaderOutparas.fromJson(json))
            .toList();
        return right(price);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      logger.e('Special Price error$e');
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, List<SpecialPriceDetailsModel>>> getPriceDetail(
      String prdID) async {
    var logger = Logger();
    try {
      final response = await http.post(
          Uri.parse(baseUrl + specialPriceDetailsUrl),
          body: {"prh_id": prdID});
      if (response.statusCode == 200) {
        logger.w('response: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> specialPriceDetails = json['result'];
        List<SpecialPriceDetailsModel> pricedetails = specialPriceDetails
            .map<SpecialPriceDetailsModel>(
                (json) => SpecialPriceDetailsModel.fromJson(json))
            .toList();
        return right(pricedetails);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      logger.e('Special Price Details error$e');
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, List<SpecialPriceCustomerModel>>>
      getPriceCustomer(String userID, String fromDate, String toDate) async {
    var logger = Logger();
    try {
      final response = await http.post(
          Uri.parse(baseUrl + specialPRiceCustomerurl),
          body: {"UserID": userID, "FromDate": fromDate, "ToDate": toDate});
      if (response.statusCode == 200) {
        logger.w('response: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> specialPriceCustomers = json['result'];
        List<SpecialPriceCustomerModel> customerdetails = specialPriceCustomers
            .map<SpecialPriceCustomerModel>(
                (json) => SpecialPriceCustomerModel.fromJson(json))
            .toList();
        return right(customerdetails);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      logger.e('Special Price Customers error$e');
      return left(const MainFailures.serverfailure());
    }
  }
}
