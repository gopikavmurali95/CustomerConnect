// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'target_details_count_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TargetDetailsCountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fromDate, String rotID)
        getTargetDetailsCountEvent,
    required TResult Function() clearTargetDetailsCount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fromDate, String rotID)?
        getTargetDetailsCountEvent,
    TResult? Function()? clearTargetDetailsCount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fromDate, String rotID)? getTargetDetailsCountEvent,
    TResult Function()? clearTargetDetailsCount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTargetDetailsCountEvent value)
        getTargetDetailsCountEvent,
    required TResult Function(ClearTargetDetailsCount value)
        clearTargetDetailsCount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTargetDetailsCountEvent value)?
        getTargetDetailsCountEvent,
    TResult? Function(ClearTargetDetailsCount value)? clearTargetDetailsCount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTargetDetailsCountEvent value)?
        getTargetDetailsCountEvent,
    TResult Function(ClearTargetDetailsCount value)? clearTargetDetailsCount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TargetDetailsCountEventCopyWith<$Res> {
  factory $TargetDetailsCountEventCopyWith(TargetDetailsCountEvent value,
          $Res Function(TargetDetailsCountEvent) then) =
      _$TargetDetailsCountEventCopyWithImpl<$Res, TargetDetailsCountEvent>;
}

/// @nodoc
class _$TargetDetailsCountEventCopyWithImpl<$Res,
        $Val extends TargetDetailsCountEvent>
    implements $TargetDetailsCountEventCopyWith<$Res> {
  _$TargetDetailsCountEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetTargetDetailsCountEventImplCopyWith<$Res> {
  factory _$$GetTargetDetailsCountEventImplCopyWith(
          _$GetTargetDetailsCountEventImpl value,
          $Res Function(_$GetTargetDetailsCountEventImpl) then) =
      __$$GetTargetDetailsCountEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String fromDate, String rotID});
}

/// @nodoc
class __$$GetTargetDetailsCountEventImplCopyWithImpl<$Res>
    extends _$TargetDetailsCountEventCopyWithImpl<$Res,
        _$GetTargetDetailsCountEventImpl>
    implements _$$GetTargetDetailsCountEventImplCopyWith<$Res> {
  __$$GetTargetDetailsCountEventImplCopyWithImpl(
      _$GetTargetDetailsCountEventImpl _value,
      $Res Function(_$GetTargetDetailsCountEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromDate = null,
    Object? rotID = null,
  }) {
    return _then(_$GetTargetDetailsCountEventImpl(
      fromDate: null == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as String,
      rotID: null == rotID
          ? _value.rotID
          : rotID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetTargetDetailsCountEventImpl implements GetTargetDetailsCountEvent {
  const _$GetTargetDetailsCountEventImpl(
      {required this.fromDate, required this.rotID});

  @override
  final String fromDate;
  @override
  final String rotID;

  @override
  String toString() {
    return 'TargetDetailsCountEvent.getTargetDetailsCountEvent(fromDate: $fromDate, rotID: $rotID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTargetDetailsCountEventImpl &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.rotID, rotID) || other.rotID == rotID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fromDate, rotID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTargetDetailsCountEventImplCopyWith<_$GetTargetDetailsCountEventImpl>
      get copyWith => __$$GetTargetDetailsCountEventImplCopyWithImpl<
          _$GetTargetDetailsCountEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fromDate, String rotID)
        getTargetDetailsCountEvent,
    required TResult Function() clearTargetDetailsCount,
  }) {
    return getTargetDetailsCountEvent(fromDate, rotID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fromDate, String rotID)?
        getTargetDetailsCountEvent,
    TResult? Function()? clearTargetDetailsCount,
  }) {
    return getTargetDetailsCountEvent?.call(fromDate, rotID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fromDate, String rotID)? getTargetDetailsCountEvent,
    TResult Function()? clearTargetDetailsCount,
    required TResult orElse(),
  }) {
    if (getTargetDetailsCountEvent != null) {
      return getTargetDetailsCountEvent(fromDate, rotID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTargetDetailsCountEvent value)
        getTargetDetailsCountEvent,
    required TResult Function(ClearTargetDetailsCount value)
        clearTargetDetailsCount,
  }) {
    return getTargetDetailsCountEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTargetDetailsCountEvent value)?
        getTargetDetailsCountEvent,
    TResult? Function(ClearTargetDetailsCount value)? clearTargetDetailsCount,
  }) {
    return getTargetDetailsCountEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTargetDetailsCountEvent value)?
        getTargetDetailsCountEvent,
    TResult Function(ClearTargetDetailsCount value)? clearTargetDetailsCount,
    required TResult orElse(),
  }) {
    if (getTargetDetailsCountEvent != null) {
      return getTargetDetailsCountEvent(this);
    }
    return orElse();
  }
}

abstract class GetTargetDetailsCountEvent implements TargetDetailsCountEvent {
  const factory GetTargetDetailsCountEvent(
      {required final String fromDate,
      required final String rotID}) = _$GetTargetDetailsCountEventImpl;

