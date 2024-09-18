import 'dart:convert';
// import 'dart:developer';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/invoice_details_footer_model/invoice_details_footer_model.dart';
import 'package:customer_connect/feature/data/models/invoice_details_model/invoice_details_model.dart';
import 'package:customer_connect/feature/data/models/invoice_header_inparas/invoice_header_inparas.dart';
import 'package:customer_connect/feature/data/models/invoice_header_model/invoice_header_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: IInvoiceRepo)
class InvoiceRepo implements IInvoiceRepo {
  @override
  Future<Either<MainFailures, List<InvoiceHeaderModel>>> getInvoiceHeaders(
      InvoiceHeaderInparas invoiceIn) async {
    var logger = Logger();
    try {
      final response = await http.post(Uri.parse(baseUrl + invoiceheaderurl),
          body: invoiceIn.toJson());
      // log();
      if (response.statusCode == 200) {
        // logger.w('Response: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> invoiceheaderdatea = json['result'];
        List<InvoiceHeaderModel> headerlist = invoiceheaderdatea
            .map<InvoiceHeaderModel>(
                (json) => InvoiceHeaderModel.fromJson(json))
            .toList();
        return right(headerlist);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      logger.e('Invoice Header error$e');
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, List<InvoiceDetailsModel>>> getInvoiceDetail(
      String iD) async {
    var logger = Logger();
    try {
      final response = await http
          .post(Uri.parse(baseUrl + invoicedetailsurl), body: {"ID": iD});
      if (response.statusCode == 200) {
        logger.w('Response: ${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> invoicedetailsdata = json['result'];
        List<InvoiceDetailsModel> headerlist = invoicedetailsdata
            .map<InvoiceDetailsModel>(
                (json) => InvoiceDetailsModel.fromJson(json))
            .toList();
        return right(headerlist);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      logger.e('Invoice Details error$e');
      return left(const MainFailures.serverfailure());
    }
  }

  @override
  Future<Either<MainFailures, List<InvoiceDetailsFooterModel>>>
      getInvoiceDetailFooter(String iD) async {
    var logger = Logger();
    try {
      final response = await http.post(
          Uri.parse(baseUrl + invoicedetailtypeWiseurl),
          body: {"ID": iD});

      if (response.statusCode == 200) {
        // logger.w('Response:${response.body}');
        Map<String, dynamic> json = jsonDecode(response.body);
        final List<dynamic> invfooterdata = json['result'];
        List<InvoiceDetailsFooterModel> footerlist = invfooterdata
            .map<InvoiceDetailsFooterModel>(
                (json) => InvoiceDetailsFooterModel.fromJson(json))
            .toList();
        return right(footerlist);
      } else {
        return left(
          const MainFailures.networkerror(error: 'Something went Wrong'),
        );
      }
    } catch (e) {
      logger.e('Invoice Details error$e');
      return left(const MainFailures.serverfailure());
    }
  }
}
