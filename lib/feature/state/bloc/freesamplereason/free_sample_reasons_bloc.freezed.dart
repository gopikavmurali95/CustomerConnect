// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'free_sample_reasons_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FreeSampleReasonsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String rsntype, String userID)
        getFreeSampleReasonsEvent,
    required TResult Function() clearFreeSampleReasonsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String rsntype, String userID)? getFreeSampleReasonsEvent,
    TResult? Function()? clearFreeSampleReasonsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String rsntype, String userID)? getFreeSampleReasonsEvent,
    TResult Function()? clearFreeSampleReasonsEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFreeSampleReasonsEvent value)
        getFreeSampleReasonsEvent,
    required TResult Function(ClearFreeSampleReasonsEvent value)
        clearFreeSampleReasonsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFreeSampleReasonsEvent value)?
        getFreeSampleReasonsEvent,
    TResult? Function(ClearFreeSampleReasonsEvent value)?
        clearFreeSampleReasonsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFreeSampleReasonsEvent value)?
        getFreeSampleReasonsEvent,
    TResult Function(ClearFreeSampleReasonsEvent value)?
        clearFreeSampleReasonsEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FreeSampleReasonsEventCopyWith<$Res> {
  factory $FreeSampleReasonsEventCopyWith(FreeSampleReasonsEvent value,
          $Res Function(FreeSampleReasonsEvent) then) =
      _$FreeSampleReasonsEventCopyWithImpl<$Res, FreeSampleReasonsEvent>;
}

/// @nodoc
class _$FreeSampleReasonsEventCopyWithImpl<$Res,
        $Val extends FreeSampleReasonsEvent>
    implements $FreeSampleReasonsEventCopyWith<$Res> {
  _$FreeSampleReasonsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FreeSampleReasonsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetFreeSampleReasonsEventImplCopyWith<$Res> {
  factory _$$GetFreeSampleReasonsEventImplCopyWith(
          _$GetFreeSampleReasonsEventImpl value,
          $Res Function(_$GetFreeSampleReasonsEventImpl) then) =
      __$$GetFreeSampleReasonsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String rsntype, String userID});
}

/// @nodoc
class __$$GetFreeSampleReasonsEventImplCopyWithImpl<$Res>
    extends _$FreeSampleReasonsEventCopyWithImpl<$Res,
        _$GetFreeSampleReasonsEventImpl>
    implements _$$GetFreeSampleReasonsEventImplCopyWith<$Res> {
  __$$GetFreeSampleReasonsEventImplCopyWithImpl(
      _$GetFreeSampleReasonsEventImpl _value,
      $Res Function(_$GetFreeSampleReasonsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of FreeSampleReasonsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rsntype = null,
    Object? userID = null,
  }) {
    return _then(_$GetFreeSampleReasonsEventImpl(
      rsntype: null == rsntype
          ? _value.rsntype
          : rsntype // ignore: cast_nullable_to_non_nullable
              as String,
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetFreeSampleReasonsEventImpl implements GetFreeSampleReasonsEvent {
  const _$GetFreeSampleReasonsEventImpl(
      {required this.rsntype, required this.userID});

  @override
  final String rsntype;
  @override
  final String userID;

  @override
  String toString() {
    return 'FreeSampleReasonsEvent.getFreeSampleReasonsEvent(rsntype: $rsntype, userID: $userID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFreeSampleReasonsEventImpl &&
            (identical(other.rsntype, rsntype) || other.rsntype == rsntype) &&
            (identical(other.userID, userID) || other.userID == userID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rsntype, userID);

  /// Create a copy of FreeSampleReasonsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFreeSampleReasonsEventImplCopyWith<_$GetFreeSampleReasonsEventImpl>
      get copyWith => __$$GetFreeSampleReasonsEventImplCopyWithImpl<
          _$GetFreeSampleReasonsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String rsntype, String userID)
        getFreeSampleReasonsEvent,
    required TResult Function() clearFreeSampleReasonsEvent,
  }) {
    return getFreeSampleReasonsEvent(rsntype, userID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String rsntype, String userID)? getFreeSampleReasonsEvent,
    TResult? Function()? clearFreeSampleReasonsEvent,
  }) {
    return getFreeSampleReasonsEvent?.call(rsntype, userID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String rsntype, String userID)? getFreeSampleReasonsEvent,
    TResult Function()? clearFreeSampleReasonsEvent,
    required TResult orElse(),
  }) {
    if (getFreeSampleReasonsEvent != null) {
      return getFreeSampleReasonsEvent(rsntype, userID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFreeSampleReasonsEvent value)
        getFreeSampleReasonsEvent,
    required TResult Function(ClearFreeSampleReasonsEvent value)
        clearFreeSampleReasonsEvent,
  }) {
    return getFreeSampleReasonsEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFreeSampleReasonsEvent value)?
        getFreeSampleReasonsEvent,
    TResult? Function(ClearFreeSampleReasonsEvent value)?
        clearFreeSampleReasonsEvent,
  }) {
    return getFreeSampleReasonsEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFreeSampleReasonsEvent value)?
        getFreeSampleReasonsEvent,
    TResult Function(ClearFreeSampleReasonsEvent value)?
        clearFreeSampleReasonsEvent,
    required TResult orElse(),
  }) {
    if (getFreeSampleReasonsEvent != null) {
      return getFreeSampleReasonsEvent(this);
    }
    return orElse();
  }
}

