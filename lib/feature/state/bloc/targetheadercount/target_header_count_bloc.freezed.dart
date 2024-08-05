// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'target_header_count_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TargetHeaderCountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fromDate) getTargetHeaderCountEvent,
    required TResult Function() clearTargetHeaderCount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fromDate)? getTargetHeaderCountEvent,
    TResult? Function()? clearTargetHeaderCount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fromDate)? getTargetHeaderCountEvent,
    TResult Function()? clearTargetHeaderCount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTargetHeaderCountEvent value)
        getTargetHeaderCountEvent,
    required TResult Function(ClearTargetHeaderCount value)
        clearTargetHeaderCount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTargetHeaderCountEvent value)?
        getTargetHeaderCountEvent,
    TResult? Function(ClearTargetHeaderCount value)? clearTargetHeaderCount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTargetHeaderCountEvent value)?
        getTargetHeaderCountEvent,
    TResult Function(ClearTargetHeaderCount value)? clearTargetHeaderCount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TargetHeaderCountEventCopyWith<$Res> {
  factory $TargetHeaderCountEventCopyWith(TargetHeaderCountEvent value,
          $Res Function(TargetHeaderCountEvent) then) =
      _$TargetHeaderCountEventCopyWithImpl<$Res, TargetHeaderCountEvent>;
}

/// @nodoc
class _$TargetHeaderCountEventCopyWithImpl<$Res,
        $Val extends TargetHeaderCountEvent>
    implements $TargetHeaderCountEventCopyWith<$Res> {
  _$TargetHeaderCountEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetTargetHeaderCountEventImplCopyWith<$Res> {
  factory _$$GetTargetHeaderCountEventImplCopyWith(
          _$GetTargetHeaderCountEventImpl value,
          $Res Function(_$GetTargetHeaderCountEventImpl) then) =
      __$$GetTargetHeaderCountEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String fromDate});
}

/// @nodoc
class __$$GetTargetHeaderCountEventImplCopyWithImpl<$Res>
    extends _$TargetHeaderCountEventCopyWithImpl<$Res,
        _$GetTargetHeaderCountEventImpl>
    implements _$$GetTargetHeaderCountEventImplCopyWith<$Res> {
  __$$GetTargetHeaderCountEventImplCopyWithImpl(
      _$GetTargetHeaderCountEventImpl _value,
      $Res Function(_$GetTargetHeaderCountEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromDate = null,
  }) {
    return _then(_$GetTargetHeaderCountEventImpl(
      fromDate: null == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetTargetHeaderCountEventImpl implements GetTargetHeaderCountEvent {
  const _$GetTargetHeaderCountEventImpl({required this.fromDate});

  @override
  final String fromDate;

  @override
  String toString() {
    return 'TargetHeaderCountEvent.getTargetHeaderCountEvent(fromDate: $fromDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTargetHeaderCountEventImpl &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fromDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTargetHeaderCountEventImplCopyWith<_$GetTargetHeaderCountEventImpl>
      get copyWith => __$$GetTargetHeaderCountEventImplCopyWithImpl<
          _$GetTargetHeaderCountEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fromDate) getTargetHeaderCountEvent,
    required TResult Function() clearTargetHeaderCount,
  }) {
    return getTargetHeaderCountEvent(fromDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fromDate)? getTargetHeaderCountEvent,
    TResult? Function()? clearTargetHeaderCount,
  }) {
    return getTargetHeaderCountEvent?.call(fromDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fromDate)? getTargetHeaderCountEvent,
    TResult Function()? clearTargetHeaderCount,
    required TResult orElse(),
  }) {
    if (getTargetHeaderCountEvent != null) {
      return getTargetHeaderCountEvent(fromDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTargetHeaderCountEvent value)
        getTargetHeaderCountEvent,
    required TResult Function(ClearTargetHeaderCount value)
        clearTargetHeaderCount,
  }) {
    return getTargetHeaderCountEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTargetHeaderCountEvent value)?
        getTargetHeaderCountEvent,
    TResult? Function(ClearTargetHeaderCount value)? clearTargetHeaderCount,
  }) {
    return getTargetHeaderCountEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTargetHeaderCountEvent value)?
        getTargetHeaderCountEvent,
    TResult Function(ClearTargetHeaderCount value)? clearTargetHeaderCount,
    required TResult orElse(),
  }) {
    if (getTargetHeaderCountEvent != null) {
      return getTargetHeaderCountEvent(this);
    }
    return orElse();
  }
}

abstract class GetTargetHeaderCountEvent implements TargetHeaderCountEvent {
  const factory GetTargetHeaderCountEvent({required final String fromDate}) =
      _$GetTargetHeaderCountEventImpl;

