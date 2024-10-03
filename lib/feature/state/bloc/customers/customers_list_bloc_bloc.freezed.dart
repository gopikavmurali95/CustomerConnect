// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customers_list_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CustomersListBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String area, String subarea,
            String route, String searchQuery, String pagenum)
        getCustomersEvent,
    required TResult Function() clearCustomersEvent,
    required TResult Function() restCustomersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String area, String subarea, String route,
            String searchQuery, String pagenum)?
        getCustomersEvent,
    TResult? Function()? clearCustomersEvent,
    TResult? Function()? restCustomersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String area, String subarea, String route,
            String searchQuery, String pagenum)?
        getCustomersEvent,
    TResult Function()? clearCustomersEvent,
    TResult Function()? restCustomersEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCustomersEvent value) getCustomersEvent,
    required TResult Function(ClearCustomersEvent value) clearCustomersEvent,
    required TResult Function(RestCustomersEvent value) restCustomersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCustomersEvent value)? getCustomersEvent,
    TResult? Function(ClearCustomersEvent value)? clearCustomersEvent,
    TResult? Function(RestCustomersEvent value)? restCustomersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCustomersEvent value)? getCustomersEvent,
    TResult Function(ClearCustomersEvent value)? clearCustomersEvent,
    TResult Function(RestCustomersEvent value)? restCustomersEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomersListBlocEventCopyWith<$Res> {
  factory $CustomersListBlocEventCopyWith(CustomersListBlocEvent value,
          $Res Function(CustomersListBlocEvent) then) =
      _$CustomersListBlocEventCopyWithImpl<$Res, CustomersListBlocEvent>;
}

/// @nodoc
class _$CustomersListBlocEventCopyWithImpl<$Res,
        $Val extends CustomersListBlocEvent>
    implements $CustomersListBlocEventCopyWith<$Res> {
  _$CustomersListBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCustomersEventImplCopyWith<$Res> {
  factory _$$GetCustomersEventImplCopyWith(_$GetCustomersEventImpl value,
          $Res Function(_$GetCustomersEventImpl) then) =
      __$$GetCustomersEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String userId,
      String area,
      String subarea,
      String route,
      String searchQuery,
      String pagenum});
}

