// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'f_ield_service_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FIeldServiceDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String reqId) getAllFieldServiceDetailEvent,
    required TResult Function() clearFieldServiceDetailEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String reqId)? getAllFieldServiceDetailEvent,
    TResult? Function()? clearFieldServiceDetailEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String reqId)? getAllFieldServiceDetailEvent,
    TResult Function()? clearFieldServiceDetailEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllFieldServiceDetailEvent value)
        getAllFieldServiceDetailEvent,
    required TResult Function(ClearFieldServiceDetailEvent value)
        clearFieldServiceDetailEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllFieldServiceDetailEvent value)?
        getAllFieldServiceDetailEvent,
    TResult? Function(ClearFieldServiceDetailEvent value)?
        clearFieldServiceDetailEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllFieldServiceDetailEvent value)?
        getAllFieldServiceDetailEvent,
    TResult Function(ClearFieldServiceDetailEvent value)?
        clearFieldServiceDetailEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FIeldServiceDetailEventCopyWith<$Res> {
  factory $FIeldServiceDetailEventCopyWith(FIeldServiceDetailEvent value,
          $Res Function(FIeldServiceDetailEvent) then) =
      _$FIeldServiceDetailEventCopyWithImpl<$Res, FIeldServiceDetailEvent>;
}

/// @nodoc
class _$FIeldServiceDetailEventCopyWithImpl<$Res,
        $Val extends FIeldServiceDetailEvent>
    implements $FIeldServiceDetailEventCopyWith<$Res> {
  _$FIeldServiceDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FIeldServiceDetailEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetAllFieldServiceDetailEventImplCopyWith<$Res> {
  factory _$$GetAllFieldServiceDetailEventImplCopyWith(
          _$GetAllFieldServiceDetailEventImpl value,
          $Res Function(_$GetAllFieldServiceDetailEventImpl) then) =
      __$$GetAllFieldServiceDetailEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String reqId});
}

/// @nodoc
class __$$GetAllFieldServiceDetailEventImplCopyWithImpl<$Res>
    extends _$FIeldServiceDetailEventCopyWithImpl<$Res,
        _$GetAllFieldServiceDetailEventImpl>
    implements _$$GetAllFieldServiceDetailEventImplCopyWith<$Res> {
  __$$GetAllFieldServiceDetailEventImplCopyWithImpl(
      _$GetAllFieldServiceDetailEventImpl _value,
      $Res Function(_$GetAllFieldServiceDetailEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of FIeldServiceDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reqId = null,
  }) {
    return _then(_$GetAllFieldServiceDetailEventImpl(
      reqId: null == reqId
          ? _value.reqId
          : reqId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetAllFieldServiceDetailEventImpl
    implements GetAllFieldServiceDetailEvent {
  const _$GetAllFieldServiceDetailEventImpl({required this.reqId});

  @override
  final String reqId;

  @override
  String toString() {
    return 'FIeldServiceDetailEvent.getAllFieldServiceDetailEvent(reqId: $reqId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllFieldServiceDetailEventImpl &&
            (identical(other.reqId, reqId) || other.reqId == reqId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reqId);

  /// Create a copy of FIeldServiceDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllFieldServiceDetailEventImplCopyWith<
          _$GetAllFieldServiceDetailEventImpl>
      get copyWith => __$$GetAllFieldServiceDetailEventImplCopyWithImpl<
          _$GetAllFieldServiceDetailEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String reqId) getAllFieldServiceDetailEvent,
    required TResult Function() clearFieldServiceDetailEvent,
  }) {
    return getAllFieldServiceDetailEvent(reqId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String reqId)? getAllFieldServiceDetailEvent,
    TResult? Function()? clearFieldServiceDetailEvent,
  }) {
    return getAllFieldServiceDetailEvent?.call(reqId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String reqId)? getAllFieldServiceDetailEvent,
    TResult Function()? clearFieldServiceDetailEvent,
    required TResult orElse(),
  }) {
    if (getAllFieldServiceDetailEvent != null) {
      return getAllFieldServiceDetailEvent(reqId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllFieldServiceDetailEvent value)
        getAllFieldServiceDetailEvent,
    required TResult Function(ClearFieldServiceDetailEvent value)
        clearFieldServiceDetailEvent,
  }) {
    return getAllFieldServiceDetailEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllFieldServiceDetailEvent value)?
        getAllFieldServiceDetailEvent,
    TResult? Function(ClearFieldServiceDetailEvent value)?
        clearFieldServiceDetailEvent,
  }) {
    return getAllFieldServiceDetailEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllFieldServiceDetailEvent value)?
        getAllFieldServiceDetailEvent,
    TResult Function(ClearFieldServiceDetailEvent value)?
        clearFieldServiceDetailEvent,
    required TResult orElse(),
  }) {
    if (getAllFieldServiceDetailEvent != null) {
      return getAllFieldServiceDetailEvent(this);
    }
    return orElse();
  }
}

