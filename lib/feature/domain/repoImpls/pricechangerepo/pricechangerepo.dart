import 'dart:convert';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/price_change_header_model/price_change_header_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: IPriceChangeRepo)
class PriceChangeRepo implements IPriceChangeRepo {
  @override
  Future<Either<MainFailures, List<PriceChangeHeaderModel>>> priceChangeList(
      String rotID) async {
    var logger = Logger();
    try {
      final response = await http.post(
          Uri.parse(baseUrl + pricechangeheaderurl),
          body: {"rotID": rotID});
      if (response.statusCode == 200) {
        logger.w('response: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> priceChange = json['result'];
        List<PriceChangeHeaderModel> priceList = priceChange
            .map<PriceChangeHeaderModel>(
                (json) => PriceChangeHeaderModel.fromJson(json))
            .toList();
        return right(priceList);
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
