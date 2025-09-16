// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'must_sell_approve_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MustSellApproveEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MustSellApproveInModel approve)
        approveMustSellEvent,
    required TResult Function() clearMustSellApproveEvent,
    required TResult Function() mustSellLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MustSellApproveInModel approve)? approveMustSellEvent,
    TResult? Function()? clearMustSellApproveEvent,
    TResult? Function()? mustSellLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MustSellApproveInModel approve)? approveMustSellEvent,
    TResult Function()? clearMustSellApproveEvent,
    TResult Function()? mustSellLoadingEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApproveMustSellEvent value) approveMustSellEvent,
    required TResult Function(ClearMustSellApproveEvent value)
        clearMustSellApproveEvent,
    required TResult Function(MustSellLoadingEvent value) mustSellLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApproveMustSellEvent value)? approveMustSellEvent,
    TResult? Function(ClearMustSellApproveEvent value)?
        clearMustSellApproveEvent,
    TResult? Function(MustSellLoadingEvent value)? mustSellLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApproveMustSellEvent value)? approveMustSellEvent,
    TResult Function(ClearMustSellApproveEvent value)?
        clearMustSellApproveEvent,
    TResult Function(MustSellLoadingEvent value)? mustSellLoadingEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MustSellApproveEventCopyWith<$Res> {
  factory $MustSellApproveEventCopyWith(MustSellApproveEvent value,
          $Res Function(MustSellApproveEvent) then) =
      _$MustSellApproveEventCopyWithImpl<$Res, MustSellApproveEvent>;
}

/// @nodoc
class _$MustSellApproveEventCopyWithImpl<$Res,
        $Val extends MustSellApproveEvent>
    implements $MustSellApproveEventCopyWith<$Res> {
  _$MustSellApproveEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MustSellApproveEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ApproveMustSellEventImplCopyWith<$Res> {
  factory _$$ApproveMustSellEventImplCopyWith(_$ApproveMustSellEventImpl value,
          $Res Function(_$ApproveMustSellEventImpl) then) =
      __$$ApproveMustSellEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MustSellApproveInModel approve});
}

/// @nodoc
class __$$ApproveMustSellEventImplCopyWithImpl<$Res>
    extends _$MustSellApproveEventCopyWithImpl<$Res, _$ApproveMustSellEventImpl>
    implements _$$ApproveMustSellEventImplCopyWith<$Res> {
  __$$ApproveMustSellEventImplCopyWithImpl(_$ApproveMustSellEventImpl _value,
      $Res Function(_$ApproveMustSellEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of MustSellApproveEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? approve = null,
  }) {
    return _then(_$ApproveMustSellEventImpl(
      approve: null == approve
          ? _value.approve
          : approve // ignore: cast_nullable_to_non_nullable
              as MustSellApproveInModel,
    ));
  }
}

/// @nodoc

class _$ApproveMustSellEventImpl implements ApproveMustSellEvent {
  const _$ApproveMustSellEventImpl({required this.approve});

  @override
  final MustSellApproveInModel approve;

