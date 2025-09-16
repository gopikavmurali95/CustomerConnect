// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_override_approval_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CustomerOverrideApprovalBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String statusvalue, String ooaID, String userID, String searchQuery)
        getCusOverrideEvent,
    required TResult Function() clearCusOverrideEvent,
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String statusvalue, String ooaID, String userID,
            String searchQuery)?
        getCusOverrideEvent,
    TResult? Function()? clearCusOverrideEvent,
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String statusvalue, String ooaID, String userID,
            String searchQuery)?
        getCusOverrideEvent,
    TResult Function()? clearCusOverrideEvent,
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusOverrideEvent value) getCusOverrideEvent,
    required TResult Function(ClearCusOverrideEvent value)
        clearCusOverrideEvent,
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusOverrideEvent value)? getCusOverrideEvent,
    TResult? Function(ClearCusOverrideEvent value)? clearCusOverrideEvent,
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusOverrideEvent value)? getCusOverrideEvent,
    TResult Function(ClearCusOverrideEvent value)? clearCusOverrideEvent,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerOverrideApprovalBlocEventCopyWith<$Res> {
  factory $CustomerOverrideApprovalBlocEventCopyWith(
          CustomerOverrideApprovalBlocEvent value,
          $Res Function(CustomerOverrideApprovalBlocEvent) then) =
      _$CustomerOverrideApprovalBlocEventCopyWithImpl<$Res,
          CustomerOverrideApprovalBlocEvent>;
}

/// @nodoc
class _$CustomerOverrideApprovalBlocEventCopyWithImpl<$Res,
        $Val extends CustomerOverrideApprovalBlocEvent>
    implements $CustomerOverrideApprovalBlocEventCopyWith<$Res> {
  _$CustomerOverrideApprovalBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomerOverrideApprovalBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetCusOverrideEventImplCopyWith<$Res> {
  factory _$$GetCusOverrideEventImplCopyWith(_$GetCusOverrideEventImpl value,
          $Res Function(_$GetCusOverrideEventImpl) then) =
      __$$GetCusOverrideEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String statusvalue, String ooaID, String userID, String searchQuery});
}

/// @nodoc
class __$$GetCusOverrideEventImplCopyWithImpl<$Res>
    extends _$CustomerOverrideApprovalBlocEventCopyWithImpl<$Res,
        _$GetCusOverrideEventImpl>
    implements _$$GetCusOverrideEventImplCopyWith<$Res> {
  __$$GetCusOverrideEventImplCopyWithImpl(_$GetCusOverrideEventImpl _value,
      $Res Function(_$GetCusOverrideEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomerOverrideApprovalBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusvalue = null,
    Object? ooaID = null,
    Object? userID = null,
    Object? searchQuery = null,
  }) {
    return _then(_$GetCusOverrideEventImpl(
      statusvalue: null == statusvalue
          ? _value.statusvalue
          : statusvalue // ignore: cast_nullable_to_non_nullable
              as String,
      ooaID: null == ooaID
          ? _value.ooaID
          : ooaID // ignore: cast_nullable_to_non_nullable
              as String,
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCusOverrideEventImpl implements GetCusOverrideEvent {
  const _$GetCusOverrideEventImpl(
      {required this.statusvalue,
      required this.ooaID,
      required this.userID,
      required this.searchQuery});

  @override
  final String statusvalue;
  @override
  final String ooaID;
  @override
  final String userID;
  @override
  final String searchQuery;

  @override
  String toString() {
    return 'CustomerOverrideApprovalBlocEvent.getCusOverrideEvent(statusvalue: $statusvalue, ooaID: $ooaID, userID: $userID, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCusOverrideEventImpl &&
            (identical(other.statusvalue, statusvalue) ||
                other.statusvalue == statusvalue) &&
            (identical(other.ooaID, ooaID) || other.ooaID == ooaID) &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, statusvalue, ooaID, userID, searchQuery);

  /// Create a copy of CustomerOverrideApprovalBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCusOverrideEventImplCopyWith<_$GetCusOverrideEventImpl> get copyWith =>
      __$$GetCusOverrideEventImplCopyWithImpl<_$GetCusOverrideEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String statusvalue, String ooaID, String userID, String searchQuery)
        getCusOverrideEvent,
    required TResult Function() clearCusOverrideEvent,
    required TResult Function() started,
  }) {
    return getCusOverrideEvent(statusvalue, ooaID, userID, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String statusvalue, String ooaID, String userID,
            String searchQuery)?
        getCusOverrideEvent,
    TResult? Function()? clearCusOverrideEvent,
    TResult? Function()? started,
  }) {
    return getCusOverrideEvent?.call(statusvalue, ooaID, userID, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String statusvalue, String ooaID, String userID,
            String searchQuery)?
        getCusOverrideEvent,
    TResult Function()? clearCusOverrideEvent,
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (getCusOverrideEvent != null) {
      return getCusOverrideEvent(statusvalue, ooaID, userID, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusOverrideEvent value) getCusOverrideEvent,
    required TResult Function(ClearCusOverrideEvent value)
        clearCusOverrideEvent,
    required TResult Function(_Started value) started,
  }) {
    return getCusOverrideEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusOverrideEvent value)? getCusOverrideEvent,
    TResult? Function(ClearCusOverrideEvent value)? clearCusOverrideEvent,
    TResult? Function(_Started value)? started,
  }) {
    return getCusOverrideEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusOverrideEvent value)? getCusOverrideEvent,
    TResult Function(ClearCusOverrideEvent value)? clearCusOverrideEvent,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (getCusOverrideEvent != null) {
      return getCusOverrideEvent(this);
    }
    return orElse();
  }
}

