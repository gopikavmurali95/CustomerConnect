import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:customer_connect/constants/fonts.dart';
import 'package:customer_connect/feature/data/di/injectable.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
import 'package:customer_connect/feature/domain/notification/fcmmessgehandler.dart';
import 'package:customer_connect/feature/domain/notification/firebasenotification.dart';
// import 'package:customer_connect/feature/data/models/picking_header_model/PickingOutModel.dart';
import 'package:customer_connect/feature/state/bloc/Invoice_details/invoice_details_bloc.dart';
import 'package:customer_connect/feature/state/bloc/activityreviewdetail/activity_review_detail_bloc.dart';
import 'package:customer_connect/feature/state/bloc/activityreviewheader/activity_review_header_bloc.dart';
import 'package:customer_connect/feature/state/bloc/activityreviewtarget/activity_review_targets_bloc.dart';
import 'package:customer_connect/feature/state/bloc/activitysalesdata/activity_review_sales_data_bloc.dart';
// import 'package:customer_connect/feature/state/bloc/PartialDeliveryReasons/partial_delivery_reasons_bloc.dart';
import 'package:customer_connect/feature/state/bloc/approvalreasons/approval_reasons_bloc.dart';
import 'package:customer_connect/feature/state/bloc/approvalscountsbloc/approval_counts_bloc.dart';
import 'package:customer_connect/feature/state/bloc/approvepricechange/approve_price_change_bloc.dart';
import 'package:customer_connect/feature/state/bloc/approvereturnprod/approve_return_product_bloc.dart';
import 'package:customer_connect/feature/state/bloc/asset_adding_approval_header/asset_add_in_approval_header_bloc.dart';
import 'package:customer_connect/feature/state/bloc/assetaddapproval/asset_adding_approval_and_rject_bloc_bloc.dart';
import 'package:customer_connect/feature/state/bloc/assetremovalapproval/asset_removal_apprval_bloc.dart';
import 'package:customer_connect/feature/state/bloc/assetremovalheader/asset_removel_request_header_bloc.dart';
import 'package:customer_connect/feature/state/bloc/chatusers/all_users_bloc.dart';
import 'package:customer_connect/feature/state/bloc/creditnoteapproval/credit_note_approval_and_reject_bloc.dart';
import 'package:customer_connect/feature/state/bloc/creditnotedetail/credit_note_detail_bloc.dart';
import 'package:customer_connect/feature/state/bloc/creditnoteheader/credit_note_header_bloc.dart';
import 'package:customer_connect/feature/state/bloc/cusdocuments/cus_documents_bloc.dart';
import 'package:customer_connect/feature/state/bloc/cusgeolocation/cus_geo_location_bloc.dart';
import 'package:customer_connect/feature/state/bloc/cusitems/cus_items_bloc.dart';
import 'package:customer_connect/feature/state/bloc/cusoutstanding/cus_out_standing_bloc.dart';
import 'package:customer_connect/feature/state/bloc/cuspromodetail/cus_promo_detail_bloc.dart';
import 'package:customer_connect/feature/state/bloc/cuspromotionsheader/cus_promotions_header_bloc.dart';

