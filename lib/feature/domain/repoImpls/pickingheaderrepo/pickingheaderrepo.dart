import 'dart:convert';
import 'dart:developer';
import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/picking_header_model/PickingInModel.dart';
import 'package:customer_connect/feature/data/models/picking_header_model/PickingOutModel.dart';
import 'package:customer_connect/feature/data/models/pickingdetailmodel/PickingDetailModel.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: IPickingHeaderRepo)
class PickingHeaderRepo implements IPickingHeaderRepo {
  @override
  Future<Either<MainFailures, List<PickingOutModel>>> getPickingHeaders(
      PickingInModel pickingIn) async {
    try {
      final response = await http.post(Uri.parse(baseUrl + pickingHeaderUrl),
          body: pickingIn.toJson());
      if (response.statusCode == 200) {
        //log(response.body);
        Map<String, dynamic> json = jsonDecode(response.body);

        final List<dynamic> loadingdetaildata = json['result'];
        List<PickingOutModel> detaillist = loadingdetaildata
            .map<PickingOutModel>((json) => PickingOutModel.fromJson(json))
            .toList();

        // Map<String,dynamic> json = jsonDecode(response.body);
        // final List<dynamic> pickingheaderlist = json['result'];
        // List<PickingOutModel> pickinglist = pickingheaderlist.map<PickingOutModel>((json) =>
        // PickingOutModel.fromJson(json['result'][0])).toList();

        return right(detaillist);
      } else {
        return left(
          const MainFailures.networkerror(error: "something went wrong"),
        );
      }
    } catch (e) {
      log("error message:${e}");
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, List<PickingDetailModel>>> getPickingDetail(
      String iD) async {
    try {
      final response = await http
          .post(Uri.parse(baseUrl + pickingDetailUrl), body: {'PickingID': iD});

      if (response.statusCode == 200) {
        log(response.body);
        Map<String, dynamic> json = jsonDecode(response.body);

        final List<dynamic> loadingdetaildata = json['result'];
        List<PickingDetailModel> pickdetaillist = loadingdetaildata
            .map<PickingDetailModel>(
                (json) => PickingDetailModel.fromJson(json))
            .toList();
        return right(pickdetaillist);
      } else {
        return left(const MainFailures.networkerror(error: "wrong"));
      }
    } catch (e) {
      log("detail error:$e");
      return left(const MainFailures.serverfailure());
    }
  }
}
