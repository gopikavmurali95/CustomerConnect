// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'partial_delivery_reason_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PartialDeliveryReasonEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String rsnType) getPartialDeliveryEvent,
    required TResult Function() clearReasonPartialDelivery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String rsnType)? getPartialDeliveryEvent,
    TResult? Function()? clearReasonPartialDelivery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String rsnType)? getPartialDeliveryEvent,
    TResult Function()? clearReasonPartialDelivery,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPartialDeliveryEvent value)
        getPartialDeliveryEvent,
    required TResult Function(ClearReasonPartialDelivery value)
        clearReasonPartialDelivery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPartialDeliveryEvent value)? getPartialDeliveryEvent,
    TResult? Function(ClearReasonPartialDelivery value)?
        clearReasonPartialDelivery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPartialDeliveryEvent value)? getPartialDeliveryEvent,
    TResult Function(ClearReasonPartialDelivery value)?
        clearReasonPartialDelivery,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartialDeliveryReasonEventCopyWith<$Res> {
  factory $PartialDeliveryReasonEventCopyWith(PartialDeliveryReasonEvent value,
          $Res Function(PartialDeliveryReasonEvent) then) =
      _$PartialDeliveryReasonEventCopyWithImpl<$Res,
          PartialDeliveryReasonEvent>;
}

/// @nodoc
class _$PartialDeliveryReasonEventCopyWithImpl<$Res,
        $Val extends PartialDeliveryReasonEvent>
    implements $PartialDeliveryReasonEventCopyWith<$Res> {
  _$PartialDeliveryReasonEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetPartialDeliveryEventImplCopyWith<$Res> {
  factory _$$GetPartialDeliveryEventImplCopyWith(
          _$GetPartialDeliveryEventImpl value,
          $Res Function(_$GetPartialDeliveryEventImpl) then) =
      __$$GetPartialDeliveryEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String rsnType});
}

/// @nodoc
class __$$GetPartialDeliveryEventImplCopyWithImpl<$Res>
    extends _$PartialDeliveryReasonEventCopyWithImpl<$Res,
        _$GetPartialDeliveryEventImpl>
    implements _$$GetPartialDeliveryEventImplCopyWith<$Res> {
  __$$GetPartialDeliveryEventImplCopyWithImpl(
      _$GetPartialDeliveryEventImpl _value,
      $Res Function(_$GetPartialDeliveryEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rsnType = null,
  }) {
    return _then(_$GetPartialDeliveryEventImpl(
      rsnType: null == rsnType
          ? _value.rsnType
          : rsnType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetPartialDeliveryEventImpl implements GetPartialDeliveryEvent {
  const _$GetPartialDeliveryEventImpl({required this.rsnType});

  @override
  final String rsnType;

  @override
  String toString() {
    return 'PartialDeliveryReasonEvent.getPartialDeliveryEvent(rsnType: $rsnType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPartialDeliveryEventImpl &&
            (identical(other.rsnType, rsnType) || other.rsnType == rsnType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rsnType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPartialDeliveryEventImplCopyWith<_$GetPartialDeliveryEventImpl>
      get copyWith => __$$GetPartialDeliveryEventImplCopyWithImpl<
          _$GetPartialDeliveryEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String rsnType) getPartialDeliveryEvent,
    required TResult Function() clearReasonPartialDelivery,
  }) {
    return getPartialDeliveryEvent(rsnType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String rsnType)? getPartialDeliveryEvent,
    TResult? Function()? clearReasonPartialDelivery,
  }) {
    return getPartialDeliveryEvent?.call(rsnType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String rsnType)? getPartialDeliveryEvent,
    TResult Function()? clearReasonPartialDelivery,
    required TResult orElse(),
  }) {
    if (getPartialDeliveryEvent != null) {
      return getPartialDeliveryEvent(rsnType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPartialDeliveryEvent value)
        getPartialDeliveryEvent,
    required TResult Function(ClearReasonPartialDelivery value)
        clearReasonPartialDelivery,
  }) {
    return getPartialDeliveryEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPartialDeliveryEvent value)? getPartialDeliveryEvent,
    TResult? Function(ClearReasonPartialDelivery value)?
        clearReasonPartialDelivery,
  }) {
    return getPartialDeliveryEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPartialDeliveryEvent value)? getPartialDeliveryEvent,
    TResult Function(ClearReasonPartialDelivery value)?
        clearReasonPartialDelivery,
    required TResult orElse(),
  }) {
    if (getPartialDeliveryEvent != null) {
      return getPartialDeliveryEvent(this);
    }
    return orElse();
  }
}

