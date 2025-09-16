// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'merchandising_survey_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MerchandisingSurveyEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String fromDate, String toDate, String status, String searchQuery)
        getMerchandisingSurveyEvent,
    required TResult Function() clearMerchandisingSurveyList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String fromDate, String toDate, String status, String searchQuery)?
        getMerchandisingSurveyEvent,
    TResult? Function()? clearMerchandisingSurveyList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String fromDate, String toDate, String status, String searchQuery)?
        getMerchandisingSurveyEvent,
    TResult Function()? clearMerchandisingSurveyList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMerchandisingSurveyEvent value)
        getMerchandisingSurveyEvent,
    required TResult Function(ClearMerchandisingSurveyList value)
        clearMerchandisingSurveyList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMerchandisingSurveyEvent value)?
        getMerchandisingSurveyEvent,
    TResult? Function(ClearMerchandisingSurveyList value)?
        clearMerchandisingSurveyList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMerchandisingSurveyEvent value)?
        getMerchandisingSurveyEvent,
    TResult Function(ClearMerchandisingSurveyList value)?
        clearMerchandisingSurveyList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerchandisingSurveyEventCopyWith<$Res> {
  factory $MerchandisingSurveyEventCopyWith(MerchandisingSurveyEvent value,
          $Res Function(MerchandisingSurveyEvent) then) =
      _$MerchandisingSurveyEventCopyWithImpl<$Res, MerchandisingSurveyEvent>;
}

/// @nodoc
class _$MerchandisingSurveyEventCopyWithImpl<$Res,
        $Val extends MerchandisingSurveyEvent>
    implements $MerchandisingSurveyEventCopyWith<$Res> {
  _$MerchandisingSurveyEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MerchandisingSurveyEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetMerchandisingSurveyEventImplCopyWith<$Res> {
  factory _$$GetMerchandisingSurveyEventImplCopyWith(
          _$GetMerchandisingSurveyEventImpl value,
          $Res Function(_$GetMerchandisingSurveyEventImpl) then) =
      __$$GetMerchandisingSurveyEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String fromDate, String toDate, String status, String searchQuery});
}

/// @nodoc
class __$$GetMerchandisingSurveyEventImplCopyWithImpl<$Res>
    extends _$MerchandisingSurveyEventCopyWithImpl<$Res,
        _$GetMerchandisingSurveyEventImpl>
    implements _$$GetMerchandisingSurveyEventImplCopyWith<$Res> {
  __$$GetMerchandisingSurveyEventImplCopyWithImpl(
      _$GetMerchandisingSurveyEventImpl _value,
      $Res Function(_$GetMerchandisingSurveyEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of MerchandisingSurveyEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromDate = null,
    Object? toDate = null,
    Object? status = null,
    Object? searchQuery = null,
  }) {
    return _then(_$GetMerchandisingSurveyEventImpl(
      fromDate: null == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as String,
      toDate: null == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetMerchandisingSurveyEventImpl implements GetMerchandisingSurveyEvent {
  const _$GetMerchandisingSurveyEventImpl(
      {required this.fromDate,
      required this.toDate,
      required this.status,
      required this.searchQuery});

  @override
  final String fromDate;
  @override
  final String toDate;
  @override
  final String status;
  @override
  final String searchQuery;

  @override
  String toString() {
    return 'MerchandisingSurveyEvent.getMerchandisingSurveyEvent(fromDate: $fromDate, toDate: $toDate, status: $status, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMerchandisingSurveyEventImpl &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, fromDate, toDate, status, searchQuery);

  /// Create a copy of MerchandisingSurveyEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMerchandisingSurveyEventImplCopyWith<_$GetMerchandisingSurveyEventImpl>
      get copyWith => __$$GetMerchandisingSurveyEventImplCopyWithImpl<
          _$GetMerchandisingSurveyEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String fromDate, String toDate, String status, String searchQuery)
        getMerchandisingSurveyEvent,
    required TResult Function() clearMerchandisingSurveyList,
  }) {
    return getMerchandisingSurveyEvent(fromDate, toDate, status, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String fromDate, String toDate, String status, String searchQuery)?
        getMerchandisingSurveyEvent,
    TResult? Function()? clearMerchandisingSurveyList,
  }) {
    return getMerchandisingSurveyEvent?.call(
        fromDate, toDate, status, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String fromDate, String toDate, String status, String searchQuery)?
        getMerchandisingSurveyEvent,
    TResult Function()? clearMerchandisingSurveyList,
    required TResult orElse(),
  }) {
    if (getMerchandisingSurveyEvent != null) {
      return getMerchandisingSurveyEvent(fromDate, toDate, status, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMerchandisingSurveyEvent value)
        getMerchandisingSurveyEvent,
    required TResult Function(ClearMerchandisingSurveyList value)
        clearMerchandisingSurveyList,
  }) {
    return getMerchandisingSurveyEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMerchandisingSurveyEvent value)?
        getMerchandisingSurveyEvent,
    TResult? Function(ClearMerchandisingSurveyList value)?
        clearMerchandisingSurveyList,
  }) {
    return getMerchandisingSurveyEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMerchandisingSurveyEvent value)?
        getMerchandisingSurveyEvent,
    TResult Function(ClearMerchandisingSurveyList value)?
        clearMerchandisingSurveyList,
    required TResult orElse(),
  }) {
    if (getMerchandisingSurveyEvent != null) {
      return getMerchandisingSurveyEvent(this);
    }
    return orElse();
  }
}

