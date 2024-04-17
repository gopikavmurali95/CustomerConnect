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
    as _i30;
import 'package:customer_connect/feature/domain/repoImpls/cusinsights/cusinsarrepo.dart'
    as _i6;
import 'package:customer_connect/feature/domain/repoImpls/cusinsights/customersrepo.dart'
    as _i8;
import 'package:customer_connect/feature/domain/repoImpls/cusinsights/transactioncunts.dart'
    as _i31;
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
import 'package:customer_connect/feature/domain/repoImpls/salesorderrepo/salesorderrepo.dart'
    as _i25;
import 'package:customer_connect/feature/domain/repoImpls/salesorderrs/salesordersrepo.dart'
    as _i26;
import 'package:customer_connect/feature/domain/repoImpls/specialpricerepo/specialpricerepo.dart'
    as _i27;
import 'package:customer_connect/feature/domain/repoImpls/todaysdeliveryrepo/todaysdeliveryrepo.dart'
    as _i28;
import 'package:customer_connect/feature/domain/repoImpls/totalordersrepo/totalorderrepo.dart'
    as _i29;
import 'package:customer_connect/feature/state/bloc/ardetails/ar_details_bloc.dart'
    as _i59;
import 'package:customer_connect/feature/state/bloc/arheader/ar_header_bloc.dart'
    as _i60;
import 'package:customer_connect/feature/state/bloc/cusdocuments/cus_documents_bloc.dart'
    as _i61;
import 'package:customer_connect/feature/state/bloc/cusgeolocation/cus_geo_location_bloc.dart'
    as _i62;
import 'package:customer_connect/feature/state/bloc/cusinsarheader/cus_ins_ar_header_bloc.dart'
    as _i63;
import 'package:customer_connect/feature/state/bloc/cusinsinv/cus_ins_invoice_header_bloc.dart'
    as _i64;
import 'package:customer_connect/feature/state/bloc/cusinstrnscount/cus_ins_trn_count_bloc.dart'
    as _i65;
import 'package:customer_connect/feature/state/bloc/cusinvdetail/cus_inv_detail_bloc_bloc.dart'
    as _i66;
import 'package:customer_connect/feature/state/bloc/cusitems/cus_items_bloc.dart'
    as _i67;
import 'package:customer_connect/feature/state/bloc/cusoutstanding/cus_out_standing_bloc.dart'
    as _i68;
import 'package:customer_connect/feature/state/bloc/cusprofile/cus_profile_bloc.dart'
    as _i69;
import 'package:customer_connect/feature/state/bloc/cuspromodetail/cus_promo_detail_bloc.dart'
    as _i70;
import 'package:customer_connect/feature/state/bloc/cuspromotionsheader/cus_promotions_header_bloc.dart'
    as _i71;
import 'package:customer_connect/feature/state/bloc/cussalesorders/cus_sales_orders_bloc.dart'
    as _i72;
import 'package:customer_connect/feature/state/bloc/cussppriceheader/cus_sp_price_bloc.dart'
    as _i73;
import 'package:customer_connect/feature/state/bloc/customer_transaction/customer_transaction_bloc.dart'
    as _i74;
import 'package:customer_connect/feature/state/bloc/customers/customers_list_bloc_bloc.dart'
    as _i75;
import 'package:customer_connect/feature/state/bloc/editcusprofile/edit_cus_profile_bloc.dart'
    as _i76;
import 'package:customer_connect/feature/state/bloc/Invoice_details/invoice_details_bloc.dart'
    as _i32;
import 'package:customer_connect/feature/state/bloc/invoice_details_footer/invoice_details_footer_bloc.dart'
    as _i33;
import 'package:customer_connect/feature/state/bloc/invoice_header/invoice_header_bloc.dart'
    as _i34;
import 'package:customer_connect/feature/state/bloc/loading/loading_detail_bloc.dart'
    as _i36;
import 'package:customer_connect/feature/state/bloc/loadingdetail/loading_detail_bloc.dart'
    as _i35;
import 'package:customer_connect/feature/state/bloc/loadingheader/loading_header_bloc.dart'
    as _i37;
import 'package:customer_connect/feature/state/bloc/login/user_login_bloc.dart'
    as _i58;
import 'package:customer_connect/feature/state/bloc/notificationlisting/notification_listing_bloc.dart'
    as _i39;
import 'package:customer_connect/feature/state/bloc/notificationreplay/notification_replay_bloc_bloc.dart'
    as _i40;
import 'package:customer_connect/feature/state/bloc/notireadflagupdate/noti_read_flag_update_bloc.dart'
    as _i38;
import 'package:customer_connect/feature/state/bloc/outstanding/outstanding_bloc.dart'
    as _i41;
import 'package:customer_connect/feature/state/bloc/picking_and_loading_count/picking_and_loading_count_bloc.dart'
    as _i42;
import 'package:customer_connect/feature/state/bloc/picking_detail/pickingdetail_bloc.dart'
    as _i44;
import 'package:customer_connect/feature/state/bloc/picking_header/picking_header_bloc.dart'
    as _i43;
