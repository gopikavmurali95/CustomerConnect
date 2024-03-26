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
import 'package:customer_connect/feature/domain/repoImpls/cusinsights/customersrepo.dart'
    as _i5;
import 'package:customer_connect/feature/domain/repoImpls/customertransactionrepo/customertransactionrepo.dart'
    as _i6;
import 'package:customer_connect/feature/domain/repoImpls/Loading/loadingrepo.dart'
    as _i7;
import 'package:customer_connect/feature/domain/repoImpls/loginrepo/loginrepo.dart'
    as _i8;
import 'package:customer_connect/feature/domain/repoImpls/pickingandloadingrepo/pickingandloadincountrepo.dart'
    as _i9;
import 'package:customer_connect/feature/domain/repoImpls/salesorderrepo/salesorderrepo.dart'
    as _i10;
import 'package:customer_connect/feature/state/bloc/ardetails/ar_details_bloc.dart'
    as _i16;
import 'package:customer_connect/feature/state/bloc/arheader/ar_header_bloc.dart'
    as _i17;
import 'package:customer_connect/feature/state/bloc/customer_transaction/customer_transaction_bloc.dart'
    as _i18;
import 'package:customer_connect/feature/state/bloc/customers/customers_list_bloc_bloc.dart'
    as _i19;
import 'package:customer_connect/feature/state/bloc/loading/loading_detail_bloc.dart'
    as _i11;
import 'package:customer_connect/feature/state/bloc/loadingheader/loading_header_bloc.dart'
    as _i12;
import 'package:customer_connect/feature/state/bloc/login/user_login_bloc.dart'
    as _i15;
import 'package:customer_connect/feature/state/bloc/picking_and_loading_count/picking_and_loading_count_bloc.dart'
    as _i13;
import 'package:customer_connect/feature/state/bloc/sales_order_count/sales_order_count_bloc.dart'
    as _i14;
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
    gh.lazySingleton<_i3.ICusInsightsCustomersRepo>(
        () => _i5.CusInsCustomersRepo());
    gh.lazySingleton<_i3.ICustomerTransactionRepo>(
        () => _i6.CustomerTransactionRepo());
    gh.lazySingleton<_i3.ILoadingRepo>(() => _i7.LoadinRepo());
    gh.lazySingleton<_i3.ILoginRepo>(() => _i8.UserLoginRepo());
    gh.lazySingleton<_i3.IPickingAndLoadinCountRepo>(
        () => _i9.PickingAndLoadinCountRepo());
    gh.lazySingleton<_i3.ISalesOrderRepo>(() => _i10.SalesOrderCountRepo());
    gh.factory<_i11.LoadingDetailBloc>(
        () => _i11.LoadingDetailBloc(gh<_i3.ILoadingRepo>()));
    gh.factory<_i12.LoadingHeaderBloc>(
        () => _i12.LoadingHeaderBloc(gh<_i3.ILoadingRepo>()));
    gh.factory<_i13.PickingAndLoadingCountBloc>(() =>
        _i13.PickingAndLoadingCountBloc(gh<_i3.IPickingAndLoadinCountRepo>()));
    gh.factory<_i14.SalesOrderCountBloc>(
        () => _i14.SalesOrderCountBloc(gh<_i3.ISalesOrderRepo>()));
    gh.factory<_i15.UserLoginBloc>(
        () => _i15.UserLoginBloc(gh<_i3.ILoginRepo>()));
    gh.factory<_i16.ArDetailsBloc>(
        () => _i16.ArDetailsBloc(gh<_i3.IArCollectionRepo>()));
    gh.factory<_i17.ArHeaderBloc>(
        () => _i17.ArHeaderBloc(gh<_i3.IArCollectionRepo>()));
    gh.factory<_i18.CustomerTransactionBloc>(
        () => _i18.CustomerTransactionBloc(gh<_i3.ICustomerTransactionRepo>()));
    gh.factory<_i19.CustomersListBlocBloc>(
        () => _i19.CustomersListBlocBloc(gh<_i3.ICusInsightsCustomersRepo>()));
    return this;
  }
}
