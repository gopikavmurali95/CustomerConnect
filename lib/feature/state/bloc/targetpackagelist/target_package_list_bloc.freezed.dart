// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'target_package_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TargetPackageListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String pkgID, String fromDate, String rotID, String serachQuery)
        getTargetPackageListEvent,
    required TResult Function() clearTargetPackageList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String pkgID, String fromDate, String rotID, String serachQuery)?
        getTargetPackageListEvent,
    TResult? Function()? clearTargetPackageList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String pkgID, String fromDate, String rotID, String serachQuery)?
        getTargetPackageListEvent,
    TResult Function()? clearTargetPackageList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTargetPackageListEvent value)
        getTargetPackageListEvent,
    required TResult Function(ClearTargetPackageList value)
        clearTargetPackageList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTargetPackageListEvent value)?
        getTargetPackageListEvent,
    TResult? Function(ClearTargetPackageList value)? clearTargetPackageList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTargetPackageListEvent value)?
        getTargetPackageListEvent,
    TResult Function(ClearTargetPackageList value)? clearTargetPackageList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TargetPackageListEventCopyWith<$Res> {
  factory $TargetPackageListEventCopyWith(TargetPackageListEvent value,
          $Res Function(TargetPackageListEvent) then) =
      _$TargetPackageListEventCopyWithImpl<$Res, TargetPackageListEvent>;
}

/// @nodoc
class _$TargetPackageListEventCopyWithImpl<$Res,
        $Val extends TargetPackageListEvent>
    implements $TargetPackageListEventCopyWith<$Res> {
  _$TargetPackageListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TargetPackageListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetTargetPackageListEventImplCopyWith<$Res> {
  factory _$$GetTargetPackageListEventImplCopyWith(
          _$GetTargetPackageListEventImpl value,
          $Res Function(_$GetTargetPackageListEventImpl) then) =
      __$$GetTargetPackageListEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String pkgID, String fromDate, String rotID, String serachQuery});
}

/// @nodoc
class __$$GetTargetPackageListEventImplCopyWithImpl<$Res>
    extends _$TargetPackageListEventCopyWithImpl<$Res,
        _$GetTargetPackageListEventImpl>
    implements _$$GetTargetPackageListEventImplCopyWith<$Res> {
  __$$GetTargetPackageListEventImplCopyWithImpl(
      _$GetTargetPackageListEventImpl _value,
      $Res Function(_$GetTargetPackageListEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TargetPackageListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pkgID = null,
    Object? fromDate = null,
    Object? rotID = null,
    Object? serachQuery = null,
  }) {
    return _then(_$GetTargetPackageListEventImpl(
      pkgID: null == pkgID
          ? _value.pkgID
          : pkgID // ignore: cast_nullable_to_non_nullable
              as String,
      fromDate: null == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as String,
      rotID: null == rotID
          ? _value.rotID
          : rotID // ignore: cast_nullable_to_non_nullable
              as String,
      serachQuery: null == serachQuery
          ? _value.serachQuery
          : serachQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetTargetPackageListEventImpl implements GetTargetPackageListEvent {
  const _$GetTargetPackageListEventImpl(
      {required this.pkgID,
      required this.fromDate,
      required this.rotID,
      required this.serachQuery});

  @override
  final String pkgID;
  @override
  final String fromDate;
  @override
  final String rotID;
  @override
  final String serachQuery;

  @override
  String toString() {
    return 'TargetPackageListEvent.getTargetPackageListEvent(pkgID: $pkgID, fromDate: $fromDate, rotID: $rotID, serachQuery: $serachQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTargetPackageListEventImpl &&
            (identical(other.pkgID, pkgID) || other.pkgID == pkgID) &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.rotID, rotID) || other.rotID == rotID) &&
            (identical(other.serachQuery, serachQuery) ||
                other.serachQuery == serachQuery));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, pkgID, fromDate, rotID, serachQuery);

  /// Create a copy of TargetPackageListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTargetPackageListEventImplCopyWith<_$GetTargetPackageListEventImpl>
      get copyWith => __$$GetTargetPackageListEventImplCopyWithImpl<
          _$GetTargetPackageListEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String pkgID, String fromDate, String rotID, String serachQuery)
        getTargetPackageListEvent,
    required TResult Function() clearTargetPackageList,
  }) {
    return getTargetPackageListEvent(pkgID, fromDate, rotID, serachQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String pkgID, String fromDate, String rotID, String serachQuery)?
        getTargetPackageListEvent,
    TResult? Function()? clearTargetPackageList,
  }) {
    return getTargetPackageListEvent?.call(pkgID, fromDate, rotID, serachQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String pkgID, String fromDate, String rotID, String serachQuery)?
        getTargetPackageListEvent,
    TResult Function()? clearTargetPackageList,
    required TResult orElse(),
  }) {
    if (getTargetPackageListEvent != null) {
      return getTargetPackageListEvent(pkgID, fromDate, rotID, serachQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTargetPackageListEvent value)
        getTargetPackageListEvent,
    required TResult Function(ClearTargetPackageList value)
        clearTargetPackageList,
  }) {
    return getTargetPackageListEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTargetPackageListEvent value)?
        getTargetPackageListEvent,
    TResult? Function(ClearTargetPackageList value)? clearTargetPackageList,
  }) {
    return getTargetPackageListEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTargetPackageListEvent value)?
        getTargetPackageListEvent,
    TResult Function(ClearTargetPackageList value)? clearTargetPackageList,
    required TResult orElse(),
  }) {
    if (getTargetPackageListEvent != null) {
      return getTargetPackageListEvent(this);
    }
    return orElse();
  }
}