import 'package:customer_connect/feature/state/bloc/promotion_customer/promotion_customer_bloc.dart'
    as _i45;
import 'package:customer_connect/feature/state/bloc/promotion_details/promotion_details_bloc.dart'
    as _i46;
import 'package:customer_connect/feature/state/bloc/promotion_header/promotion_header_bloc.dart'
    as _i47;
import 'package:customer_connect/feature/state/bloc/qualification_group/qualification_group_bloc.dart'
    as _i48;
import 'package:customer_connect/feature/state/bloc/sales_order_count/sales_order_count_bloc.dart'
    as _i49;
import 'package:customer_connect/feature/state/bloc/special_price_customers/special_price_customers_bloc.dart'
    as _i50;
import 'package:customer_connect/feature/state/bloc/special_price_header/special_price_header_bloc.dart'
    as _i52;
import 'package:customer_connect/feature/state/bloc/specialpricedetails/special_price_details_bloc.dart'
    as _i51;
import 'package:customer_connect/feature/state/bloc/todays_delivery/todays_delivery_header_bloc.dart'
    as _i54;
import 'package:customer_connect/feature/state/bloc/todays_delivery_details/todays_delivery_details_bloc.dart'
    as _i53;
import 'package:customer_connect/feature/state/bloc/total_orders_details/total_orders_details_bloc.dart'
    as _i55;
import 'package:customer_connect/feature/state/bloc/total_orders_header/total_orders_header_bloc.dart'
    as _i56;
