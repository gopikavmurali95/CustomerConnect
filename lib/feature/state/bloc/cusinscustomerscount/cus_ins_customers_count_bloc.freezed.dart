// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cus_ins_customers_count_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CusInsCustomersCountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String area, String subarea,
            String route, String searchString, String pagenum)
        getCustomersCountEvent,
    required TResult Function() clearCustomerCount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String area, String subarea, String route,
            String searchString, String pagenum)?
        getCustomersCountEvent,
    TResult? Function()? clearCustomerCount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String area, String subarea, String route,
            String searchString, String pagenum)?
        getCustomersCountEvent,
    TResult Function()? clearCustomerCount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCustomersCountEvent value)
        getCustomersCountEvent,
    required TResult Function(ClearCustomerCount value) clearCustomerCount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCustomersCountEvent value)? getCustomersCountEvent,
    TResult? Function(ClearCustomerCount value)? clearCustomerCount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCustomersCountEvent value)? getCustomersCountEvent,
    TResult Function(ClearCustomerCount value)? clearCustomerCount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CusInsCustomersCountEventCopyWith<$Res> {
  factory $CusInsCustomersCountEventCopyWith(CusInsCustomersCountEvent value,
          $Res Function(CusInsCustomersCountEvent) then) =
      _$CusInsCustomersCountEventCopyWithImpl<$Res, CusInsCustomersCountEvent>;
}

/// @nodoc
class _$CusInsCustomersCountEventCopyWithImpl<$Res,
        $Val extends CusInsCustomersCountEvent>
    implements $CusInsCustomersCountEventCopyWith<$Res> {
  _$CusInsCustomersCountEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCustomersCountEventImplCopyWith<$Res> {
  factory _$$GetCustomersCountEventImplCopyWith(
          _$GetCustomersCountEventImpl value,
          $Res Function(_$GetCustomersCountEventImpl) then) =
      __$$GetCustomersCountEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String userId,
      String area,
      String subarea,
      String route,
      String searchString,
      String pagenum});
}

/// @nodoc
class __$$GetCustomersCountEventImplCopyWithImpl<$Res>
    extends _$CusInsCustomersCountEventCopyWithImpl<$Res,
        _$GetCustomersCountEventImpl>
    implements _$$GetCustomersCountEventImplCopyWith<$Res> {
  __$$GetCustomersCountEventImplCopyWithImpl(
      _$GetCustomersCountEventImpl _value,
      $Res Function(_$GetCustomersCountEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? area = null,
    Object? subarea = null,
    Object? route = null,
    Object? searchString = null,
    Object? pagenum = null,
  }) {
    return _then(_$GetCustomersCountEventImpl(
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
      searchString: null == searchString
          ? _value.searchString
          : searchString // ignore: cast_nullable_to_non_nullable
              as String,
      pagenum: null == pagenum
          ? _value.pagenum
          : pagenum // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCustomersCountEventImpl implements GetCustomersCountEvent {
  const _$GetCustomersCountEventImpl(
      {required this.userId,
      required this.area,
      required this.subarea,
      required this.route,
      required this.searchString,
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
  final String searchString;
  @override
  final String pagenum;

  @override
  String toString() {
    return 'CusInsCustomersCountEvent.getCustomersCountEvent(userId: $userId, area: $area, subarea: $subarea, route: $route, searchString: $searchString, pagenum: $pagenum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCustomersCountEventImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.subarea, subarea) || other.subarea == subarea) &&
            (identical(other.route, route) || other.route == route) &&
            (identical(other.searchString, searchString) ||
                other.searchString == searchString) &&
            (identical(other.pagenum, pagenum) || other.pagenum == pagenum));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, userId, area, subarea, route, searchString, pagenum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCustomersCountEventImplCopyWith<_$GetCustomersCountEventImpl>
      get copyWith => __$$GetCustomersCountEventImplCopyWithImpl<
          _$GetCustomersCountEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String area, String subarea,
            String route, String searchString, String pagenum)
        getCustomersCountEvent,
    required TResult Function() clearCustomerCount,
  }) {
    return getCustomersCountEvent(
        userId, area, subarea, route, searchString, pagenum);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String area, String subarea, String route,
            String searchString, String pagenum)?
        getCustomersCountEvent,
    TResult? Function()? clearCustomerCount,
  }) {
    return getCustomersCountEvent?.call(
        userId, area, subarea, route, searchString, pagenum);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String area, String subarea, String route,
            String searchString, String pagenum)?
        getCustomersCountEvent,
    TResult Function()? clearCustomerCount,
    required TResult orElse(),
  }) {
    if (getCustomersCountEvent != null) {
      return getCustomersCountEvent(
          userId, area, subarea, route, searchString, pagenum);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCustomersCountEvent value)
        getCustomersCountEvent,
    required TResult Function(ClearCustomerCount value) clearCustomerCount,
  }) {
    return getCustomersCountEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCustomersCountEvent value)? getCustomersCountEvent,
    TResult? Function(ClearCustomerCount value)? clearCustomerCount,
  }) {
    return getCustomersCountEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCustomersCountEvent value)? getCustomersCountEvent,
    TResult Function(ClearCustomerCount value)? clearCustomerCount,
    required TResult orElse(),
  }) {
    if (getCustomersCountEvent != null) {
      return getCustomersCountEvent(this);
    }
    return orElse();
  }
}