abstract class GetAllFieldServiceDetailEvent
    implements FIeldServiceDetailEvent {
  const factory GetAllFieldServiceDetailEvent({required final String reqId}) =
      _$GetAllFieldServiceDetailEventImpl;

  String get reqId;

  /// Create a copy of FIeldServiceDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAllFieldServiceDetailEventImplCopyWith<
          _$GetAllFieldServiceDetailEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearFieldServiceDetailEventImplCopyWith<$Res> {
  factory _$$ClearFieldServiceDetailEventImplCopyWith(
          _$ClearFieldServiceDetailEventImpl value,
          $Res Function(_$ClearFieldServiceDetailEventImpl) then) =
      __$$ClearFieldServiceDetailEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearFieldServiceDetailEventImplCopyWithImpl<$Res>
    extends _$FIeldServiceDetailEventCopyWithImpl<$Res,
        _$ClearFieldServiceDetailEventImpl>
    implements _$$ClearFieldServiceDetailEventImplCopyWith<$Res> {
  __$$ClearFieldServiceDetailEventImplCopyWithImpl(
      _$ClearFieldServiceDetailEventImpl _value,
      $Res Function(_$ClearFieldServiceDetailEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of FIeldServiceDetailEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearFieldServiceDetailEventImpl
    implements ClearFieldServiceDetailEvent {
  const _$ClearFieldServiceDetailEventImpl();

  @override
  String toString() {
    return 'FIeldServiceDetailEvent.clearFieldServiceDetailEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearFieldServiceDetailEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String reqId) getAllFieldServiceDetailEvent,
    required TResult Function() clearFieldServiceDetailEvent,
  }) {
    return clearFieldServiceDetailEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String reqId)? getAllFieldServiceDetailEvent,
    TResult? Function()? clearFieldServiceDetailEvent,
  }) {
    return clearFieldServiceDetailEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String reqId)? getAllFieldServiceDetailEvent,
    TResult Function()? clearFieldServiceDetailEvent,
    required TResult orElse(),
  }) {
    if (clearFieldServiceDetailEvent != null) {
      return clearFieldServiceDetailEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllFieldServiceDetailEvent value)
        getAllFieldServiceDetailEvent,
    required TResult Function(ClearFieldServiceDetailEvent value)
        clearFieldServiceDetailEvent,
  }) {
    return clearFieldServiceDetailEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllFieldServiceDetailEvent value)?
        getAllFieldServiceDetailEvent,
    TResult? Function(ClearFieldServiceDetailEvent value)?
        clearFieldServiceDetailEvent,
  }) {
    return clearFieldServiceDetailEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllFieldServiceDetailEvent value)?
        getAllFieldServiceDetailEvent,
    TResult Function(ClearFieldServiceDetailEvent value)?
        clearFieldServiceDetailEvent,
    required TResult orElse(),
  }) {
    if (clearFieldServiceDetailEvent != null) {
      return clearFieldServiceDetailEvent(this);
    }
    return orElse();
  }
}

abstract class ClearFieldServiceDetailEvent implements FIeldServiceDetailEvent {
  const factory ClearFieldServiceDetailEvent() =
      _$ClearFieldServiceDetailEventImpl;
}