abstract class GetMerchandisingSurveyEvent implements MerchandisingSurveyEvent {
  const factory GetMerchandisingSurveyEvent(
      {required final String fromDate,
      required final String toDate,
      required final String status,
      required final String searchQuery}) = _$GetMerchandisingSurveyEventImpl;

  String get fromDate;
  String get toDate;
  String get status;
  String get searchQuery;

  /// Create a copy of MerchandisingSurveyEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetMerchandisingSurveyEventImplCopyWith<_$GetMerchandisingSurveyEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearMerchandisingSurveyListImplCopyWith<$Res> {
  factory _$$ClearMerchandisingSurveyListImplCopyWith(
          _$ClearMerchandisingSurveyListImpl value,
          $Res Function(_$ClearMerchandisingSurveyListImpl) then) =
      __$$ClearMerchandisingSurveyListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearMerchandisingSurveyListImplCopyWithImpl<$Res>
    extends _$MerchandisingSurveyEventCopyWithImpl<$Res,
        _$ClearMerchandisingSurveyListImpl>
    implements _$$ClearMerchandisingSurveyListImplCopyWith<$Res> {
  __$$ClearMerchandisingSurveyListImplCopyWithImpl(
      _$ClearMerchandisingSurveyListImpl _value,
      $Res Function(_$ClearMerchandisingSurveyListImpl) _then)
      : super(_value, _then);

  /// Create a copy of MerchandisingSurveyEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearMerchandisingSurveyListImpl
    implements ClearMerchandisingSurveyList {
  const _$ClearMerchandisingSurveyListImpl();

  @override
  String toString() {
    return 'MerchandisingSurveyEvent.clearMerchandisingSurveyList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearMerchandisingSurveyListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String fromDate, String toDate, String status, String searchQuery)
        getMerchandisingSurveyEvent,
    required TResult Function() clearMerchandisingSurveyList,
  }) {
    return clearMerchandisingSurveyList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String fromDate, String toDate, String status, String searchQuery)?
        getMerchandisingSurveyEvent,
    TResult? Function()? clearMerchandisingSurveyList,
  }) {
    return clearMerchandisingSurveyList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String fromDate, String toDate, String status, String searchQuery)?
        getMerchandisingSurveyEvent,
    TResult Function()? clearMerchandisingSurveyList,
    required TResult orElse(),
  }) {
    if (clearMerchandisingSurveyList != null) {
      return clearMerchandisingSurveyList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMerchandisingSurveyEvent value)
        getMerchandisingSurveyEvent,
    required TResult Function(ClearMerchandisingSurveyList value)
        clearMerchandisingSurveyList,
  }) {
    return clearMerchandisingSurveyList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMerchandisingSurveyEvent value)?
        getMerchandisingSurveyEvent,
    TResult? Function(ClearMerchandisingSurveyList value)?
        clearMerchandisingSurveyList,
  }) {
    return clearMerchandisingSurveyList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMerchandisingSurveyEvent value)?
        getMerchandisingSurveyEvent,
    TResult Function(ClearMerchandisingSurveyList value)?
        clearMerchandisingSurveyList,
    required TResult orElse(),
  }) {
    if (clearMerchandisingSurveyList != null) {
      return clearMerchandisingSurveyList(this);
    }
    return orElse();
  }
}

