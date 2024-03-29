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
import 'package:customer_connect/feature/domain/repoImpls/cusinsights/cusinsarrepo.dart'
    as _i5;
import 'package:customer_connect/feature/domain/repoImpls/cusinsights/customersrepo.dart'
    as _i7;
import 'package:customer_connect/feature/domain/repoImpls/cusinsights/transactioncunts.dart'
    as _i19;
import 'package:customer_connect/feature/domain/repoImpls/cusinsinvoice/cusinsightsinvoicerepo.dart'
    as _i6;
import 'package:customer_connect/feature/domain/repoImpls/cusprofile/cusprofilerepo.dart'
    as _i8;
import 'package:customer_connect/feature/domain/repoImpls/customertransactionrepo/customertransactionrepo.dart'
    as _i9;
import 'package:customer_connect/feature/domain/repoImpls/invoicerepo/invoicerepo.dart'
    as _i10;
import 'package:customer_connect/feature/domain/repoImpls/Loading/loadingrepo.dart'
    as _i11;
import 'package:customer_connect/feature/domain/repoImpls/loginrepo/loginrepo.dart'
    as _i12;
import 'package:customer_connect/feature/domain/repoImpls/pickingandloadingrepo/pickingandloadincountrepo.dart'
    as _i13;
import 'package:customer_connect/feature/domain/repoImpls/salesorderrepo/salesorderrepo.dart'
    as _i14;
import 'package:customer_connect/feature/domain/repoImpls/salesorderrs/salesordersrepo.dart'
    as _i15;
import 'package:customer_connect/feature/domain/repoImpls/specialpricerepo/specialpricerepo.dart'
    as _i16;
import 'package:customer_connect/feature/domain/repoImpls/todaysdeliveryrepo/todaysdeliveryrepo.dart'
    as _i17;
import 'package:customer_connect/feature/domain/repoImpls/totalordersrepo/totalorderrepo.dart'
    as _i18;
import 'package:customer_connect/feature/state/bloc/ardetails/ar_details_bloc.dart'
    as _i34;
import 'package:customer_connect/feature/state/bloc/arheader/ar_header_bloc.dart'
    as _i35;
import 'package:customer_connect/feature/state/bloc/cusinsarheader/cus_ins_ar_header_bloc.dart'
    as _i36;
import 'package:customer_connect/feature/state/bloc/cusinsinv/cus_ins_invoice_header_bloc.dart'
    as _i37;
import 'package:customer_connect/feature/state/bloc/cusinstrnscount/cus_ins_trn_count_bloc.dart'
    as _i38;
import 'package:customer_connect/feature/state/bloc/cusinvdetail/cus_inv_detail_bloc_bloc.dart'
    as _i39;
import 'package:customer_connect/feature/state/bloc/cusprofile/cus_profile_bloc.dart'
    as _i40;
import 'package:customer_connect/feature/state/bloc/cussalesorders/cus_sales_orders_bloc.dart'
    as _i41;
import 'package:customer_connect/feature/state/bloc/customer_transaction/customer_transaction_bloc.dart'
    as _i42;
import 'package:customer_connect/feature/state/bloc/customers/customers_list_bloc_bloc.dart'
    as _i43;
import 'package:customer_connect/feature/state/bloc/Invoice_details/invoice_details_bloc.dart'
    as _i20;
import 'package:customer_connect/feature/state/bloc/invoice_details_footer/invoice_details_footer_bloc.dart'
    as _i21;
import 'package:customer_connect/feature/state/bloc/invoice_header/invoice_header_bloc.dart'
    as _i22;
import 'package:customer_connect/feature/state/bloc/loading/loading_detail_bloc.dart'
    as _i24;
import 'package:customer_connect/feature/state/bloc/loadingdetail/loading_detail_bloc.dart'
    as _i23;
import 'package:customer_connect/feature/state/bloc/loadingheader/loading_header_bloc.dart'
    as _i25;
import 'package:customer_connect/feature/state/bloc/login/user_login_bloc.dart'
    as _i33;
import 'package:customer_connect/feature/state/bloc/picking_and_loading_count/picking_and_loading_count_bloc.dart'
    as _i26;
import 'package:customer_connect/feature/state/bloc/sales_order_count/sales_order_count_bloc.dart'
    as _i27;
import 'package:customer_connect/feature/state/bloc/special_price_header/special_price_header_bloc.dart'
    as _i28;
import 'package:customer_connect/feature/state/bloc/todays_delivery/todays_delivery_header_bloc.dart'
    as _i30;
import 'package:customer_connect/feature/state/bloc/todays_delivery_details/todays_delivery_details_bloc.dart'
    as _i29;
import 'package:customer_connect/feature/state/bloc/total_orders_details/total_orders_details_bloc.dart'
    as _i31;