  @override
  String toString() {
    return 'MustSellApproveEvent.approveMustSellEvent(approve: $approve)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApproveMustSellEventImpl &&
            (identical(other.approve, approve) || other.approve == approve));
  }

  @override
  int get hashCode => Object.hash(runtimeType, approve);

  /// Create a copy of MustSellApproveEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApproveMustSellEventImplCopyWith<_$ApproveMustSellEventImpl>
      get copyWith =>
          __$$ApproveMustSellEventImplCopyWithImpl<_$ApproveMustSellEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MustSellApproveInModel approve)
        approveMustSellEvent,
    required TResult Function() clearMustSellApproveEvent,
    required TResult Function() mustSellLoadingEvent,
  }) {
    return approveMustSellEvent(approve);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MustSellApproveInModel approve)? approveMustSellEvent,
    TResult? Function()? clearMustSellApproveEvent,
    TResult? Function()? mustSellLoadingEvent,
  }) {
    return approveMustSellEvent?.call(approve);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MustSellApproveInModel approve)? approveMustSellEvent,
    TResult Function()? clearMustSellApproveEvent,
    TResult Function()? mustSellLoadingEvent,
    required TResult orElse(),
  }) {
    if (approveMustSellEvent != null) {
      return approveMustSellEvent(approve);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApproveMustSellEvent value) approveMustSellEvent,
    required TResult Function(ClearMustSellApproveEvent value)
        clearMustSellApproveEvent,
    required TResult Function(MustSellLoadingEvent value) mustSellLoadingEvent,
  }) {
    return approveMustSellEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApproveMustSellEvent value)? approveMustSellEvent,
    TResult? Function(ClearMustSellApproveEvent value)?
        clearMustSellApproveEvent,
    TResult? Function(MustSellLoadingEvent value)? mustSellLoadingEvent,
  }) {
    return approveMustSellEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApproveMustSellEvent value)? approveMustSellEvent,
    TResult Function(ClearMustSellApproveEvent value)?
        clearMustSellApproveEvent,
    TResult Function(MustSellLoadingEvent value)? mustSellLoadingEvent,
    required TResult orElse(),
  }) {
    if (approveMustSellEvent != null) {
      return approveMustSellEvent(this);
    }
    return orElse();
  }
}

abstract class ApproveMustSellEvent implements MustSellApproveEvent {
  const factory ApproveMustSellEvent(
          {required final MustSellApproveInModel approve}) =
      _$ApproveMustSellEventImpl;

  MustSellApproveInModel get approve;

  /// Create a copy of MustSellApproveEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApproveMustSellEventImplCopyWith<_$ApproveMustSellEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearMustSellApproveEventImplCopyWith<$Res> {
  factory _$$ClearMustSellApproveEventImplCopyWith(
          _$ClearMustSellApproveEventImpl value,
          $Res Function(_$ClearMustSellApproveEventImpl) then) =
      __$$ClearMustSellApproveEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearMustSellApproveEventImplCopyWithImpl<$Res>
    extends _$MustSellApproveEventCopyWithImpl<$Res,
        _$ClearMustSellApproveEventImpl>
    implements _$$ClearMustSellApproveEventImplCopyWith<$Res> {
  __$$ClearMustSellApproveEventImplCopyWithImpl(
      _$ClearMustSellApproveEventImpl _value,
      $Res Function(_$ClearMustSellApproveEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of MustSellApproveEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearMustSellApproveEventImpl implements ClearMustSellApproveEvent {
  const _$ClearMustSellApproveEventImpl();

  @override
  String toString() {
    return 'MustSellApproveEvent.clearMustSellApproveEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearMustSellApproveEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MustSellApproveInModel approve)
        approveMustSellEvent,
    required TResult Function() clearMustSellApproveEvent,
    required TResult Function() mustSellLoadingEvent,
  }) {
    return clearMustSellApproveEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MustSellApproveInModel approve)? approveMustSellEvent,
    TResult? Function()? clearMustSellApproveEvent,
    TResult? Function()? mustSellLoadingEvent,
  }) {
    return clearMustSellApproveEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MustSellApproveInModel approve)? approveMustSellEvent,
    TResult Function()? clearMustSellApproveEvent,
    TResult Function()? mustSellLoadingEvent,
    required TResult orElse(),
  }) {
    if (clearMustSellApproveEvent != null) {
      return clearMustSellApproveEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApproveMustSellEvent value) approveMustSellEvent,
    required TResult Function(ClearMustSellApproveEvent value)
        clearMustSellApproveEvent,
    required TResult Function(MustSellLoadingEvent value) mustSellLoadingEvent,
  }) {
    return clearMustSellApproveEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApproveMustSellEvent value)? approveMustSellEvent,
    TResult? Function(ClearMustSellApproveEvent value)?
        clearMustSellApproveEvent,
    TResult? Function(MustSellLoadingEvent value)? mustSellLoadingEvent,
  }) {
    return clearMustSellApproveEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApproveMustSellEvent value)? approveMustSellEvent,
    TResult Function(ClearMustSellApproveEvent value)?
        clearMustSellApproveEvent,
    TResult Function(MustSellLoadingEvent value)? mustSellLoadingEvent,
    required TResult orElse(),
  }) {
    if (clearMustSellApproveEvent != null) {
      return clearMustSellApproveEvent(this);
    }
    return orElse();
  }
}

