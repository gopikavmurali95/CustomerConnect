// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart'
    as _i3;
import 'package:customer_connect/feature/domain/repoImpls/customertransactionrepo/customertransactionrepo.dart'
    as _i4;
import 'package:customer_connect/feature/domain/repoImpls/Loading/loadingrepo.dart'
    as _i5;
import 'package:customer_connect/feature/domain/repoImpls/loginrepo/loginrepo.dart'
    as _i6;
import 'package:customer_connect/feature/domain/repoImpls/pickingandloadingrepo/pickingandloadincountrepo.dart'
    as _i7;
import 'package:customer_connect/feature/domain/repoImpls/salesorderrepo/salesorderrepo.dart'
    as _i8;
import 'package:customer_connect/feature/state/bloc/bloc/loading_detail_bloc.dart'
    as _i9;
import 'package:customer_connect/feature/state/bloc/customer_transaction/customer_transaction_bloc.dart'
    as _i14;
import 'package:customer_connect/feature/state/bloc/loadingheader/loading_header_bloc.dart'
    as _i10;
import 'package:customer_connect/feature/state/bloc/login/user_login_bloc.dart'
    as _i13;
import 'package:customer_connect/feature/state/bloc/picking_and_loading_count/picking_and_loading_count_bloc.dart'
    as _i11;
import 'package:customer_connect/feature/state/bloc/sales_order_count/sales_order_count_bloc.dart'
    as _i12;
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
    gh.lazySingleton<_i3.ICustomerTransactionRepo>(
        () => _i4.CustomerTransactionRepo());
    gh.lazySingleton<_i3.ILoadingRepo>(() => _i5.LoadinRepo());
    gh.lazySingleton<_i3.ILoginRepo>(() => _i6.UserLoginRepo());
    gh.lazySingleton<_i3.IPickingAndLoadinCountRepo>(
        () => _i7.PickingAndLoadinCountRepo());
    gh.lazySingleton<_i3.ISalesOrderRepo>(() => _i8.SalesOrderCountRepo());
    gh.factory<_i9.LoadingDetailBloc>(
        () => _i9.LoadingDetailBloc(gh<_i3.ILoadingRepo>()));
    gh.factory<_i10.LoadingHeaderBloc>(
        () => _i10.LoadingHeaderBloc(gh<_i3.ILoadingRepo>()));
    gh.factory<_i11.PickingAndLoadingCountBloc>(() =>
        _i11.PickingAndLoadingCountBloc(gh<_i3.IPickingAndLoadinCountRepo>()));
    gh.factory<_i12.SalesOrderCountBloc>(
        () => _i12.SalesOrderCountBloc(gh<_i3.ISalesOrderRepo>()));
    gh.factory<_i13.UserLoginBloc>(
        () => _i13.UserLoginBloc(gh<_i3.ILoginRepo>()));
    gh.factory<_i14.CustomerTransactionBloc>(
        () => _i14.CustomerTransactionBloc(gh<_i3.ICustomerTransactionRepo>()));
    return this;
  }
}
