import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/cus_ins_inv_type_model/cus_ins_inv_type_model.dart';
import 'package:customer_connect/feature/data/models/cus_ins_invoice_header_in_model/cus_ins_invoice_header_in_model.dart';
import 'package:customer_connect/feature/data/models/cus_ins_invoice_model/cus_ins_invoice_model.dart';
import 'package:customer_connect/feature/data/models/cus_ins_onv_detail_model/cus_ins_onv_detail_model.dart';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: ICusInsInvoiceRepo)
class CusInsInvoiceRepo implements ICusInsInvoiceRepo {
  @override
  Future<Either<MainFailures, List<CusInsOnvDetailModel>>> getInvoiceDetails(
      String iD) async {
    try {
      final response = await http
          .post(Uri.parse(baseUrl + cusInsInvDetailUrl), body: {'ID': iD});

      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        // log(response.body);
        final List<dynamic> invdetaildata = json['result'];
        List<CusInsOnvDetailModel> detaillist = invdetaildata
            .map<CusInsOnvDetailModel>(
                (json) => CusInsOnvDetailModel.fromJson(json))
            .toList();

        return right(detaillist);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log('cusins invdetail error $e');
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, List<CusInsInvoiceModel>>> getInvoiceHeaders(
      CusInsInvoiceHeaderInModel invIn) async {
    try {
      final response = await http.post(Uri.parse(baseUrl + cusinsInvHUrl),
          body: invIn.toJson());

      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> invheaderdata = json['result'];
        List<CusInsInvoiceModel> headerlist = invheaderdata
            .map<CusInsInvoiceModel>(
                (json) => CusInsInvoiceModel.fromJson(json))
            .toList();

        return right(headerlist);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log('cusins in header error$e');
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, List<CusInsInvTypeModel>>> getInvoicetypes(
      String iD) async {
    try {
      final response =
          await http.post(Uri.parse(baseUrl + cusInvTypeUrl), body: {'ID': iD});

      if (response.statusCode == 200) {
        Map<String, dynamic> json = jsonDecode(response.body);
        // log(response.body);
        final List<dynamic> invtypedata = json['result'];
        List<CusInsInvTypeModel> typelist = invtypedata
            .map<CusInsInvTypeModel>(
                (json) => CusInsInvTypeModel.fromJson(json))
            .toList();

        return right(typelist);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      log('types  error$e');
      return left(const MainFailures.serverfailure());
    }
  }
}