import 'package:customer_connect/feature/state/bloc/cussalesorders/cus_sales_orders_bloc.dart';
import 'package:customer_connect/feature/state/bloc/cussppriceheader/cus_sp_price_bloc.dart';
import 'package:customer_connect/feature/state/bloc/customer_transaction/customer_transaction_bloc.dart';
import 'package:customer_connect/feature/state/bloc/customerinsightgroupbloc/customer_insight_group_bloc.dart';
import 'package:customer_connect/feature/state/bloc/customersettings/customer_settings_bloc.dart';
import 'package:customer_connect/feature/state/bloc/disputeapproval/dispute_note_approval_and_reject_bloc.dart';
import 'package:customer_connect/feature/state/bloc/disputenotedetail/dispute_note_detail_bloc.dart';
import 'package:customer_connect/feature/state/bloc/disputenoteheader/dispute_note_header_bloc.dart';
import 'package:customer_connect/feature/state/bloc/editcusprofile/edit_cus_profile_bloc.dart';
import 'package:customer_connect/feature/state/bloc/getallroutes/get_all_route_bloc.dart';
import 'package:customer_connect/feature/state/bloc/inventoryreconfirmapproval/inventory_reconfirm_approval_bloc.dart';
import 'package:customer_connect/feature/state/bloc/inventoryreconfirmdetail/inventory_reconfirm_detail_bloc.dart';
import 'package:customer_connect/feature/state/bloc/inventoryreconfirmheader/inventory_reconfirm_header_bloc.dart';
// import 'package:customer_connect/feature/state/bloc/editcusprofile/edit_cus_profile_bloc.dart';
import 'package:customer_connect/feature/state/bloc/invoice_details_footer/invoice_details_footer_bloc.dart';
import 'package:customer_connect/feature/state/bloc/invoice_header/invoice_header_bloc.dart';
import 'package:customer_connect/feature/state/bloc/ardetails/ar_details_bloc.dart';
import 'package:customer_connect/feature/state/bloc/arheader/ar_header_bloc.dart';
import 'package:customer_connect/feature/state/bloc/cusinsarheader/cus_ins_ar_header_bloc.dart';
import 'package:customer_connect/feature/state/bloc/cusinsinv/cus_ins_invoice_header_bloc.dart';
import 'package:customer_connect/feature/state/bloc/cusinstrnscount/cus_ins_trn_count_bloc.dart';
import 'package:customer_connect/feature/state/bloc/cusinvdetail/cus_inv_detail_bloc_bloc.dart';
import 'package:customer_connect/feature/state/bloc/cusprofile/cus_profile_bloc.dart';
import 'package:customer_connect/feature/state/bloc/customers/customers_list_bloc_bloc.dart';
import 'package:customer_connect/feature/state/bloc/loading/loading_detail_bloc.dart';
import 'package:customer_connect/feature/state/bloc/loadingheader/loading_header_bloc.dart';
import 'package:customer_connect/feature/state/bloc/loadreqapproval/load_req_approval_bloc.dart';
import 'package:customer_connect/feature/state/bloc/loadreqdetail/load_req_detail_bloc.dart';
import 'package:customer_connect/feature/state/bloc/loadreqheader/load_req_header_bloc.dart';
import 'package:customer_connect/feature/state/bloc/login/user_login_bloc.dart';
import 'package:customer_connect/feature/state/bloc/materialreqapproval/material_req_approval_bloc.dart';
import 'package:customer_connect/feature/state/bloc/materialreqrejection/material_req_rejection_bloc.dart';
import 'package:customer_connect/feature/state/bloc/messages/messages_bloc.dart';
import 'package:customer_connect/feature/state/bloc/mustsellapprove/must_sell_approve_bloc.dart';
import 'package:customer_connect/feature/state/bloc/mustselldetail/must_sell_detail_bloc.dart';
import 'package:customer_connect/feature/state/bloc/mustsellheader/must_sell_header_bloc.dart';
import 'package:customer_connect/feature/state/bloc/notificationlisting/notification_listing_bloc.dart';
import 'package:customer_connect/feature/state/bloc/notificationreplay/notification_replay_bloc_bloc.dart';
import 'package:customer_connect/feature/state/bloc/notireadflagupdate/noti_read_flag_update_bloc.dart';
import 'package:customer_connect/feature/state/bloc/outofstockitemcustomers/out_of_stock_item_customers_bloc.dart';
import 'package:customer_connect/feature/state/bloc/outofstockitems/out_of_stock_items_bloc.dart';
import 'package:customer_connect/feature/state/bloc/outstanding/outstanding_bloc.dart';
import 'package:customer_connect/feature/state/bloc/partialdeliveryapproval/partial_delivery_approval_bloc.dart';