abstract class GetTargetPackageListEvent implements TargetPackageListEvent {
  const factory GetTargetPackageListEvent(
      {required final String pkgID,
      required final String fromDate,
      required final String rotID,
      required final String serachQuery}) = _$GetTargetPackageListEventImpl;

  String get pkgID;
  String get fromDate;
  String get rotID;
  String get serachQuery;

  /// Create a copy of TargetPackageListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetTargetPackageListEventImplCopyWith<_$GetTargetPackageListEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearTargetPackageListImplCopyWith<$Res> {
  factory _$$ClearTargetPackageListImplCopyWith(
          _$ClearTargetPackageListImpl value,
          $Res Function(_$ClearTargetPackageListImpl) then) =
      __$$ClearTargetPackageListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearTargetPackageListImplCopyWithImpl<$Res>
    extends _$TargetPackageListEventCopyWithImpl<$Res,
        _$ClearTargetPackageListImpl>
    implements _$$ClearTargetPackageListImplCopyWith<$Res> {
  __$$ClearTargetPackageListImplCopyWithImpl(
      _$ClearTargetPackageListImpl _value,
      $Res Function(_$ClearTargetPackageListImpl) _then)
      : super(_value, _then);

  /// Create a copy of TargetPackageListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearTargetPackageListImpl implements ClearTargetPackageList {
  const _$ClearTargetPackageListImpl();

  @override
  String toString() {
    return 'TargetPackageListEvent.clearTargetPackageList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearTargetPackageListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String pkgID, String fromDate, String rotID, String serachQuery)
        getTargetPackageListEvent,
    required TResult Function() clearTargetPackageList,
  }) {
    return clearTargetPackageList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String pkgID, String fromDate, String rotID, String serachQuery)?
        getTargetPackageListEvent,
    TResult? Function()? clearTargetPackageList,
  }) {
    return clearTargetPackageList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String pkgID, String fromDate, String rotID, String serachQuery)?
        getTargetPackageListEvent,
    TResult Function()? clearTargetPackageList,
    required TResult orElse(),
  }) {
    if (clearTargetPackageList != null) {
      return clearTargetPackageList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTargetPackageListEvent value)
        getTargetPackageListEvent,
    required TResult Function(ClearTargetPackageList value)
        clearTargetPackageList,
  }) {
    return clearTargetPackageList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTargetPackageListEvent value)?
        getTargetPackageListEvent,
    TResult? Function(ClearTargetPackageList value)? clearTargetPackageList,
  }) {
    return clearTargetPackageList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTargetPackageListEvent value)?
        getTargetPackageListEvent,
    TResult Function(ClearTargetPackageList value)? clearTargetPackageList,
    required TResult orElse(),
  }) {
    if (clearTargetPackageList != null) {
      return clearTargetPackageList(this);
    }
    return orElse();
  }
}