abstract class GetPartialDeliveryEvent implements PartialDeliveryReasonEvent {
  const factory GetPartialDeliveryEvent({required final String rsnType}) =
      _$GetPartialDeliveryEventImpl;

  String get rsnType;
  @JsonKey(ignore: true)
  _$$GetPartialDeliveryEventImplCopyWith<_$GetPartialDeliveryEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearReasonPartialDeliveryImplCopyWith<$Res> {
  factory _$$ClearReasonPartialDeliveryImplCopyWith(
          _$ClearReasonPartialDeliveryImpl value,
          $Res Function(_$ClearReasonPartialDeliveryImpl) then) =
      __$$ClearReasonPartialDeliveryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearReasonPartialDeliveryImplCopyWithImpl<$Res>
    extends _$PartialDeliveryReasonEventCopyWithImpl<$Res,
        _$ClearReasonPartialDeliveryImpl>
    implements _$$ClearReasonPartialDeliveryImplCopyWith<$Res> {
  __$$ClearReasonPartialDeliveryImplCopyWithImpl(
      _$ClearReasonPartialDeliveryImpl _value,
      $Res Function(_$ClearReasonPartialDeliveryImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearReasonPartialDeliveryImpl implements ClearReasonPartialDelivery {
  const _$ClearReasonPartialDeliveryImpl();

  @override
  String toString() {
    return 'PartialDeliveryReasonEvent.clearReasonPartialDelivery()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearReasonPartialDeliveryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String rsnType) getPartialDeliveryEvent,
    required TResult Function() clearReasonPartialDelivery,
  }) {
    return clearReasonPartialDelivery();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String rsnType)? getPartialDeliveryEvent,
    TResult? Function()? clearReasonPartialDelivery,
  }) {
    return clearReasonPartialDelivery?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String rsnType)? getPartialDeliveryEvent,
    TResult Function()? clearReasonPartialDelivery,
    required TResult orElse(),
  }) {
    if (clearReasonPartialDelivery != null) {
      return clearReasonPartialDelivery();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPartialDeliveryEvent value)
        getPartialDeliveryEvent,
    required TResult Function(ClearReasonPartialDelivery value)
        clearReasonPartialDelivery,
  }) {
    return clearReasonPartialDelivery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPartialDeliveryEvent value)? getPartialDeliveryEvent,
    TResult? Function(ClearReasonPartialDelivery value)?
        clearReasonPartialDelivery,
  }) {
    return clearReasonPartialDelivery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPartialDeliveryEvent value)? getPartialDeliveryEvent,
    TResult Function(ClearReasonPartialDelivery value)?
        clearReasonPartialDelivery,
    required TResult orElse(),
  }) {
    if (clearReasonPartialDelivery != null) {
      return clearReasonPartialDelivery(this);
    }
    return orElse();
  }
}

abstract class ClearReasonPartialDelivery
    implements PartialDeliveryReasonEvent {
  const factory ClearReasonPartialDelivery() = _$ClearReasonPartialDeliveryImpl;
}

