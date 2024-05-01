// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'price_change_reasons_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PriceChangeReasonsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String rsnType) getPRiceChangeReason,
    required TResult Function() clearPriceChangeReason,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String rsnType)? getPRiceChangeReason,
    TResult? Function()? clearPriceChangeReason,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String rsnType)? getPRiceChangeReason,
    TResult Function()? clearPriceChangeReason,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPRiceChangeReasonEvent value)
        getPRiceChangeReason,
    required TResult Function(ClearPriceChangeReason value)
        clearPriceChangeReason,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPRiceChangeReasonEvent value)? getPRiceChangeReason,
    TResult? Function(ClearPriceChangeReason value)? clearPriceChangeReason,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPRiceChangeReasonEvent value)? getPRiceChangeReason,
    TResult Function(ClearPriceChangeReason value)? clearPriceChangeReason,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceChangeReasonsEventCopyWith<$Res> {
  factory $PriceChangeReasonsEventCopyWith(PriceChangeReasonsEvent value,
          $Res Function(PriceChangeReasonsEvent) then) =
      _$PriceChangeReasonsEventCopyWithImpl<$Res, PriceChangeReasonsEvent>;
}

/// @nodoc
class _$PriceChangeReasonsEventCopyWithImpl<$Res,
        $Val extends PriceChangeReasonsEvent>
    implements $PriceChangeReasonsEventCopyWith<$Res> {
  _$PriceChangeReasonsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetPRiceChangeReasonEventImplCopyWith<$Res> {
  factory _$$GetPRiceChangeReasonEventImplCopyWith(
          _$GetPRiceChangeReasonEventImpl value,
          $Res Function(_$GetPRiceChangeReasonEventImpl) then) =
      __$$GetPRiceChangeReasonEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String rsnType});
}

/// @nodoc
class __$$GetPRiceChangeReasonEventImplCopyWithImpl<$Res>
    extends _$PriceChangeReasonsEventCopyWithImpl<$Res,
        _$GetPRiceChangeReasonEventImpl>
    implements _$$GetPRiceChangeReasonEventImplCopyWith<$Res> {
  __$$GetPRiceChangeReasonEventImplCopyWithImpl(
      _$GetPRiceChangeReasonEventImpl _value,
      $Res Function(_$GetPRiceChangeReasonEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rsnType = null,
  }) {
    return _then(_$GetPRiceChangeReasonEventImpl(
      rsnType: null == rsnType
          ? _value.rsnType
          : rsnType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetPRiceChangeReasonEventImpl implements GetPRiceChangeReasonEvent {
  const _$GetPRiceChangeReasonEventImpl({required this.rsnType});

  @override
  final String rsnType;

  @override
  String toString() {
    return 'PriceChangeReasonsEvent.getPRiceChangeReason(rsnType: $rsnType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPRiceChangeReasonEventImpl &&
            (identical(other.rsnType, rsnType) || other.rsnType == rsnType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rsnType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPRiceChangeReasonEventImplCopyWith<_$GetPRiceChangeReasonEventImpl>
      get copyWith => __$$GetPRiceChangeReasonEventImplCopyWithImpl<
          _$GetPRiceChangeReasonEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String rsnType) getPRiceChangeReason,
    required TResult Function() clearPriceChangeReason,
  }) {
    return getPRiceChangeReason(rsnType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String rsnType)? getPRiceChangeReason,
    TResult? Function()? clearPriceChangeReason,
  }) {
    return getPRiceChangeReason?.call(rsnType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String rsnType)? getPRiceChangeReason,
    TResult Function()? clearPriceChangeReason,
    required TResult orElse(),
  }) {
    if (getPRiceChangeReason != null) {
      return getPRiceChangeReason(rsnType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPRiceChangeReasonEvent value)
        getPRiceChangeReason,
    required TResult Function(ClearPriceChangeReason value)
        clearPriceChangeReason,
  }) {
    return getPRiceChangeReason(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPRiceChangeReasonEvent value)? getPRiceChangeReason,
    TResult? Function(ClearPriceChangeReason value)? clearPriceChangeReason,
  }) {
    return getPRiceChangeReason?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPRiceChangeReasonEvent value)? getPRiceChangeReason,
    TResult Function(ClearPriceChangeReason value)? clearPriceChangeReason,
    required TResult orElse(),
  }) {
    if (getPRiceChangeReason != null) {
      return getPRiceChangeReason(this);
    }
    return orElse();
  }
}

abstract class GetPRiceChangeReasonEvent implements PriceChangeReasonsEvent {
  const factory GetPRiceChangeReasonEvent({required final String rsnType}) =
      _$GetPRiceChangeReasonEventImpl;