/// @nodoc
mixin _$FIeldServiceDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<FieldServiceDetailModel>? details)
        getFieldServiceDetailState,
    required TResult Function() fieldServiceDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<FieldServiceDetailModel>? details)?
        getFieldServiceDetailState,
    TResult? Function()? fieldServiceDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<FieldServiceDetailModel>? details)?
        getFieldServiceDetailState,
    TResult Function()? fieldServiceDetailFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFieldServiceDetailState value)
        getFieldServiceDetailState,
    required TResult Function(FieldServiceDetailFailedState value)
        fieldServiceDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFieldServiceDetailState value)?
        getFieldServiceDetailState,
    TResult? Function(FieldServiceDetailFailedState value)?
        fieldServiceDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFieldServiceDetailState value)?
        getFieldServiceDetailState,
    TResult Function(FieldServiceDetailFailedState value)?
        fieldServiceDetailFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FIeldServiceDetailStateCopyWith<$Res> {
  factory $FIeldServiceDetailStateCopyWith(FIeldServiceDetailState value,
          $Res Function(FIeldServiceDetailState) then) =
      _$FIeldServiceDetailStateCopyWithImpl<$Res, FIeldServiceDetailState>;
}

/// @nodoc
class _$FIeldServiceDetailStateCopyWithImpl<$Res,
        $Val extends FIeldServiceDetailState>
    implements $FIeldServiceDetailStateCopyWith<$Res> {
  _$FIeldServiceDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FIeldServiceDetailState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetFieldServiceDetailStateImplCopyWith<$Res> {
  factory _$$GetFieldServiceDetailStateImplCopyWith(
          _$GetFieldServiceDetailStateImpl value,
          $Res Function(_$GetFieldServiceDetailStateImpl) then) =
      __$$GetFieldServiceDetailStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<FieldServiceDetailModel>? details});
}

/// @nodoc
class __$$GetFieldServiceDetailStateImplCopyWithImpl<$Res>
    extends _$FIeldServiceDetailStateCopyWithImpl<$Res,
        _$GetFieldServiceDetailStateImpl>
    implements _$$GetFieldServiceDetailStateImplCopyWith<$Res> {
  __$$GetFieldServiceDetailStateImplCopyWithImpl(
      _$GetFieldServiceDetailStateImpl _value,
      $Res Function(_$GetFieldServiceDetailStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FIeldServiceDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? details = freezed,
  }) {
    return _then(_$GetFieldServiceDetailStateImpl(
      details: freezed == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<FieldServiceDetailModel>?,
    ));
  }
}

/// @nodoc

class _$GetFieldServiceDetailStateImpl implements GetFieldServiceDetailState {
  const _$GetFieldServiceDetailStateImpl(
      {required final List<FieldServiceDetailModel>? details})
      : _details = details;

  final List<FieldServiceDetailModel>? _details;
  @override
  List<FieldServiceDetailModel>? get details {
    final value = _details;
    if (value == null) return null;
    if (_details is EqualUnmodifiableListView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FIeldServiceDetailState.getFieldServiceDetailState(details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFieldServiceDetailStateImpl &&
            const DeepCollectionEquality().equals(other._details, _details));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_details));