abstract class ClearTargetPackageList implements TargetPackageListEvent {
  const factory ClearTargetPackageList() = _$ClearTargetPackageListImpl;
}

/// @nodoc
mixin _$TargetPackageListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TargetPackageListModel>? targetPackageData)
        getTargetPackageListState,
    required TResult Function() targetPackageListFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TargetPackageListModel>? targetPackageData)?
        getTargetPackageListState,
    TResult? Function()? targetPackageListFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TargetPackageListModel>? targetPackageData)?
        getTargetPackageListState,
    TResult Function()? targetPackageListFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTargetPackageListState value)
        getTargetPackageListState,
    required TResult Function(TargetPackageListFailure value)
        targetPackageListFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTargetPackageListState value)?
        getTargetPackageListState,
    TResult? Function(TargetPackageListFailure value)? targetPackageListFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTargetPackageListState value)?
        getTargetPackageListState,
    TResult Function(TargetPackageListFailure value)? targetPackageListFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TargetPackageListStateCopyWith<$Res> {
  factory $TargetPackageListStateCopyWith(TargetPackageListState value,
          $Res Function(TargetPackageListState) then) =
      _$TargetPackageListStateCopyWithImpl<$Res, TargetPackageListState>;
}

/// @nodoc
class _$TargetPackageListStateCopyWithImpl<$Res,
        $Val extends TargetPackageListState>
    implements $TargetPackageListStateCopyWith<$Res> {
  _$TargetPackageListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TargetPackageListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetTargetPackageListStateImplCopyWith<$Res> {
  factory _$$GetTargetPackageListStateImplCopyWith(
          _$GetTargetPackageListStateImpl value,
          $Res Function(_$GetTargetPackageListStateImpl) then) =
      __$$GetTargetPackageListStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TargetPackageListModel>? targetPackageData});
}

/// @nodoc
class __$$GetTargetPackageListStateImplCopyWithImpl<$Res>
    extends _$TargetPackageListStateCopyWithImpl<$Res,
        _$GetTargetPackageListStateImpl>
    implements _$$GetTargetPackageListStateImplCopyWith<$Res> {
  __$$GetTargetPackageListStateImplCopyWithImpl(
      _$GetTargetPackageListStateImpl _value,
      $Res Function(_$GetTargetPackageListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TargetPackageListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? targetPackageData = freezed,
  }) {
    return _then(_$GetTargetPackageListStateImpl(
      targetPackageData: freezed == targetPackageData
          ? _value._targetPackageData
          : targetPackageData // ignore: cast_nullable_to_non_nullable
              as List<TargetPackageListModel>?,
    ));
  }
}

/// @nodoc

class _$GetTargetPackageListStateImpl implements GetTargetPackageListState {
  const _$GetTargetPackageListStateImpl(
      {required final List<TargetPackageListModel>? targetPackageData})
      : _targetPackageData = targetPackageData;