import 'package:customer_connect/feature/state/cubit/updategeolocation/update_geo_location_cubit.dart'
    as _i57;
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
    gh.lazySingleton<_i3.ISalesOrderRepo>(() => _i25.SalesOrderCountRepo());
    gh.lazySingleton<_i3.ISalesOrdersRepo>(() => _i26.SalesOrdersRepo());
    gh.lazySingleton<_i3.ISpecialPriceRepo>(() => _i27.SpecialPriceRepo());
    gh.lazySingleton<_i3.ITodaysDeliveryRepo>(() => _i28.TodaysDelivery());
    gh.lazySingleton<_i3.ITotalOrdersRepo>(() => _i29.TotalOrderRepo());
    gh.lazySingleton<_i3.IcusDocumentsModel>(() => _i30.CusDocumentsRepo());
    gh.lazySingleton<_i3.IcusInsCountsRepo>(() => _i31.CusTrnCOuntsRepo());
    gh.factory<_i32.InvoiceDetailsBloc>(
        () => _i32.InvoiceDetailsBloc(gh<_i3.IInvoiceRepo>()));
    gh.factory<_i33.InvoiceDetailsFooterBloc>(
        () => _i33.InvoiceDetailsFooterBloc(gh<_i3.IInvoiceRepo>()));
    gh.factory<_i34.InvoiceHeaderBloc>(
        () => _i34.InvoiceHeaderBloc(gh<_i3.IInvoiceRepo>()));
    gh.factory<_i35.LoadingDetailBloc>(
        () => _i35.LoadingDetailBloc(gh<_i3.ILoadingRepo>()));
    gh.factory<_i36.LoadingDetailBloc>(
        () => _i36.LoadingDetailBloc(gh<_i3.ILoadingRepo>()));
    gh.factory<_i37.LoadingHeaderBloc>(
        () => _i37.LoadingHeaderBloc(gh<_i3.ILoadingRepo>()));
    gh.factory<_i38.NotiReadFlagUpdateBloc>(
        () => _i38.NotiReadFlagUpdateBloc(gh<_i3.INotificationRepo>()));
    gh.factory<_i39.NotificationListingBloc>(
        () => _i39.NotificationListingBloc(gh<_i3.INotificationRepo>()));
    gh.factory<_i40.NotificationReplayBlocBloc>(
        () => _i40.NotificationReplayBlocBloc(gh<_i3.INotificationRepo>()));
    gh.factory<_i41.OutstandingBloc>(
        () => _i41.OutstandingBloc(gh<_i3.IOutStandingHeaderRepo>()));
    gh.factory<_i42.PickingAndLoadingCountBloc>(() =>
        _i42.PickingAndLoadingCountBloc(gh<_i3.IPickingAndLoadinCountRepo>()));
    gh.factory<_i43.PickingHeaderBloc>(
        () => _i43.PickingHeaderBloc(gh<_i3.IPickingHeaderRepo>()));
    gh.factory<_i44.PickingdetailBloc>(
        () => _i44.PickingdetailBloc(gh<_i3.IPickingHeaderRepo>()));
    gh.factory<_i45.PromotionCustomerBloc>(
        () => _i45.PromotionCustomerBloc(gh<_i3.IPromotionHeaderRepo>()));
    gh.factory<_i46.PromotionDetailsBloc>(
        () => _i46.PromotionDetailsBloc(gh<_i3.IPromotionHeaderRepo>()));
    gh.factory<_i47.PromotionHeaderBloc>(
        () => _i47.PromotionHeaderBloc(gh<_i3.IPromotionHeaderRepo>()));
    gh.factory<_i48.QualificationGroupBloc>(
        () => _i48.QualificationGroupBloc(gh<_i3.IQualificationGroupRepo>()));
    gh.factory<_i49.SalesOrderCountBloc>(
        () => _i49.SalesOrderCountBloc(gh<_i3.ISalesOrderRepo>()));
    gh.factory<_i50.SpecialPriceCustomersBloc>(
        () => _i50.SpecialPriceCustomersBloc(gh<_i3.ISpecialPriceRepo>()));
    gh.factory<_i51.SpecialPriceDetailsBloc>(
        () => _i51.SpecialPriceDetailsBloc(gh<_i3.ISpecialPriceRepo>()));
    gh.factory<_i52.SpecialPriceHeaderBloc>(
        () => _i52.SpecialPriceHeaderBloc(gh<_i3.ISpecialPriceRepo>()));
    gh.factory<_i53.TodaysDeliveryDetailsBloc>(
        () => _i53.TodaysDeliveryDetailsBloc(gh<_i3.ITodaysDeliveryRepo>()));
    gh.factory<_i54.TodaysDeliveryHeaderBloc>(
        () => _i54.TodaysDeliveryHeaderBloc(gh<_i3.ITodaysDeliveryRepo>()));
    gh.factory<_i55.TotalOrdersDetailsBloc>(
        () => _i55.TotalOrdersDetailsBloc(gh<_i3.ITotalOrdersRepo>()));
    gh.factory<_i56.TotalOrdersHeaderBloc>(
        () => _i56.TotalOrdersHeaderBloc(gh<_i3.ITotalOrdersRepo>()));
    gh.factory<_i57.UpdateGeoLocationCubit>(
        () => _i57.UpdateGeoLocationCubit(gh<_i3.ICusGeoLocationRepo>()));
    gh.factory<_i58.UserLoginBloc>(
        () => _i58.UserLoginBloc(gh<_i3.ILoginRepo>()));
    gh.factory<_i59.ArDetailsBloc>(
        () => _i59.ArDetailsBloc(gh<_i3.IArCollectionRepo>()));
    gh.factory<_i60.ArHeaderBloc>(
        () => _i60.ArHeaderBloc(gh<_i3.IArCollectionRepo>()));
    gh.factory<_i61.CusDocumentsBloc>(
        () => _i61.CusDocumentsBloc(gh<_i3.IcusDocumentsModel>()));
    gh.factory<_i62.CusGeoLocationBloc>(
        () => _i62.CusGeoLocationBloc(gh<_i3.ICusGeoLocationRepo>()));
    gh.factory<_i63.CusInsArHeaderBloc>(
        () => _i63.CusInsArHeaderBloc(gh<_i3.ICusInsArRepo>()));
    gh.factory<_i64.CusInsInvoiceHeaderBloc>(
        () => _i64.CusInsInvoiceHeaderBloc(gh<_i3.ICusInsInvoiceRepo>()));
    gh.factory<_i65.CusInsTrnCountBloc>(
        () => _i65.CusInsTrnCountBloc(gh<_i3.IcusInsCountsRepo>()));
    gh.factory<_i66.CusInvDetailBlocBloc>(
        () => _i66.CusInvDetailBlocBloc(gh<_i3.ICusInsInvoiceRepo>()));
    gh.factory<_i67.CusItemsBloc>(
        () => _i67.CusItemsBloc(gh<_i3.ICusItemsRepo>()));
    gh.factory<_i68.CusOutStandingBloc>(
        () => _i68.CusOutStandingBloc(gh<_i3.ICusOutstandingRepo>()));
    gh.factory<_i69.CusProfileBloc>(
        () => _i69.CusProfileBloc(gh<_i3.ICusProfileRepo>()));
    gh.factory<_i70.CusPromoDetailBloc>(
        () => _i70.CusPromoDetailBloc(gh<_i3.ICusProtionRepo>()));
    gh.factory<_i71.CusPromotionsHeaderBloc>(
        () => _i71.CusPromotionsHeaderBloc(gh<_i3.ICusProtionRepo>()));
    gh.factory<_i72.CusSalesOrdersBloc>(
        () => _i72.CusSalesOrdersBloc(gh<_i3.ISalesOrdersRepo>()));
    gh.factory<_i73.CusSpPriceBloc>(
        () => _i73.CusSpPriceBloc(gh<_i3.ICusSpPriceRepo>()));
    gh.factory<_i74.CustomerTransactionBloc>(
        () => _i74.CustomerTransactionBloc(gh<_i3.ICustomerTransactionRepo>()));
    gh.factory<_i75.CustomersListBlocBloc>(
        () => _i75.CustomersListBlocBloc(gh<_i3.ICusInsightsCustomersRepo>()));
    gh.factory<_i76.EditCusProfileBloc>(
        () => _i76.EditCusProfileBloc(gh<_i3.IProfileEditRepo>()));
    return this;
  }
}