import 'package:customer_connect/feature/state/bloc/total_orders_header/total_orders_header_bloc.dart'
    as _i32;
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
    gh.lazySingleton<_i3.ICusInsArRepo>(() => _i5.CusInsArRepo());
    gh.lazySingleton<_i3.ICusInsInvoiceRepo>(() => _i6.CusInsInvoiceRepo());
    gh.lazySingleton<_i3.ICusInsightsCustomersRepo>(
        () => _i7.CusInsCustomersRepo());
    gh.lazySingleton<_i3.ICusProfileRepo>(() => _i8.CusProfileRepo());
    gh.lazySingleton<_i3.ICustomerTransactionRepo>(
        () => _i9.CustomerTransactionRepo());
    gh.lazySingleton<_i3.IInvoiceRepo>(() => _i10.InvoiceRepo());
    gh.lazySingleton<_i3.ILoadingRepo>(() => _i11.LoadinRepo());
    gh.lazySingleton<_i3.ILoginRepo>(() => _i12.UserLoginRepo());
    gh.lazySingleton<_i3.IPickingAndLoadinCountRepo>(
        () => _i13.PickingAndLoadinCountRepo());
    gh.lazySingleton<_i3.ISalesOrderRepo>(() => _i14.SalesOrderCountRepo());
    gh.lazySingleton<_i3.ISalesOrdersRepo>(() => _i15.SalesOrdersRepo());
    gh.lazySingleton<_i3.ISpecialPriceRepo>(() => _i16.SpecialPriceRepo());
    gh.lazySingleton<_i3.ITodaysDeliveryRepo>(() => _i17.TodaysDelivery());
    gh.lazySingleton<_i3.ITotalOrdersRepo>(() => _i18.TotalOrderRepo());
    gh.lazySingleton<_i3.IcusInsCountsRepo>(() => _i19.CusTrnCOuntsRepo());
    gh.factory<_i20.InvoiceDetailsBloc>(
        () => _i20.InvoiceDetailsBloc(gh<_i3.IInvoiceRepo>()));
    gh.factory<_i21.InvoiceDetailsFooterBloc>(
        () => _i21.InvoiceDetailsFooterBloc(gh<_i3.IInvoiceRepo>()));
    gh.factory<_i22.InvoiceHeaderBloc>(
        () => _i22.InvoiceHeaderBloc(gh<_i3.IInvoiceRepo>()));
    gh.factory<_i23.LoadingDetailBloc>(
        () => _i23.LoadingDetailBloc(gh<_i3.ILoadingRepo>()));
    gh.factory<_i24.LoadingDetailBloc>(
        () => _i24.LoadingDetailBloc(gh<_i3.ILoadingRepo>()));
    gh.factory<_i25.LoadingHeaderBloc>(
        () => _i25.LoadingHeaderBloc(gh<_i3.ILoadingRepo>()));
    gh.factory<_i26.PickingAndLoadingCountBloc>(() =>
        _i26.PickingAndLoadingCountBloc(gh<_i3.IPickingAndLoadinCountRepo>()));
    gh.factory<_i27.SalesOrderCountBloc>(
        () => _i27.SalesOrderCountBloc(gh<_i3.ISalesOrderRepo>()));
    gh.factory<_i28.SpecialPriceHeaderBloc>(
        () => _i28.SpecialPriceHeaderBloc(gh<_i3.ISpecialPriceRepo>()));
    gh.factory<_i29.TodaysDeliveryDetailsBloc>(
        () => _i29.TodaysDeliveryDetailsBloc(gh<_i3.ITodaysDeliveryRepo>()));
    gh.factory<_i30.TodaysDeliveryHeaderBloc>(
        () => _i30.TodaysDeliveryHeaderBloc(gh<_i3.ITodaysDeliveryRepo>()));
    gh.factory<_i31.TotalOrdersDetailsBloc>(
        () => _i31.TotalOrdersDetailsBloc(gh<_i3.ITotalOrdersRepo>()));
    gh.factory<_i32.TotalOrdersHeaderBloc>(
        () => _i32.TotalOrdersHeaderBloc(gh<_i3.ITotalOrdersRepo>()));
    gh.factory<_i33.UserLoginBloc>(
        () => _i33.UserLoginBloc(gh<_i3.ILoginRepo>()));
    gh.factory<_i34.ArDetailsBloc>(
        () => _i34.ArDetailsBloc(gh<_i3.IArCollectionRepo>()));
    gh.factory<_i35.ArHeaderBloc>(
        () => _i35.ArHeaderBloc(gh<_i3.IArCollectionRepo>()));
    gh.factory<_i36.CusInsArHeaderBloc>(
        () => _i36.CusInsArHeaderBloc(gh<_i3.ICusInsArRepo>()));
    gh.factory<_i37.CusInsInvoiceHeaderBloc>(
        () => _i37.CusInsInvoiceHeaderBloc(gh<_i3.ICusInsInvoiceRepo>()));
    gh.factory<_i38.CusInsTrnCountBloc>(
        () => _i38.CusInsTrnCountBloc(gh<_i3.IcusInsCountsRepo>()));
    gh.factory<_i39.CusInvDetailBlocBloc>(
        () => _i39.CusInvDetailBlocBloc(gh<_i3.ICusInsInvoiceRepo>()));
    gh.factory<_i40.CusProfileBloc>(
        () => _i40.CusProfileBloc(gh<_i3.ICusProfileRepo>()));
    gh.factory<_i41.CusSalesOrdersBloc>(
        () => _i41.CusSalesOrdersBloc(gh<_i3.ISalesOrdersRepo>()));
    gh.factory<_i42.CustomerTransactionBloc>(
        () => _i42.CustomerTransactionBloc(gh<_i3.ICustomerTransactionRepo>()));
    gh.factory<_i43.CustomersListBlocBloc>(
        () => _i43.CustomersListBlocBloc(gh<_i3.ICusInsightsCustomersRepo>()));
    return this;
  }
}
