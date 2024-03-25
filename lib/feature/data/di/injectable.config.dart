// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:customer_connect/feature/data/abstractrepo/abstractrepo.dart'
    as _i3;
import 'package:customer_connect/feature/domain/repoImpls/Loading/loadingrepo.dart'
    as _i4;
import 'package:customer_connect/feature/domain/repoImpls/loginrepo/loginrepo.dart'
    as _i5;
import 'package:customer_connect/feature/state/bloc/bloc/loading_detail_bloc.dart'
    as _i6;
import 'package:customer_connect/feature/state/bloc/loadingheader/loading_header_bloc.dart'
    as _i7;
import 'package:customer_connect/feature/state/bloc/login/user_login_bloc.dart'
    as _i8;
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
    gh.lazySingleton<_i3.ILoadingRepo>(() => _i4.LoadinRepo());
    gh.lazySingleton<_i3.ILoginRepo>(() => _i5.UserLoginRepo());
    gh.factory<_i6.LoadingDetailBloc>(
        () => _i6.LoadingDetailBloc(gh<_i3.ILoadingRepo>()));
    gh.factory<_i7.LoadingHeaderBloc>(
        () => _i7.LoadingHeaderBloc(gh<_i3.ILoadingRepo>()));
    gh.factory<_i8.UserLoginBloc>(
        () => _i8.UserLoginBloc(gh<_i3.ILoginRepo>()));
    return this;
  }
}