  String get fromDate;
  String get rotID;
  @JsonKey(ignore: true)
  _$$GetTargetDetailsCountEventImplCopyWith<_$GetTargetDetailsCountEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearTargetDetailsCountImplCopyWith<$Res> {
  factory _$$ClearTargetDetailsCountImplCopyWith(
          _$ClearTargetDetailsCountImpl value,
          $Res Function(_$ClearTargetDetailsCountImpl) then) =
      __$$ClearTargetDetailsCountImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearTargetDetailsCountImplCopyWithImpl<$Res>
    extends _$TargetDetailsCountEventCopyWithImpl<$Res,
        _$ClearTargetDetailsCountImpl>
    implements _$$ClearTargetDetailsCountImplCopyWith<$Res> {
  __$$ClearTargetDetailsCountImplCopyWithImpl(
      _$ClearTargetDetailsCountImpl _value,
      $Res Function(_$ClearTargetDetailsCountImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearTargetDetailsCountImpl implements ClearTargetDetailsCount {
  const _$ClearTargetDetailsCountImpl();

  @override
  String toString() {
    return 'TargetDetailsCountEvent.clearTargetDetailsCount()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearTargetDetailsCountImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fromDate, String rotID)
        getTargetDetailsCountEvent,
    required TResult Function() clearTargetDetailsCount,
  }) {
    return clearTargetDetailsCount();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fromDate, String rotID)?
        getTargetDetailsCountEvent,
    TResult? Function()? clearTargetDetailsCount,
  }) {
    return clearTargetDetailsCount?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fromDate, String rotID)? getTargetDetailsCountEvent,
    TResult Function()? clearTargetDetailsCount,
    required TResult orElse(),
  }) {
    if (clearTargetDetailsCount != null) {
      return clearTargetDetailsCount();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTargetDetailsCountEvent value)
        getTargetDetailsCountEvent,
    required TResult Function(ClearTargetDetailsCount value)
        clearTargetDetailsCount,
  }) {
    return clearTargetDetailsCount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTargetDetailsCountEvent value)?
        getTargetDetailsCountEvent,
    TResult? Function(ClearTargetDetailsCount value)? clearTargetDetailsCount,
  }) {
    return clearTargetDetailsCount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTargetDetailsCountEvent value)?
        getTargetDetailsCountEvent,
    TResult Function(ClearTargetDetailsCount value)? clearTargetDetailsCount,
    required TResult orElse(),
  }) {
    if (clearTargetDetailsCount != null) {
      return clearTargetDetailsCount(this);
    }
    return orElse();
  }
}

abstract class ClearTargetDetailsCount implements TargetDetailsCountEvent {
  const factory ClearTargetDetailsCount() = _$ClearTargetDetailsCountImpl;
}

/// @nodoc
mixin _$TargetDetailsCountState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TargetDetailsCountModel? detailscount)
        gettargetDetailCountState,
    required TResult Function() targetDetailCountFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TargetDetailsCountModel? detailscount)?
        gettargetDetailCountState,
    TResult? Function()? targetDetailCountFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TargetDetailsCountModel? detailscount)?
        gettargetDetailCountState,
    TResult Function()? targetDetailCountFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTargetDetailCountState value)
        gettargetDetailCountState,
    required TResult Function(TargetDetailCountFailed value)
        targetDetailCountFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTargetDetailCountState value)?
        gettargetDetailCountState,
    TResult? Function(TargetDetailCountFailed value)? targetDetailCountFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTargetDetailCountState value)?
        gettargetDetailCountState,
    TResult Function(TargetDetailCountFailed value)? targetDetailCountFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TargetDetailsCountStateCopyWith<$Res> {
  factory $TargetDetailsCountStateCopyWith(TargetDetailsCountState value,
          $Res Function(TargetDetailsCountState) then) =
      _$TargetDetailsCountStateCopyWithImpl<$Res, TargetDetailsCountState>;
}

/// @nodoc
class _$TargetDetailsCountStateCopyWithImpl<$Res,
        $Val extends TargetDetailsCountState>
    implements $TargetDetailsCountStateCopyWith<$Res> {
  _$TargetDetailsCountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetTargetDetailCountStateImplCopyWith<$Res> {
  factory _$$GetTargetDetailCountStateImplCopyWith(
          _$GetTargetDetailCountStateImpl value,
          $Res Function(_$GetTargetDetailCountStateImpl) then) =
      __$$GetTargetDetailCountStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TargetDetailsCountModel? detailscount});
}

/// @nodoc
class __$$GetTargetDetailCountStateImplCopyWithImpl<$Res>
    extends _$TargetDetailsCountStateCopyWithImpl<$Res,
        _$GetTargetDetailCountStateImpl>
    implements _$$GetTargetDetailCountStateImplCopyWith<$Res> {
  __$$GetTargetDetailCountStateImplCopyWithImpl(
      _$GetTargetDetailCountStateImpl _value,
      $Res Function(_$GetTargetDetailCountStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detailscount = freezed,
  }) {
    return _then(_$GetTargetDetailCountStateImpl(
      detailscount: freezed == detailscount
          ? _value.detailscount
          : detailscount // ignore: cast_nullable_to_non_nullable
              as TargetDetailsCountModel?,
    ));
  }
}