/// @nodoc
class __$$GetCustomersEventImplCopyWithImpl<$Res>
    extends _$CustomersListBlocEventCopyWithImpl<$Res, _$GetCustomersEventImpl>
    implements _$$GetCustomersEventImplCopyWith<$Res> {
  __$$GetCustomersEventImplCopyWithImpl(_$GetCustomersEventImpl _value,
      $Res Function(_$GetCustomersEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? area = null,
    Object? subarea = null,
    Object? route = null,
    Object? searchQuery = null,
    Object? pagenum = null,
  }) {
    return _then(_$GetCustomersEventImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
      subarea: null == subarea
          ? _value.subarea
          : subarea // ignore: cast_nullable_to_non_nullable
              as String,
      route: null == route
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      pagenum: null == pagenum
          ? _value.pagenum
          : pagenum // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCustomersEventImpl implements GetCustomersEvent {
  const _$GetCustomersEventImpl(
      {required this.userId,
      required this.area,
      required this.subarea,
      required this.route,
      required this.searchQuery,
      required this.pagenum});

  @override
  final String userId;
  @override
  final String area;
  @override
  final String subarea;
  @override
  final String route;
  @override
  final String searchQuery;
  @override
  final String pagenum;

  @override
  String toString() {
    return 'CustomersListBlocEvent.getCustomersEvent(userId: $userId, area: $area, subarea: $subarea, route: $route, searchQuery: $searchQuery, pagenum: $pagenum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCustomersEventImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.subarea, subarea) || other.subarea == subarea) &&
            (identical(other.route, route) || other.route == route) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.pagenum, pagenum) || other.pagenum == pagenum));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, userId, area, subarea, route, searchQuery, pagenum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCustomersEventImplCopyWith<_$GetCustomersEventImpl> get copyWith =>
      __$$GetCustomersEventImplCopyWithImpl<_$GetCustomersEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String area, String subarea,
            String route, String searchQuery, String pagenum)
        getCustomersEvent,
    required TResult Function() clearCustomersEvent,
    required TResult Function() restCustomersEvent,
  }) {
    return getCustomersEvent(
        userId, area, subarea, route, searchQuery, pagenum);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String area, String subarea, String route,
            String searchQuery, String pagenum)?
        getCustomersEvent,
    TResult? Function()? clearCustomersEvent,
    TResult? Function()? restCustomersEvent,
  }) {
    return getCustomersEvent?.call(
        userId, area, subarea, route, searchQuery, pagenum);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String area, String subarea, String route,
            String searchQuery, String pagenum)?
        getCustomersEvent,
    TResult Function()? clearCustomersEvent,
    TResult Function()? restCustomersEvent,
    required TResult orElse(),
  }) {
    if (getCustomersEvent != null) {
      return getCustomersEvent(
          userId, area, subarea, route, searchQuery, pagenum);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCustomersEvent value) getCustomersEvent,
    required TResult Function(ClearCustomersEvent value) clearCustomersEvent,
    required TResult Function(RestCustomersEvent value) restCustomersEvent,
  }) {
    return getCustomersEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCustomersEvent value)? getCustomersEvent,
    TResult? Function(ClearCustomersEvent value)? clearCustomersEvent,
    TResult? Function(RestCustomersEvent value)? restCustomersEvent,
  }) {
    return getCustomersEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCustomersEvent value)? getCustomersEvent,
    TResult Function(ClearCustomersEvent value)? clearCustomersEvent,
    TResult Function(RestCustomersEvent value)? restCustomersEvent,
    required TResult orElse(),
  }) {
    if (getCustomersEvent != null) {
      return getCustomersEvent(this);
    }
    return orElse();
  }
}

abstract class GetCustomersEvent implements CustomersListBlocEvent {
  const factory GetCustomersEvent(
      {required final String userId,
      required final String area,
      required final String subarea,
      required final String route,
      required final String searchQuery,
      required final String pagenum}) = _$GetCustomersEventImpl;

  String get userId;
  String get area;
  String get subarea;
  String get route;
  String get searchQuery;
  String get pagenum;
  @JsonKey(ignore: true)
  _$$GetCustomersEventImplCopyWith<_$GetCustomersEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearCustomersEventImplCopyWith<$Res> {
  factory _$$ClearCustomersEventImplCopyWith(_$ClearCustomersEventImpl value,
          $Res Function(_$ClearCustomersEventImpl) then) =
      __$$ClearCustomersEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearCustomersEventImplCopyWithImpl<$Res>
    extends _$CustomersListBlocEventCopyWithImpl<$Res,
        _$ClearCustomersEventImpl>
    implements _$$ClearCustomersEventImplCopyWith<$Res> {
  __$$ClearCustomersEventImplCopyWithImpl(_$ClearCustomersEventImpl _value,
      $Res Function(_$ClearCustomersEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearCustomersEventImpl implements ClearCustomersEvent {
  const _$ClearCustomersEventImpl();

  @override
  String toString() {
    return 'CustomersListBlocEvent.clearCustomersEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearCustomersEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String area, String subarea,
            String route, String searchQuery, String pagenum)
        getCustomersEvent,
    required TResult Function() clearCustomersEvent,
    required TResult Function() restCustomersEvent,
  }) {
    return clearCustomersEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String area, String subarea, String route,
            String searchQuery, String pagenum)?
        getCustomersEvent,
    TResult? Function()? clearCustomersEvent,
    TResult? Function()? restCustomersEvent,
  }) {
    return clearCustomersEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String area, String subarea, String route,
            String searchQuery, String pagenum)?
        getCustomersEvent,
    TResult Function()? clearCustomersEvent,
    TResult Function()? restCustomersEvent,
    required TResult orElse(),
  }) {
    if (clearCustomersEvent != null) {
      return clearCustomersEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCustomersEvent value) getCustomersEvent,
    required TResult Function(ClearCustomersEvent value) clearCustomersEvent,
    required TResult Function(RestCustomersEvent value) restCustomersEvent,
  }) {
    return clearCustomersEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCustomersEvent value)? getCustomersEvent,
    TResult? Function(ClearCustomersEvent value)? clearCustomersEvent,
    TResult? Function(RestCustomersEvent value)? restCustomersEvent,
  }) {
    return clearCustomersEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCustomersEvent value)? getCustomersEvent,
    TResult Function(ClearCustomersEvent value)? clearCustomersEvent,
    TResult Function(RestCustomersEvent value)? restCustomersEvent,
    required TResult orElse(),
  }) {
    if (clearCustomersEvent != null) {
      return clearCustomersEvent(this);
    }
    return orElse();
  }
}

