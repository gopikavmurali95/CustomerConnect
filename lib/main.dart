import 'dart:convert';

import 'package:customer_connect/feature/data/di/injectable.dart';
import 'package:customer_connect/feature/data/models/login_user_model/login_user_model.dart';
// import 'package:customer_connect/feature/data/models/picking_header_model/PickingOutModel.dart';
import 'package:customer_connect/feature/state/bloc/Invoice_details/invoice_details_bloc.dart';
import 'package:customer_connect/feature/state/bloc/approvalreasons/approval_reasons_bloc.dart';
import 'package:customer_connect/feature/state/bloc/approvepricechange/approve_price_change_bloc.dart';
import 'package:customer_connect/feature/state/bloc/approvereturnprod/approve_return_product_bloc.dart';
import 'package:customer_connect/feature/state/bloc/cusdocuments/cus_documents_bloc.dart';
import 'package:customer_connect/feature/state/bloc/cusgeolocation/cus_geo_location_bloc.dart';
import 'package:customer_connect/feature/state/bloc/cusitems/cus_items_bloc.dart';
import 'package:customer_connect/feature/state/bloc/cusoutstanding/cus_out_standing_bloc.dart';
import 'package:customer_connect/feature/state/bloc/cuspromodetail/cus_promo_detail_bloc.dart';
import 'package:customer_connect/feature/state/bloc/cuspromotionsheader/cus_promotions_header_bloc.dart';

import 'package:customer_connect/feature/state/bloc/cussalesorders/cus_sales_orders_bloc.dart';
import 'package:customer_connect/feature/state/bloc/cussppriceheader/cus_sp_price_bloc.dart';
import 'package:customer_connect/feature/state/bloc/customer_transaction/customer_transaction_bloc.dart';
import 'package:customer_connect/feature/state/bloc/disputeapproval/dispute_note_approval_and_reject_bloc.dart';
import 'package:customer_connect/feature/state/bloc/disputenotedetail/dispute_note_detail_bloc.dart';
import 'package:customer_connect/feature/state/bloc/disputenoteheader/dispute_note_header_bloc.dart';
import 'package:customer_connect/feature/state/bloc/editcusprofile/edit_cus_profile_bloc.dart';
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
import 'package:customer_connect/feature/state/bloc/login/user_login_bloc.dart';
import 'package:customer_connect/feature/state/bloc/notificationlisting/notification_listing_bloc.dart';
import 'package:customer_connect/feature/state/bloc/notificationreplay/notification_replay_bloc_bloc.dart';
import 'package:customer_connect/feature/state/bloc/notireadflagupdate/noti_read_flag_update_bloc.dart';
import 'package:customer_connect/feature/state/bloc/outstanding/outstanding_bloc.dart';
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
import 'package:customer_connect/feature/state/bloc/special_price_customers/special_price_customers_bloc.dart';
import 'package:customer_connect/feature/state/bloc/special_price_header/special_price_header_bloc.dart';
import 'package:customer_connect/feature/state/bloc/specialpricedetails/special_price_details_bloc.dart';
import 'package:customer_connect/feature/state/bloc/todays_delivery/todays_delivery_header_bloc.dart';
import 'package:customer_connect/feature/state/bloc/todays_delivery_details/todays_delivery_details_bloc.dart';
import 'package:customer_connect/feature/state/bloc/total_orders_details/total_orders_details_bloc.dart';
import 'package:customer_connect/feature/state/bloc/total_orders_header/total_orders_header_bloc.dart';
import 'package:customer_connect/feature/state/cubit/approvalradio/aapproval_or_reject_radio_cubit.dart';
import 'package:customer_connect/feature/state/cubit/arscrol/ar_scroll_ctrl_cubit.dart';
import 'package:customer_connect/feature/state/cubit/convertpdf/convertpdfurl_cubit.dart';
import 'package:customer_connect/feature/state/cubit/cusinvtotal/cus_inv_total_counter_cubit.dart';
import 'package:customer_connect/feature/state/cubit/customersearch/customer_search_loading_cubit.dart';
import 'package:customer_connect/feature/state/cubit/disputeapprovalsatuslevel/dispute_approval_status_level_cubit_cubit.dart';
import 'package:customer_connect/feature/state/cubit/invcubit/invoice_total_cubit.dart';
import 'package:customer_connect/feature/state/cubit/updategeolocation/update_geo_location_cubit.dart';
import 'package:customer_connect/feature/view/HomeScreen/homscreen.dart';
import 'package:customer_connect/feature/view/LoginScreen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
      ],
      child: ScreenUtilInit(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            useMaterial3: true,
            scaffoldBackgroundColor: Colors.white,
            appBarTheme: const AppBarTheme(
              backgroundColor: Colors.white,
              surfaceTintColor: Colors.white,
            ),
          ),
          home: user == null
              ? const LoginScreen()
              : HomeScreen(
                  user: user!,
                ),
        ),
      ),
    );
  }
}
