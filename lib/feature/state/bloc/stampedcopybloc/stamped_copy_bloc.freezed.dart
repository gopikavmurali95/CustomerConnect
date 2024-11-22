// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stamped_copy_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StampedCopyEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String invId) generateStampedCopyEvent,
    required TResult Function() stampedCopyLoadingEvent,
    required TResult Function() clearStampedCopy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String invId)? generateStampedCopyEvent,
    TResult? Function()? stampedCopyLoadingEvent,
    TResult? Function()? clearStampedCopy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String invId)? generateStampedCopyEvent,
    TResult Function()? stampedCopyLoadingEvent,
    TResult Function()? clearStampedCopy,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GenerateStampedCopyEvent value)
        generateStampedCopyEvent,
    required TResult Function(StampedCopyLoadingEvent value)
        stampedCopyLoadingEvent,
    required TResult Function(ClearStampedCopy value) clearStampedCopy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenerateStampedCopyEvent value)? generateStampedCopyEvent,
    TResult? Function(StampedCopyLoadingEvent value)? stampedCopyLoadingEvent,
    TResult? Function(ClearStampedCopy value)? clearStampedCopy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenerateStampedCopyEvent value)? generateStampedCopyEvent,
    TResult Function(StampedCopyLoadingEvent value)? stampedCopyLoadingEvent,
    TResult Function(ClearStampedCopy value)? clearStampedCopy,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StampedCopyEventCopyWith<$Res> {
  factory $StampedCopyEventCopyWith(
          StampedCopyEvent value, $Res Function(StampedCopyEvent) then) =
      _$StampedCopyEventCopyWithImpl<$Res, StampedCopyEvent>;
}

/// @nodoc
class _$StampedCopyEventCopyWithImpl<$Res, $Val extends StampedCopyEvent>
    implements $StampedCopyEventCopyWith<$Res> {
  _$StampedCopyEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GenerateStampedCopyEventImplCopyWith<$Res> {
  factory _$$GenerateStampedCopyEventImplCopyWith(
          _$GenerateStampedCopyEventImpl value,
          $Res Function(_$GenerateStampedCopyEventImpl) then) =
      __$$GenerateStampedCopyEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String invId});
}

/// @nodoc
class __$$GenerateStampedCopyEventImplCopyWithImpl<$Res>
    extends _$StampedCopyEventCopyWithImpl<$Res, _$GenerateStampedCopyEventImpl>
    implements _$$GenerateStampedCopyEventImplCopyWith<$Res> {
  __$$GenerateStampedCopyEventImplCopyWithImpl(
      _$GenerateStampedCopyEventImpl _value,
      $Res Function(_$GenerateStampedCopyEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invId = null,
  }) {
    return _then(_$GenerateStampedCopyEventImpl(
      invId: null == invId
          ? _value.invId
          : invId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GenerateStampedCopyEventImpl implements GenerateStampedCopyEvent {
  const _$GenerateStampedCopyEventImpl({required this.invId});

  @override
  final String invId;

  @override
  String toString() {
    return 'StampedCopyEvent.generateStampedCopyEvent(invId: $invId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenerateStampedCopyEventImpl &&
            (identical(other.invId, invId) || other.invId == invId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, invId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenerateStampedCopyEventImplCopyWith<_$GenerateStampedCopyEventImpl>
      get copyWith => __$$GenerateStampedCopyEventImplCopyWithImpl<
          _$GenerateStampedCopyEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String invId) generateStampedCopyEvent,
    required TResult Function() stampedCopyLoadingEvent,
    required TResult Function() clearStampedCopy,
  }) {
    return generateStampedCopyEvent(invId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String invId)? generateStampedCopyEvent,
    TResult? Function()? stampedCopyLoadingEvent,
    TResult? Function()? clearStampedCopy,
  }) {
    return generateStampedCopyEvent?.call(invId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String invId)? generateStampedCopyEvent,
    TResult Function()? stampedCopyLoadingEvent,
    TResult Function()? clearStampedCopy,
    required TResult orElse(),
  }) {
    if (generateStampedCopyEvent != null) {
      return generateStampedCopyEvent(invId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GenerateStampedCopyEvent value)
        generateStampedCopyEvent,
    required TResult Function(StampedCopyLoadingEvent value)
        stampedCopyLoadingEvent,
    required TResult Function(ClearStampedCopy value) clearStampedCopy,
  }) {
    return generateStampedCopyEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenerateStampedCopyEvent value)? generateStampedCopyEvent,
    TResult? Function(StampedCopyLoadingEvent value)? stampedCopyLoadingEvent,
    TResult? Function(ClearStampedCopy value)? clearStampedCopy,
  }) {
    return generateStampedCopyEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenerateStampedCopyEvent value)? generateStampedCopyEvent,
    TResult Function(StampedCopyLoadingEvent value)? stampedCopyLoadingEvent,
    TResult Function(ClearStampedCopy value)? clearStampedCopy,
    required TResult orElse(),
  }) {
    if (generateStampedCopyEvent != null) {
      return generateStampedCopyEvent(this);
    }
    return orElse();
  }
}