abstract class ClearCustomersEvent implements CustomersListBlocEvent {
  const factory ClearCustomersEvent() = _$ClearCustomersEventImpl;
}

/// @nodoc
abstract class _$$RestCustomersEventImplCopyWith<$Res> {
  factory _$$RestCustomersEventImplCopyWith(_$RestCustomersEventImpl value,
          $Res Function(_$RestCustomersEventImpl) then) =
      __$$RestCustomersEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RestCustomersEventImplCopyWithImpl<$Res>
    extends _$CustomersListBlocEventCopyWithImpl<$Res, _$RestCustomersEventImpl>
    implements _$$RestCustomersEventImplCopyWith<$Res> {
  __$$RestCustomersEventImplCopyWithImpl(_$RestCustomersEventImpl _value,
      $Res Function(_$RestCustomersEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RestCustomersEventImpl implements RestCustomersEvent {
  const _$RestCustomersEventImpl();

  @override
  String toString() {
    return 'CustomersListBlocEvent.restCustomersEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RestCustomersEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String area, String subarea,
            String route, String searchQuery, String pagenum)
        getCustomersEvent,
    required TResult Function() clearCustomersEvent,
    required TResult Function() restCustomersEvent,
  }) {
    return restCustomersEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String area, String subarea, String route,
            String searchQuery, String pagenum)?
        getCustomersEvent,
    TResult? Function()? clearCustomersEvent,
    TResult? Function()? restCustomersEvent,
  }) {
    return restCustomersEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String area, String subarea, String route,
            String searchQuery, String pagenum)?
        getCustomersEvent,
    TResult Function()? clearCustomersEvent,
    TResult Function()? restCustomersEvent,
    required TResult orElse(),
  }) {
    if (restCustomersEvent != null) {
      return restCustomersEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCustomersEvent value) getCustomersEvent,
    required TResult Function(ClearCustomersEvent value) clearCustomersEvent,
    required TResult Function(RestCustomersEvent value) restCustomersEvent,
  }) {
    return restCustomersEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCustomersEvent value)? getCustomersEvent,
    TResult? Function(ClearCustomersEvent value)? clearCustomersEvent,
    TResult? Function(RestCustomersEvent value)? restCustomersEvent,
  }) {
    return restCustomersEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCustomersEvent value)? getCustomersEvent,
    TResult Function(ClearCustomersEvent value)? clearCustomersEvent,
    TResult Function(RestCustomersEvent value)? restCustomersEvent,
    required TResult orElse(),
  }) {
    if (restCustomersEvent != null) {
      return restCustomersEvent(this);
    }
    return orElse();
  }
}

abstract class RestCustomersEvent implements CustomersListBlocEvent {
  const factory RestCustomersEvent() = _$RestCustomersEventImpl;
}