  /// Create a copy of FIeldServiceDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFieldServiceDetailStateImplCopyWith<_$GetFieldServiceDetailStateImpl>
      get copyWith => __$$GetFieldServiceDetailStateImplCopyWithImpl<
          _$GetFieldServiceDetailStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<FieldServiceDetailModel>? details)
        getFieldServiceDetailState,
    required TResult Function() fieldServiceDetailFailedState,
  }) {
    return getFieldServiceDetailState(details);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<FieldServiceDetailModel>? details)?
        getFieldServiceDetailState,
    TResult? Function()? fieldServiceDetailFailedState,
  }) {
    return getFieldServiceDetailState?.call(details);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<FieldServiceDetailModel>? details)?
        getFieldServiceDetailState,
    TResult Function()? fieldServiceDetailFailedState,
    required TResult orElse(),
  }) {
    if (getFieldServiceDetailState != null) {
      return getFieldServiceDetailState(details);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFieldServiceDetailState value)
        getFieldServiceDetailState,
    required TResult Function(FieldServiceDetailFailedState value)
        fieldServiceDetailFailedState,
  }) {
    return getFieldServiceDetailState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFieldServiceDetailState value)?
        getFieldServiceDetailState,
    TResult? Function(FieldServiceDetailFailedState value)?
        fieldServiceDetailFailedState,
  }) {
    return getFieldServiceDetailState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFieldServiceDetailState value)?
        getFieldServiceDetailState,
    TResult Function(FieldServiceDetailFailedState value)?
        fieldServiceDetailFailedState,
    required TResult orElse(),
  }) {
    if (getFieldServiceDetailState != null) {
      return getFieldServiceDetailState(this);
    }
    return orElse();
  }
}

abstract class GetFieldServiceDetailState implements FIeldServiceDetailState {
  const factory GetFieldServiceDetailState(
          {required final List<FieldServiceDetailModel>? details}) =
      _$GetFieldServiceDetailStateImpl;

  List<FieldServiceDetailModel>? get details;

  /// Create a copy of FIeldServiceDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetFieldServiceDetailStateImplCopyWith<_$GetFieldServiceDetailStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FieldServiceDetailFailedStateImplCopyWith<$Res> {
  factory _$$FieldServiceDetailFailedStateImplCopyWith(
          _$FieldServiceDetailFailedStateImpl value,
          $Res Function(_$FieldServiceDetailFailedStateImpl) then) =
      __$$FieldServiceDetailFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FieldServiceDetailFailedStateImplCopyWithImpl<$Res>
    extends _$FIeldServiceDetailStateCopyWithImpl<$Res,
        _$FieldServiceDetailFailedStateImpl>
    implements _$$FieldServiceDetailFailedStateImplCopyWith<$Res> {
  __$$FieldServiceDetailFailedStateImplCopyWithImpl(
      _$FieldServiceDetailFailedStateImpl _value,
      $Res Function(_$FieldServiceDetailFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FIeldServiceDetailState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FieldServiceDetailFailedStateImpl
    implements FieldServiceDetailFailedState {
  const _$FieldServiceDetailFailedStateImpl();

  @override
  String toString() {
    return 'FIeldServiceDetailState.fieldServiceDetailFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FieldServiceDetailFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<FieldServiceDetailModel>? details)
        getFieldServiceDetailState,
    required TResult Function() fieldServiceDetailFailedState,
  }) {
    return fieldServiceDetailFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<FieldServiceDetailModel>? details)?
        getFieldServiceDetailState,
    TResult? Function()? fieldServiceDetailFailedState,
  }) {
    return fieldServiceDetailFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<FieldServiceDetailModel>? details)?
        getFieldServiceDetailState,
    TResult Function()? fieldServiceDetailFailedState,
    required TResult orElse(),
  }) {
    if (fieldServiceDetailFailedState != null) {
      return fieldServiceDetailFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFieldServiceDetailState value)
        getFieldServiceDetailState,
    required TResult Function(FieldServiceDetailFailedState value)
        fieldServiceDetailFailedState,
  }) {
    return fieldServiceDetailFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFieldServiceDetailState value)?
        getFieldServiceDetailState,
    TResult? Function(FieldServiceDetailFailedState value)?
        fieldServiceDetailFailedState,
  }) {
    return fieldServiceDetailFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFieldServiceDetailState value)?
        getFieldServiceDetailState,
    TResult Function(FieldServiceDetailFailedState value)?
        fieldServiceDetailFailedState,
    required TResult orElse(),
  }) {
    if (fieldServiceDetailFailedState != null) {
      return fieldServiceDetailFailedState(this);
    }
    return orElse();
  }
}

abstract class FieldServiceDetailFailedState
    implements FIeldServiceDetailState {
  const factory FieldServiceDetailFailedState() =
      _$FieldServiceDetailFailedStateImpl;
}
