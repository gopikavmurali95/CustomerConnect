import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/cus_promo_in_model/cus_promo_in_model.dart';
import 'package:customer_connect/feature/data/models/cus_promotion_detail_model/cus_promotion_detail_model.dart';
import 'package:customer_connect/feature/data/models/cus_promotion_header/cus_promotion_header.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: ICusProtionRepo)
class CusPromotionsRepo implements ICusProtionRepo {
  @override
  Future<Either<MainFailures, List<CusPromotionDetailModel>>>
      getCusPromotionDetails(String iD) async {
    try {
      final response = await http
          .post(Uri.parse(baseUrl + cuspromotionDetailUrl), body: {"ID": iD});

      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);

        final List<dynamic> cusPromodetaildata = json['result'];
        List<CusPromotionDetailModel> detaillist = cusPromodetaildata
            .map<CusPromotionDetailModel>(
                (json) => CusPromotionDetailModel.fromJson(json))
            .toList();

        return right(detaillist);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log('promos details error$e');
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, List<CusPromotionHeader>>> getCusPromotionHeaders(
      CusPromoInModel cusIN) async {
    try {
      final response = await http.post(
          Uri.parse(baseUrl + cusPromotionHeaderUrl),
          body: cusIN.toJson());

          log(jsonEncode(cusIN));

      if (response.statusCode == 200) {
        log(response.body);
        Map<String, dynamic> json = jsonDecode(response.body);

        final List<dynamic> cusPromoheaderdata = json['result'];
        List<CusPromotionHeader> headerlist = cusPromoheaderdata
            .map<CusPromotionHeader>(
                (json) => CusPromotionHeader.fromJson(json))
            .toList();

        return right(headerlist);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log('promos error$e');
      return left(const MainFailures.serverfailure());
    }
  }
}