/// @nodoc
mixin _$CustomersListBlocState {
  List<CusInsCustomersModel>? get customers =>
      throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<CusInsCustomersModel>? customers, bool isLoading)
        getCustomersSstate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CusInsCustomersModel>? customers, bool isLoading)?
        getCustomersSstate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CusInsCustomersModel>? customers, bool isLoading)?
        getCustomersSstate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCustomersSstate value) getCustomersSstate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCustomersSstate value)? getCustomersSstate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCustomersSstate value)? getCustomersSstate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomersListBlocStateCopyWith<CustomersListBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomersListBlocStateCopyWith<$Res> {
  factory $CustomersListBlocStateCopyWith(CustomersListBlocState value,
          $Res Function(CustomersListBlocState) then) =
      _$CustomersListBlocStateCopyWithImpl<$Res, CustomersListBlocState>;
  @useResult
  $Res call({List<CusInsCustomersModel>? customers, bool isLoading});
}

/// @nodoc
class _$CustomersListBlocStateCopyWithImpl<$Res,
        $Val extends CustomersListBlocState>
    implements $CustomersListBlocStateCopyWith<$Res> {
  _$CustomersListBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customers = freezed,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      customers: freezed == customers
          ? _value.customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<CusInsCustomersModel>?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetCustomersSstateImplCopyWith<$Res>
    implements $CustomersListBlocStateCopyWith<$Res> {
  factory _$$GetCustomersSstateImplCopyWith(_$GetCustomersSstateImpl value,
          $Res Function(_$GetCustomersSstateImpl) then) =
      __$$GetCustomersSstateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CusInsCustomersModel>? customers, bool isLoading});
}

/// @nodoc
class __$$GetCustomersSstateImplCopyWithImpl<$Res>
    extends _$CustomersListBlocStateCopyWithImpl<$Res, _$GetCustomersSstateImpl>
    implements _$$GetCustomersSstateImplCopyWith<$Res> {
  __$$GetCustomersSstateImplCopyWithImpl(_$GetCustomersSstateImpl _value,
      $Res Function(_$GetCustomersSstateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customers = freezed,
    Object? isLoading = null,
  }) {
    return _then(_$GetCustomersSstateImpl(
      customers: freezed == customers
          ? _value._customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<CusInsCustomersModel>?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GetCustomersSstateImpl implements GetCustomersSstate {
  const _$GetCustomersSstateImpl(
      {required final List<CusInsCustomersModel>? customers,
      required this.isLoading})
      : _customers = customers;

  final List<CusInsCustomersModel>? _customers;
  @override
  List<CusInsCustomersModel>? get customers {
    final value = _customers;
    if (value == null) return null;
    if (_customers is EqualUnmodifiableListView) return _customers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'CustomersListBlocState.getCustomersSstate(customers: $customers, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCustomersSstateImpl &&
            const DeepCollectionEquality()
                .equals(other._customers, _customers) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_customers), isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCustomersSstateImplCopyWith<_$GetCustomersSstateImpl> get copyWith =>
      __$$GetCustomersSstateImplCopyWithImpl<_$GetCustomersSstateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<CusInsCustomersModel>? customers, bool isLoading)
        getCustomersSstate,
  }) {
    return getCustomersSstate(customers, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CusInsCustomersModel>? customers, bool isLoading)?
        getCustomersSstate,
  }) {
    return getCustomersSstate?.call(customers, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CusInsCustomersModel>? customers, bool isLoading)?
        getCustomersSstate,
    required TResult orElse(),
  }) {
    if (getCustomersSstate != null) {
      return getCustomersSstate(customers, isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCustomersSstate value) getCustomersSstate,
  }) {
    return getCustomersSstate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCustomersSstate value)? getCustomersSstate,
  }) {
    return getCustomersSstate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCustomersSstate value)? getCustomersSstate,
    required TResult orElse(),
  }) {
    if (getCustomersSstate != null) {
      return getCustomersSstate(this);
    }
    return orElse();
  }
}

abstract class GetCustomersSstate implements CustomersListBlocState {
  const factory GetCustomersSstate(
      {required final List<CusInsCustomersModel>? customers,
      required final bool isLoading}) = _$GetCustomersSstateImpl;

  @override
  List<CusInsCustomersModel>? get customers;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$GetCustomersSstateImplCopyWith<_$GetCustomersSstateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