abstract class GetCusOverrideEvent
    implements CustomerOverrideApprovalBlocEvent {
  const factory GetCusOverrideEvent(
      {required final String statusvalue,
      required final String ooaID,
      required final String userID,
      required final String searchQuery}) = _$GetCusOverrideEventImpl;

  String get statusvalue;
  String get ooaID;
  String get userID;
  String get searchQuery;

  /// Create a copy of CustomerOverrideApprovalBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetCusOverrideEventImplCopyWith<_$GetCusOverrideEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearCusOverrideEventImplCopyWith<$Res> {
  factory _$$ClearCusOverrideEventImplCopyWith(
          _$ClearCusOverrideEventImpl value,
          $Res Function(_$ClearCusOverrideEventImpl) then) =
      __$$ClearCusOverrideEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearCusOverrideEventImplCopyWithImpl<$Res>
    extends _$CustomerOverrideApprovalBlocEventCopyWithImpl<$Res,
        _$ClearCusOverrideEventImpl>
    implements _$$ClearCusOverrideEventImplCopyWith<$Res> {
  __$$ClearCusOverrideEventImplCopyWithImpl(_$ClearCusOverrideEventImpl _value,
      $Res Function(_$ClearCusOverrideEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomerOverrideApprovalBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearCusOverrideEventImpl implements ClearCusOverrideEvent {
  const _$ClearCusOverrideEventImpl();

  @override
  String toString() {
    return 'CustomerOverrideApprovalBlocEvent.clearCusOverrideEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearCusOverrideEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String statusvalue, String ooaID, String userID, String searchQuery)
        getCusOverrideEvent,
    required TResult Function() clearCusOverrideEvent,
    required TResult Function() started,
  }) {
    return clearCusOverrideEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String statusvalue, String ooaID, String userID,
            String searchQuery)?
        getCusOverrideEvent,
    TResult? Function()? clearCusOverrideEvent,
    TResult? Function()? started,
  }) {
    return clearCusOverrideEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String statusvalue, String ooaID, String userID,
            String searchQuery)?
        getCusOverrideEvent,
    TResult Function()? clearCusOverrideEvent,
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (clearCusOverrideEvent != null) {
      return clearCusOverrideEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusOverrideEvent value) getCusOverrideEvent,
    required TResult Function(ClearCusOverrideEvent value)
        clearCusOverrideEvent,
    required TResult Function(_Started value) started,
  }) {
    return clearCusOverrideEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusOverrideEvent value)? getCusOverrideEvent,
    TResult? Function(ClearCusOverrideEvent value)? clearCusOverrideEvent,
    TResult? Function(_Started value)? started,
  }) {
    return clearCusOverrideEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusOverrideEvent value)? getCusOverrideEvent,
    TResult Function(ClearCusOverrideEvent value)? clearCusOverrideEvent,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (clearCusOverrideEvent != null) {
      return clearCusOverrideEvent(this);
    }
    return orElse();
  }
}

abstract class ClearCusOverrideEvent
    implements CustomerOverrideApprovalBlocEvent {
  const factory ClearCusOverrideEvent() = _$ClearCusOverrideEventImpl;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$CustomerOverrideApprovalBlocEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomerOverrideApprovalBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'CustomerOverrideApprovalBlocEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String statusvalue, String ooaID, String userID, String searchQuery)
        getCusOverrideEvent,
    required TResult Function() clearCusOverrideEvent,
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String statusvalue, String ooaID, String userID,
            String searchQuery)?
        getCusOverrideEvent,
    TResult? Function()? clearCusOverrideEvent,
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String statusvalue, String ooaID, String userID,
            String searchQuery)?
        getCusOverrideEvent,
    TResult Function()? clearCusOverrideEvent,
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusOverrideEvent value) getCusOverrideEvent,
    required TResult Function(ClearCusOverrideEvent value)
        clearCusOverrideEvent,
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusOverrideEvent value)? getCusOverrideEvent,
    TResult? Function(ClearCusOverrideEvent value)? clearCusOverrideEvent,
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusOverrideEvent value)? getCusOverrideEvent,
    TResult Function(ClearCusOverrideEvent value)? clearCusOverrideEvent,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CustomerOverrideApprovalBlocEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
mixin _$CustomerOverrideApprovalBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CusOverrideApprovalModel>? cusoverride)
        getCusOverrideApprovalState,
    required TResult Function() cusOverrideApprovalFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CusOverrideApprovalModel>? cusoverride)?
        getCusOverrideApprovalState,
    TResult? Function()? cusOverrideApprovalFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CusOverrideApprovalModel>? cusoverride)?
        getCusOverrideApprovalState,
    TResult Function()? cusOverrideApprovalFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusOverrideApprovalState value)
        getCusOverrideApprovalState,
    required TResult Function(CusOverrideApprovalFailedState value)
        cusOverrideApprovalFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusOverrideApprovalState value)?
        getCusOverrideApprovalState,
    TResult? Function(CusOverrideApprovalFailedState value)?
        cusOverrideApprovalFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusOverrideApprovalState value)?
        getCusOverrideApprovalState,
    TResult Function(CusOverrideApprovalFailedState value)?
        cusOverrideApprovalFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerOverrideApprovalBlocStateCopyWith<$Res> {
  factory $CustomerOverrideApprovalBlocStateCopyWith(
          CustomerOverrideApprovalBlocState value,
          $Res Function(CustomerOverrideApprovalBlocState) then) =
      _$CustomerOverrideApprovalBlocStateCopyWithImpl<$Res,
          CustomerOverrideApprovalBlocState>;
}

/// @nodoc
class _$CustomerOverrideApprovalBlocStateCopyWithImpl<$Res,
        $Val extends CustomerOverrideApprovalBlocState>
    implements $CustomerOverrideApprovalBlocStateCopyWith<$Res> {
  _$CustomerOverrideApprovalBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomerOverrideApprovalBlocState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetCusOverrideApprovalStateImplCopyWith<$Res> {
  factory _$$GetCusOverrideApprovalStateImplCopyWith(
          _$GetCusOverrideApprovalStateImpl value,
          $Res Function(_$GetCusOverrideApprovalStateImpl) then) =
      __$$GetCusOverrideApprovalStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CusOverrideApprovalModel>? cusoverride});
}

/// @nodoc
class __$$GetCusOverrideApprovalStateImplCopyWithImpl<$Res>
    extends _$CustomerOverrideApprovalBlocStateCopyWithImpl<$Res,
        _$GetCusOverrideApprovalStateImpl>
    implements _$$GetCusOverrideApprovalStateImplCopyWith<$Res> {
  __$$GetCusOverrideApprovalStateImplCopyWithImpl(
      _$GetCusOverrideApprovalStateImpl _value,
      $Res Function(_$GetCusOverrideApprovalStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomerOverrideApprovalBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cusoverride = freezed,
  }) {
    return _then(_$GetCusOverrideApprovalStateImpl(
      cusoverride: freezed == cusoverride
          ? _value._cusoverride
          : cusoverride // ignore: cast_nullable_to_non_nullable
              as List<CusOverrideApprovalModel>?,
    ));
  }
}

/// @nodoc

class _$GetCusOverrideApprovalStateImpl implements GetCusOverrideApprovalState {
  const _$GetCusOverrideApprovalStateImpl(
      {required final List<CusOverrideApprovalModel>? cusoverride})
      : _cusoverride = cusoverride;

