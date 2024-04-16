// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cus_inv_detail_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CusInvDetailBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String invId, String searchQuery)
        getCusInvDetailsEvent,
    required TResult Function() clearinvDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String invId, String searchQuery)? getCusInvDetailsEvent,
    TResult? Function()? clearinvDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String invId, String searchQuery)? getCusInvDetailsEvent,
    TResult Function()? clearinvDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusInvDetailsEvent value)
        getCusInvDetailsEvent,
    required TResult Function(ClearinvDetails value) clearinvDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusInvDetailsEvent value)? getCusInvDetailsEvent,
    TResult? Function(ClearinvDetails value)? clearinvDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusInvDetailsEvent value)? getCusInvDetailsEvent,
    TResult Function(ClearinvDetails value)? clearinvDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CusInvDetailBlocEventCopyWith<$Res> {
  factory $CusInvDetailBlocEventCopyWith(CusInvDetailBlocEvent value,
          $Res Function(CusInvDetailBlocEvent) then) =
      _$CusInvDetailBlocEventCopyWithImpl<$Res, CusInvDetailBlocEvent>;
}

/// @nodoc
class _$CusInvDetailBlocEventCopyWithImpl<$Res,
        $Val extends CusInvDetailBlocEvent>
    implements $CusInvDetailBlocEventCopyWith<$Res> {
  _$CusInvDetailBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCusInvDetailsEventImplCopyWith<$Res> {
  factory _$$GetCusInvDetailsEventImplCopyWith(
          _$GetCusInvDetailsEventImpl value,
          $Res Function(_$GetCusInvDetailsEventImpl) then) =
      __$$GetCusInvDetailsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String invId, String searchQuery});
}

/// @nodoc
class __$$GetCusInvDetailsEventImplCopyWithImpl<$Res>
    extends _$CusInvDetailBlocEventCopyWithImpl<$Res,
        _$GetCusInvDetailsEventImpl>
    implements _$$GetCusInvDetailsEventImplCopyWith<$Res> {
  __$$GetCusInvDetailsEventImplCopyWithImpl(_$GetCusInvDetailsEventImpl _value,
      $Res Function(_$GetCusInvDetailsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invId = null,
    Object? searchQuery = null,
  }) {
    return _then(_$GetCusInvDetailsEventImpl(
      invId: null == invId
          ? _value.invId
          : invId // ignore: cast_nullable_to_non_nullable
              as String,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCusInvDetailsEventImpl implements GetCusInvDetailsEvent {
  const _$GetCusInvDetailsEventImpl(
      {required this.invId, required this.searchQuery});

  @override
  final String invId;
  @override
  final String searchQuery;

  @override
  String toString() {
    return 'CusInvDetailBlocEvent.getCusInvDetailsEvent(invId: $invId, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCusInvDetailsEventImpl &&
            (identical(other.invId, invId) || other.invId == invId) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, invId, searchQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCusInvDetailsEventImplCopyWith<_$GetCusInvDetailsEventImpl>
      get copyWith => __$$GetCusInvDetailsEventImplCopyWithImpl<
          _$GetCusInvDetailsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String invId, String searchQuery)
        getCusInvDetailsEvent,
    required TResult Function() clearinvDetails,
  }) {
    return getCusInvDetailsEvent(invId, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String invId, String searchQuery)? getCusInvDetailsEvent,
    TResult? Function()? clearinvDetails,
  }) {
    return getCusInvDetailsEvent?.call(invId, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String invId, String searchQuery)? getCusInvDetailsEvent,
    TResult Function()? clearinvDetails,
    required TResult orElse(),
  }) {
    if (getCusInvDetailsEvent != null) {
      return getCusInvDetailsEvent(invId, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusInvDetailsEvent value)
        getCusInvDetailsEvent,
    required TResult Function(ClearinvDetails value) clearinvDetails,
  }) {
    return getCusInvDetailsEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusInvDetailsEvent value)? getCusInvDetailsEvent,
    TResult? Function(ClearinvDetails value)? clearinvDetails,
  }) {
    return getCusInvDetailsEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusInvDetailsEvent value)? getCusInvDetailsEvent,
    TResult Function(ClearinvDetails value)? clearinvDetails,
    required TResult orElse(),
  }) {
    if (getCusInvDetailsEvent != null) {
      return getCusInvDetailsEvent(this);
    }
    return orElse();
  }
}

abstract class GetCusInvDetailsEvent implements CusInvDetailBlocEvent {
  const factory GetCusInvDetailsEvent(
      {required final String invId,
      required final String searchQuery}) = _$GetCusInvDetailsEventImpl;