abstract class GetCustomersCountEvent implements CusInsCustomersCountEvent {
  const factory GetCustomersCountEvent(
      {required final String userId,
      required final String area,
      required final String subarea,
      required final String route,
      required final String searchString,
      required final String pagenum}) = _$GetCustomersCountEventImpl;

  String get userId;
  String get area;
  String get subarea;
  String get route;
  String get searchString;
  String get pagenum;
  @JsonKey(ignore: true)
  _$$GetCustomersCountEventImplCopyWith<_$GetCustomersCountEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearCustomerCountImplCopyWith<$Res> {
  factory _$$ClearCustomerCountImplCopyWith(_$ClearCustomerCountImpl value,
          $Res Function(_$ClearCustomerCountImpl) then) =
      __$$ClearCustomerCountImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearCustomerCountImplCopyWithImpl<$Res>
    extends _$CusInsCustomersCountEventCopyWithImpl<$Res,
        _$ClearCustomerCountImpl>
    implements _$$ClearCustomerCountImplCopyWith<$Res> {
  __$$ClearCustomerCountImplCopyWithImpl(_$ClearCustomerCountImpl _value,
      $Res Function(_$ClearCustomerCountImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearCustomerCountImpl implements ClearCustomerCount {
  const _$ClearCustomerCountImpl();

  @override
  String toString() {
    return 'CusInsCustomersCountEvent.clearCustomerCount()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearCustomerCountImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String area, String subarea,
            String route, String searchString, String pagenum)
        getCustomersCountEvent,
    required TResult Function() clearCustomerCount,
  }) {
    return clearCustomerCount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String area, String subarea, String route,
            String searchString, String pagenum)?
        getCustomersCountEvent,
    TResult? Function()? clearCustomerCount,
  }) {
    return clearCustomerCount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String area, String subarea, String route,
            String searchString, String pagenum)?
        getCustomersCountEvent,
    TResult Function()? clearCustomerCount,
    required TResult orElse(),
  }) {
    if (clearCustomerCount != null) {
      return clearCustomerCount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCustomersCountEvent value)
        getCustomersCountEvent,
    required TResult Function(ClearCustomerCount value) clearCustomerCount,
  }) {
    return clearCustomerCount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCustomersCountEvent value)? getCustomersCountEvent,
    TResult? Function(ClearCustomerCount value)? clearCustomerCount,
  }) {
    return clearCustomerCount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCustomersCountEvent value)? getCustomersCountEvent,
    TResult Function(ClearCustomerCount value)? clearCustomerCount,
    required TResult orElse(),
  }) {
    if (clearCustomerCount != null) {
      return clearCustomerCount(this);
    }
    return orElse();
  }
}

abstract class ClearCustomerCount implements CusInsCustomersCountEvent {
  const factory ClearCustomerCount() = _$ClearCustomerCountImpl;
}

/// @nodoc
mixin _$CusInsCustomersCountState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CusInsCustomerCountModel? count)
        getCustomersCountState,
    required TResult Function() getCustomersCountFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CusInsCustomerCountModel? count)? getCustomersCountState,
    TResult? Function()? getCustomersCountFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CusInsCustomerCountModel? count)? getCustomersCountState,
    TResult Function()? getCustomersCountFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCustomersCountState value)
        getCustomersCountState,
    required TResult Function(GetCustomersCountFailedState value)
        getCustomersCountFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCustomersCountState value)? getCustomersCountState,
    TResult? Function(GetCustomersCountFailedState value)?
        getCustomersCountFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCustomersCountState value)? getCustomersCountState,
    TResult Function(GetCustomersCountFailedState value)?
        getCustomersCountFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CusInsCustomersCountStateCopyWith<$Res> {
  factory $CusInsCustomersCountStateCopyWith(CusInsCustomersCountState value,
          $Res Function(CusInsCustomersCountState) then) =
      _$CusInsCustomersCountStateCopyWithImpl<$Res, CusInsCustomersCountState>;
}

/// @nodoc
class _$CusInsCustomersCountStateCopyWithImpl<$Res,
        $Val extends CusInsCustomersCountState>
    implements $CusInsCustomersCountStateCopyWith<$Res> {
  _$CusInsCustomersCountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCustomersCountStateImplCopyWith<$Res> {
  factory _$$GetCustomersCountStateImplCopyWith(
          _$GetCustomersCountStateImpl value,
          $Res Function(_$GetCustomersCountStateImpl) then) =
      __$$GetCustomersCountStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CusInsCustomerCountModel? count});
}