/// @nodoc
mixin _$PartialDeliveryReasonState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PartialDeliveryReasonModel>? reasons)
        getPArtialDeliveryReasonsState,
    required TResult Function() partialDeliveryFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PartialDeliveryReasonModel>? reasons)?
        getPArtialDeliveryReasonsState,
    TResult? Function()? partialDeliveryFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PartialDeliveryReasonModel>? reasons)?
        getPArtialDeliveryReasonsState,
    TResult Function()? partialDeliveryFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPArtialDeliveryReasonsState value)
        getPArtialDeliveryReasonsState,
    required TResult Function(PartialDeliveryFailedState value)
        partialDeliveryFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPArtialDeliveryReasonsState value)?
        getPArtialDeliveryReasonsState,
    TResult? Function(PartialDeliveryFailedState value)?
        partialDeliveryFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPArtialDeliveryReasonsState value)?
        getPArtialDeliveryReasonsState,
    TResult Function(PartialDeliveryFailedState value)?
        partialDeliveryFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartialDeliveryReasonStateCopyWith<$Res> {
  factory $PartialDeliveryReasonStateCopyWith(PartialDeliveryReasonState value,
          $Res Function(PartialDeliveryReasonState) then) =
      _$PartialDeliveryReasonStateCopyWithImpl<$Res,
          PartialDeliveryReasonState>;
}

/// @nodoc
class _$PartialDeliveryReasonStateCopyWithImpl<$Res,
        $Val extends PartialDeliveryReasonState>
    implements $PartialDeliveryReasonStateCopyWith<$Res> {
  _$PartialDeliveryReasonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetPArtialDeliveryReasonsStateImplCopyWith<$Res> {
  factory _$$GetPArtialDeliveryReasonsStateImplCopyWith(
          _$GetPArtialDeliveryReasonsStateImpl value,
          $Res Function(_$GetPArtialDeliveryReasonsStateImpl) then) =
      __$$GetPArtialDeliveryReasonsStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PartialDeliveryReasonModel>? reasons});
}

/// @nodoc
class __$$GetPArtialDeliveryReasonsStateImplCopyWithImpl<$Res>
    extends _$PartialDeliveryReasonStateCopyWithImpl<$Res,
        _$GetPArtialDeliveryReasonsStateImpl>
    implements _$$GetPArtialDeliveryReasonsStateImplCopyWith<$Res> {
  __$$GetPArtialDeliveryReasonsStateImplCopyWithImpl(
      _$GetPArtialDeliveryReasonsStateImpl _value,
      $Res Function(_$GetPArtialDeliveryReasonsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reasons = freezed,
  }) {
    return _then(_$GetPArtialDeliveryReasonsStateImpl(
      reasons: freezed == reasons
          ? _value._reasons
          : reasons // ignore: cast_nullable_to_non_nullable
              as List<PartialDeliveryReasonModel>?,
    ));
  }
}

/// @nodoc

class _$GetPArtialDeliveryReasonsStateImpl
    implements GetPArtialDeliveryReasonsState {
  const _$GetPArtialDeliveryReasonsStateImpl(
      {required final List<PartialDeliveryReasonModel>? reasons})
      : _reasons = reasons;

  final List<PartialDeliveryReasonModel>? _reasons;
  @override
  List<PartialDeliveryReasonModel>? get reasons {
    final value = _reasons;
    if (value == null) return null;
    if (_reasons is EqualUnmodifiableListView) return _reasons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PartialDeliveryReasonState.getPArtialDeliveryReasonsState(reasons: $reasons)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPArtialDeliveryReasonsStateImpl &&
            const DeepCollectionEquality().equals(other._reasons, _reasons));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_reasons));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPArtialDeliveryReasonsStateImplCopyWith<
          _$GetPArtialDeliveryReasonsStateImpl>
      get copyWith => __$$GetPArtialDeliveryReasonsStateImplCopyWithImpl<
          _$GetPArtialDeliveryReasonsStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PartialDeliveryReasonModel>? reasons)
        getPArtialDeliveryReasonsState,
    required TResult Function() partialDeliveryFailedState,
  }) {
    return getPArtialDeliveryReasonsState(reasons);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PartialDeliveryReasonModel>? reasons)?
        getPArtialDeliveryReasonsState,
    TResult? Function()? partialDeliveryFailedState,
  }) {
    return getPArtialDeliveryReasonsState?.call(reasons);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PartialDeliveryReasonModel>? reasons)?
        getPArtialDeliveryReasonsState,
    TResult Function()? partialDeliveryFailedState,
    required TResult orElse(),
  }) {
    if (getPArtialDeliveryReasonsState != null) {
      return getPArtialDeliveryReasonsState(reasons);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPArtialDeliveryReasonsState value)
        getPArtialDeliveryReasonsState,
    required TResult Function(PartialDeliveryFailedState value)
        partialDeliveryFailedState,
  }) {
    return getPArtialDeliveryReasonsState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPArtialDeliveryReasonsState value)?
        getPArtialDeliveryReasonsState,
    TResult? Function(PartialDeliveryFailedState value)?
        partialDeliveryFailedState,
  }) {
    return getPArtialDeliveryReasonsState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPArtialDeliveryReasonsState value)?
        getPArtialDeliveryReasonsState,
    TResult Function(PartialDeliveryFailedState value)?
        partialDeliveryFailedState,
    required TResult orElse(),
  }) {
    if (getPArtialDeliveryReasonsState != null) {
      return getPArtialDeliveryReasonsState(this);
    }
    return orElse();
  }
}