abstract class GenerateStampedCopyEvent implements StampedCopyEvent {
  const factory GenerateStampedCopyEvent({required final String invId}) =
      _$GenerateStampedCopyEventImpl;

  String get invId;
  @JsonKey(ignore: true)
  _$$GenerateStampedCopyEventImplCopyWith<_$GenerateStampedCopyEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StampedCopyLoadingEventImplCopyWith<$Res> {
  factory _$$StampedCopyLoadingEventImplCopyWith(
          _$StampedCopyLoadingEventImpl value,
          $Res Function(_$StampedCopyLoadingEventImpl) then) =
      __$$StampedCopyLoadingEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StampedCopyLoadingEventImplCopyWithImpl<$Res>
    extends _$StampedCopyEventCopyWithImpl<$Res, _$StampedCopyLoadingEventImpl>
    implements _$$StampedCopyLoadingEventImplCopyWith<$Res> {
  __$$StampedCopyLoadingEventImplCopyWithImpl(
      _$StampedCopyLoadingEventImpl _value,
      $Res Function(_$StampedCopyLoadingEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StampedCopyLoadingEventImpl implements StampedCopyLoadingEvent {
  const _$StampedCopyLoadingEventImpl();

  @override
  String toString() {
    return 'StampedCopyEvent.stampedCopyLoadingEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StampedCopyLoadingEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String invId) generateStampedCopyEvent,
    required TResult Function() stampedCopyLoadingEvent,
    required TResult Function() clearStampedCopy,
  }) {
    return stampedCopyLoadingEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String invId)? generateStampedCopyEvent,
    TResult? Function()? stampedCopyLoadingEvent,
    TResult? Function()? clearStampedCopy,
  }) {
    return stampedCopyLoadingEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String invId)? generateStampedCopyEvent,
    TResult Function()? stampedCopyLoadingEvent,
    TResult Function()? clearStampedCopy,
    required TResult orElse(),
  }) {
    if (stampedCopyLoadingEvent != null) {
      return stampedCopyLoadingEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GenerateStampedCopyEvent value)
        generateStampedCopyEvent,
    required TResult Function(StampedCopyLoadingEvent value)
        stampedCopyLoadingEvent,
    required TResult Function(ClearStampedCopy value) clearStampedCopy,
  }) {
    return stampedCopyLoadingEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenerateStampedCopyEvent value)? generateStampedCopyEvent,
    TResult? Function(StampedCopyLoadingEvent value)? stampedCopyLoadingEvent,
    TResult? Function(ClearStampedCopy value)? clearStampedCopy,
  }) {
    return stampedCopyLoadingEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenerateStampedCopyEvent value)? generateStampedCopyEvent,
    TResult Function(StampedCopyLoadingEvent value)? stampedCopyLoadingEvent,
    TResult Function(ClearStampedCopy value)? clearStampedCopy,
    required TResult orElse(),
  }) {
    if (stampedCopyLoadingEvent != null) {
      return stampedCopyLoadingEvent(this);
    }
    return orElse();
  }
}

abstract class StampedCopyLoadingEvent implements StampedCopyEvent {
  const factory StampedCopyLoadingEvent() = _$StampedCopyLoadingEventImpl;
}