/// @nodoc
class __$$GetCustomersCountStateImplCopyWithImpl<$Res>
    extends _$CusInsCustomersCountStateCopyWithImpl<$Res,
        _$GetCustomersCountStateImpl>
    implements _$$GetCustomersCountStateImplCopyWith<$Res> {
  __$$GetCustomersCountStateImplCopyWithImpl(
      _$GetCustomersCountStateImpl _value,
      $Res Function(_$GetCustomersCountStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
  }) {
    return _then(_$GetCustomersCountStateImpl(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as CusInsCustomerCountModel?,
    ));
  }
}

/// @nodoc

class _$GetCustomersCountStateImpl implements GetCustomersCountState {
  const _$GetCustomersCountStateImpl({required this.count});

  @override
  final CusInsCustomerCountModel? count;

  @override
  String toString() {
    return 'CusInsCustomersCountState.getCustomersCountState(count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCustomersCountStateImpl &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCustomersCountStateImplCopyWith<_$GetCustomersCountStateImpl>
      get copyWith => __$$GetCustomersCountStateImplCopyWithImpl<
          _$GetCustomersCountStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CusInsCustomerCountModel? count)
        getCustomersCountState,
    required TResult Function() getCustomersCountFailedState,
  }) {
    return getCustomersCountState(count);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CusInsCustomerCountModel? count)? getCustomersCountState,
    TResult? Function()? getCustomersCountFailedState,
  }) {
    return getCustomersCountState?.call(count);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CusInsCustomerCountModel? count)? getCustomersCountState,
    TResult Function()? getCustomersCountFailedState,
    required TResult orElse(),
  }) {
    if (getCustomersCountState != null) {
      return getCustomersCountState(count);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCustomersCountState value)
        getCustomersCountState,
    required TResult Function(GetCustomersCountFailedState value)
        getCustomersCountFailedState,
  }) {
    return getCustomersCountState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCustomersCountState value)? getCustomersCountState,
    TResult? Function(GetCustomersCountFailedState value)?
        getCustomersCountFailedState,
  }) {
    return getCustomersCountState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCustomersCountState value)? getCustomersCountState,
    TResult Function(GetCustomersCountFailedState value)?
        getCustomersCountFailedState,
    required TResult orElse(),
  }) {
    if (getCustomersCountState != null) {
      return getCustomersCountState(this);
    }
    return orElse();
  }
}

abstract class GetCustomersCountState implements CusInsCustomersCountState {
  const factory GetCustomersCountState(
          {required final CusInsCustomerCountModel? count}) =
      _$GetCustomersCountStateImpl;

  CusInsCustomerCountModel? get count;
  @JsonKey(ignore: true)
  _$$GetCustomersCountStateImplCopyWith<_$GetCustomersCountStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCustomersCountFailedStateImplCopyWith<$Res> {
  factory _$$GetCustomersCountFailedStateImplCopyWith(
          _$GetCustomersCountFailedStateImpl value,
          $Res Function(_$GetCustomersCountFailedStateImpl) then) =
      __$$GetCustomersCountFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCustomersCountFailedStateImplCopyWithImpl<$Res>
    extends _$CusInsCustomersCountStateCopyWithImpl<$Res,
        _$GetCustomersCountFailedStateImpl>
    implements _$$GetCustomersCountFailedStateImplCopyWith<$Res> {
  __$$GetCustomersCountFailedStateImplCopyWithImpl(
      _$GetCustomersCountFailedStateImpl _value,
      $Res Function(_$GetCustomersCountFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetCustomersCountFailedStateImpl
    implements GetCustomersCountFailedState {
  const _$GetCustomersCountFailedStateImpl();

  @override
  String toString() {
    return 'CusInsCustomersCountState.getCustomersCountFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCustomersCountFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CusInsCustomerCountModel? count)
        getCustomersCountState,
    required TResult Function() getCustomersCountFailedState,
  }) {
    return getCustomersCountFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CusInsCustomerCountModel? count)? getCustomersCountState,
    TResult? Function()? getCustomersCountFailedState,
  }) {
    return getCustomersCountFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CusInsCustomerCountModel? count)? getCustomersCountState,
    TResult Function()? getCustomersCountFailedState,
    required TResult orElse(),
  }) {
    if (getCustomersCountFailedState != null) {
      return getCustomersCountFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCustomersCountState value)
        getCustomersCountState,
    required TResult Function(GetCustomersCountFailedState value)
        getCustomersCountFailedState,
  }) {
    return getCustomersCountFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCustomersCountState value)? getCustomersCountState,
    TResult? Function(GetCustomersCountFailedState value)?
        getCustomersCountFailedState,
  }) {
    return getCustomersCountFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCustomersCountState value)? getCustomersCountState,
    TResult Function(GetCustomersCountFailedState value)?
        getCustomersCountFailedState,
    required TResult orElse(),
  }) {
    if (getCustomersCountFailedState != null) {
      return getCustomersCountFailedState(this);
    }
    return orElse();
  }
}

abstract class GetCustomersCountFailedState
    implements CusInsCustomersCountState {
  const factory GetCustomersCountFailedState() =
      _$GetCustomersCountFailedStateImpl;
}
