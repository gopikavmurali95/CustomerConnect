// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart'
    as _i3;
import 'package:customer_connect/feature/domain/repoImpls/arcollection/arcollectionrepo.dart'
    as _i4;
import 'package:customer_connect/feature/domain/repoImpls/cusdocuments/cusdocumentsrepo.dart'
    as _i31;
import 'package:customer_connect/feature/domain/repoImpls/cusinsights/cusinsarrepo.dart'
    as _i6;
import 'package:customer_connect/feature/domain/repoImpls/cusinsights/customersrepo.dart'
    as _i8;
import 'package:customer_connect/feature/domain/repoImpls/cusinsights/transactioncunts.dart'
    as _i32;
import 'package:customer_connect/feature/domain/repoImpls/cusinsinvoice/cusinsightsinvoicerepo.dart'
    as _i7;
import 'package:customer_connect/feature/domain/repoImpls/cusitemsrepo/cusitemsrepo.dart'
    as _i9;
import 'package:customer_connect/feature/domain/repoImpls/cusoustanding/cusoutstandingrepo.dart'
    as _i10;
import 'package:customer_connect/feature/domain/repoImpls/cusprofile/cusprofilerepo.dart'
    as _i11;
import 'package:customer_connect/feature/domain/repoImpls/cuspromotions/cuspromotionsrepo.dart'
    as _i12;
import 'package:customer_connect/feature/domain/repoImpls/cusspprice/cussppricerepo.dart'
    as _i13;
import 'package:customer_connect/feature/domain/repoImpls/customertransactionrepo/customertransactionrepo.dart'
    as _i14;
import 'package:customer_connect/feature/domain/repoImpls/editprofile/editprofilerepo.dart'
    as _i22;
import 'package:customer_connect/feature/domain/repoImpls/geolocation/geolocationrepo.dart'
    as _i5;
import 'package:customer_connect/feature/domain/repoImpls/invoicerepo/invoicerepo.dart'
    as _i15;
import 'package:customer_connect/feature/domain/repoImpls/Loading/loadingrepo.dart'
    as _i16;
import 'package:customer_connect/feature/domain/repoImpls/loginrepo/loginrepo.dart'
    as _i17;
import 'package:customer_connect/feature/domain/repoImpls/notifications/notificationsrepo.dart'
    as _i18;
import 'package:customer_connect/feature/domain/repoImpls/outstandingheaderrepo/outstandingheaderrepo.dart'
    as _i19;
import 'package:customer_connect/feature/domain/repoImpls/pickingandloadingrepo/pickingandloadincountrepo.dart'
    as _i20;
import 'package:customer_connect/feature/domain/repoImpls/pickingheaderrepo/pickingheaderrepo.dart'
    as _i21;
import 'package:customer_connect/feature/domain/repoImpls/promtionrepo/promotionrepo.dart'
    as _i23;
import 'package:customer_connect/feature/domain/repoImpls/qualificationgrouprepo/qualificationgrouprepo.dart'
    as _i24;
import 'package:customer_connect/feature/domain/repoImpls/returnapproval/returnapprovalrepo.dart'
    as _i25;
import 'package:customer_connect/feature/domain/repoImpls/salesorderrepo/salesorderrepo.dart'
    as _i26;
import 'package:customer_connect/feature/domain/repoImpls/salesorderrs/salesordersrepo.dart'
    as _i27;
import 'package:customer_connect/feature/domain/repoImpls/specialpricerepo/specialpricerepo.dart'
    as _i28;
import 'package:customer_connect/feature/domain/repoImpls/todaysdeliveryrepo/todaysdeliveryrepo.dart'
    as _i29;
import 'package:customer_connect/feature/domain/repoImpls/totalordersrepo/totalorderrepo.dart'
    as _i30;
import 'package:customer_connect/feature/state/bloc/approvalreasons/approval_reasons_bloc.dart'
    as _i62;
import 'package:customer_connect/feature/state/bloc/ardetails/ar_details_bloc.dart'
    as _i63;
import 'package:customer_connect/feature/state/bloc/arheader/ar_header_bloc.dart'
    as _i64;
import 'package:customer_connect/feature/state/bloc/cusdocuments/cus_documents_bloc.dart'
    as _i65;