/// @nodoc
abstract class _$$ClearStampedCopyImplCopyWith<$Res> {
  factory _$$ClearStampedCopyImplCopyWith(_$ClearStampedCopyImpl value,
          $Res Function(_$ClearStampedCopyImpl) then) =
      __$$ClearStampedCopyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearStampedCopyImplCopyWithImpl<$Res>
    extends _$StampedCopyEventCopyWithImpl<$Res, _$ClearStampedCopyImpl>
    implements _$$ClearStampedCopyImplCopyWith<$Res> {
  __$$ClearStampedCopyImplCopyWithImpl(_$ClearStampedCopyImpl _value,
      $Res Function(_$ClearStampedCopyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearStampedCopyImpl implements ClearStampedCopy {
  const _$ClearStampedCopyImpl();

  @override
  String toString() {
    return 'StampedCopyEvent.clearStampedCopy()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearStampedCopyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String invId) generateStampedCopyEvent,
    required TResult Function() stampedCopyLoadingEvent,
    required TResult Function() clearStampedCopy,
  }) {
    return clearStampedCopy();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String invId)? generateStampedCopyEvent,
    TResult? Function()? stampedCopyLoadingEvent,
    TResult? Function()? clearStampedCopy,
  }) {
    return clearStampedCopy?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String invId)? generateStampedCopyEvent,
    TResult Function()? stampedCopyLoadingEvent,
    TResult Function()? clearStampedCopy,
    required TResult orElse(),
  }) {
    if (clearStampedCopy != null) {
      return clearStampedCopy();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GenerateStampedCopyEvent value)
        generateStampedCopyEvent,
    required TResult Function(StampedCopyLoadingEvent value)
        stampedCopyLoadingEvent,
    required TResult Function(ClearStampedCopy value) clearStampedCopy,
  }) {
    return clearStampedCopy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenerateStampedCopyEvent value)? generateStampedCopyEvent,
    TResult? Function(StampedCopyLoadingEvent value)? stampedCopyLoadingEvent,
    TResult? Function(ClearStampedCopy value)? clearStampedCopy,
  }) {
    return clearStampedCopy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenerateStampedCopyEvent value)? generateStampedCopyEvent,
    TResult Function(StampedCopyLoadingEvent value)? stampedCopyLoadingEvent,
    TResult Function(ClearStampedCopy value)? clearStampedCopy,
    required TResult orElse(),
  }) {
    if (clearStampedCopy != null) {
      return clearStampedCopy(this);
    }
    return orElse();
  }
}

abstract class ClearStampedCopy implements StampedCopyEvent {
  const factory ClearStampedCopy() = _$ClearStampedCopyImpl;
}

/// @nodoc
mixin _$StampedCopyState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StampedCopyModel? copy) generateStampedCopy,
    required TResult Function() stampedCopyFailed,
    required TResult Function() stampedCopyLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StampedCopyModel? copy)? generateStampedCopy,
    TResult? Function()? stampedCopyFailed,
    TResult? Function()? stampedCopyLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StampedCopyModel? copy)? generateStampedCopy,
    TResult Function()? stampedCopyFailed,
    TResult Function()? stampedCopyLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GenerateStampedCopy value) generateStampedCopy,
    required TResult Function(StampedCopyFailed value) stampedCopyFailed,
    required TResult Function(StampedCopyLoading value) stampedCopyLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenerateStampedCopy value)? generateStampedCopy,
    TResult? Function(StampedCopyFailed value)? stampedCopyFailed,
    TResult? Function(StampedCopyLoading value)? stampedCopyLoading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenerateStampedCopy value)? generateStampedCopy,
    TResult Function(StampedCopyFailed value)? stampedCopyFailed,
    TResult Function(StampedCopyLoading value)? stampedCopyLoading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StampedCopyStateCopyWith<$Res> {
  factory $StampedCopyStateCopyWith(
          StampedCopyState value, $Res Function(StampedCopyState) then) =
      _$StampedCopyStateCopyWithImpl<$Res, StampedCopyState>;
}