abstract class ClearMustSellApproveEvent implements MustSellApproveEvent {
  const factory ClearMustSellApproveEvent() = _$ClearMustSellApproveEventImpl;
}

/// @nodoc
abstract class _$$MustSellLoadingEventImplCopyWith<$Res> {
  factory _$$MustSellLoadingEventImplCopyWith(_$MustSellLoadingEventImpl value,
          $Res Function(_$MustSellLoadingEventImpl) then) =
      __$$MustSellLoadingEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MustSellLoadingEventImplCopyWithImpl<$Res>
    extends _$MustSellApproveEventCopyWithImpl<$Res, _$MustSellLoadingEventImpl>
    implements _$$MustSellLoadingEventImplCopyWith<$Res> {
  __$$MustSellLoadingEventImplCopyWithImpl(_$MustSellLoadingEventImpl _value,
      $Res Function(_$MustSellLoadingEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of MustSellApproveEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MustSellLoadingEventImpl implements MustSellLoadingEvent {
  const _$MustSellLoadingEventImpl();

  @override
  String toString() {
    return 'MustSellApproveEvent.mustSellLoadingEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MustSellLoadingEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MustSellApproveInModel approve)
        approveMustSellEvent,
    required TResult Function() clearMustSellApproveEvent,
    required TResult Function() mustSellLoadingEvent,
  }) {
    return mustSellLoadingEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MustSellApproveInModel approve)? approveMustSellEvent,
    TResult? Function()? clearMustSellApproveEvent,
    TResult? Function()? mustSellLoadingEvent,
  }) {
    return mustSellLoadingEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MustSellApproveInModel approve)? approveMustSellEvent,
    TResult Function()? clearMustSellApproveEvent,
    TResult Function()? mustSellLoadingEvent,
    required TResult orElse(),
  }) {
    if (mustSellLoadingEvent != null) {
      return mustSellLoadingEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApproveMustSellEvent value) approveMustSellEvent,
    required TResult Function(ClearMustSellApproveEvent value)
        clearMustSellApproveEvent,
    required TResult Function(MustSellLoadingEvent value) mustSellLoadingEvent,
  }) {
    return mustSellLoadingEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApproveMustSellEvent value)? approveMustSellEvent,
    TResult? Function(ClearMustSellApproveEvent value)?
        clearMustSellApproveEvent,
    TResult? Function(MustSellLoadingEvent value)? mustSellLoadingEvent,
  }) {
    return mustSellLoadingEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApproveMustSellEvent value)? approveMustSellEvent,
    TResult Function(ClearMustSellApproveEvent value)?
        clearMustSellApproveEvent,
    TResult Function(MustSellLoadingEvent value)? mustSellLoadingEvent,
    required TResult orElse(),
  }) {
    if (mustSellLoadingEvent != null) {
      return mustSellLoadingEvent(this);
    }
    return orElse();
  }
}

abstract class MustSellLoadingEvent implements MustSellApproveEvent {
  const factory MustSellLoadingEvent() = _$MustSellLoadingEventImpl;
}