abstract class ClearMerchandisingSurveyList
    implements MerchandisingSurveyEvent {
  const factory ClearMerchandisingSurveyList() =
      _$ClearMerchandisingSurveyListImpl;
}

/// @nodoc
mixin _$MerchandisingSurveyState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MerchandingSurveyModel>? data)
        getMerchandisingSurveyState,
    required TResult Function() getMerchandisingSurveyFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MerchandingSurveyModel>? data)?
        getMerchandisingSurveyState,
    TResult? Function()? getMerchandisingSurveyFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MerchandingSurveyModel>? data)?
        getMerchandisingSurveyState,
    TResult Function()? getMerchandisingSurveyFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMerchandisingSurveyState value)
        getMerchandisingSurveyState,
    required TResult Function(GetMerchandisingSurveyFailedState value)
        getMerchandisingSurveyFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMerchandisingSurveyState value)?
        getMerchandisingSurveyState,
    TResult? Function(GetMerchandisingSurveyFailedState value)?
        getMerchandisingSurveyFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMerchandisingSurveyState value)?
        getMerchandisingSurveyState,
    TResult Function(GetMerchandisingSurveyFailedState value)?
        getMerchandisingSurveyFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerchandisingSurveyStateCopyWith<$Res> {
  factory $MerchandisingSurveyStateCopyWith(MerchandisingSurveyState value,
          $Res Function(MerchandisingSurveyState) then) =
      _$MerchandisingSurveyStateCopyWithImpl<$Res, MerchandisingSurveyState>;
}

/// @nodoc
class _$MerchandisingSurveyStateCopyWithImpl<$Res,
        $Val extends MerchandisingSurveyState>
    implements $MerchandisingSurveyStateCopyWith<$Res> {
  _$MerchandisingSurveyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MerchandisingSurveyState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetMerchandisingSurveyStateImplCopyWith<$Res> {
  factory _$$GetMerchandisingSurveyStateImplCopyWith(
          _$GetMerchandisingSurveyStateImpl value,
          $Res Function(_$GetMerchandisingSurveyStateImpl) then) =
      __$$GetMerchandisingSurveyStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MerchandingSurveyModel>? data});
}

/// @nodoc
class __$$GetMerchandisingSurveyStateImplCopyWithImpl<$Res>
    extends _$MerchandisingSurveyStateCopyWithImpl<$Res,
        _$GetMerchandisingSurveyStateImpl>
    implements _$$GetMerchandisingSurveyStateImplCopyWith<$Res> {
  __$$GetMerchandisingSurveyStateImplCopyWithImpl(
      _$GetMerchandisingSurveyStateImpl _value,
      $Res Function(_$GetMerchandisingSurveyStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MerchandisingSurveyState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$GetMerchandisingSurveyStateImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<MerchandingSurveyModel>?,
    ));
  }
}

/// @nodoc

class _$GetMerchandisingSurveyStateImpl implements GetMerchandisingSurveyState {
  const _$GetMerchandisingSurveyStateImpl(
      {required final List<MerchandingSurveyModel>? data})
      : _data = data;

  final List<MerchandingSurveyModel>? _data;
  @override
  List<MerchandingSurveyModel>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MerchandisingSurveyState.getMerchandisingSurveyState(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMerchandisingSurveyStateImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of MerchandisingSurveyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMerchandisingSurveyStateImplCopyWith<_$GetMerchandisingSurveyStateImpl>
      get copyWith => __$$GetMerchandisingSurveyStateImplCopyWithImpl<
          _$GetMerchandisingSurveyStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MerchandingSurveyModel>? data)
        getMerchandisingSurveyState,
    required TResult Function() getMerchandisingSurveyFailedState,
  }) {
    return getMerchandisingSurveyState(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MerchandingSurveyModel>? data)?
        getMerchandisingSurveyState,
    TResult? Function()? getMerchandisingSurveyFailedState,
  }) {
    return getMerchandisingSurveyState?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MerchandingSurveyModel>? data)?
        getMerchandisingSurveyState,
    TResult Function()? getMerchandisingSurveyFailedState,
    required TResult orElse(),
  }) {
    if (getMerchandisingSurveyState != null) {
      return getMerchandisingSurveyState(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMerchandisingSurveyState value)
        getMerchandisingSurveyState,
    required TResult Function(GetMerchandisingSurveyFailedState value)
        getMerchandisingSurveyFailedState,
  }) {
    return getMerchandisingSurveyState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMerchandisingSurveyState value)?
        getMerchandisingSurveyState,
    TResult? Function(GetMerchandisingSurveyFailedState value)?
        getMerchandisingSurveyFailedState,
  }) {
    return getMerchandisingSurveyState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMerchandisingSurveyState value)?
        getMerchandisingSurveyState,
    TResult Function(GetMerchandisingSurveyFailedState value)?
        getMerchandisingSurveyFailedState,
    required TResult orElse(),
  }) {
    if (getMerchandisingSurveyState != null) {
      return getMerchandisingSurveyState(this);
    }
    return orElse();
  }
}

