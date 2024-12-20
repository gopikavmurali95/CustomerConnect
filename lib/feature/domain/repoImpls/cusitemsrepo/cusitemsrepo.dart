import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/cus_items_model/cus_items_model.dart';
import 'package:customer_connect/feature/data/models/item_listing_count/item_listing_count.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: ICusItemsRepo)
class CusItemsRepo implements ICusItemsRepo {
  @override
  Future<Either<MainFailures, List<CusItemsModel>>> getCusItems(
      String cusId,
      String route,
      String fromDate,
      String toDate,
      String pagenum,
      String searchString) async {
    try {
      final response = await http.post(Uri.parse(baseUrl + cusItemsUrl), body: {
        "CusID": cusId,
        "Route": route,
        "FromDate": fromDate,
        "ToDate": toDate,
        "Pagenum": pagenum,
        "SearchString": searchString
      });
      log({
        "CusID": cusId,
        "Route": route,
        "FromDate": fromDate,
        "ToDate": toDate,
        "Pagenum": pagenum,
        "SearchString": searchString
      }.toString());
      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);

        final List<dynamic> itemdata = json['result'];
        List<CusItemsModel> itemlist = itemdata
            .map<CusItemsModel>((json) => CusItemsModel.fromJson(json))
            .toList();

        return right(itemlist);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log('cu Items error$e');
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, ItemListingCount>> getCusItemsCount(
      String cusId,
      String route,
      String fromDate,
      String toDate,
      String pagenum,
      String searchString) async {
    try {
      final response =
          await http.post(Uri.parse(baseUrl + itemListingCountUrl), body: {
        "CusID": cusId,
        "Route": route,
        "FromDate": fromDate,
        "ToDate": toDate,
        "Pagenum": pagenum,
        "SearchString": searchString
      });

      log(response.body);
      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final countModel = ItemListingCount.fromJson(json["result"][0]);
        return right(countModel);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log('login error : $e');
      return left(const MainFailures.serverfailure());
    }
  }
}