/// @nodoc
mixin _$MustSellApproveState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MustSellApproveRespModel? resp)
        mustSellApproveStatusState,
    required TResult Function() mustSellApproveFailedState,
    required TResult Function() mustSellApproveLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MustSellApproveRespModel? resp)?
        mustSellApproveStatusState,
    TResult? Function()? mustSellApproveFailedState,
    TResult? Function()? mustSellApproveLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MustSellApproveRespModel? resp)?
        mustSellApproveStatusState,
    TResult Function()? mustSellApproveFailedState,
    TResult Function()? mustSellApproveLoadingEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MustSellApproveStatusState value)
        mustSellApproveStatusState,
    required TResult Function(MustSellApproveFailedState value)
        mustSellApproveFailedState,
    required TResult Function(MustSellApproveLoadingEvent value)
        mustSellApproveLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MustSellApproveStatusState value)?
        mustSellApproveStatusState,
    TResult? Function(MustSellApproveFailedState value)?
        mustSellApproveFailedState,
    TResult? Function(MustSellApproveLoadingEvent value)?
        mustSellApproveLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MustSellApproveStatusState value)?
        mustSellApproveStatusState,
    TResult Function(MustSellApproveFailedState value)?
        mustSellApproveFailedState,
    TResult Function(MustSellApproveLoadingEvent value)?
        mustSellApproveLoadingEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MustSellApproveStateCopyWith<$Res> {
  factory $MustSellApproveStateCopyWith(MustSellApproveState value,
          $Res Function(MustSellApproveState) then) =
      _$MustSellApproveStateCopyWithImpl<$Res, MustSellApproveState>;
}

/// @nodoc
class _$MustSellApproveStateCopyWithImpl<$Res,
        $Val extends MustSellApproveState>
    implements $MustSellApproveStateCopyWith<$Res> {
  _$MustSellApproveStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MustSellApproveState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$MustSellApproveStatusStateImplCopyWith<$Res> {
  factory _$$MustSellApproveStatusStateImplCopyWith(
          _$MustSellApproveStatusStateImpl value,
          $Res Function(_$MustSellApproveStatusStateImpl) then) =
      __$$MustSellApproveStatusStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MustSellApproveRespModel? resp});
}

/// @nodoc
class __$$MustSellApproveStatusStateImplCopyWithImpl<$Res>
    extends _$MustSellApproveStateCopyWithImpl<$Res,
        _$MustSellApproveStatusStateImpl>
    implements _$$MustSellApproveStatusStateImplCopyWith<$Res> {
  __$$MustSellApproveStatusStateImplCopyWithImpl(
      _$MustSellApproveStatusStateImpl _value,
      $Res Function(_$MustSellApproveStatusStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MustSellApproveState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resp = freezed,
  }) {
    return _then(_$MustSellApproveStatusStateImpl(
      resp: freezed == resp
          ? _value.resp
          : resp // ignore: cast_nullable_to_non_nullable
              as MustSellApproveRespModel?,
    ));
  }
}

/// @nodoc

class _$MustSellApproveStatusStateImpl implements MustSellApproveStatusState {
  const _$MustSellApproveStatusStateImpl({required this.resp});

  @override
  final MustSellApproveRespModel? resp;

