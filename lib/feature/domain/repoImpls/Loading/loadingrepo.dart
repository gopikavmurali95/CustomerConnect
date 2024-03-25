import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/loading_detail_model/loading_detail_model.dart';
import 'package:customer_connect/feature/data/models/loading_header_in_model/loading_header_in_model.dart';
import 'package:customer_connect/feature/data/models/loading_headermodel/loading_headermodel.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: ILoadingRepo)
class LoadinRepo implements ILoadingRepo {
  @override
  Future<Either<MainFailures, List<LoadingDetailModel>>> getLoadingDetail(
      String iD) async {
    try {
      final response = await http
          .post(Uri.parse(baseUrl + loadingDetailUrl), body: {"ID": iD});

      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);

        final List<dynamic> loadingdetaildata = json['result'];
        List<LoadingDetailModel> detaillist = loadingdetaildata
            .map<LoadingDetailModel>(
                (json) => LoadingDetailModel.fromJson(json))
            .toList();

        return right(detaillist);
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
  Future<Either<MainFailures, List<LoadingHeadermodel>>> getLoadingHeaders(
      LoadingHeaderInModel loadingIn) async {
    try {
      final response = await http.post(Uri.parse(baseUrl + loadingHeaderUrl),
          body: loadingIn.toJson());

      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);

        final List<dynamic> loadingheaderdata = json['result'];
        List<LoadingHeadermodel> headerlist = loadingheaderdata
            .map<LoadingHeadermodel>(
                (json) => LoadingHeadermodel.fromJson(json))
            .toList();

        return right(headerlist);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log('loading error$e');
      return left(const MainFailures.serverfailure());
    }
  }
}
