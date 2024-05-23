// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_insight_group_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CustomerInsightGroupEvent {
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
abstract class $CustomerInsightGroupEventCopyWith<$Res> {
  factory $CustomerInsightGroupEventCopyWith(CustomerInsightGroupEvent value,
          $Res Function(CustomerInsightGroupEvent) then) =
      _$CustomerInsightGroupEventCopyWithImpl<$Res, CustomerInsightGroupEvent>;
}

/// @nodoc
class _$CustomerInsightGroupEventCopyWithImpl<$Res,
        $Val extends CustomerInsightGroupEvent>
    implements $CustomerInsightGroupEventCopyWith<$Res> {
  _$CustomerInsightGroupEventCopyWithImpl(this._value, this._then);

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
    extends _$CustomerInsightGroupEventCopyWithImpl<$Res,
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
    return 'CustomerInsightGroupEvent.getGroupWiseDataEvent(id: $id, mode: $mode, searchQuery: $searchQuery)';
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

abstract class GetGroupWiseDataEvent implements CustomerInsightGroupEvent {
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
    extends _$CustomerInsightGroupEventCopyWithImpl<$Res, _$ClearGroupDataImpl>
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
    return 'CustomerInsightGroupEvent.clearGroupData()';
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

abstract class ClearGroupData implements CustomerInsightGroupEvent {
  const factory ClearGroupData() = _$ClearGroupDataImpl;
}

/// @nodoc
mixin _$CustomerInsightGroupState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CustomerInsightGroupModel>? groupData)
        getCusInsightGroupSatet,
    required TResult Function() customerInsightGroupFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CustomerInsightGroupModel>? groupData)?
        getCusInsightGroupSatet,
    TResult? Function()? customerInsightGroupFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CustomerInsightGroupModel>? groupData)?
        getCusInsightGroupSatet,
    TResult Function()? customerInsightGroupFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusInsightGroupSatet value)
        getCusInsightGroupSatet,
    required TResult Function(CustomerInsightGroupFailedState value)
        customerInsightGroupFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusInsightGroupSatet value)? getCusInsightGroupSatet,
    TResult? Function(CustomerInsightGroupFailedState value)?
        customerInsightGroupFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusInsightGroupSatet value)? getCusInsightGroupSatet,
    TResult Function(CustomerInsightGroupFailedState value)?
        customerInsightGroupFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerInsightGroupStateCopyWith<$Res> {
  factory $CustomerInsightGroupStateCopyWith(CustomerInsightGroupState value,
          $Res Function(CustomerInsightGroupState) then) =
      _$CustomerInsightGroupStateCopyWithImpl<$Res, CustomerInsightGroupState>;
}

/// @nodoc
class _$CustomerInsightGroupStateCopyWithImpl<$Res,
        $Val extends CustomerInsightGroupState>
    implements $CustomerInsightGroupStateCopyWith<$Res> {
  _$CustomerInsightGroupStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCusInsightGroupSatetImplCopyWith<$Res> {
  factory _$$GetCusInsightGroupSatetImplCopyWith(
          _$GetCusInsightGroupSatetImpl value,
          $Res Function(_$GetCusInsightGroupSatetImpl) then) =
      __$$GetCusInsightGroupSatetImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CustomerInsightGroupModel>? groupData});
}

/// @nodoc
class __$$GetCusInsightGroupSatetImplCopyWithImpl<$Res>
    extends _$CustomerInsightGroupStateCopyWithImpl<$Res,
        _$GetCusInsightGroupSatetImpl>
    implements _$$GetCusInsightGroupSatetImplCopyWith<$Res> {
  __$$GetCusInsightGroupSatetImplCopyWithImpl(
      _$GetCusInsightGroupSatetImpl _value,
      $Res Function(_$GetCusInsightGroupSatetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupData = freezed,
  }) {
    return _then(_$GetCusInsightGroupSatetImpl(
      groupData: freezed == groupData
          ? _value._groupData
          : groupData // ignore: cast_nullable_to_non_nullable
              as List<CustomerInsightGroupModel>?,
    ));
  }
}

/// @nodoc

class _$GetCusInsightGroupSatetImpl implements GetCusInsightGroupSatet {
  const _$GetCusInsightGroupSatetImpl(
      {required final List<CustomerInsightGroupModel>? groupData})
      : _groupData = groupData;