  String get rsnType;
  @JsonKey(ignore: true)
  _$$GetPRiceChangeReasonEventImplCopyWith<_$GetPRiceChangeReasonEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearPriceChangeReasonImplCopyWith<$Res> {
  factory _$$ClearPriceChangeReasonImplCopyWith(
          _$ClearPriceChangeReasonImpl value,
          $Res Function(_$ClearPriceChangeReasonImpl) then) =
      __$$ClearPriceChangeReasonImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearPriceChangeReasonImplCopyWithImpl<$Res>
    extends _$PriceChangeReasonsEventCopyWithImpl<$Res,
        _$ClearPriceChangeReasonImpl>
    implements _$$ClearPriceChangeReasonImplCopyWith<$Res> {
  __$$ClearPriceChangeReasonImplCopyWithImpl(
      _$ClearPriceChangeReasonImpl _value,
      $Res Function(_$ClearPriceChangeReasonImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearPriceChangeReasonImpl implements ClearPriceChangeReason {
  const _$ClearPriceChangeReasonImpl();

  @override
  String toString() {
    return 'PriceChangeReasonsEvent.clearPriceChangeReason()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearPriceChangeReasonImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String rsnType) getPRiceChangeReason,
    required TResult Function() clearPriceChangeReason,
  }) {
    return clearPriceChangeReason();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String rsnType)? getPRiceChangeReason,
    TResult? Function()? clearPriceChangeReason,
  }) {
    return clearPriceChangeReason?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String rsnType)? getPRiceChangeReason,
    TResult Function()? clearPriceChangeReason,
    required TResult orElse(),
  }) {
    if (clearPriceChangeReason != null) {
      return clearPriceChangeReason();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPRiceChangeReasonEvent value)
        getPRiceChangeReason,
    required TResult Function(ClearPriceChangeReason value)
        clearPriceChangeReason,
  }) {
    return clearPriceChangeReason(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPRiceChangeReasonEvent value)? getPRiceChangeReason,
    TResult? Function(ClearPriceChangeReason value)? clearPriceChangeReason,
  }) {
    return clearPriceChangeReason?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPRiceChangeReasonEvent value)? getPRiceChangeReason,
    TResult Function(ClearPriceChangeReason value)? clearPriceChangeReason,
    required TResult orElse(),
  }) {
    if (clearPriceChangeReason != null) {
      return clearPriceChangeReason(this);
    }
    return orElse();
  }
}

abstract class ClearPriceChangeReason implements PriceChangeReasonsEvent {
  const factory ClearPriceChangeReason() = _$ClearPriceChangeReasonImpl;
}

/// @nodoc
mixin _$PriceChangeReasonsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PriceChangeReasonModel>? reasons)
        getPriceChangeReasons,
    required TResult Function() priceChangeReasonFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PriceChangeReasonModel>? reasons)?
        getPriceChangeReasons,
    TResult? Function()? priceChangeReasonFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PriceChangeReasonModel>? reasons)?
        getPriceChangeReasons,
    TResult Function()? priceChangeReasonFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPriceChangeReasonsState value)
        getPriceChangeReasons,
    required TResult Function(PriceChangeReasonFailed value)
        priceChangeReasonFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPriceChangeReasonsState value)? getPriceChangeReasons,
    TResult? Function(PriceChangeReasonFailed value)? priceChangeReasonFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPriceChangeReasonsState value)? getPriceChangeReasons,
    TResult Function(PriceChangeReasonFailed value)? priceChangeReasonFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PriceChangeReasonsStateCopyWith<$Res> {
  factory $PriceChangeReasonsStateCopyWith(PriceChangeReasonsState value,
          $Res Function(PriceChangeReasonsState) then) =
      _$PriceChangeReasonsStateCopyWithImpl<$Res, PriceChangeReasonsState>;
}

/// @nodoc
class _$PriceChangeReasonsStateCopyWithImpl<$Res,
        $Val extends PriceChangeReasonsState>
    implements $PriceChangeReasonsStateCopyWith<$Res> {
  _$PriceChangeReasonsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetPriceChangeReasonsStateImplCopyWith<$Res> {
  factory _$$GetPriceChangeReasonsStateImplCopyWith(
          _$GetPriceChangeReasonsStateImpl value,
          $Res Function(_$GetPriceChangeReasonsStateImpl) then) =
      __$$GetPriceChangeReasonsStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PriceChangeReasonModel>? reasons});
}

/// @nodoc
class __$$GetPriceChangeReasonsStateImplCopyWithImpl<$Res>
    extends _$PriceChangeReasonsStateCopyWithImpl<$Res,
        _$GetPriceChangeReasonsStateImpl>
    implements _$$GetPriceChangeReasonsStateImplCopyWith<$Res> {
  __$$GetPriceChangeReasonsStateImplCopyWithImpl(
      _$GetPriceChangeReasonsStateImpl _value,
      $Res Function(_$GetPriceChangeReasonsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reasons = freezed,
  }) {
    return _then(_$GetPriceChangeReasonsStateImpl(
      reasons: freezed == reasons
          ? _value._reasons
          : reasons // ignore: cast_nullable_to_non_nullable
              as List<PriceChangeReasonModel>?,
    ));
  }
}

/// @nodoc

class _$GetPriceChangeReasonsStateImpl implements GetPriceChangeReasonsState {
  const _$GetPriceChangeReasonsStateImpl(
      {required final List<PriceChangeReasonModel>? reasons})
      : _reasons = reasons;