abstract class GetMerchandisingSurveyState implements MerchandisingSurveyState {
  const factory GetMerchandisingSurveyState(
          {required final List<MerchandingSurveyModel>? data}) =
      _$GetMerchandisingSurveyStateImpl;

  List<MerchandingSurveyModel>? get data;

  /// Create a copy of MerchandisingSurveyState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetMerchandisingSurveyStateImplCopyWith<_$GetMerchandisingSurveyStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetMerchandisingSurveyFailedStateImplCopyWith<$Res> {
  factory _$$GetMerchandisingSurveyFailedStateImplCopyWith(
          _$GetMerchandisingSurveyFailedStateImpl value,
          $Res Function(_$GetMerchandisingSurveyFailedStateImpl) then) =
      __$$GetMerchandisingSurveyFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetMerchandisingSurveyFailedStateImplCopyWithImpl<$Res>
    extends _$MerchandisingSurveyStateCopyWithImpl<$Res,
        _$GetMerchandisingSurveyFailedStateImpl>
    implements _$$GetMerchandisingSurveyFailedStateImplCopyWith<$Res> {
  __$$GetMerchandisingSurveyFailedStateImplCopyWithImpl(
      _$GetMerchandisingSurveyFailedStateImpl _value,
      $Res Function(_$GetMerchandisingSurveyFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MerchandisingSurveyState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetMerchandisingSurveyFailedStateImpl
    implements GetMerchandisingSurveyFailedState {
  const _$GetMerchandisingSurveyFailedStateImpl();

  @override
  String toString() {
    return 'MerchandisingSurveyState.getMerchandisingSurveyFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMerchandisingSurveyFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MerchandingSurveyModel>? data)
        getMerchandisingSurveyState,
    required TResult Function() getMerchandisingSurveyFailedState,
  }) {
    return getMerchandisingSurveyFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MerchandingSurveyModel>? data)?
        getMerchandisingSurveyState,
    TResult? Function()? getMerchandisingSurveyFailedState,
  }) {
    return getMerchandisingSurveyFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MerchandingSurveyModel>? data)?
        getMerchandisingSurveyState,
    TResult Function()? getMerchandisingSurveyFailedState,
    required TResult orElse(),
  }) {
    if (getMerchandisingSurveyFailedState != null) {
      return getMerchandisingSurveyFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMerchandisingSurveyState value)
        getMerchandisingSurveyState,
    required TResult Function(GetMerchandisingSurveyFailedState value)
        getMerchandisingSurveyFailedState,
  }) {
    return getMerchandisingSurveyFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMerchandisingSurveyState value)?
        getMerchandisingSurveyState,
    TResult? Function(GetMerchandisingSurveyFailedState value)?
        getMerchandisingSurveyFailedState,
  }) {
    return getMerchandisingSurveyFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMerchandisingSurveyState value)?
        getMerchandisingSurveyState,
    TResult Function(GetMerchandisingSurveyFailedState value)?
        getMerchandisingSurveyFailedState,
    required TResult orElse(),
  }) {
    if (getMerchandisingSurveyFailedState != null) {
      return getMerchandisingSurveyFailedState(this);
    }
    return orElse();
  }
}

abstract class GetMerchandisingSurveyFailedState
    implements MerchandisingSurveyState {
  const factory GetMerchandisingSurveyFailedState() =
      _$GetMerchandisingSurveyFailedStateImpl;
}
