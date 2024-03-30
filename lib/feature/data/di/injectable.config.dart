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
    as _i27;
import 'package:customer_connect/feature/domain/repoImpls/cusinsights/cusinsarrepo.dart'
    as _i6;
import 'package:customer_connect/feature/domain/repoImpls/cusinsights/customersrepo.dart'
    as _i8;
import 'package:customer_connect/feature/domain/repoImpls/cusinsights/transactioncunts.dart'
    as _i28;
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
    as _i20;
import 'package:customer_connect/feature/domain/repoImpls/geolocation/geolocationrepo.dart'
    as _i5;
import 'package:customer_connect/feature/domain/repoImpls/invoicerepo/invoicerepo.dart'
    as _i15;
import 'package:customer_connect/feature/domain/repoImpls/Loading/loadingrepo.dart'
    as _i16;
import 'package:customer_connect/feature/domain/repoImpls/loginrepo/loginrepo.dart'
    as _i17;
import 'package:customer_connect/feature/domain/repoImpls/pickingandloadingrepo/pickingandloadincountrepo.dart'
    as _i18;
import 'package:customer_connect/feature/domain/repoImpls/pickingheaderrepo/pickingheaderrepo.dart'
    as _i19;
import 'package:customer_connect/feature/domain/repoImpls/promtionrepo/promotionrepo.dart'
    as _i21;
import 'package:customer_connect/feature/domain/repoImpls/salesorderrepo/salesorderrepo.dart'
    as _i22;
import 'package:customer_connect/feature/domain/repoImpls/salesorderrs/salesordersrepo.dart'
    as _i23;
import 'package:customer_connect/feature/domain/repoImpls/specialpricerepo/specialpricerepo.dart'
    as _i24;
import 'package:customer_connect/feature/domain/repoImpls/todaysdeliveryrepo/todaysdeliveryrepo.dart'
    as _i25;
import 'package:customer_connect/feature/domain/repoImpls/totalordersrepo/totalorderrepo.dart'
    as _i26;
import 'package:customer_connect/feature/state/bloc/ardetails/ar_details_bloc.dart'
    as _i49;
import 'package:customer_connect/feature/state/bloc/arheader/ar_header_bloc.dart'
    as _i50;
import 'package:customer_connect/feature/state/bloc/cusdocuments/cus_documents_bloc.dart'
    as _i51;
import 'package:customer_connect/feature/state/bloc/cusgeolocation/cus_geo_location_bloc.dart'
    as _i52;
import 'package:customer_connect/feature/state/bloc/cusinsarheader/cus_ins_ar_header_bloc.dart'
    as _i53;
import 'package:customer_connect/feature/state/bloc/cusinsinv/cus_ins_invoice_header_bloc.dart'
    as _i54;
import 'package:customer_connect/feature/state/bloc/cusinstrnscount/cus_ins_trn_count_bloc.dart'
    as _i55;
import 'package:customer_connect/feature/state/bloc/cusinvdetail/cus_inv_detail_bloc_bloc.dart'
    as _i56;
import 'package:customer_connect/feature/state/bloc/cusitems/cus_items_bloc.dart'
    as _i57;
import 'package:customer_connect/feature/state/bloc/cusoutstanding/cus_out_standing_bloc.dart'
    as _i58;
import 'package:customer_connect/feature/state/bloc/cusprofile/cus_profile_bloc.dart'
    as _i59;
import 'package:customer_connect/feature/state/bloc/cuspromotionsheader/cus_promotions_header_bloc.dart'
    as _i60;
import 'package:customer_connect/feature/state/bloc/cussalesorders/cus_sales_orders_bloc.dart'
    as _i61;
import 'package:customer_connect/feature/state/bloc/cussppriceheader/cus_sp_price_bloc.dart'
    as _i62;
import 'package:customer_connect/feature/state/bloc/customer_transaction/customer_transaction_bloc.dart'
    as _i63;
import 'package:customer_connect/feature/state/bloc/customers/customers_list_bloc_bloc.dart'
    as _i64;
import 'package:customer_connect/feature/state/bloc/editcusprofile/edit_cus_profile_bloc.dart'
    as _i65;
import 'package:customer_connect/feature/state/bloc/Invoice_details/invoice_details_bloc.dart'
    as _i29;
import 'package:customer_connect/feature/state/bloc/invoice_details_footer/invoice_details_footer_bloc.dart'
    as _i30;
import 'package:customer_connect/feature/state/bloc/invoice_header/invoice_header_bloc.dart'
    as _i31;
import 'package:customer_connect/feature/state/bloc/loading/loading_detail_bloc.dart'
    as _i32;
import 'package:customer_connect/feature/state/bloc/loadingdetail/loading_detail_bloc.dart'
    as _i33;