  final List<CusOverrideApprovalModel>? _cusoverride;
  @override
  List<CusOverrideApprovalModel>? get cusoverride {
    final value = _cusoverride;
    if (value == null) return null;
    if (_cusoverride is EqualUnmodifiableListView) return _cusoverride;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CustomerOverrideApprovalBlocState.getCusOverrideApprovalState(cusoverride: $cusoverride)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCusOverrideApprovalStateImpl &&
            const DeepCollectionEquality()
                .equals(other._cusoverride, _cusoverride));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_cusoverride));

  /// Create a copy of CustomerOverrideApprovalBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCusOverrideApprovalStateImplCopyWith<_$GetCusOverrideApprovalStateImpl>
      get copyWith => __$$GetCusOverrideApprovalStateImplCopyWithImpl<
          _$GetCusOverrideApprovalStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CusOverrideApprovalModel>? cusoverride)
        getCusOverrideApprovalState,
    required TResult Function() cusOverrideApprovalFailedState,
  }) {
    return getCusOverrideApprovalState(cusoverride);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CusOverrideApprovalModel>? cusoverride)?
        getCusOverrideApprovalState,
    TResult? Function()? cusOverrideApprovalFailedState,
  }) {
    return getCusOverrideApprovalState?.call(cusoverride);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CusOverrideApprovalModel>? cusoverride)?
        getCusOverrideApprovalState,
    TResult Function()? cusOverrideApprovalFailedState,
    required TResult orElse(),
  }) {
    if (getCusOverrideApprovalState != null) {
      return getCusOverrideApprovalState(cusoverride);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusOverrideApprovalState value)
        getCusOverrideApprovalState,
    required TResult Function(CusOverrideApprovalFailedState value)
        cusOverrideApprovalFailedState,
  }) {
    return getCusOverrideApprovalState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusOverrideApprovalState value)?
        getCusOverrideApprovalState,
    TResult? Function(CusOverrideApprovalFailedState value)?
        cusOverrideApprovalFailedState,
  }) {
    return getCusOverrideApprovalState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusOverrideApprovalState value)?
        getCusOverrideApprovalState,
    TResult Function(CusOverrideApprovalFailedState value)?
        cusOverrideApprovalFailedState,
    required TResult orElse(),
  }) {
    if (getCusOverrideApprovalState != null) {
      return getCusOverrideApprovalState(this);
    }
    return orElse();
  }
}

abstract class GetCusOverrideApprovalState
    implements CustomerOverrideApprovalBlocState {
  const factory GetCusOverrideApprovalState(
          {required final List<CusOverrideApprovalModel>? cusoverride}) =
      _$GetCusOverrideApprovalStateImpl;

  List<CusOverrideApprovalModel>? get cusoverride;

  /// Create a copy of CustomerOverrideApprovalBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetCusOverrideApprovalStateImplCopyWith<_$GetCusOverrideApprovalStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CusOverrideApprovalFailedStateImplCopyWith<$Res> {
  factory _$$CusOverrideApprovalFailedStateImplCopyWith(
          _$CusOverrideApprovalFailedStateImpl value,
          $Res Function(_$CusOverrideApprovalFailedStateImpl) then) =
      __$$CusOverrideApprovalFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CusOverrideApprovalFailedStateImplCopyWithImpl<$Res>
    extends _$CustomerOverrideApprovalBlocStateCopyWithImpl<$Res,
        _$CusOverrideApprovalFailedStateImpl>
    implements _$$CusOverrideApprovalFailedStateImplCopyWith<$Res> {
  __$$CusOverrideApprovalFailedStateImplCopyWithImpl(
      _$CusOverrideApprovalFailedStateImpl _value,
      $Res Function(_$CusOverrideApprovalFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomerOverrideApprovalBlocState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CusOverrideApprovalFailedStateImpl
    implements CusOverrideApprovalFailedState {
  const _$CusOverrideApprovalFailedStateImpl();

  @override
  String toString() {
    return 'CustomerOverrideApprovalBlocState.cusOverrideApprovalFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CusOverrideApprovalFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CusOverrideApprovalModel>? cusoverride)
        getCusOverrideApprovalState,
    required TResult Function() cusOverrideApprovalFailedState,
  }) {
    return cusOverrideApprovalFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CusOverrideApprovalModel>? cusoverride)?
        getCusOverrideApprovalState,
    TResult? Function()? cusOverrideApprovalFailedState,
  }) {
    return cusOverrideApprovalFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CusOverrideApprovalModel>? cusoverride)?
        getCusOverrideApprovalState,
    TResult Function()? cusOverrideApprovalFailedState,
    required TResult orElse(),
  }) {
    if (cusOverrideApprovalFailedState != null) {
      return cusOverrideApprovalFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusOverrideApprovalState value)
        getCusOverrideApprovalState,
    required TResult Function(CusOverrideApprovalFailedState value)
        cusOverrideApprovalFailedState,
  }) {
    return cusOverrideApprovalFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusOverrideApprovalState value)?
        getCusOverrideApprovalState,
    TResult? Function(CusOverrideApprovalFailedState value)?
        cusOverrideApprovalFailedState,
  }) {
    return cusOverrideApprovalFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusOverrideApprovalState value)?
        getCusOverrideApprovalState,
    TResult Function(CusOverrideApprovalFailedState value)?
        cusOverrideApprovalFailedState,
    required TResult orElse(),
  }) {
    if (cusOverrideApprovalFailedState != null) {
      return cusOverrideApprovalFailedState(this);
    }
    return orElse();
  }
}

abstract class CusOverrideApprovalFailedState
    implements CustomerOverrideApprovalBlocState {
  const factory CusOverrideApprovalFailedState() =
      _$CusOverrideApprovalFailedStateImpl;
}
