// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'target_details_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TargetDetailsListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fromDate, String rotID, String searchQuery)
        getTargetDetailsListEvent,
    required TResult Function() clearTargetDetailsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fromDate, String rotID, String searchQuery)?
        getTargetDetailsListEvent,
    TResult? Function()? clearTargetDetailsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fromDate, String rotID, String searchQuery)?
        getTargetDetailsListEvent,
    TResult Function()? clearTargetDetailsList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTargetDetailsListEvent value)
        getTargetDetailsListEvent,
    required TResult Function(ClearTargetDetailsList value)
        clearTargetDetailsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTargetDetailsListEvent value)?
        getTargetDetailsListEvent,
    TResult? Function(ClearTargetDetailsList value)? clearTargetDetailsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTargetDetailsListEvent value)?
        getTargetDetailsListEvent,
    TResult Function(ClearTargetDetailsList value)? clearTargetDetailsList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TargetDetailsListEventCopyWith<$Res> {
  factory $TargetDetailsListEventCopyWith(TargetDetailsListEvent value,
          $Res Function(TargetDetailsListEvent) then) =
      _$TargetDetailsListEventCopyWithImpl<$Res, TargetDetailsListEvent>;
}

/// @nodoc
class _$TargetDetailsListEventCopyWithImpl<$Res,
        $Val extends TargetDetailsListEvent>
    implements $TargetDetailsListEventCopyWith<$Res> {
  _$TargetDetailsListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TargetDetailsListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetTargetDetailsListEventImplCopyWith<$Res> {
  factory _$$GetTargetDetailsListEventImplCopyWith(
          _$GetTargetDetailsListEventImpl value,
          $Res Function(_$GetTargetDetailsListEventImpl) then) =
      __$$GetTargetDetailsListEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String fromDate, String rotID, String searchQuery});
}

/// @nodoc
class __$$GetTargetDetailsListEventImplCopyWithImpl<$Res>
    extends _$TargetDetailsListEventCopyWithImpl<$Res,
        _$GetTargetDetailsListEventImpl>
    implements _$$GetTargetDetailsListEventImplCopyWith<$Res> {
  __$$GetTargetDetailsListEventImplCopyWithImpl(
      _$GetTargetDetailsListEventImpl _value,
      $Res Function(_$GetTargetDetailsListEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TargetDetailsListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromDate = null,
    Object? rotID = null,
    Object? searchQuery = null,
  }) {
    return _then(_$GetTargetDetailsListEventImpl(
      fromDate: null == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as String,
      rotID: null == rotID
          ? _value.rotID
          : rotID // ignore: cast_nullable_to_non_nullable
              as String,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetTargetDetailsListEventImpl implements GetTargetDetailsListEvent {
  const _$GetTargetDetailsListEventImpl(
      {required this.fromDate, required this.rotID, required this.searchQuery});

  @override
  final String fromDate;
  @override
  final String rotID;
  @override
  final String searchQuery;

  @override
  String toString() {
    return 'TargetDetailsListEvent.getTargetDetailsListEvent(fromDate: $fromDate, rotID: $rotID, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTargetDetailsListEventImpl &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.rotID, rotID) || other.rotID == rotID) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fromDate, rotID, searchQuery);

  /// Create a copy of TargetDetailsListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTargetDetailsListEventImplCopyWith<_$GetTargetDetailsListEventImpl>
      get copyWith => __$$GetTargetDetailsListEventImplCopyWithImpl<
          _$GetTargetDetailsListEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fromDate, String rotID, String searchQuery)
        getTargetDetailsListEvent,
    required TResult Function() clearTargetDetailsList,
  }) {
    return getTargetDetailsListEvent(fromDate, rotID, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fromDate, String rotID, String searchQuery)?
        getTargetDetailsListEvent,
    TResult? Function()? clearTargetDetailsList,
  }) {
    return getTargetDetailsListEvent?.call(fromDate, rotID, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fromDate, String rotID, String searchQuery)?
        getTargetDetailsListEvent,
    TResult Function()? clearTargetDetailsList,
    required TResult orElse(),
  }) {
    if (getTargetDetailsListEvent != null) {
      return getTargetDetailsListEvent(fromDate, rotID, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTargetDetailsListEvent value)
        getTargetDetailsListEvent,
    required TResult Function(ClearTargetDetailsList value)
        clearTargetDetailsList,
  }) {
    return getTargetDetailsListEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTargetDetailsListEvent value)?
        getTargetDetailsListEvent,
    TResult? Function(ClearTargetDetailsList value)? clearTargetDetailsList,
  }) {
    return getTargetDetailsListEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTargetDetailsListEvent value)?
        getTargetDetailsListEvent,
    TResult Function(ClearTargetDetailsList value)? clearTargetDetailsList,
    required TResult orElse(),
  }) {
    if (getTargetDetailsListEvent != null) {
      return getTargetDetailsListEvent(this);
    }
    return orElse();
  }
}