/// @nodoc

class _$GetTargetDetailCountStateImpl implements GetTargetDetailCountState {
  const _$GetTargetDetailCountStateImpl({required this.detailscount});

  @override
  final TargetDetailsCountModel? detailscount;

  @override
  String toString() {
    return 'TargetDetailsCountState.gettargetDetailCountState(detailscount: $detailscount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTargetDetailCountStateImpl &&
            (identical(other.detailscount, detailscount) ||
                other.detailscount == detailscount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, detailscount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTargetDetailCountStateImplCopyWith<_$GetTargetDetailCountStateImpl>
      get copyWith => __$$GetTargetDetailCountStateImplCopyWithImpl<
          _$GetTargetDetailCountStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TargetDetailsCountModel? detailscount)
        gettargetDetailCountState,
    required TResult Function() targetDetailCountFailed,
  }) {
    return gettargetDetailCountState(detailscount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TargetDetailsCountModel? detailscount)?
        gettargetDetailCountState,
    TResult? Function()? targetDetailCountFailed,
  }) {
    return gettargetDetailCountState?.call(detailscount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TargetDetailsCountModel? detailscount)?
        gettargetDetailCountState,
    TResult Function()? targetDetailCountFailed,
    required TResult orElse(),
  }) {
    if (gettargetDetailCountState != null) {
      return gettargetDetailCountState(detailscount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTargetDetailCountState value)
        gettargetDetailCountState,
    required TResult Function(TargetDetailCountFailed value)
        targetDetailCountFailed,
  }) {
    return gettargetDetailCountState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTargetDetailCountState value)?
        gettargetDetailCountState,
    TResult? Function(TargetDetailCountFailed value)? targetDetailCountFailed,
  }) {
    return gettargetDetailCountState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTargetDetailCountState value)?
        gettargetDetailCountState,
    TResult Function(TargetDetailCountFailed value)? targetDetailCountFailed,
    required TResult orElse(),
  }) {
    if (gettargetDetailCountState != null) {
      return gettargetDetailCountState(this);
    }
    return orElse();
  }
}

abstract class GetTargetDetailCountState implements TargetDetailsCountState {
  const factory GetTargetDetailCountState(
          {required final TargetDetailsCountModel? detailscount}) =
      _$GetTargetDetailCountStateImpl;

  TargetDetailsCountModel? get detailscount;
  @JsonKey(ignore: true)
  _$$GetTargetDetailCountStateImplCopyWith<_$GetTargetDetailCountStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TargetDetailCountFailedImplCopyWith<$Res> {
  factory _$$TargetDetailCountFailedImplCopyWith(
          _$TargetDetailCountFailedImpl value,
          $Res Function(_$TargetDetailCountFailedImpl) then) =
      __$$TargetDetailCountFailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TargetDetailCountFailedImplCopyWithImpl<$Res>
    extends _$TargetDetailsCountStateCopyWithImpl<$Res,
        _$TargetDetailCountFailedImpl>
    implements _$$TargetDetailCountFailedImplCopyWith<$Res> {
  __$$TargetDetailCountFailedImplCopyWithImpl(
      _$TargetDetailCountFailedImpl _value,
      $Res Function(_$TargetDetailCountFailedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TargetDetailCountFailedImpl implements TargetDetailCountFailed {
  const _$TargetDetailCountFailedImpl();

  @override
  String toString() {
    return 'TargetDetailsCountState.targetDetailCountFailed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TargetDetailCountFailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TargetDetailsCountModel? detailscount)
        gettargetDetailCountState,
    required TResult Function() targetDetailCountFailed,
  }) {
    return targetDetailCountFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TargetDetailsCountModel? detailscount)?
        gettargetDetailCountState,
    TResult? Function()? targetDetailCountFailed,
  }) {
    return targetDetailCountFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TargetDetailsCountModel? detailscount)?
        gettargetDetailCountState,
    TResult Function()? targetDetailCountFailed,
    required TResult orElse(),
  }) {
    if (targetDetailCountFailed != null) {
      return targetDetailCountFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTargetDetailCountState value)
        gettargetDetailCountState,
    required TResult Function(TargetDetailCountFailed value)
        targetDetailCountFailed,
  }) {
    return targetDetailCountFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTargetDetailCountState value)?
        gettargetDetailCountState,
    TResult? Function(TargetDetailCountFailed value)? targetDetailCountFailed,
  }) {
    return targetDetailCountFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTargetDetailCountState value)?
        gettargetDetailCountState,
    TResult Function(TargetDetailCountFailed value)? targetDetailCountFailed,
    required TResult orElse(),
  }) {
    if (targetDetailCountFailed != null) {
      return targetDetailCountFailed(this);
    }
    return orElse();
  }
}

abstract class TargetDetailCountFailed implements TargetDetailsCountState {
  const factory TargetDetailCountFailed() = _$TargetDetailCountFailedImpl;
}
