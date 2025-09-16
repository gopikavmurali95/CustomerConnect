import 'dart:convert';
import 'dart:developer';

import 'package:customer_connect/core/api/endpoints.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/customer_settings_model/customer_settings_model.dart';
import 'package:dartz/dartz.dart';
// import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';

@LazySingleton(as: ICustomerSettingsRepo)
class CustomerSettingsRepo implements ICustomerSettingsRepo {
  final dio = Dio();
  @override
  Future<Either<MainFailures, CustomerSettingsModel>> getCustomerSettings(
      String userID) async {
    // log('Settings repo called');
    try {
      // log("${baseUrl + cusSettingUrl} $userID");

      // Define the Dio options with a timeout
      final options = Options(
        contentType: Headers.formUrlEncodedContentType,
        /*   sendTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10), */
      );

      final response = await dio.post(
        baseUrl + cusSettingUrl,
        data: {"usrID": userID},
        options: options,
      );

      log('Response: ${response.data}');

      // Check if the response data is a string, then decode it
      if (response.statusCode == 200) {
        dynamic responseData = response.data;

        // If the response is a string, decode it as JSON
        if (responseData is String) {
          responseData = jsonDecode(responseData);
        }

        // Now that the responseData is a Map, we can process it
        List<dynamic> resultList = responseData['result'];

        List<Map<String, String>> formattedList = resultList.map((item) {
          return {
            'ParentNode': item['ParentNode'].toString(),
            'ChildNode': item['ChildNode'].toString(),
          };
        }).toList();

        customerSettings.updateFromApiResponse(formattedList);
        return right(customerSettings);
      } else {
        log('settings failure');
        return right(customerSettings); // Adjust this based on your needs
      }
    } catch (e) {
      log('Unknown error: $e');
      return right(customerSettings);
    }
  }

  CustomerSettingsModel updateFromChildNode(String childNode) {
    List<String> availableNodes = childNode.split('-');
    CustomerSettingsModel settingsmodel = CustomerSettingsModel();
    settingsmodel.invTrans = availableNodes.contains('INVTRANS') ? 'Y' : 'N';
    settingsmodel.custTrans = availableNodes.contains('CUSTTRANS') ? 'Y' : 'N';
    settingsmodel.salesOrd = availableNodes.contains('SALESORD') ? 'Y' : 'N';
    settingsmodel.approvals = availableNodes.contains('APPROVALS') ? 'Y' : 'N';
    settingsmodel.custInsight = availableNodes.contains('CUSINSI') ? 'Y' : 'N';
    settingsmodel.tracking = availableNodes.contains('TRACKING') ? 'Y' : 'N';
    settingsmodel.promo = availableNodes.contains('PROMO') ? 'Y' : 'N';
    settingsmodel.spclPrice = availableNodes.contains('SPCLPRICE') ? 'Y' : 'N';
    settingsmodel.outstand = availableNodes.contains('OUTSTD') ? 'Y' : 'N';
    settingsmodel.target = availableNodes.contains('TARGET') ? 'Y' : 'N';
    settingsmodel.actReview = availableNodes.contains('ACTREVIEW') ? 'Y' : 'N';
    settingsmodel.merch = availableNodes.contains('MERCH') ? 'Y' : 'N';
    settingsmodel.priceChangeAppr =
        availableNodes.contains('PRICECHANGEAPPR') ? 'Y' : 'N';
    settingsmodel.partDelAppr =
        availableNodes.contains('PARTDELAPPR') ? 'Y' : 'N';
    settingsmodel.schReturnAppr =
        availableNodes.contains('SCHRETURNAPPR') ? 'Y' : 'N';
    settingsmodel.retAppr = availableNodes.contains('RETAPPR') ? 'Y' : 'N';
    settingsmodel.dispNoteAppr =
        availableNodes.contains('DISPNOTEAPPR') ? 'Y' : 'N';
    settingsmodel.credNoteAppr =
        availableNodes.contains('CREDNOTEAPPR') ? 'Y' : 'N';
    settingsmodel.assAddAppr =
        availableNodes.contains('ASSADDAPPR') ? 'Y' : 'N';
    settingsmodel.assRemAppr =
        availableNodes.contains('ASSREMAPPR') ? 'Y' : 'N';
    settingsmodel.vantoVanAppr =
        availableNodes.contains('VANTOVANAPPR') ? 'Y' : 'N';
    settingsmodel.loadTransAppr =
        availableNodes.contains('LOADTRANSAPPR') ? 'Y' : 'N';
    settingsmodel.jourPlanAppr =
        availableNodes.contains('JOURPLANAPPR') ? 'Y' : 'N';
    settingsmodel.fieldServAppr =
        availableNodes.contains('FIELDSERVAPPR') ? 'Y' : 'N';
    settingsmodel.matReqAppr =
        availableNodes.contains('MATREQAPPR') ? 'Y' : 'N';
    settingsmodel.loadReqAppr =
        availableNodes.contains('LOADREQAPPR') ? 'Y' : 'N';
    settingsmodel.invReconfAppr =
        availableNodes.contains('INVRECONFAPPR') ? 'Y' : 'N';
    settingsmodel.voidTransAppr =
        availableNodes.contains('VOIDTRANSAPPR') ? 'Y' : 'N';
    settingsmodel.mustSellAppr =
        availableNodes.contains('MUSTSELLAPPR') ? 'Y' : 'N';
    settingsmodel.settleAppr =
        availableNodes.contains('SETTLEAPPR') ? 'Y' : 'N';
    settingsmodel.picking = availableNodes.contains('PICKING') ? 'Y' : 'N';
    settingsmodel.loadin = availableNodes.contains('LOADIN') ? 'Y' : 'N';

    return settingsmodel;
  }
}

CustomerSettingsModel customerSettings = CustomerSettingsModel(
  invTrans: "N",
  custTrans: "N",
  salesOrd: "N",
  approvals: "N",
  custInsight: "N",
  tracking: "N",
  promo: "N",
  spclPrice: "N",
  outstand: "N",
  target: "N",
  actReview: "N",
  merch: "N",
  priceChangeAppr: "N",
  partDelAppr: "N",
  schReturnAppr: "N",
  retAppr: "N",
  dispNoteAppr: "N",
  credNoteAppr: "N",
  assAddAppr: "N",
  assRemAppr: "N",
  vantoVanAppr: "N",
  loadTransAppr: "N",
  jourPlanAppr: "N",
  fieldServAppr: "N",
  matReqAppr: "N",
  loadReqAppr: "N",
  invReconfAppr: "N",
  voidTransAppr: "N",
  mustSellAppr: "N",
  settleAppr: "N",
  picking: "N",
  loadin: "N",
  invoice: "N",
  arcollection: "N",
  cusArcollection: "N",
  cusDocuments: "N",
  cusGeoLocation: "N",
  cusInvoice: "N",
  cusItemList: "N",
  cusOutstanding: "N",
  cusPromotion: "N",
  cusSalesOrders: "N",
  cusServiceJobs: "N",
  cusSpPrice: "N",
  todaysdelivery: "N",
  totalorders: "N",
);
