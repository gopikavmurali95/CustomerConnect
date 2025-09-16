import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/cu_s_ins_rot_list/cu_s_ins_rot_list.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: IGetAllAvailableRoutesRepo)
class GetAllRoutesRepo implements IGetAllAvailableRoutesRepo {
  @override
  Future<Either<MainFailures, List<CuSInsRotList>>> getallRoutes(
      String userID) async {
    try {
      final response =
          await http.post(Uri.parse(baseUrl + allRoutesUrl), body: {
        "UserId": userID,
      });

      // log(response.body);
      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> routedata = json['result'];
        List<CuSInsRotList> routelist = routedata
            .map<CuSInsRotList>((json) => CuSInsRotList.fromJson(json))
            .toList();
        return right(routelist);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log('route error $e');
      return left(const MainFailures.serverfailure());
    }
  }
}
