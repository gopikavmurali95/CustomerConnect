import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/cus_sp_price_in_model/cus_sp_price_in_model.dart';
import 'package:customer_connect/feature/data/models/cus_sp_price_model/cus_sp_price_model.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: ICusSpPriceRepo)
class CusSpPriceRepo implements ICusSpPriceRepo {
  @override
  Future<Either<MainFailures, List<CusSpPriceModel>>> getCusSpPriceHeaders(
      CusSpPriceInModel cusIN) async {
    try {
      final response = await http.post(Uri.parse(baseUrl + cusSpPriceHeaderUrl),
          body: cusIN.toJson());
      log(jsonEncode(cusIN));
      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);

        final List<dynamic> spheaderdata = json['result'];
        List<CusSpPriceModel> headerlist = spheaderdata
            .map<CusSpPriceModel>((json) => CusSpPriceModel.fromJson(json))
            .toList();

        return right(headerlist);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log('cus Spprice error$e');
      return left(const MainFailures.serverfailure());
    }
  }
}
