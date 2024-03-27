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
    as _i14;
import 'package:customer_connect/feature/domain/repoImpls/cusinsinvoice/cusinsightsinvoicerepo.dart'
    as _i6;
import 'package:customer_connect/feature/domain/repoImpls/cusprofile/cusprofilerepo.dart'
    as _i8;
import 'package:customer_connect/feature/domain/repoImpls/customertransactionrepo/customertransactionrepo.dart'
    as _i9;
import 'package:customer_connect/feature/domain/repoImpls/Loading/loadingrepo.dart'
    as _i10;
import 'package:customer_connect/feature/domain/repoImpls/loginrepo/loginrepo.dart'
    as _i11;
import 'package:customer_connect/feature/domain/repoImpls/pickingandloadingrepo/pickingandloadincountrepo.dart'
    as _i12;
import 'package:customer_connect/feature/domain/repoImpls/salesorderrepo/salesorderrepo.dart'
    as _i13;
import 'package:customer_connect/feature/state/bloc/ardetails/ar_details_bloc.dart'
    as _i20;
import 'package:customer_connect/feature/state/bloc/arheader/ar_header_bloc.dart'
    as _i21;
import 'package:customer_connect/feature/state/bloc/cusinsarheader/cus_ins_ar_header_bloc.dart'
    as _i22;
import 'package:customer_connect/feature/state/bloc/cusinsinv/cus_ins_invoice_header_bloc.dart'
    as _i23;
import 'package:customer_connect/feature/state/bloc/cusinstrnscount/cus_ins_trn_count_bloc.dart'
    as _i24;
import 'package:customer_connect/feature/state/bloc/cusinvdetail/cus_inv_detail_bloc_bloc.dart'
    as _i25;
import 'package:customer_connect/feature/state/bloc/cusprofile/cus_profile_bloc.dart'
    as _i26;
import 'package:customer_connect/feature/state/bloc/customer_transaction/customer_transaction_bloc.dart'
    as _i27;
import 'package:customer_connect/feature/state/bloc/customers/customers_list_bloc_bloc.dart'
    as _i28;
import 'package:customer_connect/feature/state/bloc/loading/loading_detail_bloc.dart'
    as _i15;
import 'package:customer_connect/feature/state/bloc/loadingheader/loading_header_bloc.dart'
    as _i16;
import 'package:customer_connect/feature/state/bloc/login/user_login_bloc.dart'
    as _i19;
import 'package:customer_connect/feature/state/bloc/picking_and_loading_count/picking_and_loading_count_bloc.dart'
    as _i17;
import 'package:customer_connect/feature/state/bloc/sales_order_count/sales_order_count_bloc.dart'
    as _i18;
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
    gh.lazySingleton<_i3.ILoadingRepo>(() => _i10.LoadinRepo());
    gh.lazySingleton<_i3.ILoginRepo>(() => _i11.UserLoginRepo());
    gh.lazySingleton<_i3.IPickingAndLoadinCountRepo>(
        () => _i12.PickingAndLoadinCountRepo());
    gh.lazySingleton<_i3.ISalesOrderRepo>(() => _i13.SalesOrderCountRepo());
    gh.lazySingleton<_i3.IcusInsCountsRepo>(() => _i14.CusTrnCOuntsRepo());
    gh.factory<_i15.LoadingDetailBloc>(
        () => _i15.LoadingDetailBloc(gh<_i3.ILoadingRepo>()));
    gh.factory<_i16.LoadingHeaderBloc>(
        () => _i16.LoadingHeaderBloc(gh<_i3.ILoadingRepo>()));
    gh.factory<_i17.PickingAndLoadingCountBloc>(() =>
        _i17.PickingAndLoadingCountBloc(gh<_i3.IPickingAndLoadinCountRepo>()));
    gh.factory<_i18.SalesOrderCountBloc>(
        () => _i18.SalesOrderCountBloc(gh<_i3.ISalesOrderRepo>()));
    gh.factory<_i19.UserLoginBloc>(
        () => _i19.UserLoginBloc(gh<_i3.ILoginRepo>()));
    gh.factory<_i20.ArDetailsBloc>(
        () => _i20.ArDetailsBloc(gh<_i3.IArCollectionRepo>()));
    gh.factory<_i21.ArHeaderBloc>(
        () => _i21.ArHeaderBloc(gh<_i3.IArCollectionRepo>()));
    gh.factory<_i22.CusInsArHeaderBloc>(
        () => _i22.CusInsArHeaderBloc(gh<_i3.ICusInsArRepo>()));
    gh.factory<_i23.CusInsInvoiceHeaderBloc>(
        () => _i23.CusInsInvoiceHeaderBloc(gh<_i3.ICusInsInvoiceRepo>()));
    gh.factory<_i24.CusInsTrnCountBloc>(
        () => _i24.CusInsTrnCountBloc(gh<_i3.IcusInsCountsRepo>()));
    gh.factory<_i25.CusInvDetailBlocBloc>(
        () => _i25.CusInvDetailBlocBloc(gh<_i3.ICusInsInvoiceRepo>()));
    gh.factory<_i26.CusProfileBloc>(
        () => _i26.CusProfileBloc(gh<_i3.ICusProfileRepo>()));
    gh.factory<_i27.CustomerTransactionBloc>(
        () => _i27.CustomerTransactionBloc(gh<_i3.ICustomerTransactionRepo>()));
    gh.factory<_i28.CustomersListBlocBloc>(
        () => _i28.CustomersListBlocBloc(gh<_i3.ICusInsightsCustomersRepo>()));
    return this;
  }
}
