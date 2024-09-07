import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/customer_live_location_model/customer_live_location_model.dart';
import 'package:customer_connect/feature/data/models/tracking_sales_man_model/tracking_sales_man_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: ITrackSalesManRepo)
class TrackSalesManRepo implements ITrackSalesManRepo {
  @override
  Future<Either<MainFailures, List<TrackingSalesManModel>>> getSalesManDetails(
      String date, String rotID) async {
    try {
      final response = await http.post(Uri.parse(baseUrl + trackSalesManUrl),
          body: {"Date": date, "rotID": rotID});
      log(response.body);

      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> data = json['result'];
        List<TrackingSalesManModel> salesman = data
            .map<TrackingSalesManModel>(
                (json) => TrackingSalesManModel.fromJson(json))
            .toList();
        return right(salesman);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, List<CustomerLiveLocationModel>>>
      getCustomerLocations(String date) async {
    try {
      final response = await http.post(
          Uri.parse(baseUrl + trackAllCustomersUrl),
          body: {"Date": date});
      log(response.body);
      log(date);
      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> data = json['result'];
        List<CustomerLiveLocationModel> salesman = data
            .map<CustomerLiveLocationModel>(
                (json) => CustomerLiveLocationModel.fromJson(json))
            .toList();
        return right(salesman);
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