  final List<PriceChangeReasonModel>? _reasons;
  @override
  List<PriceChangeReasonModel>? get reasons {
    final value = _reasons;
    if (value == null) return null;
    if (_reasons is EqualUnmodifiableListView) return _reasons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PriceChangeReasonsState.getPriceChangeReasons(reasons: $reasons)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPriceChangeReasonsStateImpl &&
            const DeepCollectionEquality().equals(other._reasons, _reasons));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_reasons));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPriceChangeReasonsStateImplCopyWith<_$GetPriceChangeReasonsStateImpl>
      get copyWith => __$$GetPriceChangeReasonsStateImplCopyWithImpl<
          _$GetPriceChangeReasonsStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PriceChangeReasonModel>? reasons)
        getPriceChangeReasons,
    required TResult Function() priceChangeReasonFailed,
  }) {
    return getPriceChangeReasons(reasons);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PriceChangeReasonModel>? reasons)?
        getPriceChangeReasons,
    TResult? Function()? priceChangeReasonFailed,
  }) {
    return getPriceChangeReasons?.call(reasons);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PriceChangeReasonModel>? reasons)?
        getPriceChangeReasons,
    TResult Function()? priceChangeReasonFailed,
    required TResult orElse(),
  }) {
    if (getPriceChangeReasons != null) {
      return getPriceChangeReasons(reasons);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPriceChangeReasonsState value)
        getPriceChangeReasons,
    required TResult Function(PriceChangeReasonFailed value)
        priceChangeReasonFailed,
  }) {
    return getPriceChangeReasons(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPriceChangeReasonsState value)? getPriceChangeReasons,
    TResult? Function(PriceChangeReasonFailed value)? priceChangeReasonFailed,
  }) {
    return getPriceChangeReasons?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPriceChangeReasonsState value)? getPriceChangeReasons,
    TResult Function(PriceChangeReasonFailed value)? priceChangeReasonFailed,
    required TResult orElse(),
  }) {
    if (getPriceChangeReasons != null) {
      return getPriceChangeReasons(this);
    }
    return orElse();
  }
}

abstract class GetPriceChangeReasonsState implements PriceChangeReasonsState {
  const factory GetPriceChangeReasonsState(
          {required final List<PriceChangeReasonModel>? reasons}) =
      _$GetPriceChangeReasonsStateImpl;

  List<PriceChangeReasonModel>? get reasons;
  @JsonKey(ignore: true)
  _$$GetPriceChangeReasonsStateImplCopyWith<_$GetPriceChangeReasonsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PriceChangeReasonFailedImplCopyWith<$Res> {
  factory _$$PriceChangeReasonFailedImplCopyWith(
          _$PriceChangeReasonFailedImpl value,
          $Res Function(_$PriceChangeReasonFailedImpl) then) =
      __$$PriceChangeReasonFailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PriceChangeReasonFailedImplCopyWithImpl<$Res>
    extends _$PriceChangeReasonsStateCopyWithImpl<$Res,
        _$PriceChangeReasonFailedImpl>
    implements _$$PriceChangeReasonFailedImplCopyWith<$Res> {
  __$$PriceChangeReasonFailedImplCopyWithImpl(
      _$PriceChangeReasonFailedImpl _value,
      $Res Function(_$PriceChangeReasonFailedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PriceChangeReasonFailedImpl implements PriceChangeReasonFailed {
  const _$PriceChangeReasonFailedImpl();

  @override
  String toString() {
    return 'PriceChangeReasonsState.priceChangeReasonFailed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriceChangeReasonFailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PriceChangeReasonModel>? reasons)
        getPriceChangeReasons,
    required TResult Function() priceChangeReasonFailed,
  }) {
    return priceChangeReasonFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PriceChangeReasonModel>? reasons)?
        getPriceChangeReasons,
    TResult? Function()? priceChangeReasonFailed,
  }) {
    return priceChangeReasonFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PriceChangeReasonModel>? reasons)?
        getPriceChangeReasons,
    TResult Function()? priceChangeReasonFailed,
    required TResult orElse(),
  }) {
    if (priceChangeReasonFailed != null) {
      return priceChangeReasonFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPriceChangeReasonsState value)
        getPriceChangeReasons,
    required TResult Function(PriceChangeReasonFailed value)
        priceChangeReasonFailed,
  }) {
    return priceChangeReasonFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPriceChangeReasonsState value)? getPriceChangeReasons,
    TResult? Function(PriceChangeReasonFailed value)? priceChangeReasonFailed,
  }) {
    return priceChangeReasonFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPriceChangeReasonsState value)? getPriceChangeReasons,
    TResult Function(PriceChangeReasonFailed value)? priceChangeReasonFailed,
    required TResult orElse(),
  }) {
    if (priceChangeReasonFailed != null) {
      return priceChangeReasonFailed(this);
    }
    return orElse();
  }
}

abstract class PriceChangeReasonFailed implements PriceChangeReasonsState {
  const factory PriceChangeReasonFailed() = _$PriceChangeReasonFailedImpl;
}