import 'package:customer_connect/feature/state/bloc/cusgeolocation/cus_geo_location_bloc.dart'
    as _i66;
import 'package:customer_connect/feature/state/bloc/cusinsarheader/cus_ins_ar_header_bloc.dart'
    as _i67;
import 'package:customer_connect/feature/state/bloc/cusinsinv/cus_ins_invoice_header_bloc.dart'
    as _i68;
import 'package:customer_connect/feature/state/bloc/cusinstrnscount/cus_ins_trn_count_bloc.dart'
    as _i69;
import 'package:customer_connect/feature/state/bloc/cusinvdetail/cus_inv_detail_bloc_bloc.dart'
    as _i70;
import 'package:customer_connect/feature/state/bloc/cusitems/cus_items_bloc.dart'
    as _i71;
import 'package:customer_connect/feature/state/bloc/cusoutstanding/cus_out_standing_bloc.dart'
    as _i72;
import 'package:customer_connect/feature/state/bloc/cusprofile/cus_profile_bloc.dart'
    as _i73;
import 'package:customer_connect/feature/state/bloc/cuspromodetail/cus_promo_detail_bloc.dart'
    as _i74;
import 'package:customer_connect/feature/state/bloc/cuspromotionsheader/cus_promotions_header_bloc.dart'
    as _i75;
import 'package:customer_connect/feature/state/bloc/cussalesorders/cus_sales_orders_bloc.dart'
    as _i76;
import 'package:customer_connect/feature/state/bloc/cussppriceheader/cus_sp_price_bloc.dart'
    as _i77;
import 'package:customer_connect/feature/state/bloc/customer_transaction/customer_transaction_bloc.dart'
    as _i78;
import 'package:customer_connect/feature/state/bloc/customers/customers_list_bloc_bloc.dart'
    as _i79;
import 'package:customer_connect/feature/state/bloc/editcusprofile/edit_cus_profile_bloc.dart'
    as _i80;
import 'package:customer_connect/feature/state/bloc/Invoice_details/invoice_details_bloc.dart'
    as _i33;
import 'package:customer_connect/feature/state/bloc/invoice_details_footer/invoice_details_footer_bloc.dart'
    as _i34;
import 'package:customer_connect/feature/state/bloc/invoice_header/invoice_header_bloc.dart'
    as _i35;
import 'package:customer_connect/feature/state/bloc/loading/loading_detail_bloc.dart'
    as _i37;
import 'package:customer_connect/feature/state/bloc/loadingdetail/loading_detail_bloc.dart'
    as _i36;
import 'package:customer_connect/feature/state/bloc/loadingheader/loading_header_bloc.dart'
    as _i38;
import 'package:customer_connect/feature/state/bloc/login/user_login_bloc.dart'
    as _i61;
import 'package:customer_connect/feature/state/bloc/notificationlisting/notification_listing_bloc.dart'
    as _i40;
import 'package:customer_connect/feature/state/bloc/notificationreplay/notification_replay_bloc_bloc.dart'
    as _i41;
import 'package:customer_connect/feature/state/bloc/notireadflagupdate/noti_read_flag_update_bloc.dart'
    as _i39;
import 'package:customer_connect/feature/state/bloc/outstanding/outstanding_bloc.dart'
    as _i42;
import 'package:customer_connect/feature/state/bloc/picking_and_loading_count/picking_and_loading_count_bloc.dart'
    as _i43;
import 'package:customer_connect/feature/state/bloc/picking_detail/pickingdetail_bloc.dart'
    as _i45;
import 'package:customer_connect/feature/state/bloc/picking_header/picking_header_bloc.dart'
    as _i44;
import 'package:customer_connect/feature/state/bloc/promotion_customer/promotion_customer_bloc.dart'
    as _i46;
import 'package:customer_connect/feature/state/bloc/promotion_details/promotion_details_bloc.dart'
    as _i47;
import 'package:customer_connect/feature/state/bloc/promotion_header/promotion_header_bloc.dart'
    as _i48;
import 'package:customer_connect/feature/state/bloc/qualification_group/qualification_group_bloc.dart'
    as _i49;
import 'package:customer_connect/feature/state/bloc/returnapproval/return_approval_header_bloc.dart'
    as _i51;
