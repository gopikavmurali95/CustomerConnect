// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'qualification_group_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QualificationGroupEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String mode, String searchQuery)
        getGroupWiseDataEvent,
    required TResult Function() clearGroupData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String mode, String searchQuery)?
        getGroupWiseDataEvent,
    TResult? Function()? clearGroupData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String mode, String searchQuery)?
        getGroupWiseDataEvent,
    TResult Function()? clearGroupData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetGroupWiseDataEvent value)
        getGroupWiseDataEvent,
    required TResult Function(ClearGroupData value) clearGroupData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetGroupWiseDataEvent value)? getGroupWiseDataEvent,
    TResult? Function(ClearGroupData value)? clearGroupData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetGroupWiseDataEvent value)? getGroupWiseDataEvent,
    TResult Function(ClearGroupData value)? clearGroupData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QualificationGroupEventCopyWith<$Res> {
  factory $QualificationGroupEventCopyWith(QualificationGroupEvent value,
          $Res Function(QualificationGroupEvent) then) =
      _$QualificationGroupEventCopyWithImpl<$Res, QualificationGroupEvent>;
}

/// @nodoc
class _$QualificationGroupEventCopyWithImpl<$Res,
        $Val extends QualificationGroupEvent>
    implements $QualificationGroupEventCopyWith<$Res> {
  _$QualificationGroupEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetGroupWiseDataEventImplCopyWith<$Res> {
  factory _$$GetGroupWiseDataEventImplCopyWith(
          _$GetGroupWiseDataEventImpl value,
          $Res Function(_$GetGroupWiseDataEventImpl) then) =
      __$$GetGroupWiseDataEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, String mode, String searchQuery});
}

/// @nodoc
class __$$GetGroupWiseDataEventImplCopyWithImpl<$Res>
    extends _$QualificationGroupEventCopyWithImpl<$Res,
        _$GetGroupWiseDataEventImpl>
    implements _$$GetGroupWiseDataEventImplCopyWith<$Res> {
  __$$GetGroupWiseDataEventImplCopyWithImpl(_$GetGroupWiseDataEventImpl _value,
      $Res Function(_$GetGroupWiseDataEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? mode = null,
    Object? searchQuery = null,
  }) {
    return _then(_$GetGroupWiseDataEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as String,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetGroupWiseDataEventImpl implements GetGroupWiseDataEvent {
  const _$GetGroupWiseDataEventImpl(
      {required this.id, required this.mode, required this.searchQuery});

  @override
  final String id;
  @override
  final String mode;
  @override
  final String searchQuery;

  @override
  String toString() {
    return 'QualificationGroupEvent.getGroupWiseDataEvent(id: $id, mode: $mode, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetGroupWiseDataEventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, mode, searchQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetGroupWiseDataEventImplCopyWith<_$GetGroupWiseDataEventImpl>
      get copyWith => __$$GetGroupWiseDataEventImplCopyWithImpl<
          _$GetGroupWiseDataEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String mode, String searchQuery)
        getGroupWiseDataEvent,
    required TResult Function() clearGroupData,
  }) {
    return getGroupWiseDataEvent(id, mode, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String mode, String searchQuery)?
        getGroupWiseDataEvent,
    TResult? Function()? clearGroupData,
  }) {
    return getGroupWiseDataEvent?.call(id, mode, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String mode, String searchQuery)?
        getGroupWiseDataEvent,
    TResult Function()? clearGroupData,
    required TResult orElse(),
  }) {
    if (getGroupWiseDataEvent != null) {
      return getGroupWiseDataEvent(id, mode, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetGroupWiseDataEvent value)
        getGroupWiseDataEvent,
    required TResult Function(ClearGroupData value) clearGroupData,
  }) {
    return getGroupWiseDataEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetGroupWiseDataEvent value)? getGroupWiseDataEvent,
    TResult? Function(ClearGroupData value)? clearGroupData,
  }) {
    return getGroupWiseDataEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetGroupWiseDataEvent value)? getGroupWiseDataEvent,
    TResult Function(ClearGroupData value)? clearGroupData,
    required TResult orElse(),
  }) {
    if (getGroupWiseDataEvent != null) {
      return getGroupWiseDataEvent(this);
    }
    return orElse();
  }
}

abstract class GetGroupWiseDataEvent implements QualificationGroupEvent {
  const factory GetGroupWiseDataEvent(
      {required final String id,
      required final String mode,
      required final String searchQuery}) = _$GetGroupWiseDataEventImpl;