  String get fromDate;
  @JsonKey(ignore: true)
  _$$GetTargetHeaderCountEventImplCopyWith<_$GetTargetHeaderCountEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearTargetHeaderCountImplCopyWith<$Res> {
  factory _$$ClearTargetHeaderCountImplCopyWith(
          _$ClearTargetHeaderCountImpl value,
          $Res Function(_$ClearTargetHeaderCountImpl) then) =
      __$$ClearTargetHeaderCountImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearTargetHeaderCountImplCopyWithImpl<$Res>
    extends _$TargetHeaderCountEventCopyWithImpl<$Res,
        _$ClearTargetHeaderCountImpl>
    implements _$$ClearTargetHeaderCountImplCopyWith<$Res> {
  __$$ClearTargetHeaderCountImplCopyWithImpl(
      _$ClearTargetHeaderCountImpl _value,
      $Res Function(_$ClearTargetHeaderCountImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearTargetHeaderCountImpl implements ClearTargetHeaderCount {
  const _$ClearTargetHeaderCountImpl();

  @override
  String toString() {
    return 'TargetHeaderCountEvent.clearTargetHeaderCount()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearTargetHeaderCountImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fromDate) getTargetHeaderCountEvent,
    required TResult Function() clearTargetHeaderCount,
  }) {
    return clearTargetHeaderCount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fromDate)? getTargetHeaderCountEvent,
    TResult? Function()? clearTargetHeaderCount,
  }) {
    return clearTargetHeaderCount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fromDate)? getTargetHeaderCountEvent,
    TResult Function()? clearTargetHeaderCount,
    required TResult orElse(),
  }) {
    if (clearTargetHeaderCount != null) {
      return clearTargetHeaderCount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTargetHeaderCountEvent value)
        getTargetHeaderCountEvent,
    required TResult Function(ClearTargetHeaderCount value)
        clearTargetHeaderCount,
  }) {
    return clearTargetHeaderCount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTargetHeaderCountEvent value)?
        getTargetHeaderCountEvent,
    TResult? Function(ClearTargetHeaderCount value)? clearTargetHeaderCount,
  }) {
    return clearTargetHeaderCount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTargetHeaderCountEvent value)?
        getTargetHeaderCountEvent,
    TResult Function(ClearTargetHeaderCount value)? clearTargetHeaderCount,
    required TResult orElse(),
  }) {
    if (clearTargetHeaderCount != null) {
      return clearTargetHeaderCount(this);
    }
    return orElse();
  }
}

abstract class ClearTargetHeaderCount implements TargetHeaderCountEvent {
  const factory ClearTargetHeaderCount() = _$ClearTargetHeaderCountImpl;
}

/// @nodoc
mixin _$TargetHeaderCountState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TargetHeaderCountModel? headerCount)
        getTargetHeaderCountState,
    required TResult Function() targetHeaderCountFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TargetHeaderCountModel? headerCount)?
        getTargetHeaderCountState,
    TResult? Function()? targetHeaderCountFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TargetHeaderCountModel? headerCount)?
        getTargetHeaderCountState,
    TResult Function()? targetHeaderCountFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTargetHeaderCountState value)
        getTargetHeaderCountState,
    required TResult Function(TtargetHeaderCountFailed value)
        targetHeaderCountFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTargetHeaderCountState value)?
        getTargetHeaderCountState,
    TResult? Function(TtargetHeaderCountFailed value)? targetHeaderCountFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTargetHeaderCountState value)?
        getTargetHeaderCountState,
    TResult Function(TtargetHeaderCountFailed value)? targetHeaderCountFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TargetHeaderCountStateCopyWith<$Res> {
  factory $TargetHeaderCountStateCopyWith(TargetHeaderCountState value,
          $Res Function(TargetHeaderCountState) then) =
      _$TargetHeaderCountStateCopyWithImpl<$Res, TargetHeaderCountState>;
}

/// @nodoc
class _$TargetHeaderCountStateCopyWithImpl<$Res,
        $Val extends TargetHeaderCountState>
    implements $TargetHeaderCountStateCopyWith<$Res> {
  _$TargetHeaderCountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetTargetHeaderCountStateImplCopyWith<$Res> {
  factory _$$GetTargetHeaderCountStateImplCopyWith(
          _$GetTargetHeaderCountStateImpl value,
          $Res Function(_$GetTargetHeaderCountStateImpl) then) =
      __$$GetTargetHeaderCountStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TargetHeaderCountModel? headerCount});
}

/// @nodoc
class __$$GetTargetHeaderCountStateImplCopyWithImpl<$Res>
    extends _$TargetHeaderCountStateCopyWithImpl<$Res,
        _$GetTargetHeaderCountStateImpl>
    implements _$$GetTargetHeaderCountStateImplCopyWith<$Res> {
  __$$GetTargetHeaderCountStateImplCopyWithImpl(
      _$GetTargetHeaderCountStateImpl _value,
      $Res Function(_$GetTargetHeaderCountStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headerCount = freezed,
  }) {
    return _then(_$GetTargetHeaderCountStateImpl(
      headerCount: freezed == headerCount
          ? _value.headerCount
          : headerCount // ignore: cast_nullable_to_non_nullable
              as TargetHeaderCountModel?,
    ));
  }
}

/// @nodoc

class _$GetTargetHeaderCountStateImpl implements GetTargetHeaderCountState {
  const _$GetTargetHeaderCountStateImpl({required this.headerCount});