import 'package:customer_connect/feature/state/bloc/returnapprovaldetail/return_approval_detail_bloc.dart'
    as _i50;
import 'package:customer_connect/feature/state/bloc/sales_order_count/sales_order_count_bloc.dart'
    as _i52;
import 'package:customer_connect/feature/state/bloc/special_price_customers/special_price_customers_bloc.dart'
    as _i53;
import 'package:customer_connect/feature/state/bloc/special_price_header/special_price_header_bloc.dart'
    as _i55;
import 'package:customer_connect/feature/state/bloc/specialpricedetails/special_price_details_bloc.dart'
    as _i54;
import 'package:customer_connect/feature/state/bloc/todays_delivery/todays_delivery_header_bloc.dart'
    as _i57;
import 'package:customer_connect/feature/state/bloc/todays_delivery_details/todays_delivery_details_bloc.dart'
    as _i56;
import 'package:customer_connect/feature/state/bloc/total_orders_details/total_orders_details_bloc.dart'
    as _i58;
import 'package:customer_connect/feature/state/bloc/total_orders_header/total_orders_header_bloc.dart'
    as _i59;
import 'package:customer_connect/feature/state/cubit/updategeolocation/update_geo_location_cubit.dart'
    as _i60;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.IArCollectionRepo>(() => _i4.ArCollectionRepo());
    gh.lazySingleton<_i3.ICusGeoLocationRepo>(() => _i5.GeoLocationRepo());
    gh.lazySingleton<_i3.ICusInsArRepo>(() => _i6.CusInsArRepo());
    gh.lazySingleton<_i3.ICusInsInvoiceRepo>(() => _i7.CusInsInvoiceRepo());
    gh.lazySingleton<_i3.ICusInsightsCustomersRepo>(
        () => _i8.CusInsCustomersRepo());
    gh.lazySingleton<_i3.ICusItemsRepo>(() => _i9.CusItemsRepo());
    gh.lazySingleton<_i3.ICusOutstandingRepo>(() => _i10.CusOutStandingRepo());
    gh.lazySingleton<_i3.ICusProfileRepo>(() => _i11.CusProfileRepo());
    gh.lazySingleton<_i3.ICusProtionRepo>(() => _i12.CusPromotionsRepo());
    gh.lazySingleton<_i3.ICusSpPriceRepo>(() => _i13.CusSpPriceRepo());
    gh.lazySingleton<_i3.ICustomerTransactionRepo>(
        () => _i14.CustomerTransactionRepo());
    gh.lazySingleton<_i3.IInvoiceRepo>(() => _i15.InvoiceRepo());
    gh.lazySingleton<_i3.ILoadingRepo>(() => _i16.LoadinRepo());
    gh.lazySingleton<_i3.ILoginRepo>(() => _i17.UserLoginRepo());
    gh.lazySingleton<_i3.INotificationRepo>(() => _i18.NotificationRepo());
    gh.lazySingleton<_i3.IOutStandingHeaderRepo>(
        () => _i19.OutStandingHeadRepo());
    gh.lazySingleton<_i3.IPickingAndLoadinCountRepo>(
        () => _i20.PickingAndLoadinCountRepo());
    gh.lazySingleton<_i3.IPickingHeaderRepo>(() => _i21.PickingHeaderRepo());
    gh.lazySingleton<_i3.IProfileEditRepo>(() => _i22.ProfileEditingRepo());
    gh.lazySingleton<_i3.IPromotionHeaderRepo>(
        () => _i23.PromotionHeaderRepo());
    gh.lazySingleton<_i3.IQualificationGroupRepo>(
        () => _i24.QualificationGroupREpo());
    gh.lazySingleton<_i3.IReturnApprovalRepo>(() => _i25.ReturnApprovalRepo());
    gh.lazySingleton<_i3.ISalesOrderRepo>(() => _i26.SalesOrderCountRepo());
    gh.lazySingleton<_i3.ISalesOrdersRepo>(() => _i27.SalesOrdersRepo());
    gh.lazySingleton<_i3.ISpecialPriceRepo>(() => _i28.SpecialPriceRepo());
    gh.lazySingleton<_i3.ITodaysDeliveryRepo>(() => _i29.TodaysDelivery());
    gh.lazySingleton<_i3.ITotalOrdersRepo>(() => _i30.TotalOrderRepo());
    gh.lazySingleton<_i3.IcusDocumentsModel>(() => _i31.CusDocumentsRepo());
    gh.lazySingleton<_i3.IcusInsCountsRepo>(() => _i32.CusTrnCOuntsRepo());
    gh.factory<_i33.InvoiceDetailsBloc>(
        () => _i33.InvoiceDetailsBloc(gh<_i3.IInvoiceRepo>()));
    gh.factory<_i34.InvoiceDetailsFooterBloc>(
        () => _i34.InvoiceDetailsFooterBloc(gh<_i3.IInvoiceRepo>()));
    gh.factory<_i35.InvoiceHeaderBloc>(
        () => _i35.InvoiceHeaderBloc(gh<_i3.IInvoiceRepo>()));
    gh.factory<_i36.LoadingDetailBloc>(
        () => _i36.LoadingDetailBloc(gh<_i3.ILoadingRepo>()));
    gh.factory<_i37.LoadingDetailBloc>(
        () => _i37.LoadingDetailBloc(gh<_i3.ILoadingRepo>()));
    gh.factory<_i38.LoadingHeaderBloc>(
        () => _i38.LoadingHeaderBloc(gh<_i3.ILoadingRepo>()));
    gh.factory<_i39.NotiReadFlagUpdateBloc>(
        () => _i39.NotiReadFlagUpdateBloc(gh<_i3.INotificationRepo>()));
    gh.factory<_i40.NotificationListingBloc>(
        () => _i40.NotificationListingBloc(gh<_i3.INotificationRepo>()));
    gh.factory<_i41.NotificationReplayBlocBloc>(
        () => _i41.NotificationReplayBlocBloc(gh<_i3.INotificationRepo>()));
    gh.factory<_i42.OutstandingBloc>(
        () => _i42.OutstandingBloc(gh<_i3.IOutStandingHeaderRepo>()));
    gh.factory<_i43.PickingAndLoadingCountBloc>(() =>
        _i43.PickingAndLoadingCountBloc(gh<_i3.IPickingAndLoadinCountRepo>()));
    gh.factory<_i44.PickingHeaderBloc>(
        () => _i44.PickingHeaderBloc(gh<_i3.IPickingHeaderRepo>()));
    gh.factory<_i45.PickingdetailBloc>(
        () => _i45.PickingdetailBloc(gh<_i3.IPickingHeaderRepo>()));
    gh.factory<_i46.PromotionCustomerBloc>(
        () => _i46.PromotionCustomerBloc(gh<_i3.IPromotionHeaderRepo>()));
    gh.factory<_i47.PromotionDetailsBloc>(
        () => _i47.PromotionDetailsBloc(gh<_i3.IPromotionHeaderRepo>()));
    gh.factory<_i48.PromotionHeaderBloc>(
        () => _i48.PromotionHeaderBloc(gh<_i3.IPromotionHeaderRepo>()));
    gh.factory<_i49.QualificationGroupBloc>(
        () => _i49.QualificationGroupBloc(gh<_i3.IQualificationGroupRepo>()));
    gh.factory<_i50.ReturnApprovalDetailBloc>(
        () => _i50.ReturnApprovalDetailBloc(gh<_i3.IReturnApprovalRepo>()));
    gh.factory<_i51.ReturnApprovalHeaderBloc>(
        () => _i51.ReturnApprovalHeaderBloc(gh<_i3.IReturnApprovalRepo>()));
    gh.factory<_i52.SalesOrderCountBloc>(
        () => _i52.SalesOrderCountBloc(gh<_i3.ISalesOrderRepo>()));
    gh.factory<_i53.SpecialPriceCustomersBloc>(
        () => _i53.SpecialPriceCustomersBloc(gh<_i3.ISpecialPriceRepo>()));
    gh.factory<_i54.SpecialPriceDetailsBloc>(
        () => _i54.SpecialPriceDetailsBloc(gh<_i3.ISpecialPriceRepo>()));
    gh.factory<_i55.SpecialPriceHeaderBloc>(
        () => _i55.SpecialPriceHeaderBloc(gh<_i3.ISpecialPriceRepo>()));
    gh.factory<_i56.TodaysDeliveryDetailsBloc>(
        () => _i56.TodaysDeliveryDetailsBloc(gh<_i3.ITodaysDeliveryRepo>()));
    gh.factory<_i57.TodaysDeliveryHeaderBloc>(
        () => _i57.TodaysDeliveryHeaderBloc(gh<_i3.ITodaysDeliveryRepo>()));
    gh.factory<_i58.TotalOrdersDetailsBloc>(
        () => _i58.TotalOrdersDetailsBloc(gh<_i3.ITotalOrdersRepo>()));
    gh.factory<_i59.TotalOrdersHeaderBloc>(
        () => _i59.TotalOrdersHeaderBloc(gh<_i3.ITotalOrdersRepo>()));
    gh.factory<_i60.UpdateGeoLocationCubit>(
        () => _i60.UpdateGeoLocationCubit(gh<_i3.ICusGeoLocationRepo>()));
    gh.factory<_i61.UserLoginBloc>(
        () => _i61.UserLoginBloc(gh<_i3.ILoginRepo>()));
    gh.factory<_i62.ApprovalReasonsBloc>(
        () => _i62.ApprovalReasonsBloc(gh<_i3.IReturnApprovalRepo>()));
    gh.factory<_i63.ArDetailsBloc>(
        () => _i63.ArDetailsBloc(gh<_i3.IArCollectionRepo>()));
    gh.factory<_i64.ArHeaderBloc>(
        () => _i64.ArHeaderBloc(gh<_i3.IArCollectionRepo>()));
    gh.factory<_i65.CusDocumentsBloc>(
        () => _i65.CusDocumentsBloc(gh<_i3.IcusDocumentsModel>()));
    gh.factory<_i66.CusGeoLocationBloc>(
        () => _i66.CusGeoLocationBloc(gh<_i3.ICusGeoLocationRepo>()));
    gh.factory<_i67.CusInsArHeaderBloc>(
        () => _i67.CusInsArHeaderBloc(gh<_i3.ICusInsArRepo>()));
    gh.factory<_i68.CusInsInvoiceHeaderBloc>(
        () => _i68.CusInsInvoiceHeaderBloc(gh<_i3.ICusInsInvoiceRepo>()));
    gh.factory<_i69.CusInsTrnCountBloc>(
        () => _i69.CusInsTrnCountBloc(gh<_i3.IcusInsCountsRepo>()));
    gh.factory<_i70.CusInvDetailBlocBloc>(
        () => _i70.CusInvDetailBlocBloc(gh<_i3.ICusInsInvoiceRepo>()));
    gh.factory<_i71.CusItemsBloc>(
        () => _i71.CusItemsBloc(gh<_i3.ICusItemsRepo>()));
    gh.factory<_i72.CusOutStandingBloc>(
        () => _i72.CusOutStandingBloc(gh<_i3.ICusOutstandingRepo>()));
    gh.factory<_i73.CusProfileBloc>(
        () => _i73.CusProfileBloc(gh<_i3.ICusProfileRepo>()));
    gh.factory<_i74.CusPromoDetailBloc>(
        () => _i74.CusPromoDetailBloc(gh<_i3.ICusProtionRepo>()));
    gh.factory<_i75.CusPromotionsHeaderBloc>(
        () => _i75.CusPromotionsHeaderBloc(gh<_i3.ICusProtionRepo>()));
    gh.factory<_i76.CusSalesOrdersBloc>(
        () => _i76.CusSalesOrdersBloc(gh<_i3.ISalesOrdersRepo>()));
    gh.factory<_i77.CusSpPriceBloc>(
        () => _i77.CusSpPriceBloc(gh<_i3.ICusSpPriceRepo>()));
    gh.factory<_i78.CustomerTransactionBloc>(
        () => _i78.CustomerTransactionBloc(gh<_i3.ICustomerTransactionRepo>()));
    gh.factory<_i79.CustomersListBlocBloc>(
        () => _i79.CustomersListBlocBloc(gh<_i3.ICusInsightsCustomersRepo>()));
    gh.factory<_i80.EditCusProfileBloc>(
        () => _i80.EditCusProfileBloc(gh<_i3.IProfileEditRepo>()));
    return this;
  }
}