abstract class GetTargetDetailsListEvent implements TargetDetailsListEvent {
  const factory GetTargetDetailsListEvent(
      {required final String fromDate,
      required final String rotID,
      required final String searchQuery}) = _$GetTargetDetailsListEventImpl;

  String get fromDate;
  String get rotID;
  String get searchQuery;

  /// Create a copy of TargetDetailsListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetTargetDetailsListEventImplCopyWith<_$GetTargetDetailsListEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearTargetDetailsListImplCopyWith<$Res> {
  factory _$$ClearTargetDetailsListImplCopyWith(
          _$ClearTargetDetailsListImpl value,
          $Res Function(_$ClearTargetDetailsListImpl) then) =
      __$$ClearTargetDetailsListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearTargetDetailsListImplCopyWithImpl<$Res>
    extends _$TargetDetailsListEventCopyWithImpl<$Res,
        _$ClearTargetDetailsListImpl>
    implements _$$ClearTargetDetailsListImplCopyWith<$Res> {
  __$$ClearTargetDetailsListImplCopyWithImpl(
      _$ClearTargetDetailsListImpl _value,
      $Res Function(_$ClearTargetDetailsListImpl) _then)
      : super(_value, _then);

  /// Create a copy of TargetDetailsListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearTargetDetailsListImpl implements ClearTargetDetailsList {
  const _$ClearTargetDetailsListImpl();

  @override
  String toString() {
    return 'TargetDetailsListEvent.clearTargetDetailsList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearTargetDetailsListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fromDate, String rotID, String searchQuery)
        getTargetDetailsListEvent,
    required TResult Function() clearTargetDetailsList,
  }) {
    return clearTargetDetailsList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fromDate, String rotID, String searchQuery)?
        getTargetDetailsListEvent,
    TResult? Function()? clearTargetDetailsList,
  }) {
    return clearTargetDetailsList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fromDate, String rotID, String searchQuery)?
        getTargetDetailsListEvent,
    TResult Function()? clearTargetDetailsList,
    required TResult orElse(),
  }) {
    if (clearTargetDetailsList != null) {
      return clearTargetDetailsList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTargetDetailsListEvent value)
        getTargetDetailsListEvent,
    required TResult Function(ClearTargetDetailsList value)
        clearTargetDetailsList,
  }) {
    return clearTargetDetailsList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTargetDetailsListEvent value)?
        getTargetDetailsListEvent,
    TResult? Function(ClearTargetDetailsList value)? clearTargetDetailsList,
  }) {
    return clearTargetDetailsList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTargetDetailsListEvent value)?
        getTargetDetailsListEvent,
    TResult Function(ClearTargetDetailsList value)? clearTargetDetailsList,
    required TResult orElse(),
  }) {
    if (clearTargetDetailsList != null) {
      return clearTargetDetailsList(this);
    }
    return orElse();
  }
}