  String get id;
  String get mode;
  String get searchQuery;
  @JsonKey(ignore: true)
  _$$GetGroupWiseDataEventImplCopyWith<_$GetGroupWiseDataEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearGroupDataImplCopyWith<$Res> {
  factory _$$ClearGroupDataImplCopyWith(_$ClearGroupDataImpl value,
          $Res Function(_$ClearGroupDataImpl) then) =
      __$$ClearGroupDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearGroupDataImplCopyWithImpl<$Res>
    extends _$QualificationGroupEventCopyWithImpl<$Res, _$ClearGroupDataImpl>
    implements _$$ClearGroupDataImplCopyWith<$Res> {
  __$$ClearGroupDataImplCopyWithImpl(
      _$ClearGroupDataImpl _value, $Res Function(_$ClearGroupDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearGroupDataImpl implements ClearGroupData {
  const _$ClearGroupDataImpl();

  @override
  String toString() {
    return 'QualificationGroupEvent.clearGroupData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearGroupDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String mode, String searchQuery)
        getGroupWiseDataEvent,
    required TResult Function() clearGroupData,
  }) {
    return clearGroupData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String mode, String searchQuery)?
        getGroupWiseDataEvent,
    TResult? Function()? clearGroupData,
  }) {
    return clearGroupData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String mode, String searchQuery)?
        getGroupWiseDataEvent,
    TResult Function()? clearGroupData,
    required TResult orElse(),
  }) {
    if (clearGroupData != null) {
      return clearGroupData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetGroupWiseDataEvent value)
        getGroupWiseDataEvent,
    required TResult Function(ClearGroupData value) clearGroupData,
  }) {
    return clearGroupData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetGroupWiseDataEvent value)? getGroupWiseDataEvent,
    TResult? Function(ClearGroupData value)? clearGroupData,
  }) {
    return clearGroupData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetGroupWiseDataEvent value)? getGroupWiseDataEvent,
    TResult Function(ClearGroupData value)? clearGroupData,
    required TResult orElse(),
  }) {
    if (clearGroupData != null) {
      return clearGroupData(this);
    }
    return orElse();
  }
}

abstract class ClearGroupData implements QualificationGroupEvent {
  const factory ClearGroupData() = _$ClearGroupDataImpl;
}

/// @nodoc
mixin _$QualificationGroupState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QualificationGroupModel>? groupdata)
        getGroupwiseData,
    required TResult Function() groupWiseDataFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<QualificationGroupModel>? groupdata)?
        getGroupwiseData,
    TResult? Function()? groupWiseDataFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QualificationGroupModel>? groupdata)?
        getGroupwiseData,
    TResult Function()? groupWiseDataFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetGroupwiseDataState value) getGroupwiseData,
    required TResult Function(GroupWiseDataFailed value) groupWiseDataFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetGroupwiseDataState value)? getGroupwiseData,
    TResult? Function(GroupWiseDataFailed value)? groupWiseDataFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetGroupwiseDataState value)? getGroupwiseData,
    TResult Function(GroupWiseDataFailed value)? groupWiseDataFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QualificationGroupStateCopyWith<$Res> {
  factory $QualificationGroupStateCopyWith(QualificationGroupState value,
          $Res Function(QualificationGroupState) then) =
      _$QualificationGroupStateCopyWithImpl<$Res, QualificationGroupState>;
}

/// @nodoc
class _$QualificationGroupStateCopyWithImpl<$Res,
        $Val extends QualificationGroupState>
    implements $QualificationGroupStateCopyWith<$Res> {
  _$QualificationGroupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetGroupwiseDataStateImplCopyWith<$Res> {
  factory _$$GetGroupwiseDataStateImplCopyWith(
          _$GetGroupwiseDataStateImpl value,
          $Res Function(_$GetGroupwiseDataStateImpl) then) =
      __$$GetGroupwiseDataStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<QualificationGroupModel>? groupdata});
}

/// @nodoc
class __$$GetGroupwiseDataStateImplCopyWithImpl<$Res>
    extends _$QualificationGroupStateCopyWithImpl<$Res,
        _$GetGroupwiseDataStateImpl>
    implements _$$GetGroupwiseDataStateImplCopyWith<$Res> {
  __$$GetGroupwiseDataStateImplCopyWithImpl(_$GetGroupwiseDataStateImpl _value,
      $Res Function(_$GetGroupwiseDataStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupdata = freezed,
  }) {
    return _then(_$GetGroupwiseDataStateImpl(
      groupdata: freezed == groupdata
          ? _value._groupdata
          : groupdata // ignore: cast_nullable_to_non_nullable
              as List<QualificationGroupModel>?,
    ));
  }
}

/// @nodoc

class _$GetGroupwiseDataStateImpl implements GetGroupwiseDataState {
  const _$GetGroupwiseDataStateImpl(
      {required final List<QualificationGroupModel>? groupdata})
      : _groupdata = groupdata;