  @override
  String toString() {
    return 'MustSellApproveState.mustSellApproveStatusState(resp: $resp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MustSellApproveStatusStateImpl &&
            (identical(other.resp, resp) || other.resp == resp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, resp);

  /// Create a copy of MustSellApproveState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MustSellApproveStatusStateImplCopyWith<_$MustSellApproveStatusStateImpl>
      get copyWith => __$$MustSellApproveStatusStateImplCopyWithImpl<
          _$MustSellApproveStatusStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MustSellApproveRespModel? resp)
        mustSellApproveStatusState,
    required TResult Function() mustSellApproveFailedState,
    required TResult Function() mustSellApproveLoadingEvent,
  }) {
    return mustSellApproveStatusState(resp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MustSellApproveRespModel? resp)?
        mustSellApproveStatusState,
    TResult? Function()? mustSellApproveFailedState,
    TResult? Function()? mustSellApproveLoadingEvent,
  }) {
    return mustSellApproveStatusState?.call(resp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MustSellApproveRespModel? resp)?
        mustSellApproveStatusState,
    TResult Function()? mustSellApproveFailedState,
    TResult Function()? mustSellApproveLoadingEvent,
    required TResult orElse(),
  }) {
    if (mustSellApproveStatusState != null) {
      return mustSellApproveStatusState(resp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MustSellApproveStatusState value)
        mustSellApproveStatusState,
    required TResult Function(MustSellApproveFailedState value)
        mustSellApproveFailedState,
    required TResult Function(MustSellApproveLoadingEvent value)
        mustSellApproveLoadingEvent,
  }) {
    return mustSellApproveStatusState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MustSellApproveStatusState value)?
        mustSellApproveStatusState,
    TResult? Function(MustSellApproveFailedState value)?
        mustSellApproveFailedState,
    TResult? Function(MustSellApproveLoadingEvent value)?
        mustSellApproveLoadingEvent,
  }) {
    return mustSellApproveStatusState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MustSellApproveStatusState value)?
        mustSellApproveStatusState,
    TResult Function(MustSellApproveFailedState value)?
        mustSellApproveFailedState,
    TResult Function(MustSellApproveLoadingEvent value)?
        mustSellApproveLoadingEvent,
    required TResult orElse(),
  }) {
    if (mustSellApproveStatusState != null) {
      return mustSellApproveStatusState(this);
    }
    return orElse();
  }
}

abstract class MustSellApproveStatusState implements MustSellApproveState {
  const factory MustSellApproveStatusState(
          {required final MustSellApproveRespModel? resp}) =
      _$MustSellApproveStatusStateImpl;

  MustSellApproveRespModel? get resp;

  /// Create a copy of MustSellApproveState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MustSellApproveStatusStateImplCopyWith<_$MustSellApproveStatusStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MustSellApproveFailedStateImplCopyWith<$Res> {
  factory _$$MustSellApproveFailedStateImplCopyWith(
          _$MustSellApproveFailedStateImpl value,
          $Res Function(_$MustSellApproveFailedStateImpl) then) =
      __$$MustSellApproveFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MustSellApproveFailedStateImplCopyWithImpl<$Res>
    extends _$MustSellApproveStateCopyWithImpl<$Res,
        _$MustSellApproveFailedStateImpl>
    implements _$$MustSellApproveFailedStateImplCopyWith<$Res> {
  __$$MustSellApproveFailedStateImplCopyWithImpl(
      _$MustSellApproveFailedStateImpl _value,
      $Res Function(_$MustSellApproveFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MustSellApproveState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MustSellApproveFailedStateImpl implements MustSellApproveFailedState {
  const _$MustSellApproveFailedStateImpl();

  @override
  String toString() {
    return 'MustSellApproveState.mustSellApproveFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MustSellApproveFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MustSellApproveRespModel? resp)
        mustSellApproveStatusState,
    required TResult Function() mustSellApproveFailedState,
    required TResult Function() mustSellApproveLoadingEvent,
  }) {
    return mustSellApproveFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MustSellApproveRespModel? resp)?
        mustSellApproveStatusState,
    TResult? Function()? mustSellApproveFailedState,
    TResult? Function()? mustSellApproveLoadingEvent,
  }) {
    return mustSellApproveFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MustSellApproveRespModel? resp)?
        mustSellApproveStatusState,
    TResult Function()? mustSellApproveFailedState,
    TResult Function()? mustSellApproveLoadingEvent,
    required TResult orElse(),
  }) {
    if (mustSellApproveFailedState != null) {
      return mustSellApproveFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MustSellApproveStatusState value)
        mustSellApproveStatusState,
    required TResult Function(MustSellApproveFailedState value)
        mustSellApproveFailedState,
    required TResult Function(MustSellApproveLoadingEvent value)
        mustSellApproveLoadingEvent,
  }) {
    return mustSellApproveFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MustSellApproveStatusState value)?
        mustSellApproveStatusState,
    TResult? Function(MustSellApproveFailedState value)?
        mustSellApproveFailedState,
    TResult? Function(MustSellApproveLoadingEvent value)?
        mustSellApproveLoadingEvent,
  }) {
    return mustSellApproveFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MustSellApproveStatusState value)?
        mustSellApproveStatusState,
    TResult Function(MustSellApproveFailedState value)?
        mustSellApproveFailedState,
    TResult Function(MustSellApproveLoadingEvent value)?
        mustSellApproveLoadingEvent,
    required TResult orElse(),
  }) {
    if (mustSellApproveFailedState != null) {
      return mustSellApproveFailedState(this);
    }
    return orElse();
  }
}