import 'package:customer_connect/feature/state/bloc/loadingheader/loading_header_bloc.dart'
    as _i34;
import 'package:customer_connect/feature/state/bloc/login/user_login_bloc.dart'
    as _i48;
import 'package:customer_connect/feature/state/bloc/picking_and_loading_count/picking_and_loading_count_bloc.dart'
    as _i35;
import 'package:customer_connect/feature/state/bloc/picking_detail/pickingdetail_bloc.dart'
    as _i37;
import 'package:customer_connect/feature/state/bloc/picking_header/picking_header_bloc.dart'
    as _i36;
import 'package:customer_connect/feature/state/bloc/promotion_customer/promotion_customer_bloc.dart'
    as _i38;
import 'package:customer_connect/feature/state/bloc/promotion_details/promotion_details_bloc.dart'
    as _i39;
import 'package:customer_connect/feature/state/bloc/promotion_header/promotion_header_bloc.dart'
    as _i40;
import 'package:customer_connect/feature/state/bloc/sales_order_count/sales_order_count_bloc.dart'
    as _i41;
import 'package:customer_connect/feature/state/bloc/special_price_header/special_price_header_bloc.dart'
    as _i42;
import 'package:customer_connect/feature/state/bloc/todays_delivery/todays_delivery_header_bloc.dart'
    as _i44;
import 'package:customer_connect/feature/state/bloc/todays_delivery_details/todays_delivery_details_bloc.dart'
    as _i43;
import 'package:customer_connect/feature/state/bloc/total_orders_details/total_orders_details_bloc.dart'
    as _i45;
import 'package:customer_connect/feature/state/bloc/total_orders_header/total_orders_header_bloc.dart'
    as _i46;