import 'package:customer_connect/feature/state/bloc/partialdeliverydetailsbloc/partial_delivery_details_bloc.dart';
import 'package:customer_connect/feature/state/bloc/partialdeliveryreasons/partial_delivery_reason_bloc.dart';
import 'package:customer_connect/feature/state/bloc/picking_and_loading_count/picking_and_loading_count_bloc.dart';
import 'package:customer_connect/feature/state/bloc/picking_detail/pickingdetail_bloc.dart';
import 'package:customer_connect/feature/state/bloc/picking_header/picking_header_bloc.dart';
import 'package:customer_connect/feature/state/bloc/pricechangedetails/price_change_details_bloc.dart';
import 'package:customer_connect/feature/state/bloc/pricechangeheader/price_change_header_bloc.dart';
import 'package:customer_connect/feature/state/bloc/pricechangereasons/price_change_reasons_bloc.dart';
import 'package:customer_connect/feature/state/bloc/promotion_header/promotion_header_bloc.dart';
import 'package:customer_connect/feature/state/bloc/promotion_customer/promotion_customer_bloc.dart';
import 'package:customer_connect/feature/state/bloc/promotion_details/promotion_details_bloc.dart';
import 'package:customer_connect/feature/state/bloc/qualification_group/qualification_group_bloc.dart';
import 'package:customer_connect/feature/state/bloc/returnapproval/return_approval_header_bloc.dart';
import 'package:customer_connect/feature/state/bloc/returnapprovaldetail/return_approval_detail_bloc.dart';
import 'package:customer_connect/feature/state/bloc/sales_order_count/sales_order_count_bloc.dart';
import 'package:customer_connect/feature/state/bloc/salesorderdetails/sales_order_details_bloc.dart';
import 'package:customer_connect/feature/state/bloc/scheduledreturnapproval/schduled_return_approval_bloc.dart';
import 'package:customer_connect/feature/state/bloc/scheduledreturnheader/schduled_return_header_bloc.dart';
import 'package:customer_connect/feature/state/bloc/scheuledreturndetail/scheduled_return_details_bloc.dart';
import 'package:customer_connect/feature/state/bloc/settlementapprovalheader/settlement_approval_header_bloc.dart';
import 'package:customer_connect/feature/state/bloc/settlementapprovalreject/settlement_approval_reject_bloc.dart';
import 'package:customer_connect/feature/state/bloc/settlementpaymentdetail/settlement_payment_detail_bloc.dart';
import 'package:customer_connect/feature/state/bloc/settlementpaymodedetail/settlement_pay_mode_detail_bloc.dart';
import 'package:customer_connect/feature/state/bloc/settlemetcashdetails/settlement_cash_details_bloc.dart';
import 'package:customer_connect/feature/state/bloc/special_price_customers/special_price_customers_bloc.dart';
import 'package:customer_connect/feature/state/bloc/special_price_header/special_price_header_bloc.dart';
import 'package:customer_connect/feature/state/bloc/specialpricedetails/special_price_details_bloc.dart';
import 'package:customer_connect/feature/state/bloc/targetdetailcount/target_details_count_bloc.dart';
import 'package:customer_connect/feature/state/bloc/targetdetailsgraphamt/target_details_graph_amt_bloc.dart';
import 'package:customer_connect/feature/state/bloc/targetdetailsgraphqty/rarget_details_graph_qty_bloc.dart';
import 'package:customer_connect/feature/state/bloc/targetdetailslist/target_details_list_bloc.dart';
import 'package:customer_connect/feature/state/bloc/targetheadercount/target_header_count_bloc.dart';
import 'package:customer_connect/feature/state/bloc/targetheaderlist/targer_header_list_bloc.dart';
import 'package:customer_connect/feature/state/bloc/targetpackagelist/target_package_list_bloc.dart';
import 'package:customer_connect/feature/state/bloc/todays_delivery/todays_delivery_header_bloc.dart';
import 'package:customer_connect/feature/state/bloc/todays_delivery_details/todays_delivery_details_bloc.dart';
import 'package:customer_connect/feature/state/bloc/total_orders_details/total_orders_details_bloc.dart';
import 'package:customer_connect/feature/state/bloc/total_orders_header/total_orders_header_bloc.dart';
import 'package:customer_connect/feature/state/bloc/voidtransactionapproval/void_transaction_approval_bloc.dart';
import 'package:customer_connect/feature/state/bloc/voidtransactionheader/void_transaction_header_bloc.dart';
import 'package:customer_connect/feature/state/bloc/voidtransactionrejection/void_transaction_rejection_bloc.dart';
import 'package:customer_connect/feature/state/cubit/approvalradio/aapproval_or_reject_radio_cubit.dart';
import 'package:customer_connect/feature/state/cubit/arscrol/ar_scroll_ctrl_cubit.dart';
import 'package:customer_connect/feature/state/cubit/convertpdf/convertpdfurl_cubit.dart';
import 'package:customer_connect/feature/state/cubit/creditnoteapprovallevel/credit_note_approval_level_status_cubit.dart';
import 'package:customer_connect/feature/state/cubit/cusinvtotal/cus_inv_total_counter_cubit.dart';
import 'package:customer_connect/feature/state/cubit/customersearch/customer_search_loading_cubit.dart';
import 'package:customer_connect/feature/state/cubit/dailyactivityexpansion/daily_activity_expansion_cubit.dart';
import 'package:customer_connect/feature/state/cubit/disputeapprovalsatuslevel/dispute_approval_status_level_cubit_cubit.dart';
import 'package:customer_connect/feature/state/cubit/homeappbar/home_app_bar_cubit.dart';
import 'package:customer_connect/feature/state/cubit/homegraph/home_graph_switch_cubit.dart';
import 'package:customer_connect/feature/state/cubit/invcubit/invoice_total_cubit.dart';
import 'package:customer_connect/feature/state/cubit/invdettotal/invoice_details_total_cubit.dart';
import 'package:customer_connect/feature/state/cubit/inventoryreconfirmreasons/inventory_reconfirm_reasons_cubit.dart';
import 'package:customer_connect/feature/state/cubit/invnttransexpand/inverntory_trans_ex_pand_cubit.dart';
import 'package:customer_connect/feature/state/cubit/mustsellselectedheader/mustsell_approval_selection_cubit.dart';
import 'package:customer_connect/feature/state/cubit/navigatetoback/navigateto_back_cubit.dart';
import 'package:customer_connect/feature/state/cubit/partialdeliveryreason/partial_delivery_reason_cubit.dart';
import 'package:customer_connect/feature/state/cubit/progressIndicator/progress_indicator_cubit.dart';
import 'package:customer_connect/feature/state/cubit/routeforsc/route_for_sc_cubit.dart';
import 'package:customer_connect/feature/state/cubit/updategeolocation/update_geo_location_cubit.dart';
import 'package:customer_connect/feature/state/cubit/voidtransactionselection/void_transaction_selection_cubit.dart';
import 'package:customer_connect/feature/view/HomeScreen/homscreen.dart';
import 'package:customer_connect/feature/view/LoginScreen/login_screen.dart';
import 'package:customer_connect/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'feature/state/bloc/field_service_detail/f_ield_service_detail_bloc.dart';
import 'feature/state/bloc/field_service_header/field_service_header_bloc.dart';
import 'feature/state/bloc/fieldserviceinvoiceapproval/field_service_invoice_approval_bloc.dart';
import 'feature/state/bloc/journeyplanapproval/jourey_plan_approval_bloc.dart';
import 'feature/state/bloc/journeyplanheader/journey_plan_header_bloc.dart';
import 'feature/state/bloc/loadtransferapproval/load_transfer_approval_bloc.dart';
import 'feature/state/bloc/loadtransferdetail/load_transfer_detail_bloc.dart';
import 'feature/state/bloc/loadtransferheader/load_transfer_header_bloc.dart';
import 'feature/state/bloc/materialreqdetail/material_req_detail_bloc.dart';
import 'feature/state/bloc/materialreqhead/material_req_head_bloc.dart';
import 'feature/state/bloc/partialdeliveryheader/partial_delivery_header_bloc.dart';
import 'feature/state/bloc/vantovanapproval/van_to_van_approval_bloc.dart';
import 'feature/state/bloc/vantovandetails/van_to_van_details_bloc.dart';
import 'feature/state/bloc/vantovanheader/van_to_van_header_bloc.dart';
import 'feature/state/bloc/settlementapprovalpost/post_settlement_approval_bloc.dart';