abstract class GetFreeSampleReasonsEvent implements FreeSampleReasonsEvent {
  const factory GetFreeSampleReasonsEvent(
      {required final String rsntype,
      required final String userID}) = _$GetFreeSampleReasonsEventImpl;

  String get rsntype;
  String get userID;

  /// Create a copy of FreeSampleReasonsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetFreeSampleReasonsEventImplCopyWith<_$GetFreeSampleReasonsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearFreeSampleReasonsEventImplCopyWith<$Res> {
  factory _$$ClearFreeSampleReasonsEventImplCopyWith(
          _$ClearFreeSampleReasonsEventImpl value,
          $Res Function(_$ClearFreeSampleReasonsEventImpl) then) =
      __$$ClearFreeSampleReasonsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearFreeSampleReasonsEventImplCopyWithImpl<$Res>
    extends _$FreeSampleReasonsEventCopyWithImpl<$Res,
        _$ClearFreeSampleReasonsEventImpl>
    implements _$$ClearFreeSampleReasonsEventImplCopyWith<$Res> {
  __$$ClearFreeSampleReasonsEventImplCopyWithImpl(
      _$ClearFreeSampleReasonsEventImpl _value,
      $Res Function(_$ClearFreeSampleReasonsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of FreeSampleReasonsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearFreeSampleReasonsEventImpl implements ClearFreeSampleReasonsEvent {
  const _$ClearFreeSampleReasonsEventImpl();

  @override
  String toString() {
    return 'FreeSampleReasonsEvent.clearFreeSampleReasonsEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearFreeSampleReasonsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String rsntype, String userID)
        getFreeSampleReasonsEvent,
    required TResult Function() clearFreeSampleReasonsEvent,
  }) {
    return clearFreeSampleReasonsEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String rsntype, String userID)? getFreeSampleReasonsEvent,
    TResult? Function()? clearFreeSampleReasonsEvent,
  }) {
    return clearFreeSampleReasonsEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String rsntype, String userID)? getFreeSampleReasonsEvent,
    TResult Function()? clearFreeSampleReasonsEvent,
    required TResult orElse(),
  }) {
    if (clearFreeSampleReasonsEvent != null) {
      return clearFreeSampleReasonsEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFreeSampleReasonsEvent value)
        getFreeSampleReasonsEvent,
    required TResult Function(ClearFreeSampleReasonsEvent value)
        clearFreeSampleReasonsEvent,
  }) {
    return clearFreeSampleReasonsEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFreeSampleReasonsEvent value)?
        getFreeSampleReasonsEvent,
    TResult? Function(ClearFreeSampleReasonsEvent value)?
        clearFreeSampleReasonsEvent,
  }) {
    return clearFreeSampleReasonsEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFreeSampleReasonsEvent value)?
        getFreeSampleReasonsEvent,
    TResult Function(ClearFreeSampleReasonsEvent value)?
        clearFreeSampleReasonsEvent,
    required TResult orElse(),
  }) {
    if (clearFreeSampleReasonsEvent != null) {
      return clearFreeSampleReasonsEvent(this);
    }
    return orElse();
  }
}

