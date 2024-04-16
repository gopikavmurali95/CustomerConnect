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
            String route, String searchQuery)
        getCustomersEvent,
    required TResult Function() clearCustomersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String area, String subarea, String route,
            String searchQuery)?
        getCustomersEvent,
    TResult? Function()? clearCustomersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String area, String subarea, String route,
            String searchQuery)?
        getCustomersEvent,
    TResult Function()? clearCustomersEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCustomersEvent value) getCustomersEvent,
    required TResult Function(ClearCustomersEvent value) clearCustomersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCustomersEvent value)? getCustomersEvent,
    TResult? Function(ClearCustomersEvent value)? clearCustomersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCustomersEvent value)? getCustomersEvent,
    TResult Function(ClearCustomersEvent value)? clearCustomersEvent,
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
      String searchQuery});
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
      required this.searchQuery});

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
  String toString() {
    return 'CustomersListBlocEvent.getCustomersEvent(userId: $userId, area: $area, subarea: $subarea, route: $route, searchQuery: $searchQuery)';
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
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, area, subarea, route, searchQuery);

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
            String route, String searchQuery)
        getCustomersEvent,
    required TResult Function() clearCustomersEvent,
  }) {
    return getCustomersEvent(userId, area, subarea, route, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String area, String subarea, String route,
            String searchQuery)?
        getCustomersEvent,
    TResult? Function()? clearCustomersEvent,
  }) {
    return getCustomersEvent?.call(userId, area, subarea, route, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String area, String subarea, String route,
            String searchQuery)?
        getCustomersEvent,
    TResult Function()? clearCustomersEvent,
    required TResult orElse(),
  }) {
    if (getCustomersEvent != null) {
      return getCustomersEvent(userId, area, subarea, route, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCustomersEvent value) getCustomersEvent,
    required TResult Function(ClearCustomersEvent value) clearCustomersEvent,
  }) {
    return getCustomersEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCustomersEvent value)? getCustomersEvent,
    TResult? Function(ClearCustomersEvent value)? clearCustomersEvent,
  }) {
    return getCustomersEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCustomersEvent value)? getCustomersEvent,
    TResult Function(ClearCustomersEvent value)? clearCustomersEvent,
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
      required final String searchQuery}) = _$GetCustomersEventImpl;

  String get userId;
  String get area;
  String get subarea;
  String get route;
  String get searchQuery;
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
            String route, String searchQuery)
        getCustomersEvent,
    required TResult Function() clearCustomersEvent,
  }) {
    return clearCustomersEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String area, String subarea, String route,
            String searchQuery)?
        getCustomersEvent,
    TResult? Function()? clearCustomersEvent,
  }) {
    return clearCustomersEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String area, String subarea, String route,
            String searchQuery)?
        getCustomersEvent,
    TResult Function()? clearCustomersEvent,
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
  }) {
    return clearCustomersEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCustomersEvent value)? getCustomersEvent,
    TResult? Function(ClearCustomersEvent value)? clearCustomersEvent,
  }) {
    return clearCustomersEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCustomersEvent value)? getCustomersEvent,
    TResult Function(ClearCustomersEvent value)? clearCustomersEvent,
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
mixin _$CustomersListBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CusInsCustomersModel>? customers)
        getCustomersSstate,
    required TResult Function() getcustomersFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CusInsCustomersModel>? customers)?
        getCustomersSstate,
    TResult? Function()? getcustomersFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CusInsCustomersModel>? customers)? getCustomersSstate,
    TResult Function()? getcustomersFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCustomersSstate value) getCustomersSstate,
    required TResult Function(GetcustomersFailedState value)
        getcustomersFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCustomersSstate value)? getCustomersSstate,
    TResult? Function(GetcustomersFailedState value)? getcustomersFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCustomersSstate value)? getCustomersSstate,
    TResult Function(GetcustomersFailedState value)? getcustomersFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomersListBlocStateCopyWith<$Res> {
  factory $CustomersListBlocStateCopyWith(CustomersListBlocState value,
          $Res Function(CustomersListBlocState) then) =
      _$CustomersListBlocStateCopyWithImpl<$Res, CustomersListBlocState>;
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
}

