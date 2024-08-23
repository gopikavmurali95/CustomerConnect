import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/promotion_customer_model/promotion_customer_model.dart';
import 'package:customer_connect/feature/data/models/promotion_details_model/promotion_details_model.dart';
import 'package:customer_connect/feature/data/models/promotion_header_in_paras/promotion_header_in_paras.dart';
import 'package:customer_connect/feature/data/models/promotion_header_model/promotion_header_model.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:logger/web.dart';

@LazySingleton(as: IPromotionHeaderRepo)
class PromotionHeaderRepo implements IPromotionHeaderRepo {
  @override
  Future<Either<MainFailures, List<PromotionHeaderModel>>> getPromotionHeader(
      PromotionHeaderInParas inpromtionIn) async {
    var logger = Logger();
    try {
      final response = await http.post(Uri.parse(baseUrl + promotionheaderurl),
          body: inpromtionIn.toJson());
      if (response.statusCode == 200) {
        //log('promotion header response: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> promotionheaderdata = json['result'];
        List<PromotionHeaderModel> promotions = promotionheaderdata
            .map<PromotionHeaderModel>(
                (json) => PromotionHeaderModel.fromJson(json))
            .toList();
        return right(promotions);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      logger.e('Promotion Header error$e');
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, List<PromotionCustomerModel>>>
      getPromotionCustomer(String iD) async {
    // var logger = Logger();
    try {
      final response = await http
          .post(Uri.parse(baseUrl + promotioncustomerurl), body: {"ID": iD});
      if (response.statusCode == 200) {
       log('promotion customer response: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> pCustomer = json['result'];
        List<PromotionCustomerModel> customerdata = pCustomer
            .map<PromotionCustomerModel>(
                (e) => PromotionCustomerModel.fromJson(e))
            .toList();
        return right(customerdata);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      //logger.e('Promotion Customer error$e');
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, List<PromotionDetailsModel>>> getPromotionDetails(
      String iD) async {
    var logger = Logger();
    try {
      final response = await http
          .post(Uri.parse(baseUrl + promotiondetailsurl), body: {"ID": iD});
      if (response.statusCode == 200) {
        logger.w('response: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> custdetails = json['result'];
        List<PromotionDetailsModel> details = custdetails
            .map<PromotionDetailsModel>(
                (json) => PromotionDetailsModel.fromJson(json))
            .toList();
        return right(details);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      logger.e('Promotion Details error$e');
      return left(const MainFailures.serverfailure());
    }
  }
}
