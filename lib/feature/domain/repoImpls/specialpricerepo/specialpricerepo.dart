import 'dart:convert';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
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
      logger.e('Todays Delivery error$e');
      return left(const MainFailures.serverfailure());
    }
  }
}
