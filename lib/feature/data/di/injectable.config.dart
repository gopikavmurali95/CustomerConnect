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
import 'package:customer_connect/feature/domain/repoImpls/Loading/loadingrepo.dart'
    as _i5;
import 'package:customer_connect/feature/domain/repoImpls/loginrepo/loginrepo.dart'
    as _i6;
import 'package:customer_connect/feature/state/bloc/ardetails/ar_details_bloc.dart'
    as _i10;
import 'package:customer_connect/feature/state/bloc/arheader/ar_header_bloc.dart'
    as _i11;
import 'package:customer_connect/feature/state/bloc/loading/loading_detail_bloc.dart'
    as _i7;
import 'package:customer_connect/feature/state/bloc/loadingheader/loading_header_bloc.dart'
    as _i8;
import 'package:customer_connect/feature/state/bloc/login/user_login_bloc.dart'
    as _i9;
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
    gh.lazySingleton<_i3.ILoadingRepo>(() => _i5.LoadinRepo());
    gh.lazySingleton<_i3.ILoginRepo>(() => _i6.UserLoginRepo());
    gh.factory<_i7.LoadingDetailBloc>(
        () => _i7.LoadingDetailBloc(gh<_i3.ILoadingRepo>()));
    gh.factory<_i8.LoadingHeaderBloc>(
        () => _i8.LoadingHeaderBloc(gh<_i3.ILoadingRepo>()));
    gh.factory<_i9.UserLoginBloc>(
        () => _i9.UserLoginBloc(gh<_i3.ILoginRepo>()));
    gh.factory<_i10.ArDetailsBloc>(
        () => _i10.ArDetailsBloc(gh<_i3.IArCollectionRepo>()));
    gh.factory<_i11.ArHeaderBloc>(
        () => _i11.ArHeaderBloc(gh<_i3.IArCollectionRepo>()));
    return this;
  }
}