/// @nodoc
abstract class _$$GetCustomersSstateImplCopyWith<$Res> {
  factory _$$GetCustomersSstateImplCopyWith(_$GetCustomersSstateImpl value,
          $Res Function(_$GetCustomersSstateImpl) then) =
      __$$GetCustomersSstateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CusInsCustomersModel>? customers});
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
  }) {
    return _then(_$GetCustomersSstateImpl(
      customers: freezed == customers
          ? _value._customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<CusInsCustomersModel>?,
    ));
  }
}

/// @nodoc

class _$GetCustomersSstateImpl implements GetCustomersSstate {
  const _$GetCustomersSstateImpl(
      {required final List<CusInsCustomersModel>? customers})
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
  String toString() {
    return 'CustomersListBlocState.getCustomersSstate(customers: $customers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCustomersSstateImpl &&
            const DeepCollectionEquality()
                .equals(other._customers, _customers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_customers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCustomersSstateImplCopyWith<_$GetCustomersSstateImpl> get copyWith =>
      __$$GetCustomersSstateImplCopyWithImpl<_$GetCustomersSstateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CusInsCustomersModel>? customers)
        getCustomersSstate,
    required TResult Function() getcustomersFailedState,
  }) {
    return getCustomersSstate(customers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CusInsCustomersModel>? customers)?
        getCustomersSstate,
    TResult? Function()? getcustomersFailedState,
  }) {
    return getCustomersSstate?.call(customers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CusInsCustomersModel>? customers)? getCustomersSstate,
    TResult Function()? getcustomersFailedState,
    required TResult orElse(),
  }) {
    if (getCustomersSstate != null) {
      return getCustomersSstate(customers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCustomersSstate value) getCustomersSstate,
    required TResult Function(GetcustomersFailedState value)
        getcustomersFailedState,
  }) {
    return getCustomersSstate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCustomersSstate value)? getCustomersSstate,
    TResult? Function(GetcustomersFailedState value)? getcustomersFailedState,
  }) {
    return getCustomersSstate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCustomersSstate value)? getCustomersSstate,
    TResult Function(GetcustomersFailedState value)? getcustomersFailedState,
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
          {required final List<CusInsCustomersModel>? customers}) =
      _$GetCustomersSstateImpl;

  List<CusInsCustomersModel>? get customers;
  @JsonKey(ignore: true)
  _$$GetCustomersSstateImplCopyWith<_$GetCustomersSstateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetcustomersFailedStateImplCopyWith<$Res> {
  factory _$$GetcustomersFailedStateImplCopyWith(
          _$GetcustomersFailedStateImpl value,
          $Res Function(_$GetcustomersFailedStateImpl) then) =
      __$$GetcustomersFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetcustomersFailedStateImplCopyWithImpl<$Res>
    extends _$CustomersListBlocStateCopyWithImpl<$Res,
        _$GetcustomersFailedStateImpl>
    implements _$$GetcustomersFailedStateImplCopyWith<$Res> {
  __$$GetcustomersFailedStateImplCopyWithImpl(
      _$GetcustomersFailedStateImpl _value,
      $Res Function(_$GetcustomersFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetcustomersFailedStateImpl implements GetcustomersFailedState {
  const _$GetcustomersFailedStateImpl();

  @override
  String toString() {
    return 'CustomersListBlocState.getcustomersFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetcustomersFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CusInsCustomersModel>? customers)
        getCustomersSstate,
    required TResult Function() getcustomersFailedState,
  }) {
    return getcustomersFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CusInsCustomersModel>? customers)?
        getCustomersSstate,
    TResult? Function()? getcustomersFailedState,
  }) {
    return getcustomersFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CusInsCustomersModel>? customers)? getCustomersSstate,
    TResult Function()? getcustomersFailedState,
    required TResult orElse(),
  }) {
    if (getcustomersFailedState != null) {
      return getcustomersFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCustomersSstate value) getCustomersSstate,
    required TResult Function(GetcustomersFailedState value)
        getcustomersFailedState,
  }) {
    return getcustomersFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCustomersSstate value)? getCustomersSstate,
    TResult? Function(GetcustomersFailedState value)? getcustomersFailedState,
  }) {
    return getcustomersFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCustomersSstate value)? getCustomersSstate,
    TResult Function(GetcustomersFailedState value)? getcustomersFailedState,
    required TResult orElse(),
  }) {
    if (getcustomersFailedState != null) {
      return getcustomersFailedState(this);
    }
    return orElse();
  }
}

abstract class GetcustomersFailedState implements CustomersListBlocState {
  const factory GetcustomersFailedState() = _$GetcustomersFailedStateImpl;
}