/// @nodoc
class _$StampedCopyStateCopyWithImpl<$Res, $Val extends StampedCopyState>
    implements $StampedCopyStateCopyWith<$Res> {
  _$StampedCopyStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GenerateStampedCopyImplCopyWith<$Res> {
  factory _$$GenerateStampedCopyImplCopyWith(_$GenerateStampedCopyImpl value,
          $Res Function(_$GenerateStampedCopyImpl) then) =
      __$$GenerateStampedCopyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({StampedCopyModel? copy});
}

/// @nodoc
class __$$GenerateStampedCopyImplCopyWithImpl<$Res>
    extends _$StampedCopyStateCopyWithImpl<$Res, _$GenerateStampedCopyImpl>
    implements _$$GenerateStampedCopyImplCopyWith<$Res> {
  __$$GenerateStampedCopyImplCopyWithImpl(_$GenerateStampedCopyImpl _value,
      $Res Function(_$GenerateStampedCopyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? copy = freezed,
  }) {
    return _then(_$GenerateStampedCopyImpl(
      copy: freezed == copy
          ? _value.copy
          : copy // ignore: cast_nullable_to_non_nullable
              as StampedCopyModel?,
    ));
  }
}

/// @nodoc

class _$GenerateStampedCopyImpl implements GenerateStampedCopy {
  const _$GenerateStampedCopyImpl({required this.copy});

  @override
  final StampedCopyModel? copy;

  @override
  String toString() {
    return 'StampedCopyState.generateStampedCopy(copy: $copy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenerateStampedCopyImpl &&
            (identical(other.copy, copy) || other.copy == copy));
  }

  @override
  int get hashCode => Object.hash(runtimeType, copy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenerateStampedCopyImplCopyWith<_$GenerateStampedCopyImpl> get copyWith =>
      __$$GenerateStampedCopyImplCopyWithImpl<_$GenerateStampedCopyImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StampedCopyModel? copy) generateStampedCopy,
    required TResult Function() stampedCopyFailed,
    required TResult Function() stampedCopyLoading,
  }) {
    return generateStampedCopy(copy);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StampedCopyModel? copy)? generateStampedCopy,
    TResult? Function()? stampedCopyFailed,
    TResult? Function()? stampedCopyLoading,
  }) {
    return generateStampedCopy?.call(copy);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StampedCopyModel? copy)? generateStampedCopy,
    TResult Function()? stampedCopyFailed,
    TResult Function()? stampedCopyLoading,
    required TResult orElse(),
  }) {
    if (generateStampedCopy != null) {
      return generateStampedCopy(copy);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GenerateStampedCopy value) generateStampedCopy,
    required TResult Function(StampedCopyFailed value) stampedCopyFailed,
    required TResult Function(StampedCopyLoading value) stampedCopyLoading,
  }) {
    return generateStampedCopy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenerateStampedCopy value)? generateStampedCopy,
    TResult? Function(StampedCopyFailed value)? stampedCopyFailed,
    TResult? Function(StampedCopyLoading value)? stampedCopyLoading,
  }) {
    return generateStampedCopy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenerateStampedCopy value)? generateStampedCopy,
    TResult Function(StampedCopyFailed value)? stampedCopyFailed,
    TResult Function(StampedCopyLoading value)? stampedCopyLoading,
    required TResult orElse(),
  }) {
    if (generateStampedCopy != null) {
      return generateStampedCopy(this);
    }
    return orElse();
  }
}

abstract class GenerateStampedCopy implements StampedCopyState {
  const factory GenerateStampedCopy({required final StampedCopyModel? copy}) =
      _$GenerateStampedCopyImpl;

