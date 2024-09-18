import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/confirm_geo_code_in_model/confirm_geo_code_in_model.dart';
import 'package:customer_connect/feature/data/models/confirm_geo_locations_model/confirm_geo_locations_model.dart';
import 'package:customer_connect/feature/data/models/cus_geo_loc_in_model/cus_geo_loc_in_model.dart';
import 'package:customer_connect/feature/data/models/cus_geo_location_model/cus_geo_location_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: ICusGeoLocationRepo)
class GeoLocationRepo implements ICusGeoLocationRepo {
  @override
  Future<Either<MainFailures, List<CusGeoLocationModel>>> getCusGeoLocations(
      CusGeoLocInModel cusIN) async {
    try {
      final response = await http.post(Uri.parse(baseUrl + cusGeoLocationUrl),
          body: cusIN.toJson());
          log(jsonEncode(cusIN));
      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> geoheaderdatea = json['result'];
        List<CusGeoLocationModel> geolist = geoheaderdatea
            .map<CusGeoLocationModel>(
                (json) => CusGeoLocationModel.fromJson(json))
            .toList();
        return right(geolist);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log('geoloc error $e');
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, ConfirmGeoLocationsModel>> confirmGeolocation(
      ConfirmGeoCodeInModel confirmmodel) async {
    try {
      final response = await http.post(
          Uri.parse(baseUrl + updateGeoLocationUrl),
          body: confirmmodel.toJson());
          log(jsonEncode(confirmmodel));
      if (response.statusCode == 200) {
        // log(response.body);
        Map<String, dynamic> json = jsonDecode(response.body);
        final update = ConfirmGeoLocationsModel.fromJson(json["result"][0]);
        return right(update);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log('profile edit error : $e');
      return left(const MainFailures.serverfailure());
    }
  }
}