  String get invId;
  String get searchQuery;
  @JsonKey(ignore: true)
  _$$GetCusInvDetailsEventImplCopyWith<_$GetCusInvDetailsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearinvDetailsImplCopyWith<$Res> {
  factory _$$ClearinvDetailsImplCopyWith(_$ClearinvDetailsImpl value,
          $Res Function(_$ClearinvDetailsImpl) then) =
      __$$ClearinvDetailsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearinvDetailsImplCopyWithImpl<$Res>
    extends _$CusInvDetailBlocEventCopyWithImpl<$Res, _$ClearinvDetailsImpl>
    implements _$$ClearinvDetailsImplCopyWith<$Res> {
  __$$ClearinvDetailsImplCopyWithImpl(
      _$ClearinvDetailsImpl _value, $Res Function(_$ClearinvDetailsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearinvDetailsImpl implements ClearinvDetails {
  const _$ClearinvDetailsImpl();

  @override
  String toString() {
    return 'CusInvDetailBlocEvent.clearinvDetails()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearinvDetailsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String invId, String searchQuery)
        getCusInvDetailsEvent,
    required TResult Function() clearinvDetails,
  }) {
    return clearinvDetails();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String invId, String searchQuery)? getCusInvDetailsEvent,
    TResult? Function()? clearinvDetails,
  }) {
    return clearinvDetails?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String invId, String searchQuery)? getCusInvDetailsEvent,
    TResult Function()? clearinvDetails,
    required TResult orElse(),
  }) {
    if (clearinvDetails != null) {
      return clearinvDetails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusInvDetailsEvent value)
        getCusInvDetailsEvent,
    required TResult Function(ClearinvDetails value) clearinvDetails,
  }) {
    return clearinvDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusInvDetailsEvent value)? getCusInvDetailsEvent,
    TResult? Function(ClearinvDetails value)? clearinvDetails,
  }) {
    return clearinvDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusInvDetailsEvent value)? getCusInvDetailsEvent,
    TResult Function(ClearinvDetails value)? clearinvDetails,
    required TResult orElse(),
  }) {
    if (clearinvDetails != null) {
      return clearinvDetails(this);
    }
    return orElse();
  }
}

abstract class ClearinvDetails implements CusInvDetailBlocEvent {
  const factory ClearinvDetails() = _$ClearinvDetailsImpl;
}

/// @nodoc
mixin _$CusInvDetailBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CusInsOnvDetailModel>? details,
            List<CusInsInvTypeModel>? types)
        getcusInvDetailState,
    required TResult Function() getcusInvFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CusInsOnvDetailModel>? details,
            List<CusInsInvTypeModel>? types)?
        getcusInvDetailState,
    TResult? Function()? getcusInvFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CusInsOnvDetailModel>? details,
            List<CusInsInvTypeModel>? types)?
        getcusInvDetailState,
    TResult Function()? getcusInvFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetcusInvDetailState value) getcusInvDetailState,
    required TResult Function(GetcusInvFailedState value) getcusInvFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetcusInvDetailState value)? getcusInvDetailState,
    TResult? Function(GetcusInvFailedState value)? getcusInvFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetcusInvDetailState value)? getcusInvDetailState,
    TResult Function(GetcusInvFailedState value)? getcusInvFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CusInvDetailBlocStateCopyWith<$Res> {
  factory $CusInvDetailBlocStateCopyWith(CusInvDetailBlocState value,
          $Res Function(CusInvDetailBlocState) then) =
      _$CusInvDetailBlocStateCopyWithImpl<$Res, CusInvDetailBlocState>;
}

/// @nodoc
class _$CusInvDetailBlocStateCopyWithImpl<$Res,
        $Val extends CusInvDetailBlocState>
    implements $CusInvDetailBlocStateCopyWith<$Res> {
  _$CusInvDetailBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetcusInvDetailStateImplCopyWith<$Res> {
  factory _$$GetcusInvDetailStateImplCopyWith(_$GetcusInvDetailStateImpl value,
          $Res Function(_$GetcusInvDetailStateImpl) then) =
      __$$GetcusInvDetailStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<CusInsOnvDetailModel>? details, List<CusInsInvTypeModel>? types});
}

/// @nodoc
class __$$GetcusInvDetailStateImplCopyWithImpl<$Res>
    extends _$CusInvDetailBlocStateCopyWithImpl<$Res,
        _$GetcusInvDetailStateImpl>
    implements _$$GetcusInvDetailStateImplCopyWith<$Res> {
  __$$GetcusInvDetailStateImplCopyWithImpl(_$GetcusInvDetailStateImpl _value,
      $Res Function(_$GetcusInvDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? details = freezed,
    Object? types = freezed,
  }) {
    return _then(_$GetcusInvDetailStateImpl(
      details: freezed == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<CusInsOnvDetailModel>?,
      types: freezed == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<CusInsInvTypeModel>?,
    ));
  }
}

/// @nodoc

class _$GetcusInvDetailStateImpl implements GetcusInvDetailState {
  const _$GetcusInvDetailStateImpl(
      {required final List<CusInsOnvDetailModel>? details,
      required final List<CusInsInvTypeModel>? types})
      : _details = details,
        _types = types;