  StampedCopyModel? get copy;
  @JsonKey(ignore: true)
  _$$GenerateStampedCopyImplCopyWith<_$GenerateStampedCopyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StampedCopyFailedImplCopyWith<$Res> {
  factory _$$StampedCopyFailedImplCopyWith(_$StampedCopyFailedImpl value,
          $Res Function(_$StampedCopyFailedImpl) then) =
      __$$StampedCopyFailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StampedCopyFailedImplCopyWithImpl<$Res>
    extends _$StampedCopyStateCopyWithImpl<$Res, _$StampedCopyFailedImpl>
    implements _$$StampedCopyFailedImplCopyWith<$Res> {
  __$$StampedCopyFailedImplCopyWithImpl(_$StampedCopyFailedImpl _value,
      $Res Function(_$StampedCopyFailedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StampedCopyFailedImpl implements StampedCopyFailed {
  const _$StampedCopyFailedImpl();

  @override
  String toString() {
    return 'StampedCopyState.stampedCopyFailed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StampedCopyFailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StampedCopyModel? copy) generateStampedCopy,
    required TResult Function() stampedCopyFailed,
    required TResult Function() stampedCopyLoading,
  }) {
    return stampedCopyFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StampedCopyModel? copy)? generateStampedCopy,
    TResult? Function()? stampedCopyFailed,
    TResult? Function()? stampedCopyLoading,
  }) {
    return stampedCopyFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StampedCopyModel? copy)? generateStampedCopy,
    TResult Function()? stampedCopyFailed,
    TResult Function()? stampedCopyLoading,
    required TResult orElse(),
  }) {
    if (stampedCopyFailed != null) {
      return stampedCopyFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GenerateStampedCopy value) generateStampedCopy,
    required TResult Function(StampedCopyFailed value) stampedCopyFailed,
    required TResult Function(StampedCopyLoading value) stampedCopyLoading,
  }) {
    return stampedCopyFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenerateStampedCopy value)? generateStampedCopy,
    TResult? Function(StampedCopyFailed value)? stampedCopyFailed,
    TResult? Function(StampedCopyLoading value)? stampedCopyLoading,
  }) {
    return stampedCopyFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenerateStampedCopy value)? generateStampedCopy,
    TResult Function(StampedCopyFailed value)? stampedCopyFailed,
    TResult Function(StampedCopyLoading value)? stampedCopyLoading,
    required TResult orElse(),
  }) {
    if (stampedCopyFailed != null) {
      return stampedCopyFailed(this);
    }
    return orElse();
  }
}

abstract class StampedCopyFailed implements StampedCopyState {
  const factory StampedCopyFailed() = _$StampedCopyFailedImpl;
}

/// @nodoc
abstract class _$$StampedCopyLoadingImplCopyWith<$Res> {
  factory _$$StampedCopyLoadingImplCopyWith(_$StampedCopyLoadingImpl value,
          $Res Function(_$StampedCopyLoadingImpl) then) =
      __$$StampedCopyLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StampedCopyLoadingImplCopyWithImpl<$Res>
    extends _$StampedCopyStateCopyWithImpl<$Res, _$StampedCopyLoadingImpl>
    implements _$$StampedCopyLoadingImplCopyWith<$Res> {
  __$$StampedCopyLoadingImplCopyWithImpl(_$StampedCopyLoadingImpl _value,
      $Res Function(_$StampedCopyLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StampedCopyLoadingImpl implements StampedCopyLoading {
  const _$StampedCopyLoadingImpl();

  @override
  String toString() {
    return 'StampedCopyState.stampedCopyLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StampedCopyLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(StampedCopyModel? copy) generateStampedCopy,
    required TResult Function() stampedCopyFailed,
    required TResult Function() stampedCopyLoading,
  }) {
    return stampedCopyLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(StampedCopyModel? copy)? generateStampedCopy,
    TResult? Function()? stampedCopyFailed,
    TResult? Function()? stampedCopyLoading,
  }) {
    return stampedCopyLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(StampedCopyModel? copy)? generateStampedCopy,
    TResult Function()? stampedCopyFailed,
    TResult Function()? stampedCopyLoading,
    required TResult orElse(),
  }) {
    if (stampedCopyLoading != null) {
      return stampedCopyLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GenerateStampedCopy value) generateStampedCopy,
    required TResult Function(StampedCopyFailed value) stampedCopyFailed,
    required TResult Function(StampedCopyLoading value) stampedCopyLoading,
  }) {
    return stampedCopyLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenerateStampedCopy value)? generateStampedCopy,
    TResult? Function(StampedCopyFailed value)? stampedCopyFailed,
    TResult? Function(StampedCopyLoading value)? stampedCopyLoading,
  }) {
    return stampedCopyLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenerateStampedCopy value)? generateStampedCopy,
    TResult Function(StampedCopyFailed value)? stampedCopyFailed,
    TResult Function(StampedCopyLoading value)? stampedCopyLoading,
    required TResult orElse(),
  }) {
    if (stampedCopyLoading != null) {
      return stampedCopyLoading(this);
    }
    return orElse();
  }
}

abstract class StampedCopyLoading implements StampedCopyState {
  const factory StampedCopyLoading() = _$StampedCopyLoadingImpl;
}
