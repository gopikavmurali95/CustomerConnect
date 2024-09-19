import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:customer_connect/core/failures/failures.dart';
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart';
import 'package:customer_connect/feature/data/models/customer_settings_model/customer_settings_model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'customer_settings_event.dart';
part 'customer_settings_state.dart';
part 'customer_settings_bloc.freezed.dart';

@injectable
class CustomerSettingsBloc
    extends Bloc<CustomerSettingsEvent, CustomerSettingsState> {
  final ICustomerSettingsRepo customerSettingsRepo;
  CustomerSettingsBloc(this.customerSettingsRepo)
      : super(CustomerSettingsState.initial()) {
    on<GetCustomerSettingsEvent>((event, emit) async {
      log('settigs Bloc Called');
      Either<MainFailures, CustomerSettingsModel> settings =
          await customerSettingsRepo.getCustomerSettings(event.usrID);

      emit(
        settings.fold(
          (l) => const CustomerSettingsFailedState(),
          (r) => GetCustomerSettingsState(settings: r),
        ),
      );
    });
    on<ClearSettingsEvent>((event, emit) {
      emit(GetCustomerSettingsState(
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
      )));
    });
  }
}