  final List<CusInsOnvDetailModel>? _details;
  @override
  List<CusInsOnvDetailModel>? get details {
    final value = _details;
    if (value == null) return null;
    if (_details is EqualUnmodifiableListView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<CusInsInvTypeModel>? _types;
  @override
  List<CusInsInvTypeModel>? get types {
    final value = _types;
    if (value == null) return null;
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CusInvDetailBlocState.getcusInvDetailState(details: $details, types: $types)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetcusInvDetailStateImpl &&
            const DeepCollectionEquality().equals(other._details, _details) &&
            const DeepCollectionEquality().equals(other._types, _types));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_details),
      const DeepCollectionEquality().hash(_types));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetcusInvDetailStateImplCopyWith<_$GetcusInvDetailStateImpl>
      get copyWith =>
          __$$GetcusInvDetailStateImplCopyWithImpl<_$GetcusInvDetailStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CusInsOnvDetailModel>? details,
            List<CusInsInvTypeModel>? types)
        getcusInvDetailState,
    required TResult Function() getcusInvFailedState,
  }) {
    return getcusInvDetailState(details, types);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CusInsOnvDetailModel>? details,
            List<CusInsInvTypeModel>? types)?
        getcusInvDetailState,
    TResult? Function()? getcusInvFailedState,
  }) {
    return getcusInvDetailState?.call(details, types);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CusInsOnvDetailModel>? details,
            List<CusInsInvTypeModel>? types)?
        getcusInvDetailState,
    TResult Function()? getcusInvFailedState,
    required TResult orElse(),
  }) {
    if (getcusInvDetailState != null) {
      return getcusInvDetailState(details, types);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetcusInvDetailState value) getcusInvDetailState,
    required TResult Function(GetcusInvFailedState value) getcusInvFailedState,
  }) {
    return getcusInvDetailState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetcusInvDetailState value)? getcusInvDetailState,
    TResult? Function(GetcusInvFailedState value)? getcusInvFailedState,
  }) {
    return getcusInvDetailState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetcusInvDetailState value)? getcusInvDetailState,
    TResult Function(GetcusInvFailedState value)? getcusInvFailedState,
    required TResult orElse(),
  }) {
    if (getcusInvDetailState != null) {
      return getcusInvDetailState(this);
    }
    return orElse();
  }
}

abstract class GetcusInvDetailState implements CusInvDetailBlocState {
  const factory GetcusInvDetailState(
          {required final List<CusInsOnvDetailModel>? details,
          required final List<CusInsInvTypeModel>? types}) =
      _$GetcusInvDetailStateImpl;

  List<CusInsOnvDetailModel>? get details;
  List<CusInsInvTypeModel>? get types;
  @JsonKey(ignore: true)
  _$$GetcusInvDetailStateImplCopyWith<_$GetcusInvDetailStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetcusInvFailedStateImplCopyWith<$Res> {
  factory _$$GetcusInvFailedStateImplCopyWith(_$GetcusInvFailedStateImpl value,
          $Res Function(_$GetcusInvFailedStateImpl) then) =
      __$$GetcusInvFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetcusInvFailedStateImplCopyWithImpl<$Res>
    extends _$CusInvDetailBlocStateCopyWithImpl<$Res,
        _$GetcusInvFailedStateImpl>
    implements _$$GetcusInvFailedStateImplCopyWith<$Res> {
  __$$GetcusInvFailedStateImplCopyWithImpl(_$GetcusInvFailedStateImpl _value,
      $Res Function(_$GetcusInvFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetcusInvFailedStateImpl implements GetcusInvFailedState {
  const _$GetcusInvFailedStateImpl();

  @override
  String toString() {
    return 'CusInvDetailBlocState.getcusInvFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetcusInvFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CusInsOnvDetailModel>? details,
            List<CusInsInvTypeModel>? types)
        getcusInvDetailState,
    required TResult Function() getcusInvFailedState,
  }) {
    return getcusInvFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CusInsOnvDetailModel>? details,
            List<CusInsInvTypeModel>? types)?
        getcusInvDetailState,
    TResult? Function()? getcusInvFailedState,
  }) {
    return getcusInvFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CusInsOnvDetailModel>? details,
            List<CusInsInvTypeModel>? types)?
        getcusInvDetailState,
    TResult Function()? getcusInvFailedState,
    required TResult orElse(),
  }) {
    if (getcusInvFailedState != null) {
      return getcusInvFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetcusInvDetailState value) getcusInvDetailState,
    required TResult Function(GetcusInvFailedState value) getcusInvFailedState,
  }) {
    return getcusInvFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetcusInvDetailState value)? getcusInvDetailState,
    TResult? Function(GetcusInvFailedState value)? getcusInvFailedState,
  }) {
    return getcusInvFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetcusInvDetailState value)? getcusInvDetailState,
    TResult Function(GetcusInvFailedState value)? getcusInvFailedState,
    required TResult orElse(),
  }) {
    if (getcusInvFailedState != null) {
      return getcusInvFailedState(this);
    }
    return orElse();
  }
}

abstract class GetcusInvFailedState implements CusInvDetailBlocState {
  const factory GetcusInvFailedState() = _$GetcusInvFailedStateImpl;
}
