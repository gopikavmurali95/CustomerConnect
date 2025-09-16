// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'outofstockcount_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OutofstockcountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fromDate, String toDate)
        getOutOfStockCountEvent,
    required TResult Function() clearOutOfStockCountEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fromDate, String toDate)? getOutOfStockCountEvent,
    TResult? Function()? clearOutOfStockCountEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fromDate, String toDate)? getOutOfStockCountEvent,
    TResult Function()? clearOutOfStockCountEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOutOfStockCountEvent value)
        getOutOfStockCountEvent,
    required TResult Function(ClearOutOfStockCountEvent value)
        clearOutOfStockCountEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOutOfStockCountEvent value)? getOutOfStockCountEvent,
    TResult? Function(ClearOutOfStockCountEvent value)?
        clearOutOfStockCountEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOutOfStockCountEvent value)? getOutOfStockCountEvent,
    TResult Function(ClearOutOfStockCountEvent value)?
        clearOutOfStockCountEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutofstockcountEventCopyWith<$Res> {
  factory $OutofstockcountEventCopyWith(OutofstockcountEvent value,
          $Res Function(OutofstockcountEvent) then) =
      _$OutofstockcountEventCopyWithImpl<$Res, OutofstockcountEvent>;
}

/// @nodoc
class _$OutofstockcountEventCopyWithImpl<$Res,
        $Val extends OutofstockcountEvent>
    implements $OutofstockcountEventCopyWith<$Res> {
  _$OutofstockcountEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OutofstockcountEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetOutOfStockCountEventImplCopyWith<$Res> {
  factory _$$GetOutOfStockCountEventImplCopyWith(
          _$GetOutOfStockCountEventImpl value,
          $Res Function(_$GetOutOfStockCountEventImpl) then) =
      __$$GetOutOfStockCountEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String fromDate, String toDate});
}

/// @nodoc
class __$$GetOutOfStockCountEventImplCopyWithImpl<$Res>
    extends _$OutofstockcountEventCopyWithImpl<$Res,
        _$GetOutOfStockCountEventImpl>
    implements _$$GetOutOfStockCountEventImplCopyWith<$Res> {
  __$$GetOutOfStockCountEventImplCopyWithImpl(
      _$GetOutOfStockCountEventImpl _value,
      $Res Function(_$GetOutOfStockCountEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of OutofstockcountEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromDate = null,
    Object? toDate = null,
  }) {
    return _then(_$GetOutOfStockCountEventImpl(
      fromDate: null == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as String,
      toDate: null == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetOutOfStockCountEventImpl implements GetOutOfStockCountEvent {
  const _$GetOutOfStockCountEventImpl(
      {required this.fromDate, required this.toDate});

  @override
  final String fromDate;
  @override
  final String toDate;

  @override
  String toString() {
    return 'OutofstockcountEvent.getOutOfStockCountEvent(fromDate: $fromDate, toDate: $toDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOutOfStockCountEventImpl &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fromDate, toDate);

  /// Create a copy of OutofstockcountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOutOfStockCountEventImplCopyWith<_$GetOutOfStockCountEventImpl>
      get copyWith => __$$GetOutOfStockCountEventImplCopyWithImpl<
          _$GetOutOfStockCountEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fromDate, String toDate)
        getOutOfStockCountEvent,
    required TResult Function() clearOutOfStockCountEvent,
  }) {
    return getOutOfStockCountEvent(fromDate, toDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fromDate, String toDate)? getOutOfStockCountEvent,
    TResult? Function()? clearOutOfStockCountEvent,
  }) {
    return getOutOfStockCountEvent?.call(fromDate, toDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fromDate, String toDate)? getOutOfStockCountEvent,
    TResult Function()? clearOutOfStockCountEvent,
    required TResult orElse(),
  }) {
    if (getOutOfStockCountEvent != null) {
      return getOutOfStockCountEvent(fromDate, toDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOutOfStockCountEvent value)
        getOutOfStockCountEvent,
    required TResult Function(ClearOutOfStockCountEvent value)
        clearOutOfStockCountEvent,
  }) {
    return getOutOfStockCountEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOutOfStockCountEvent value)? getOutOfStockCountEvent,
    TResult? Function(ClearOutOfStockCountEvent value)?
        clearOutOfStockCountEvent,
  }) {
    return getOutOfStockCountEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOutOfStockCountEvent value)? getOutOfStockCountEvent,
    TResult Function(ClearOutOfStockCountEvent value)?
        clearOutOfStockCountEvent,
    required TResult orElse(),
  }) {
    if (getOutOfStockCountEvent != null) {
      return getOutOfStockCountEvent(this);
    }
    return orElse();
  }
}

abstract class GetOutOfStockCountEvent implements OutofstockcountEvent {
  const factory GetOutOfStockCountEvent(
      {required final String fromDate,
      required final String toDate}) = _$GetOutOfStockCountEventImpl;