abstract class GetPArtialDeliveryReasonsState
    implements PartialDeliveryReasonState {
  const factory GetPArtialDeliveryReasonsState(
          {required final List<PartialDeliveryReasonModel>? reasons}) =
      _$GetPArtialDeliveryReasonsStateImpl;

  List<PartialDeliveryReasonModel>? get reasons;
  @JsonKey(ignore: true)
  _$$GetPArtialDeliveryReasonsStateImplCopyWith<
          _$GetPArtialDeliveryReasonsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PartialDeliveryFailedStateImplCopyWith<$Res> {
  factory _$$PartialDeliveryFailedStateImplCopyWith(
          _$PartialDeliveryFailedStateImpl value,
          $Res Function(_$PartialDeliveryFailedStateImpl) then) =
      __$$PartialDeliveryFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PartialDeliveryFailedStateImplCopyWithImpl<$Res>
    extends _$PartialDeliveryReasonStateCopyWithImpl<$Res,
        _$PartialDeliveryFailedStateImpl>
    implements _$$PartialDeliveryFailedStateImplCopyWith<$Res> {
  __$$PartialDeliveryFailedStateImplCopyWithImpl(
      _$PartialDeliveryFailedStateImpl _value,
      $Res Function(_$PartialDeliveryFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PartialDeliveryFailedStateImpl implements PartialDeliveryFailedState {
  const _$PartialDeliveryFailedStateImpl();

  @override
  String toString() {
    return 'PartialDeliveryReasonState.partialDeliveryFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PartialDeliveryFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PartialDeliveryReasonModel>? reasons)
        getPArtialDeliveryReasonsState,
    required TResult Function() partialDeliveryFailedState,
  }) {
    return partialDeliveryFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PartialDeliveryReasonModel>? reasons)?
        getPArtialDeliveryReasonsState,
    TResult? Function()? partialDeliveryFailedState,
  }) {
    return partialDeliveryFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PartialDeliveryReasonModel>? reasons)?
        getPArtialDeliveryReasonsState,
    TResult Function()? partialDeliveryFailedState,
    required TResult orElse(),
  }) {
    if (partialDeliveryFailedState != null) {
      return partialDeliveryFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPArtialDeliveryReasonsState value)
        getPArtialDeliveryReasonsState,
    required TResult Function(PartialDeliveryFailedState value)
        partialDeliveryFailedState,
  }) {
    return partialDeliveryFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPArtialDeliveryReasonsState value)?
        getPArtialDeliveryReasonsState,
    TResult? Function(PartialDeliveryFailedState value)?
        partialDeliveryFailedState,
  }) {
    return partialDeliveryFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPArtialDeliveryReasonsState value)?
        getPArtialDeliveryReasonsState,
    TResult Function(PartialDeliveryFailedState value)?
        partialDeliveryFailedState,
    required TResult orElse(),
  }) {
    if (partialDeliveryFailedState != null) {
      return partialDeliveryFailedState(this);
    }
    return orElse();
  }
}

abstract class PartialDeliveryFailedState
    implements PartialDeliveryReasonState {
  const factory PartialDeliveryFailedState() = _$PartialDeliveryFailedStateImpl;
}
