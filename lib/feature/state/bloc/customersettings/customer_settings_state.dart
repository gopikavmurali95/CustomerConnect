part of 'customer_settings_bloc.dart';

@freezed
class CustomerSettingsState with _$CustomerSettingsState {
  const factory CustomerSettingsState.getCustomerSettingsState(
      {required CustomerSettingsModel? settings}) = GetCustomerSettingsState;

  const factory CustomerSettingsState.customerSettingsFailedState() =
      CustomerSettingsFailedState;

  factory CustomerSettingsState.initial() =>
      CustomerSettingsState.getCustomerSettingsState(
          settings: CustomerSettingsModel(
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
      ));
}