abstract class ClearFreeSampleReasonsEvent implements FreeSampleReasonsEvent {
  const factory ClearFreeSampleReasonsEvent() =
      _$ClearFreeSampleReasonsEventImpl;
}

/// @nodoc
mixin _$FreeSampleReasonsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<FreeSampleResonModel>? reasons)
        getFreesampleReasonsState,
    required TResult Function() freeSampleReasonsFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<FreeSampleResonModel>? reasons)?
        getFreesampleReasonsState,
    TResult? Function()? freeSampleReasonsFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<FreeSampleResonModel>? reasons)?
        getFreesampleReasonsState,
    TResult Function()? freeSampleReasonsFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFreesampleReasonsState value)
        getFreesampleReasonsState,
    required TResult Function(FreeSampleReasonsFailedState value)
        freeSampleReasonsFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFreesampleReasonsState value)?
        getFreesampleReasonsState,
    TResult? Function(FreeSampleReasonsFailedState value)?
        freeSampleReasonsFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFreesampleReasonsState value)?
        getFreesampleReasonsState,
    TResult Function(FreeSampleReasonsFailedState value)?
        freeSampleReasonsFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FreeSampleReasonsStateCopyWith<$Res> {
  factory $FreeSampleReasonsStateCopyWith(FreeSampleReasonsState value,
          $Res Function(FreeSampleReasonsState) then) =
      _$FreeSampleReasonsStateCopyWithImpl<$Res, FreeSampleReasonsState>;
}

/// @nodoc
class _$FreeSampleReasonsStateCopyWithImpl<$Res,
        $Val extends FreeSampleReasonsState>
    implements $FreeSampleReasonsStateCopyWith<$Res> {
  _$FreeSampleReasonsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FreeSampleReasonsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetFreesampleReasonsStateImplCopyWith<$Res> {
  factory _$$GetFreesampleReasonsStateImplCopyWith(
          _$GetFreesampleReasonsStateImpl value,
          $Res Function(_$GetFreesampleReasonsStateImpl) then) =
      __$$GetFreesampleReasonsStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<FreeSampleResonModel>? reasons});
}

/// @nodoc
class __$$GetFreesampleReasonsStateImplCopyWithImpl<$Res>
    extends _$FreeSampleReasonsStateCopyWithImpl<$Res,
        _$GetFreesampleReasonsStateImpl>
    implements _$$GetFreesampleReasonsStateImplCopyWith<$Res> {
  __$$GetFreesampleReasonsStateImplCopyWithImpl(
      _$GetFreesampleReasonsStateImpl _value,
      $Res Function(_$GetFreesampleReasonsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FreeSampleReasonsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reasons = freezed,
  }) {
    return _then(_$GetFreesampleReasonsStateImpl(
      reasons: freezed == reasons
          ? _value._reasons
          : reasons // ignore: cast_nullable_to_non_nullable
              as List<FreeSampleResonModel>?,
    ));
  }
}

/// @nodoc

class _$GetFreesampleReasonsStateImpl implements GetFreesampleReasonsState {
  const _$GetFreesampleReasonsStateImpl(
      {required final List<FreeSampleResonModel>? reasons})
      : _reasons = reasons;

  final List<FreeSampleResonModel>? _reasons;
  @override
  List<FreeSampleResonModel>? get reasons {
    final value = _reasons;
    if (value == null) return null;
    if (_reasons is EqualUnmodifiableListView) return _reasons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FreeSampleReasonsState.getFreesampleReasonsState(reasons: $reasons)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFreesampleReasonsStateImpl &&
            const DeepCollectionEquality().equals(other._reasons, _reasons));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_reasons));

  /// Create a copy of FreeSampleReasonsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFreesampleReasonsStateImplCopyWith<_$GetFreesampleReasonsStateImpl>
      get copyWith => __$$GetFreesampleReasonsStateImplCopyWithImpl<
          _$GetFreesampleReasonsStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<FreeSampleResonModel>? reasons)
        getFreesampleReasonsState,
    required TResult Function() freeSampleReasonsFailedState,
  }) {
    return getFreesampleReasonsState(reasons);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<FreeSampleResonModel>? reasons)?
        getFreesampleReasonsState,
    TResult? Function()? freeSampleReasonsFailedState,
  }) {
    return getFreesampleReasonsState?.call(reasons);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<FreeSampleResonModel>? reasons)?
        getFreesampleReasonsState,
    TResult Function()? freeSampleReasonsFailedState,
    required TResult orElse(),
  }) {
    if (getFreesampleReasonsState != null) {
      return getFreesampleReasonsState(reasons);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFreesampleReasonsState value)
        getFreesampleReasonsState,
    required TResult Function(FreeSampleReasonsFailedState value)
        freeSampleReasonsFailedState,
  }) {
    return getFreesampleReasonsState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFreesampleReasonsState value)?
        getFreesampleReasonsState,
    TResult? Function(FreeSampleReasonsFailedState value)?
        freeSampleReasonsFailedState,
  }) {
    return getFreesampleReasonsState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFreesampleReasonsState value)?
        getFreesampleReasonsState,
    TResult Function(FreeSampleReasonsFailedState value)?
        freeSampleReasonsFailedState,
    required TResult orElse(),
  }) {
    if (getFreesampleReasonsState != null) {
      return getFreesampleReasonsState(this);
    }
    return orElse();
  }
}