  final List<TargetPackageListModel>? _targetPackageData;
  @override
  List<TargetPackageListModel>? get targetPackageData {
    final value = _targetPackageData;
    if (value == null) return null;
    if (_targetPackageData is EqualUnmodifiableListView)
      return _targetPackageData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TargetPackageListState.getTargetPackageListState(targetPackageData: $targetPackageData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTargetPackageListStateImpl &&
            const DeepCollectionEquality()
                .equals(other._targetPackageData, _targetPackageData));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_targetPackageData));

  /// Create a copy of TargetPackageListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTargetPackageListStateImplCopyWith<_$GetTargetPackageListStateImpl>
      get copyWith => __$$GetTargetPackageListStateImplCopyWithImpl<
          _$GetTargetPackageListStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TargetPackageListModel>? targetPackageData)
        getTargetPackageListState,
    required TResult Function() targetPackageListFailure,
  }) {
    return getTargetPackageListState(targetPackageData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TargetPackageListModel>? targetPackageData)?
        getTargetPackageListState,
    TResult? Function()? targetPackageListFailure,
  }) {
    return getTargetPackageListState?.call(targetPackageData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TargetPackageListModel>? targetPackageData)?
        getTargetPackageListState,
    TResult Function()? targetPackageListFailure,
    required TResult orElse(),
  }) {
    if (getTargetPackageListState != null) {
      return getTargetPackageListState(targetPackageData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTargetPackageListState value)
        getTargetPackageListState,
    required TResult Function(TargetPackageListFailure value)
        targetPackageListFailure,
  }) {
    return getTargetPackageListState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTargetPackageListState value)?
        getTargetPackageListState,
    TResult? Function(TargetPackageListFailure value)? targetPackageListFailure,
  }) {
    return getTargetPackageListState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTargetPackageListState value)?
        getTargetPackageListState,
    TResult Function(TargetPackageListFailure value)? targetPackageListFailure,
    required TResult orElse(),
  }) {
    if (getTargetPackageListState != null) {
      return getTargetPackageListState(this);
    }
    return orElse();
  }
}

abstract class GetTargetPackageListState implements TargetPackageListState {
  const factory GetTargetPackageListState(
          {required final List<TargetPackageListModel>? targetPackageData}) =
      _$GetTargetPackageListStateImpl;

  List<TargetPackageListModel>? get targetPackageData;

  /// Create a copy of TargetPackageListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetTargetPackageListStateImplCopyWith<_$GetTargetPackageListStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TargetPackageListFailureImplCopyWith<$Res> {
  factory _$$TargetPackageListFailureImplCopyWith(
          _$TargetPackageListFailureImpl value,
          $Res Function(_$TargetPackageListFailureImpl) then) =
      __$$TargetPackageListFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TargetPackageListFailureImplCopyWithImpl<$Res>
    extends _$TargetPackageListStateCopyWithImpl<$Res,
        _$TargetPackageListFailureImpl>
    implements _$$TargetPackageListFailureImplCopyWith<$Res> {
  __$$TargetPackageListFailureImplCopyWithImpl(
      _$TargetPackageListFailureImpl _value,
      $Res Function(_$TargetPackageListFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of TargetPackageListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TargetPackageListFailureImpl implements TargetPackageListFailure {
  const _$TargetPackageListFailureImpl();

  @override
  String toString() {
    return 'TargetPackageListState.targetPackageListFailure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TargetPackageListFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TargetPackageListModel>? targetPackageData)
        getTargetPackageListState,
    required TResult Function() targetPackageListFailure,
  }) {
    return targetPackageListFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TargetPackageListModel>? targetPackageData)?
        getTargetPackageListState,
    TResult? Function()? targetPackageListFailure,
  }) {
    return targetPackageListFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TargetPackageListModel>? targetPackageData)?
        getTargetPackageListState,
    TResult Function()? targetPackageListFailure,
    required TResult orElse(),
  }) {
    if (targetPackageListFailure != null) {
      return targetPackageListFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTargetPackageListState value)
        getTargetPackageListState,
    required TResult Function(TargetPackageListFailure value)
        targetPackageListFailure,
  }) {
    return targetPackageListFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTargetPackageListState value)?
        getTargetPackageListState,
    TResult? Function(TargetPackageListFailure value)? targetPackageListFailure,
  }) {
    return targetPackageListFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTargetPackageListState value)?
        getTargetPackageListState,
    TResult Function(TargetPackageListFailure value)? targetPackageListFailure,
    required TResult orElse(),
  }) {
    if (targetPackageListFailure != null) {
      return targetPackageListFailure(this);
    }
    return orElse();
  }
}

abstract class TargetPackageListFailure implements TargetPackageListState {
  const factory TargetPackageListFailure() = _$TargetPackageListFailureImpl;
}