bool isLoadingProgress = false;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);

    await PushNotificationService().initialize();

    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    if (Platform.isAndroid || Platform.isIOS) {
      FirebaseMessaging? messaging;
      messaging = FirebaseMessaging.instance;
      await messaging.requestPermission();
      if (Platform.isAndroid) {
        await FirebaseMessaging.instance.setAutoInitEnabled(true);
      }
    }
  } catch (e) {
    log('Error initializing Firebase: $e');
  }
  configureinjection();

  LoginUserModel? user = await getuserdata();

  runApp(MyApp(
    user: user,
  ));
}

Future<LoginUserModel?> getuserdata() async {
  final SharedPreferences sharedprefs = await SharedPreferences.getInstance();

  String userString = sharedprefs.getString('user') ?? '';

  if (userString.isEmpty) {
    return null;
  }

  final LoginUserModel user = LoginUserModel.fromJson(jsonDecode(userString));

  return user;
}

class MyApp extends StatelessWidget {
  final LoginUserModel? user;
  const MyApp({super.key, this.user});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ArScrollCtrlCubit>(
          create: (context) => ArScrollCtrlCubit(),
        ),
        BlocProvider(
          create: (context) => getit<UserLoginBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<PickingAndLoadingCountBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<CustomerTransactionBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<SalesOrderCountBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<LoadingHeaderBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<LoadingDetailBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<InvoiceHeaderBloc>(),
        ),
        BlocProvider<InvoiceTotalCubit>(
          create: (context) => InvoiceTotalCubit(),
        ),
        BlocProvider(
          create: (context) => getit<InvoiceDetailsBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<InvoiceDetailsFooterBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<TotalOrdersHeaderBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<TotalOrdersDetailsBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<ArHeaderBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<ArDetailsBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<CustomersListBlocBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<CusInsTrnCountBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<CusInsArHeaderBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<TodaysDeliveryHeaderBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<TodaysDeliveryDetailsBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<SpecialPriceHeaderBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<SpecialPriceCustomersBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<CusInsInvoiceHeaderBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<CusProfileBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<CusInvDetailBlocBloc>(),
        ),
        BlocProvider<CusInvTotalCounterCubit>(
          create: (context) => CusInvTotalCounterCubit(),
        ),
        BlocProvider(
          create: (context) => getit<CusSalesOrdersBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<PickingdetailBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<PickingHeaderBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<PromotionHeaderBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<PromotionCustomerBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<PromotionDetailsBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<EditCusProfileBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<CusDocumentsBloc>(),
        ),
        BlocProvider<ConvertpdfurlCubit>(
          create: (context) => ConvertpdfurlCubit(),
        ),
        BlocProvider(
          create: (context) => getit<CusGeoLocationBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<UpdateGeoLocationCubit>(),
        ),
        BlocProvider(
          create: (context) => getit<CusOutStandingBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<CusItemsBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<CusSpPriceBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<CusPromotionsHeaderBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<CusPromoDetailBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<PromotionHeaderBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<QualificationGroupBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<CustomerInsightGroupBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<NotificationListingBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<NotificationReplayBlocBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<NotiReadFlagUpdateBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<OutstandingBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<SpecialPriceDetailsBloc>(),
        ),
        BlocProvider<CustomerSearchLoadingCubit>(
          create: (context) => CustomerSearchLoadingCubit(),
        ),
        BlocProvider(
          create: (context) => getit<PriceChangeHeaderBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<PriceChangeDetailsBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<PriceChangeReasonsBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<ApprovePriceChangeBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<ReturnApprovalHeaderBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<ReturnApprovalDetailBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<ApprovalReasonsBloc>(),
        ),
        BlocProvider<AapprovalOrRejectRadioCubit>(
          create: (context) => AapprovalOrRejectRadioCubit(),
        ),
        BlocProvider(
          create: (context) => getit<ApproveReturnProductBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<DisputeNoteHeaderBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<DisputeNoteDetailBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<DisputeApprovalStatusLevelCubitCubit>(),
        ),
        BlocProvider(
          create: (context) => getit<DisputeApprovalStatusLevelCubitCubit>(),
        ),
        BlocProvider(
          create: (context) => getit<DisputeNoteApprovalAndRejectBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<CreditNoteHeaderBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<CreditNoteDetailBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<CreditNoteApprovalLevelStatusCubit>(),
        ),
        BlocProvider(
          create: (context) => getit<CreditNoteApprovalAndRejectBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<SchduledReturnHeaderBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<ScheduledReturnDetailsBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<PartialDeliveryHeaderBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<PartialDeliveryDetailsBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<PartialDeliveryReasonBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<PartialDeliveryApprovalBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<RouteForScCubit>(),
        ),
        BlocProvider(
          create: (context) => getit<SchduledReturnApprovalBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<FieldServiceHeaderBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<FIeldServiceDetailBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<FieldServiceInvoiceApprovalBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<VanToVanApprovalBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<VanToVanHeaderBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<VanToVanDetailsBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<AssetAddInApprovalHeaderBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<AssetAddingApprovalAndRjectBlocBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<AssetRemovelRequestHeaderBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<AssetRemovalApprvalBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<LoadTransferHeaderBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<LoadTransferDetailBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<LoadTransferApprovalBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<JourneyPlanHeaderBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<JoureyPlanApprovalBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<MaterialReqHeadBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<MaterialReqDetailBloc>(),
        ),
        BlocProvider<NavigatetoBackCubit>(
          create: (context) => NavigatetoBackCubit(),
        ),
        BlocProvider(
          create: (context) => getit<InvoiceDetailsTotalCubit>(),
        ),
        BlocProvider(
          create: (context) => getit<TodaysDeliveryDetailsBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<GetAllRouteBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<MaterialReqApprovalBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<LoadReqDetailBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<LoadReqHeaderBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<MaterialReqRejectionBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<LoadReqApprovalBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<ApprovalCountsBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<PartialDeliveryReasonCubit>(),
        ),
        BlocProvider(
          create: (context) => getit<SalesOrderDetailsBloc>(),
        ),
        BlocProvider<ProgressIndicatorCubit>(
          create: (context) => ProgressIndicatorCubit(),
        ),
        BlocProvider(
          create: (context) => getit<InventoryReconfirmHeaderBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<InventoryReconfirmReasonsCubit>(),
        ),
        BlocProvider(
          create: (context) => getit<InventoryReconfirmApprovalBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<InventoryReconfirmDetailBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<AllUsersBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<MessagesBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<MustSellHeaderBloc>(),
        ),
        BlocProvider<MustsellApprovalSelectionCubit>(
          create: (context) => MustsellApprovalSelectionCubit(),
        ),
        BlocProvider(
          create: (context) => getit<MustSellApproveBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<MustSellDetailBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<SettlementApprovalHeaderBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<SettlementCashDetailsBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<SettlementPayModeDetailBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<SettlementPaymentDetailBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<PostSettlementApprovalBloc>(),
        ),
        BlocProvider(
            create: (context) => getit<SettlementApprovalRejectBloc>()),
        BlocProvider<InverntoryTransExPandCubit>(
          create: (context) => InverntoryTransExPandCubit(),
        ),
        BlocProvider<HomeGraphSwitchCubit>(
          create: (context) => HomeGraphSwitchCubit(),
        ),
        BlocProvider(
          create: (context) => getit<VoidTransactionHeaderBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<VoidTransactionApprovalBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<VoidTransactionRejectionBloc>(),
        ),
        BlocProvider<VoidTransactionSelectionCubit>(
          create: (context) => VoidTransactionSelectionCubit(),
        ),
        BlocProvider<HomeAppBarCubit>(
          create: (context) => HomeAppBarCubit(),
        ),
        BlocProvider(
          create: (context) => getit<CustomerSettingsBloc>(),
        ),
        BlocProvider<DailyActivityExpansionCubit>(
          create: (context) => DailyActivityExpansionCubit(),
        ),
        BlocProvider(
          create: (context) => getit<ActivityReviewHeaderBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<ActivityReviewTargetsBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<ActivityReviewSalesDataBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<ActivityReviewDetailBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<OutOfStockItemsBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<OutOfStockItemCustomersBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<TargetHeaderCountBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<TargerHeaderListBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<TargetDetailsCountBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<TargetDetailsListBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<TargetDetailsGraphAmtBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<RargetDetailsGraphQtyBloc>(),
        ),
        BlocProvider(
          create: (context) => getit<TargetPackageListBloc>(),
        ),
      ],
      child: ScreenUtilInit(
        child: MaterialApp(
          navigatorKey: navigatorKey,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            useMaterial3: true,
            scaffoldBackgroundColor: Colors.white,
            textTheme: TextTheme(
              bodySmall: kfontstyle(),
              bodyLarge: kfontstyle(),
              bodyMedium: kfontstyle(),
              displayLarge: kfontstyle(),
              displayMedium: kfontstyle(),
              displaySmall: kfontstyle(),
              titleLarge: kfontstyle(),
              titleMedium: kfontstyle(),
              titleSmall: kfontstyle(),
            ),
            primaryTextTheme: TextTheme(
              bodySmall: kfontstyle(),
              bodyLarge: kfontstyle(),
              bodyMedium: kfontstyle(),
              displayLarge: kfontstyle(),
              displayMedium: kfontstyle(),
              displaySmall: kfontstyle(),
              titleLarge: kfontstyle(),
              titleMedium: kfontstyle(),
              titleSmall: kfontstyle(),
            ),
            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.white,
              surfaceTintColor: Colors.white,
            ),
          ),
          routes: {
            "homePage": (context) => user == null
                ? const LoginScreen()
                : MessageHandler(child: HomeScreen(user: user!)),
            "Login": (context) => const LoginScreen(),
          },
          initialRoute: "homePage",
          /* home: user == null
              ? const LoginScreen()
              : HomeScreen(
                  user: user!,
                ), */
        ),
      ),
    );
  }
}
