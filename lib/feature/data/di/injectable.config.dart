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
import 'package:customer_connect/feature/domain/repoImpls/invoicerepo/invoicerepo.dart'
    as _i5;
import 'package:customer_connect/feature/domain/repoImpls/Loading/loadingrepo.dart'
    as _i6;
import 'package:customer_connect/feature/domain/repoImpls/loginrepo/loginrepo.dart'
    as _i7;
import 'package:customer_connect/feature/domain/repoImpls/pickingandloadingrepo/pickingandloadincountrepo.dart'
    as _i8;
import 'package:customer_connect/feature/domain/repoImpls/salesorderrepo/salesorderrepo.dart'
    as _i9;
import 'package:customer_connect/feature/domain/repoImpls/totalordersrepo/totalorderrepo.dart'
    as _i10;
import 'package:customer_connect/feature/state/bloc/customer_transaction/customer_transaction_bloc.dart'
    as _i21;
import 'package:customer_connect/feature/state/bloc/Invoice_details/invoice_details_bloc.dart'
    as _i11;
import 'package:customer_connect/feature/state/bloc/invoice_details_footer/invoice_details_footer_bloc.dart'
    as _i12;
import 'package:customer_connect/feature/state/bloc/invoice_header/invoice_header_bloc.dart'
    as _i13;
import 'package:customer_connect/feature/state/bloc/loadingdetail/loading_detail_bloc.dart'
    as _i14;
import 'package:customer_connect/feature/state/bloc/loadingheader/loading_header_bloc.dart'
    as _i15;
import 'package:customer_connect/feature/state/bloc/login/user_login_bloc.dart'
    as _i20;
import 'package:customer_connect/feature/state/bloc/picking_and_loading_count/picking_and_loading_count_bloc.dart'
    as _i16;
import 'package:customer_connect/feature/state/bloc/sales_order_count/sales_order_count_bloc.dart'
    as _i17;
import 'package:customer_connect/feature/state/bloc/total_orders_details/total_orders_details_bloc.dart'
    as _i18;
import 'package:customer_connect/feature/state/bloc/total_orders_header/total_orders_header_bloc.dart'
    as _i19;
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
    gh.lazySingleton<_i3.IInvoiceRepo>(() => _i5.InvoiceRepo());
    gh.lazySingleton<_i3.ILoadingRepo>(() => _i6.LoadinRepo());
    gh.lazySingleton<_i3.ILoginRepo>(() => _i7.UserLoginRepo());
    gh.lazySingleton<_i3.IPickingAndLoadinCountRepo>(
        () => _i8.PickingAndLoadinCountRepo());
    gh.lazySingleton<_i3.ISalesOrderRepo>(() => _i9.SalesOrderCountRepo());
    gh.lazySingleton<_i3.ITotalOrdersRepo>(() => _i10.TotalOrderRepo());
    gh.factory<_i11.InvoiceDetailsBloc>(
        () => _i11.InvoiceDetailsBloc(gh<_i3.IInvoiceRepo>()));
    gh.factory<_i12.InvoiceDetailsFooterBloc>(
        () => _i12.InvoiceDetailsFooterBloc(gh<_i3.IInvoiceRepo>()));
    gh.factory<_i13.InvoiceHeaderBloc>(
        () => _i13.InvoiceHeaderBloc(gh<_i3.IInvoiceRepo>()));
    gh.factory<_i14.LoadingDetailBloc>(
        () => _i14.LoadingDetailBloc(gh<_i3.ILoadingRepo>()));
    gh.factory<_i15.LoadingHeaderBloc>(
        () => _i15.LoadingHeaderBloc(gh<_i3.ILoadingRepo>()));
    gh.factory<_i16.PickingAndLoadingCountBloc>(() =>
        _i16.PickingAndLoadingCountBloc(gh<_i3.IPickingAndLoadinCountRepo>()));
    gh.factory<_i17.SalesOrderCountBloc>(
        () => _i17.SalesOrderCountBloc(gh<_i3.ISalesOrderRepo>()));
    gh.factory<_i18.TotalOrdersDetailsBloc>(
        () => _i18.TotalOrdersDetailsBloc(gh<_i3.ITotalOrdersRepo>()));
    gh.factory<_i19.TotalOrdersHeaderBloc>(
        () => _i19.TotalOrdersHeaderBloc(gh<_i3.ITotalOrdersRepo>()));
    gh.factory<_i20.UserLoginBloc>(
        () => _i20.UserLoginBloc(gh<_i3.ILoginRepo>()));
    gh.factory<_i21.CustomerTransactionBloc>(
        () => _i21.CustomerTransactionBloc(gh<_i3.ICustomerTransactionRepo>()));
    return this;
  }
}