abstract class MustSellApproveFailedState implements MustSellApproveState {
  const factory MustSellApproveFailedState() = _$MustSellApproveFailedStateImpl;
}

/// @nodoc
abstract class _$$MustSellApproveLoadingEventImplCopyWith<$Res> {
  factory _$$MustSellApproveLoadingEventImplCopyWith(
          _$MustSellApproveLoadingEventImpl value,
          $Res Function(_$MustSellApproveLoadingEventImpl) then) =
      __$$MustSellApproveLoadingEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MustSellApproveLoadingEventImplCopyWithImpl<$Res>
    extends _$MustSellApproveStateCopyWithImpl<$Res,
        _$MustSellApproveLoadingEventImpl>
    implements _$$MustSellApproveLoadingEventImplCopyWith<$Res> {
  __$$MustSellApproveLoadingEventImplCopyWithImpl(
      _$MustSellApproveLoadingEventImpl _value,
      $Res Function(_$MustSellApproveLoadingEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of MustSellApproveState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MustSellApproveLoadingEventImpl implements MustSellApproveLoadingEvent {
  const _$MustSellApproveLoadingEventImpl();

  @override
  String toString() {
    return 'MustSellApproveState.mustSellApproveLoadingEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MustSellApproveLoadingEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MustSellApproveRespModel? resp)
        mustSellApproveStatusState,
    required TResult Function() mustSellApproveFailedState,
    required TResult Function() mustSellApproveLoadingEvent,
  }) {
    return mustSellApproveLoadingEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MustSellApproveRespModel? resp)?
        mustSellApproveStatusState,
    TResult? Function()? mustSellApproveFailedState,
    TResult? Function()? mustSellApproveLoadingEvent,
  }) {
    return mustSellApproveLoadingEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MustSellApproveRespModel? resp)?
        mustSellApproveStatusState,
    TResult Function()? mustSellApproveFailedState,
    TResult Function()? mustSellApproveLoadingEvent,
    required TResult orElse(),
  }) {
    if (mustSellApproveLoadingEvent != null) {
      return mustSellApproveLoadingEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MustSellApproveStatusState value)
        mustSellApproveStatusState,
    required TResult Function(MustSellApproveFailedState value)
        mustSellApproveFailedState,
    required TResult Function(MustSellApproveLoadingEvent value)
        mustSellApproveLoadingEvent,
  }) {
    return mustSellApproveLoadingEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MustSellApproveStatusState value)?
        mustSellApproveStatusState,
    TResult? Function(MustSellApproveFailedState value)?
        mustSellApproveFailedState,
    TResult? Function(MustSellApproveLoadingEvent value)?
        mustSellApproveLoadingEvent,
  }) {
    return mustSellApproveLoadingEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MustSellApproveStatusState value)?
        mustSellApproveStatusState,
    TResult Function(MustSellApproveFailedState value)?
        mustSellApproveFailedState,
    TResult Function(MustSellApproveLoadingEvent value)?
        mustSellApproveLoadingEvent,
    required TResult orElse(),
  }) {
    if (mustSellApproveLoadingEvent != null) {
      return mustSellApproveLoadingEvent(this);
    }
    return orElse();
  }
}

abstract class MustSellApproveLoadingEvent implements MustSellApproveState {
  const factory MustSellApproveLoadingEvent() =
      _$MustSellApproveLoadingEventImpl;
}