  final List<CustomerInsightGroupModel>? _groupData;
  @override
  List<CustomerInsightGroupModel>? get groupData {
    final value = _groupData;
    if (value == null) return null;
    if (_groupData is EqualUnmodifiableListView) return _groupData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CustomerInsightGroupState.getCusInsightGroupSatet(groupData: $groupData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCusInsightGroupSatetImpl &&
            const DeepCollectionEquality()
                .equals(other._groupData, _groupData));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_groupData));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCusInsightGroupSatetImplCopyWith<_$GetCusInsightGroupSatetImpl>
      get copyWith => __$$GetCusInsightGroupSatetImplCopyWithImpl<
          _$GetCusInsightGroupSatetImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CustomerInsightGroupModel>? groupData)
        getCusInsightGroupSatet,
    required TResult Function() customerInsightGroupFailedState,
  }) {
    return getCusInsightGroupSatet(groupData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CustomerInsightGroupModel>? groupData)?
        getCusInsightGroupSatet,
    TResult? Function()? customerInsightGroupFailedState,
  }) {
    return getCusInsightGroupSatet?.call(groupData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CustomerInsightGroupModel>? groupData)?
        getCusInsightGroupSatet,
    TResult Function()? customerInsightGroupFailedState,
    required TResult orElse(),
  }) {
    if (getCusInsightGroupSatet != null) {
      return getCusInsightGroupSatet(groupData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusInsightGroupSatet value)
        getCusInsightGroupSatet,
    required TResult Function(CustomerInsightGroupFailedState value)
        customerInsightGroupFailedState,
  }) {
    return getCusInsightGroupSatet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusInsightGroupSatet value)? getCusInsightGroupSatet,
    TResult? Function(CustomerInsightGroupFailedState value)?
        customerInsightGroupFailedState,
  }) {
    return getCusInsightGroupSatet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusInsightGroupSatet value)? getCusInsightGroupSatet,
    TResult Function(CustomerInsightGroupFailedState value)?
        customerInsightGroupFailedState,
    required TResult orElse(),
  }) {
    if (getCusInsightGroupSatet != null) {
      return getCusInsightGroupSatet(this);
    }
    return orElse();
  }
}

abstract class GetCusInsightGroupSatet implements CustomerInsightGroupState {
  const factory GetCusInsightGroupSatet(
          {required final List<CustomerInsightGroupModel>? groupData}) =
      _$GetCusInsightGroupSatetImpl;

  List<CustomerInsightGroupModel>? get groupData;
  @JsonKey(ignore: true)
  _$$GetCusInsightGroupSatetImplCopyWith<_$GetCusInsightGroupSatetImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CustomerInsightGroupFailedStateImplCopyWith<$Res> {
  factory _$$CustomerInsightGroupFailedStateImplCopyWith(
          _$CustomerInsightGroupFailedStateImpl value,
          $Res Function(_$CustomerInsightGroupFailedStateImpl) then) =
      __$$CustomerInsightGroupFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CustomerInsightGroupFailedStateImplCopyWithImpl<$Res>
    extends _$CustomerInsightGroupStateCopyWithImpl<$Res,
        _$CustomerInsightGroupFailedStateImpl>
    implements _$$CustomerInsightGroupFailedStateImplCopyWith<$Res> {
  __$$CustomerInsightGroupFailedStateImplCopyWithImpl(
      _$CustomerInsightGroupFailedStateImpl _value,
      $Res Function(_$CustomerInsightGroupFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CustomerInsightGroupFailedStateImpl
    implements CustomerInsightGroupFailedState {
  const _$CustomerInsightGroupFailedStateImpl();

  @override
  String toString() {
    return 'CustomerInsightGroupState.customerInsightGroupFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerInsightGroupFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CustomerInsightGroupModel>? groupData)
        getCusInsightGroupSatet,
    required TResult Function() customerInsightGroupFailedState,
  }) {
    return customerInsightGroupFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CustomerInsightGroupModel>? groupData)?
        getCusInsightGroupSatet,
    TResult? Function()? customerInsightGroupFailedState,
  }) {
    return customerInsightGroupFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CustomerInsightGroupModel>? groupData)?
        getCusInsightGroupSatet,
    TResult Function()? customerInsightGroupFailedState,
    required TResult orElse(),
  }) {
    if (customerInsightGroupFailedState != null) {
      return customerInsightGroupFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusInsightGroupSatet value)
        getCusInsightGroupSatet,
    required TResult Function(CustomerInsightGroupFailedState value)
        customerInsightGroupFailedState,
  }) {
    return customerInsightGroupFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusInsightGroupSatet value)? getCusInsightGroupSatet,
    TResult? Function(CustomerInsightGroupFailedState value)?
        customerInsightGroupFailedState,
  }) {
    return customerInsightGroupFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusInsightGroupSatet value)? getCusInsightGroupSatet,
    TResult Function(CustomerInsightGroupFailedState value)?
        customerInsightGroupFailedState,
    required TResult orElse(),
  }) {
    if (customerInsightGroupFailedState != null) {
      return customerInsightGroupFailedState(this);
    }
    return orElse();
  }
}

abstract class CustomerInsightGroupFailedState
    implements CustomerInsightGroupState {
  const factory CustomerInsightGroupFailedState() =
      _$CustomerInsightGroupFailedStateImpl;
}