  @override
  final TargetHeaderCountModel? headerCount;

  @override
  String toString() {
    return 'TargetHeaderCountState.getTargetHeaderCountState(headerCount: $headerCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTargetHeaderCountStateImpl &&
            (identical(other.headerCount, headerCount) ||
                other.headerCount == headerCount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, headerCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTargetHeaderCountStateImplCopyWith<_$GetTargetHeaderCountStateImpl>
      get copyWith => __$$GetTargetHeaderCountStateImplCopyWithImpl<
          _$GetTargetHeaderCountStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TargetHeaderCountModel? headerCount)
        getTargetHeaderCountState,
    required TResult Function() targetHeaderCountFailed,
  }) {
    return getTargetHeaderCountState(headerCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TargetHeaderCountModel? headerCount)?
        getTargetHeaderCountState,
    TResult? Function()? targetHeaderCountFailed,
  }) {
    return getTargetHeaderCountState?.call(headerCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TargetHeaderCountModel? headerCount)?
        getTargetHeaderCountState,
    TResult Function()? targetHeaderCountFailed,
    required TResult orElse(),
  }) {
    if (getTargetHeaderCountState != null) {
      return getTargetHeaderCountState(headerCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTargetHeaderCountState value)
        getTargetHeaderCountState,
    required TResult Function(TtargetHeaderCountFailed value)
        targetHeaderCountFailed,
  }) {
    return getTargetHeaderCountState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTargetHeaderCountState value)?
        getTargetHeaderCountState,
    TResult? Function(TtargetHeaderCountFailed value)? targetHeaderCountFailed,
  }) {
    return getTargetHeaderCountState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTargetHeaderCountState value)?
        getTargetHeaderCountState,
    TResult Function(TtargetHeaderCountFailed value)? targetHeaderCountFailed,
    required TResult orElse(),
  }) {
    if (getTargetHeaderCountState != null) {
      return getTargetHeaderCountState(this);
    }
    return orElse();
  }
}

abstract class GetTargetHeaderCountState implements TargetHeaderCountState {
  const factory GetTargetHeaderCountState(
          {required final TargetHeaderCountModel? headerCount}) =
      _$GetTargetHeaderCountStateImpl;

  TargetHeaderCountModel? get headerCount;
  @JsonKey(ignore: true)
  _$$GetTargetHeaderCountStateImplCopyWith<_$GetTargetHeaderCountStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TtargetHeaderCountFailedImplCopyWith<$Res> {
  factory _$$TtargetHeaderCountFailedImplCopyWith(
          _$TtargetHeaderCountFailedImpl value,
          $Res Function(_$TtargetHeaderCountFailedImpl) then) =
      __$$TtargetHeaderCountFailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TtargetHeaderCountFailedImplCopyWithImpl<$Res>
    extends _$TargetHeaderCountStateCopyWithImpl<$Res,
        _$TtargetHeaderCountFailedImpl>
    implements _$$TtargetHeaderCountFailedImplCopyWith<$Res> {
  __$$TtargetHeaderCountFailedImplCopyWithImpl(
      _$TtargetHeaderCountFailedImpl _value,
      $Res Function(_$TtargetHeaderCountFailedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TtargetHeaderCountFailedImpl implements TtargetHeaderCountFailed {
  const _$TtargetHeaderCountFailedImpl();

  @override
  String toString() {
    return 'TargetHeaderCountState.targetHeaderCountFailed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TtargetHeaderCountFailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TargetHeaderCountModel? headerCount)
        getTargetHeaderCountState,
    required TResult Function() targetHeaderCountFailed,
  }) {
    return targetHeaderCountFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TargetHeaderCountModel? headerCount)?
        getTargetHeaderCountState,
    TResult? Function()? targetHeaderCountFailed,
  }) {
    return targetHeaderCountFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TargetHeaderCountModel? headerCount)?
        getTargetHeaderCountState,
    TResult Function()? targetHeaderCountFailed,
    required TResult orElse(),
  }) {
    if (targetHeaderCountFailed != null) {
      return targetHeaderCountFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTargetHeaderCountState value)
        getTargetHeaderCountState,
    required TResult Function(TtargetHeaderCountFailed value)
        targetHeaderCountFailed,
  }) {
    return targetHeaderCountFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTargetHeaderCountState value)?
        getTargetHeaderCountState,
    TResult? Function(TtargetHeaderCountFailed value)? targetHeaderCountFailed,
  }) {
    return targetHeaderCountFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTargetHeaderCountState value)?
        getTargetHeaderCountState,
    TResult Function(TtargetHeaderCountFailed value)? targetHeaderCountFailed,
    required TResult orElse(),
  }) {
    if (targetHeaderCountFailed != null) {
      return targetHeaderCountFailed(this);
    }
    return orElse();
  }
}

abstract class TtargetHeaderCountFailed implements TargetHeaderCountState {
  const factory TtargetHeaderCountFailed() = _$TtargetHeaderCountFailedImpl;
}