import 'package:customer_connect/feature/state/cubit/updategeolocation/update_geo_location_cubit.dart'
    as _i47;
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
    gh.lazySingleton<_i3.IPickingAndLoadinCountRepo>(
        () => _i18.PickingAndLoadinCountRepo());
    gh.lazySingleton<_i3.IPickingHeaderRepo>(() => _i19.PickingHeaderRepo());
    gh.lazySingleton<_i3.IProfileEditRepo>(() => _i20.ProfileEditingRepo());
    gh.lazySingleton<_i3.IPromotionHeaderRepo>(
        () => _i21.PromotionHeaderRepo());
    gh.lazySingleton<_i3.ISalesOrderRepo>(() => _i22.SalesOrderCountRepo());
    gh.lazySingleton<_i3.ISalesOrdersRepo>(() => _i23.SalesOrdersRepo());
    gh.lazySingleton<_i3.ISpecialPriceRepo>(() => _i24.SpecialPriceRepo());
    gh.lazySingleton<_i3.ITodaysDeliveryRepo>(() => _i25.TodaysDelivery());
    gh.lazySingleton<_i3.ITotalOrdersRepo>(() => _i26.TotalOrderRepo());
    gh.lazySingleton<_i3.IcusDocumentsModel>(() => _i27.CusDocumentsRepo());
    gh.lazySingleton<_i3.IcusInsCountsRepo>(() => _i28.CusTrnCOuntsRepo());
    gh.factory<_i29.InvoiceDetailsBloc>(
        () => _i29.InvoiceDetailsBloc(gh<_i3.IInvoiceRepo>()));
    gh.factory<_i30.InvoiceDetailsFooterBloc>(
        () => _i30.InvoiceDetailsFooterBloc(gh<_i3.IInvoiceRepo>()));
    gh.factory<_i31.InvoiceHeaderBloc>(
        () => _i31.InvoiceHeaderBloc(gh<_i3.IInvoiceRepo>()));
    gh.factory<_i32.LoadingDetailBloc>(
        () => _i32.LoadingDetailBloc(gh<_i3.ILoadingRepo>()));
    gh.factory<_i33.LoadingDetailBloc>(
        () => _i33.LoadingDetailBloc(gh<_i3.ILoadingRepo>()));
    gh.factory<_i34.LoadingHeaderBloc>(
        () => _i34.LoadingHeaderBloc(gh<_i3.ILoadingRepo>()));
    gh.factory<_i35.PickingAndLoadingCountBloc>(() =>
        _i35.PickingAndLoadingCountBloc(gh<_i3.IPickingAndLoadinCountRepo>()));
    gh.factory<_i36.PickingHeaderBloc>(
        () => _i36.PickingHeaderBloc(gh<_i3.IPickingHeaderRepo>()));
    gh.factory<_i37.PickingdetailBloc>(
        () => _i37.PickingdetailBloc(gh<_i3.IPickingHeaderRepo>()));
    gh.factory<_i38.PromotionCustomerBloc>(
        () => _i38.PromotionCustomerBloc(gh<_i3.IPromotionHeaderRepo>()));
    gh.factory<_i39.PromotionDetailsBloc>(
        () => _i39.PromotionDetailsBloc(gh<_i3.IPromotionHeaderRepo>()));
    gh.factory<_i40.PromotionHeaderBloc>(
        () => _i40.PromotionHeaderBloc(gh<_i3.IPromotionHeaderRepo>()));
    gh.factory<_i41.SalesOrderCountBloc>(
        () => _i41.SalesOrderCountBloc(gh<_i3.ISalesOrderRepo>()));
    gh.factory<_i42.SpecialPriceHeaderBloc>(
        () => _i42.SpecialPriceHeaderBloc(gh<_i3.ISpecialPriceRepo>()));
    gh.factory<_i43.TodaysDeliveryDetailsBloc>(
        () => _i43.TodaysDeliveryDetailsBloc(gh<_i3.ITodaysDeliveryRepo>()));
    gh.factory<_i44.TodaysDeliveryHeaderBloc>(
        () => _i44.TodaysDeliveryHeaderBloc(gh<_i3.ITodaysDeliveryRepo>()));
    gh.factory<_i45.TotalOrdersDetailsBloc>(
        () => _i45.TotalOrdersDetailsBloc(gh<_i3.ITotalOrdersRepo>()));
    gh.factory<_i46.TotalOrdersHeaderBloc>(
        () => _i46.TotalOrdersHeaderBloc(gh<_i3.ITotalOrdersRepo>()));
    gh.factory<_i47.UpdateGeoLocationCubit>(
        () => _i47.UpdateGeoLocationCubit(gh<_i3.ICusGeoLocationRepo>()));
    gh.factory<_i48.UserLoginBloc>(
        () => _i48.UserLoginBloc(gh<_i3.ILoginRepo>()));
    gh.factory<_i49.ArDetailsBloc>(
        () => _i49.ArDetailsBloc(gh<_i3.IArCollectionRepo>()));
    gh.factory<_i50.ArHeaderBloc>(
        () => _i50.ArHeaderBloc(gh<_i3.IArCollectionRepo>()));
    gh.factory<_i51.CusDocumentsBloc>(
        () => _i51.CusDocumentsBloc(gh<_i3.IcusDocumentsModel>()));
    gh.factory<_i52.CusGeoLocationBloc>(
        () => _i52.CusGeoLocationBloc(gh<_i3.ICusGeoLocationRepo>()));
    gh.factory<_i53.CusInsArHeaderBloc>(
        () => _i53.CusInsArHeaderBloc(gh<_i3.ICusInsArRepo>()));
    gh.factory<_i54.CusInsInvoiceHeaderBloc>(
        () => _i54.CusInsInvoiceHeaderBloc(gh<_i3.ICusInsInvoiceRepo>()));
    gh.factory<_i55.CusInsTrnCountBloc>(
        () => _i55.CusInsTrnCountBloc(gh<_i3.IcusInsCountsRepo>()));
    gh.factory<_i56.CusInvDetailBlocBloc>(
        () => _i56.CusInvDetailBlocBloc(gh<_i3.ICusInsInvoiceRepo>()));
    gh.factory<_i57.CusItemsBloc>(
        () => _i57.CusItemsBloc(gh<_i3.ICusItemsRepo>()));
    gh.factory<_i58.CusOutStandingBloc>(
        () => _i58.CusOutStandingBloc(gh<_i3.ICusOutstandingRepo>()));
    gh.factory<_i59.CusProfileBloc>(
        () => _i59.CusProfileBloc(gh<_i3.ICusProfileRepo>()));
    gh.factory<_i60.CusPromotionsHeaderBloc>(
        () => _i60.CusPromotionsHeaderBloc(gh<_i3.ICusProtionRepo>()));
    gh.factory<_i61.CusSalesOrdersBloc>(
        () => _i61.CusSalesOrdersBloc(gh<_i3.ISalesOrdersRepo>()));
    gh.factory<_i62.CusSpPriceBloc>(
        () => _i62.CusSpPriceBloc(gh<_i3.ICusSpPriceRepo>()));
    gh.factory<_i63.CustomerTransactionBloc>(
        () => _i63.CustomerTransactionBloc(gh<_i3.ICustomerTransactionRepo>()));
    gh.factory<_i64.CustomersListBlocBloc>(
        () => _i64.CustomersListBlocBloc(gh<_i3.ICusInsightsCustomersRepo>()));
    gh.factory<_i65.EditCusProfileBloc>(
        () => _i65.EditCusProfileBloc(gh<_i3.IProfileEditRepo>()));
    return this;
  }
}