abstract class ClearTargetDetailsList implements TargetDetailsListEvent {
  const factory ClearTargetDetailsList() = _$ClearTargetDetailsListImpl;
}

/// @nodoc
mixin _$TargetDetailsListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TargetDetailsListModel>? details)
        getTargetDetailsListState,
    required TResult Function() getTargetDetailsListFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TargetDetailsListModel>? details)?
        getTargetDetailsListState,
    TResult? Function()? getTargetDetailsListFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TargetDetailsListModel>? details)?
        getTargetDetailsListState,
    TResult Function()? getTargetDetailsListFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTargetDetailsListState value)
        getTargetDetailsListState,
    required TResult Function(GetTargetDetailsListFailed value)
        getTargetDetailsListFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTargetDetailsListState value)?
        getTargetDetailsListState,
    TResult? Function(GetTargetDetailsListFailed value)?
        getTargetDetailsListFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTargetDetailsListState value)?
        getTargetDetailsListState,
    TResult Function(GetTargetDetailsListFailed value)?
        getTargetDetailsListFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TargetDetailsListStateCopyWith<$Res> {
  factory $TargetDetailsListStateCopyWith(TargetDetailsListState value,
          $Res Function(TargetDetailsListState) then) =
      _$TargetDetailsListStateCopyWithImpl<$Res, TargetDetailsListState>;
}

/// @nodoc
class _$TargetDetailsListStateCopyWithImpl<$Res,
        $Val extends TargetDetailsListState>
    implements $TargetDetailsListStateCopyWith<$Res> {
  _$TargetDetailsListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TargetDetailsListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetTargetDetailsListStateImplCopyWith<$Res> {
  factory _$$GetTargetDetailsListStateImplCopyWith(
          _$GetTargetDetailsListStateImpl value,
          $Res Function(_$GetTargetDetailsListStateImpl) then) =
      __$$GetTargetDetailsListStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TargetDetailsListModel>? details});
}

/// @nodoc
class __$$GetTargetDetailsListStateImplCopyWithImpl<$Res>
    extends _$TargetDetailsListStateCopyWithImpl<$Res,
        _$GetTargetDetailsListStateImpl>
    implements _$$GetTargetDetailsListStateImplCopyWith<$Res> {
  __$$GetTargetDetailsListStateImplCopyWithImpl(
      _$GetTargetDetailsListStateImpl _value,
      $Res Function(_$GetTargetDetailsListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TargetDetailsListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? details = freezed,
  }) {
    return _then(_$GetTargetDetailsListStateImpl(
      details: freezed == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<TargetDetailsListModel>?,
    ));
  }
}

/// @nodoc

class _$GetTargetDetailsListStateImpl implements GetTargetDetailsListState {
  const _$GetTargetDetailsListStateImpl(
      {required final List<TargetDetailsListModel>? details})
      : _details = details;

  final List<TargetDetailsListModel>? _details;
  @override
  List<TargetDetailsListModel>? get details {
    final value = _details;
    if (value == null) return null;
    if (_details is EqualUnmodifiableListView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TargetDetailsListState.getTargetDetailsListState(details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTargetDetailsListStateImpl &&
            const DeepCollectionEquality().equals(other._details, _details));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_details));