abstract class GetFreesampleReasonsState implements FreeSampleReasonsState {
  const factory GetFreesampleReasonsState(
          {required final List<FreeSampleResonModel>? reasons}) =
      _$GetFreesampleReasonsStateImpl;

  List<FreeSampleResonModel>? get reasons;

  /// Create a copy of FreeSampleReasonsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetFreesampleReasonsStateImplCopyWith<_$GetFreesampleReasonsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FreeSampleReasonsFailedStateImplCopyWith<$Res> {
  factory _$$FreeSampleReasonsFailedStateImplCopyWith(
          _$FreeSampleReasonsFailedStateImpl value,
          $Res Function(_$FreeSampleReasonsFailedStateImpl) then) =
      __$$FreeSampleReasonsFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FreeSampleReasonsFailedStateImplCopyWithImpl<$Res>
    extends _$FreeSampleReasonsStateCopyWithImpl<$Res,
        _$FreeSampleReasonsFailedStateImpl>
    implements _$$FreeSampleReasonsFailedStateImplCopyWith<$Res> {
  __$$FreeSampleReasonsFailedStateImplCopyWithImpl(
      _$FreeSampleReasonsFailedStateImpl _value,
      $Res Function(_$FreeSampleReasonsFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FreeSampleReasonsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FreeSampleReasonsFailedStateImpl
    implements FreeSampleReasonsFailedState {
  const _$FreeSampleReasonsFailedStateImpl();

  @override
  String toString() {
    return 'FreeSampleReasonsState.freeSampleReasonsFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FreeSampleReasonsFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<FreeSampleResonModel>? reasons)
        getFreesampleReasonsState,
    required TResult Function() freeSampleReasonsFailedState,
  }) {
    return freeSampleReasonsFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<FreeSampleResonModel>? reasons)?
        getFreesampleReasonsState,
    TResult? Function()? freeSampleReasonsFailedState,
  }) {
    return freeSampleReasonsFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<FreeSampleResonModel>? reasons)?
        getFreesampleReasonsState,
    TResult Function()? freeSampleReasonsFailedState,
    required TResult orElse(),
  }) {
    if (freeSampleReasonsFailedState != null) {
      return freeSampleReasonsFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFreesampleReasonsState value)
        getFreesampleReasonsState,
    required TResult Function(FreeSampleReasonsFailedState value)
        freeSampleReasonsFailedState,
  }) {
    return freeSampleReasonsFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFreesampleReasonsState value)?
        getFreesampleReasonsState,
    TResult? Function(FreeSampleReasonsFailedState value)?
        freeSampleReasonsFailedState,
  }) {
    return freeSampleReasonsFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFreesampleReasonsState value)?
        getFreesampleReasonsState,
    TResult Function(FreeSampleReasonsFailedState value)?
        freeSampleReasonsFailedState,
    required TResult orElse(),
  }) {
    if (freeSampleReasonsFailedState != null) {
      return freeSampleReasonsFailedState(this);
    }
    return orElse();
  }
}

abstract class FreeSampleReasonsFailedState implements FreeSampleReasonsState {
  const factory FreeSampleReasonsFailedState() =
      _$FreeSampleReasonsFailedStateImpl;
}