  String get fromDate;
  String get toDate;

  /// Create a copy of OutofstockcountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetOutOfStockCountEventImplCopyWith<_$GetOutOfStockCountEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearOutOfStockCountEventImplCopyWith<$Res> {
  factory _$$ClearOutOfStockCountEventImplCopyWith(
          _$ClearOutOfStockCountEventImpl value,
          $Res Function(_$ClearOutOfStockCountEventImpl) then) =
      __$$ClearOutOfStockCountEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearOutOfStockCountEventImplCopyWithImpl<$Res>
    extends _$OutofstockcountEventCopyWithImpl<$Res,
        _$ClearOutOfStockCountEventImpl>
    implements _$$ClearOutOfStockCountEventImplCopyWith<$Res> {
  __$$ClearOutOfStockCountEventImplCopyWithImpl(
      _$ClearOutOfStockCountEventImpl _value,
      $Res Function(_$ClearOutOfStockCountEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of OutofstockcountEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearOutOfStockCountEventImpl implements ClearOutOfStockCountEvent {
  const _$ClearOutOfStockCountEventImpl();

  @override
  String toString() {
    return 'OutofstockcountEvent.clearOutOfStockCountEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearOutOfStockCountEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fromDate, String toDate)
        getOutOfStockCountEvent,
    required TResult Function() clearOutOfStockCountEvent,
  }) {
    return clearOutOfStockCountEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fromDate, String toDate)? getOutOfStockCountEvent,
    TResult? Function()? clearOutOfStockCountEvent,
  }) {
    return clearOutOfStockCountEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fromDate, String toDate)? getOutOfStockCountEvent,
    TResult Function()? clearOutOfStockCountEvent,
    required TResult orElse(),
  }) {
    if (clearOutOfStockCountEvent != null) {
      return clearOutOfStockCountEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOutOfStockCountEvent value)
        getOutOfStockCountEvent,
    required TResult Function(ClearOutOfStockCountEvent value)
        clearOutOfStockCountEvent,
  }) {
    return clearOutOfStockCountEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOutOfStockCountEvent value)? getOutOfStockCountEvent,
    TResult? Function(ClearOutOfStockCountEvent value)?
        clearOutOfStockCountEvent,
  }) {
    return clearOutOfStockCountEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOutOfStockCountEvent value)? getOutOfStockCountEvent,
    TResult Function(ClearOutOfStockCountEvent value)?
        clearOutOfStockCountEvent,
    required TResult orElse(),
  }) {
    if (clearOutOfStockCountEvent != null) {
      return clearOutOfStockCountEvent(this);
    }
    return orElse();
  }
}

abstract class ClearOutOfStockCountEvent implements OutofstockcountEvent {
  const factory ClearOutOfStockCountEvent() = _$ClearOutOfStockCountEventImpl;
}

/// @nodoc
mixin _$OutofstockcountState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetOutOfStockCountModel? count)
        getOutOfStockCountState,
    required TResult Function() outOfStockFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetOutOfStockCountModel? count)? getOutOfStockCountState,
    TResult? Function()? outOfStockFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetOutOfStockCountModel? count)? getOutOfStockCountState,
    TResult Function()? outOfStockFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOutOfStockCountState value)
        getOutOfStockCountState,
    required TResult Function(OutOfStockFailedState value)
        outOfStockFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOutOfStockCountState value)? getOutOfStockCountState,
    TResult? Function(OutOfStockFailedState value)? outOfStockFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOutOfStockCountState value)? getOutOfStockCountState,
    TResult Function(OutOfStockFailedState value)? outOfStockFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutofstockcountStateCopyWith<$Res> {
  factory $OutofstockcountStateCopyWith(OutofstockcountState value,
          $Res Function(OutofstockcountState) then) =
      _$OutofstockcountStateCopyWithImpl<$Res, OutofstockcountState>;
}

/// @nodoc
class _$OutofstockcountStateCopyWithImpl<$Res,
        $Val extends OutofstockcountState>
    implements $OutofstockcountStateCopyWith<$Res> {
  _$OutofstockcountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OutofstockcountState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetOutOfStockCountStateImplCopyWith<$Res> {
  factory _$$GetOutOfStockCountStateImplCopyWith(
          _$GetOutOfStockCountStateImpl value,
          $Res Function(_$GetOutOfStockCountStateImpl) then) =
      __$$GetOutOfStockCountStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetOutOfStockCountModel? count});
}

/// @nodoc
class __$$GetOutOfStockCountStateImplCopyWithImpl<$Res>
    extends _$OutofstockcountStateCopyWithImpl<$Res,
        _$GetOutOfStockCountStateImpl>
    implements _$$GetOutOfStockCountStateImplCopyWith<$Res> {
  __$$GetOutOfStockCountStateImplCopyWithImpl(
      _$GetOutOfStockCountStateImpl _value,
      $Res Function(_$GetOutOfStockCountStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of OutofstockcountState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
  }) {
    return _then(_$GetOutOfStockCountStateImpl(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as GetOutOfStockCountModel?,
    ));
  }
}