  /// Create a copy of TargetDetailsListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTargetDetailsListStateImplCopyWith<_$GetTargetDetailsListStateImpl>
      get copyWith => __$$GetTargetDetailsListStateImplCopyWithImpl<
          _$GetTargetDetailsListStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TargetDetailsListModel>? details)
        getTargetDetailsListState,
    required TResult Function() getTargetDetailsListFailed,
  }) {
    return getTargetDetailsListState(details);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TargetDetailsListModel>? details)?
        getTargetDetailsListState,
    TResult? Function()? getTargetDetailsListFailed,
  }) {
    return getTargetDetailsListState?.call(details);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TargetDetailsListModel>? details)?
        getTargetDetailsListState,
    TResult Function()? getTargetDetailsListFailed,
    required TResult orElse(),
  }) {
    if (getTargetDetailsListState != null) {
      return getTargetDetailsListState(details);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTargetDetailsListState value)
        getTargetDetailsListState,
    required TResult Function(GetTargetDetailsListFailed value)
        getTargetDetailsListFailed,
  }) {
    return getTargetDetailsListState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTargetDetailsListState value)?
        getTargetDetailsListState,
    TResult? Function(GetTargetDetailsListFailed value)?
        getTargetDetailsListFailed,
  }) {
    return getTargetDetailsListState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTargetDetailsListState value)?
        getTargetDetailsListState,
    TResult Function(GetTargetDetailsListFailed value)?
        getTargetDetailsListFailed,
    required TResult orElse(),
  }) {
    if (getTargetDetailsListState != null) {
      return getTargetDetailsListState(this);
    }
    return orElse();
  }
}

abstract class GetTargetDetailsListState implements TargetDetailsListState {
  const factory GetTargetDetailsListState(
          {required final List<TargetDetailsListModel>? details}) =
      _$GetTargetDetailsListStateImpl;

  List<TargetDetailsListModel>? get details;

  /// Create a copy of TargetDetailsListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetTargetDetailsListStateImplCopyWith<_$GetTargetDetailsListStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetTargetDetailsListFailedImplCopyWith<$Res> {
  factory _$$GetTargetDetailsListFailedImplCopyWith(
          _$GetTargetDetailsListFailedImpl value,
          $Res Function(_$GetTargetDetailsListFailedImpl) then) =
      __$$GetTargetDetailsListFailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTargetDetailsListFailedImplCopyWithImpl<$Res>
    extends _$TargetDetailsListStateCopyWithImpl<$Res,
        _$GetTargetDetailsListFailedImpl>
    implements _$$GetTargetDetailsListFailedImplCopyWith<$Res> {
  __$$GetTargetDetailsListFailedImplCopyWithImpl(
      _$GetTargetDetailsListFailedImpl _value,
      $Res Function(_$GetTargetDetailsListFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TargetDetailsListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetTargetDetailsListFailedImpl implements GetTargetDetailsListFailed {
  const _$GetTargetDetailsListFailedImpl();

  @override
  String toString() {
    return 'TargetDetailsListState.getTargetDetailsListFailed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTargetDetailsListFailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TargetDetailsListModel>? details)
        getTargetDetailsListState,
    required TResult Function() getTargetDetailsListFailed,
  }) {
    return getTargetDetailsListFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TargetDetailsListModel>? details)?
        getTargetDetailsListState,
    TResult? Function()? getTargetDetailsListFailed,
  }) {
    return getTargetDetailsListFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TargetDetailsListModel>? details)?
        getTargetDetailsListState,
    TResult Function()? getTargetDetailsListFailed,
    required TResult orElse(),
  }) {
    if (getTargetDetailsListFailed != null) {
      return getTargetDetailsListFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTargetDetailsListState value)
        getTargetDetailsListState,
    required TResult Function(GetTargetDetailsListFailed value)
        getTargetDetailsListFailed,
  }) {
    return getTargetDetailsListFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTargetDetailsListState value)?
        getTargetDetailsListState,
    TResult? Function(GetTargetDetailsListFailed value)?
        getTargetDetailsListFailed,
  }) {
    return getTargetDetailsListFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTargetDetailsListState value)?
        getTargetDetailsListState,
    TResult Function(GetTargetDetailsListFailed value)?
        getTargetDetailsListFailed,
    required TResult orElse(),
  }) {
    if (getTargetDetailsListFailed != null) {
      return getTargetDetailsListFailed(this);
    }
    return orElse();
  }
}

abstract class GetTargetDetailsListFailed implements TargetDetailsListState {
  const factory GetTargetDetailsListFailed() = _$GetTargetDetailsListFailedImpl;
}