  final List<QualificationGroupModel>? _groupdata;
  @override
  List<QualificationGroupModel>? get groupdata {
    final value = _groupdata;
    if (value == null) return null;
    if (_groupdata is EqualUnmodifiableListView) return _groupdata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'QualificationGroupState.getGroupwiseData(groupdata: $groupdata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetGroupwiseDataStateImpl &&
            const DeepCollectionEquality()
                .equals(other._groupdata, _groupdata));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_groupdata));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetGroupwiseDataStateImplCopyWith<_$GetGroupwiseDataStateImpl>
      get copyWith => __$$GetGroupwiseDataStateImplCopyWithImpl<
          _$GetGroupwiseDataStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QualificationGroupModel>? groupdata)
        getGroupwiseData,
    required TResult Function() groupWiseDataFailed,
  }) {
    return getGroupwiseData(groupdata);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<QualificationGroupModel>? groupdata)?
        getGroupwiseData,
    TResult? Function()? groupWiseDataFailed,
  }) {
    return getGroupwiseData?.call(groupdata);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QualificationGroupModel>? groupdata)?
        getGroupwiseData,
    TResult Function()? groupWiseDataFailed,
    required TResult orElse(),
  }) {
    if (getGroupwiseData != null) {
      return getGroupwiseData(groupdata);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetGroupwiseDataState value) getGroupwiseData,
    required TResult Function(GroupWiseDataFailed value) groupWiseDataFailed,
  }) {
    return getGroupwiseData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetGroupwiseDataState value)? getGroupwiseData,
    TResult? Function(GroupWiseDataFailed value)? groupWiseDataFailed,
  }) {
    return getGroupwiseData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetGroupwiseDataState value)? getGroupwiseData,
    TResult Function(GroupWiseDataFailed value)? groupWiseDataFailed,
    required TResult orElse(),
  }) {
    if (getGroupwiseData != null) {
      return getGroupwiseData(this);
    }
    return orElse();
  }
}

abstract class GetGroupwiseDataState implements QualificationGroupState {
  const factory GetGroupwiseDataState(
          {required final List<QualificationGroupModel>? groupdata}) =
      _$GetGroupwiseDataStateImpl;

  List<QualificationGroupModel>? get groupdata;
  @JsonKey(ignore: true)
  _$$GetGroupwiseDataStateImplCopyWith<_$GetGroupwiseDataStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GroupWiseDataFailedImplCopyWith<$Res> {
  factory _$$GroupWiseDataFailedImplCopyWith(_$GroupWiseDataFailedImpl value,
          $Res Function(_$GroupWiseDataFailedImpl) then) =
      __$$GroupWiseDataFailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GroupWiseDataFailedImplCopyWithImpl<$Res>
    extends _$QualificationGroupStateCopyWithImpl<$Res,
        _$GroupWiseDataFailedImpl>
    implements _$$GroupWiseDataFailedImplCopyWith<$Res> {
  __$$GroupWiseDataFailedImplCopyWithImpl(_$GroupWiseDataFailedImpl _value,
      $Res Function(_$GroupWiseDataFailedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GroupWiseDataFailedImpl implements GroupWiseDataFailed {
  const _$GroupWiseDataFailedImpl();

  @override
  String toString() {
    return 'QualificationGroupState.groupWiseDataFailed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupWiseDataFailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<QualificationGroupModel>? groupdata)
        getGroupwiseData,
    required TResult Function() groupWiseDataFailed,
  }) {
    return groupWiseDataFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<QualificationGroupModel>? groupdata)?
        getGroupwiseData,
    TResult? Function()? groupWiseDataFailed,
  }) {
    return groupWiseDataFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<QualificationGroupModel>? groupdata)?
        getGroupwiseData,
    TResult Function()? groupWiseDataFailed,
    required TResult orElse(),
  }) {
    if (groupWiseDataFailed != null) {
      return groupWiseDataFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetGroupwiseDataState value) getGroupwiseData,
    required TResult Function(GroupWiseDataFailed value) groupWiseDataFailed,
  }) {
    return groupWiseDataFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetGroupwiseDataState value)? getGroupwiseData,
    TResult? Function(GroupWiseDataFailed value)? groupWiseDataFailed,
  }) {
    return groupWiseDataFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetGroupwiseDataState value)? getGroupwiseData,
    TResult Function(GroupWiseDataFailed value)? groupWiseDataFailed,
    required TResult orElse(),
  }) {
    if (groupWiseDataFailed != null) {
      return groupWiseDataFailed(this);
    }
    return orElse();
  }
}

abstract class GroupWiseDataFailed implements QualificationGroupState {
  const factory GroupWiseDataFailed() = _$GroupWiseDataFailedImpl;
}