/// @nodoc

class _$GetOutOfStockCountStateImpl implements GetOutOfStockCountState {
  const _$GetOutOfStockCountStateImpl({required this.count});

  @override
  final GetOutOfStockCountModel? count;

  @override
  String toString() {
    return 'OutofstockcountState.getOutOfStockCountState(count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOutOfStockCountStateImpl &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count);

  /// Create a copy of OutofstockcountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOutOfStockCountStateImplCopyWith<_$GetOutOfStockCountStateImpl>
      get copyWith => __$$GetOutOfStockCountStateImplCopyWithImpl<
          _$GetOutOfStockCountStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetOutOfStockCountModel? count)
        getOutOfStockCountState,
    required TResult Function() outOfStockFailedState,
  }) {
    return getOutOfStockCountState(count);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetOutOfStockCountModel? count)? getOutOfStockCountState,
    TResult? Function()? outOfStockFailedState,
  }) {
    return getOutOfStockCountState?.call(count);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetOutOfStockCountModel? count)? getOutOfStockCountState,
    TResult Function()? outOfStockFailedState,
    required TResult orElse(),
  }) {
    if (getOutOfStockCountState != null) {
      return getOutOfStockCountState(count);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOutOfStockCountState value)
        getOutOfStockCountState,
    required TResult Function(OutOfStockFailedState value)
        outOfStockFailedState,
  }) {
    return getOutOfStockCountState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOutOfStockCountState value)? getOutOfStockCountState,
    TResult? Function(OutOfStockFailedState value)? outOfStockFailedState,
  }) {
    return getOutOfStockCountState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOutOfStockCountState value)? getOutOfStockCountState,
    TResult Function(OutOfStockFailedState value)? outOfStockFailedState,
    required TResult orElse(),
  }) {
    if (getOutOfStockCountState != null) {
      return getOutOfStockCountState(this);
    }
    return orElse();
  }
}

abstract class GetOutOfStockCountState implements OutofstockcountState {
  const factory GetOutOfStockCountState(
          {required final GetOutOfStockCountModel? count}) =
      _$GetOutOfStockCountStateImpl;

  GetOutOfStockCountModel? get count;

  /// Create a copy of OutofstockcountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetOutOfStockCountStateImplCopyWith<_$GetOutOfStockCountStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OutOfStockFailedStateImplCopyWith<$Res> {
  factory _$$OutOfStockFailedStateImplCopyWith(
          _$OutOfStockFailedStateImpl value,
          $Res Function(_$OutOfStockFailedStateImpl) then) =
      __$$OutOfStockFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OutOfStockFailedStateImplCopyWithImpl<$Res>
    extends _$OutofstockcountStateCopyWithImpl<$Res,
        _$OutOfStockFailedStateImpl>
    implements _$$OutOfStockFailedStateImplCopyWith<$Res> {
  __$$OutOfStockFailedStateImplCopyWithImpl(_$OutOfStockFailedStateImpl _value,
      $Res Function(_$OutOfStockFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of OutofstockcountState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OutOfStockFailedStateImpl implements OutOfStockFailedState {
  const _$OutOfStockFailedStateImpl();

  @override
  String toString() {
    return 'OutofstockcountState.outOfStockFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OutOfStockFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetOutOfStockCountModel? count)
        getOutOfStockCountState,
    required TResult Function() outOfStockFailedState,
  }) {
    return outOfStockFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetOutOfStockCountModel? count)? getOutOfStockCountState,
    TResult? Function()? outOfStockFailedState,
  }) {
    return outOfStockFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetOutOfStockCountModel? count)? getOutOfStockCountState,
    TResult Function()? outOfStockFailedState,
    required TResult orElse(),
  }) {
    if (outOfStockFailedState != null) {
      return outOfStockFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOutOfStockCountState value)
        getOutOfStockCountState,
    required TResult Function(OutOfStockFailedState value)
        outOfStockFailedState,
  }) {
    return outOfStockFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOutOfStockCountState value)? getOutOfStockCountState,
    TResult? Function(OutOfStockFailedState value)? outOfStockFailedState,
  }) {
    return outOfStockFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOutOfStockCountState value)? getOutOfStockCountState,
    TResult Function(OutOfStockFailedState value)? outOfStockFailedState,
    required TResult orElse(),
  }) {
    if (outOfStockFailedState != null) {
      return outOfStockFailedState(this);
    }
    return orElse();
  }
}

abstract class OutOfStockFailedState implements OutofstockcountState {
  const factory OutOfStockFailedState() = _$OutOfStockFailedStateImpl;
}
