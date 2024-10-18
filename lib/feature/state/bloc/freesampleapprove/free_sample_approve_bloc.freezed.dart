// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'free_sample_approve_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FreeSampleApproveEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FreeSampleApproveInModel approve)
        submitFreeSampleRequestEvent,
    required TResult Function() freesamplesubmitLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FreeSampleApproveInModel approve)?
        submitFreeSampleRequestEvent,
    TResult? Function()? freesamplesubmitLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FreeSampleApproveInModel approve)?
        submitFreeSampleRequestEvent,
    TResult Function()? freesamplesubmitLoadingEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubmitFreeSampleRequestEvent value)
        submitFreeSampleRequestEvent,
    required TResult Function(FreesamplesubmitLoadingEvent value)
        freesamplesubmitLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SubmitFreeSampleRequestEvent value)?
        submitFreeSampleRequestEvent,
    TResult? Function(FreesamplesubmitLoadingEvent value)?
        freesamplesubmitLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubmitFreeSampleRequestEvent value)?
        submitFreeSampleRequestEvent,
    TResult Function(FreesamplesubmitLoadingEvent value)?
        freesamplesubmitLoadingEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FreeSampleApproveEventCopyWith<$Res> {
  factory $FreeSampleApproveEventCopyWith(FreeSampleApproveEvent value,
          $Res Function(FreeSampleApproveEvent) then) =
      _$FreeSampleApproveEventCopyWithImpl<$Res, FreeSampleApproveEvent>;
}

/// @nodoc
class _$FreeSampleApproveEventCopyWithImpl<$Res,
        $Val extends FreeSampleApproveEvent>
    implements $FreeSampleApproveEventCopyWith<$Res> {
  _$FreeSampleApproveEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SubmitFreeSampleRequestEventImplCopyWith<$Res> {
  factory _$$SubmitFreeSampleRequestEventImplCopyWith(
          _$SubmitFreeSampleRequestEventImpl value,
          $Res Function(_$SubmitFreeSampleRequestEventImpl) then) =
      __$$SubmitFreeSampleRequestEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FreeSampleApproveInModel approve});
}

/// @nodoc
class __$$SubmitFreeSampleRequestEventImplCopyWithImpl<$Res>
    extends _$FreeSampleApproveEventCopyWithImpl<$Res,
        _$SubmitFreeSampleRequestEventImpl>
    implements _$$SubmitFreeSampleRequestEventImplCopyWith<$Res> {
  __$$SubmitFreeSampleRequestEventImplCopyWithImpl(
      _$SubmitFreeSampleRequestEventImpl _value,
      $Res Function(_$SubmitFreeSampleRequestEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? approve = null,
  }) {
    return _then(_$SubmitFreeSampleRequestEventImpl(
      approve: null == approve
          ? _value.approve
          : approve // ignore: cast_nullable_to_non_nullable
              as FreeSampleApproveInModel,
    ));
  }
}

/// @nodoc

class _$SubmitFreeSampleRequestEventImpl
    implements SubmitFreeSampleRequestEvent {
  const _$SubmitFreeSampleRequestEventImpl({required this.approve});

  @override
  final FreeSampleApproveInModel approve;

  @override
  String toString() {
    return 'FreeSampleApproveEvent.submitFreeSampleRequestEvent(approve: $approve)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitFreeSampleRequestEventImpl &&
            (identical(other.approve, approve) || other.approve == approve));
  }

  @override
  int get hashCode => Object.hash(runtimeType, approve);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitFreeSampleRequestEventImplCopyWith<
          _$SubmitFreeSampleRequestEventImpl>
      get copyWith => __$$SubmitFreeSampleRequestEventImplCopyWithImpl<
          _$SubmitFreeSampleRequestEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FreeSampleApproveInModel approve)
        submitFreeSampleRequestEvent,
    required TResult Function() freesamplesubmitLoadingEvent,
  }) {
    return submitFreeSampleRequestEvent(approve);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FreeSampleApproveInModel approve)?
        submitFreeSampleRequestEvent,
    TResult? Function()? freesamplesubmitLoadingEvent,
  }) {
    return submitFreeSampleRequestEvent?.call(approve);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FreeSampleApproveInModel approve)?
        submitFreeSampleRequestEvent,
    TResult Function()? freesamplesubmitLoadingEvent,
    required TResult orElse(),
  }) {
    if (submitFreeSampleRequestEvent != null) {
      return submitFreeSampleRequestEvent(approve);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubmitFreeSampleRequestEvent value)
        submitFreeSampleRequestEvent,
    required TResult Function(FreesamplesubmitLoadingEvent value)
        freesamplesubmitLoadingEvent,
  }) {
    return submitFreeSampleRequestEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SubmitFreeSampleRequestEvent value)?
        submitFreeSampleRequestEvent,
    TResult? Function(FreesamplesubmitLoadingEvent value)?
        freesamplesubmitLoadingEvent,
  }) {
    return submitFreeSampleRequestEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubmitFreeSampleRequestEvent value)?
        submitFreeSampleRequestEvent,
    TResult Function(FreesamplesubmitLoadingEvent value)?
        freesamplesubmitLoadingEvent,
    required TResult orElse(),
  }) {
    if (submitFreeSampleRequestEvent != null) {
      return submitFreeSampleRequestEvent(this);
    }
    return orElse();
  }
}

abstract class SubmitFreeSampleRequestEvent implements FreeSampleApproveEvent {
  const factory SubmitFreeSampleRequestEvent(
          {required final FreeSampleApproveInModel approve}) =
      _$SubmitFreeSampleRequestEventImpl;

  FreeSampleApproveInModel get approve;
  @JsonKey(ignore: true)
  _$$SubmitFreeSampleRequestEventImplCopyWith<
          _$SubmitFreeSampleRequestEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FreesamplesubmitLoadingEventImplCopyWith<$Res> {
  factory _$$FreesamplesubmitLoadingEventImplCopyWith(
          _$FreesamplesubmitLoadingEventImpl value,
          $Res Function(_$FreesamplesubmitLoadingEventImpl) then) =
      __$$FreesamplesubmitLoadingEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FreesamplesubmitLoadingEventImplCopyWithImpl<$Res>
    extends _$FreeSampleApproveEventCopyWithImpl<$Res,
        _$FreesamplesubmitLoadingEventImpl>
    implements _$$FreesamplesubmitLoadingEventImplCopyWith<$Res> {
  __$$FreesamplesubmitLoadingEventImplCopyWithImpl(
      _$FreesamplesubmitLoadingEventImpl _value,
      $Res Function(_$FreesamplesubmitLoadingEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FreesamplesubmitLoadingEventImpl
    implements FreesamplesubmitLoadingEvent {
  const _$FreesamplesubmitLoadingEventImpl();

  @override
  String toString() {
    return 'FreeSampleApproveEvent.freesamplesubmitLoadingEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FreesamplesubmitLoadingEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FreeSampleApproveInModel approve)
        submitFreeSampleRequestEvent,
    required TResult Function() freesamplesubmitLoadingEvent,
  }) {
    return freesamplesubmitLoadingEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FreeSampleApproveInModel approve)?
        submitFreeSampleRequestEvent,
    TResult? Function()? freesamplesubmitLoadingEvent,
  }) {
    return freesamplesubmitLoadingEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FreeSampleApproveInModel approve)?
        submitFreeSampleRequestEvent,
    TResult Function()? freesamplesubmitLoadingEvent,
    required TResult orElse(),
  }) {
    if (freesamplesubmitLoadingEvent != null) {
      return freesamplesubmitLoadingEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubmitFreeSampleRequestEvent value)
        submitFreeSampleRequestEvent,
    required TResult Function(FreesamplesubmitLoadingEvent value)
        freesamplesubmitLoadingEvent,
  }) {
    return freesamplesubmitLoadingEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SubmitFreeSampleRequestEvent value)?
        submitFreeSampleRequestEvent,
    TResult? Function(FreesamplesubmitLoadingEvent value)?
        freesamplesubmitLoadingEvent,
  }) {
    return freesamplesubmitLoadingEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubmitFreeSampleRequestEvent value)?
        submitFreeSampleRequestEvent,
    TResult Function(FreesamplesubmitLoadingEvent value)?
        freesamplesubmitLoadingEvent,
    required TResult orElse(),
  }) {
    if (freesamplesubmitLoadingEvent != null) {
      return freesamplesubmitLoadingEvent(this);
    }
    return orElse();
  }
}

abstract class FreesamplesubmitLoadingEvent implements FreeSampleApproveEvent {
  const factory FreesamplesubmitLoadingEvent() =
      _$FreesamplesubmitLoadingEventImpl;
}

/// @nodoc
mixin _$FreeSampleApproveState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FreeSampleApprovalRespModel? resp)
        submitFreeSampleRequestState,
    required TResult Function() freesampleSubmitFailedState,
    required TResult Function() freesampleSubmitLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FreeSampleApprovalRespModel? resp)?
        submitFreeSampleRequestState,
    TResult? Function()? freesampleSubmitFailedState,
    TResult? Function()? freesampleSubmitLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FreeSampleApprovalRespModel? resp)?
        submitFreeSampleRequestState,
    TResult Function()? freesampleSubmitFailedState,
    TResult Function()? freesampleSubmitLoadingState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubmitFreeSampleRequestState value)
        submitFreeSampleRequestState,
    required TResult Function(FreesampleSubmitFailedState value)
        freesampleSubmitFailedState,
    required TResult Function(FreesampleSubmitLoadingState value)
        freesampleSubmitLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SubmitFreeSampleRequestState value)?
        submitFreeSampleRequestState,
    TResult? Function(FreesampleSubmitFailedState value)?
        freesampleSubmitFailedState,
    TResult? Function(FreesampleSubmitLoadingState value)?
        freesampleSubmitLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubmitFreeSampleRequestState value)?
        submitFreeSampleRequestState,
    TResult Function(FreesampleSubmitFailedState value)?
        freesampleSubmitFailedState,
    TResult Function(FreesampleSubmitLoadingState value)?
        freesampleSubmitLoadingState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FreeSampleApproveStateCopyWith<$Res> {
  factory $FreeSampleApproveStateCopyWith(FreeSampleApproveState value,
          $Res Function(FreeSampleApproveState) then) =
      _$FreeSampleApproveStateCopyWithImpl<$Res, FreeSampleApproveState>;
}

/// @nodoc
class _$FreeSampleApproveStateCopyWithImpl<$Res,
        $Val extends FreeSampleApproveState>
    implements $FreeSampleApproveStateCopyWith<$Res> {
  _$FreeSampleApproveStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SubmitFreeSampleRequestStateImplCopyWith<$Res> {
  factory _$$SubmitFreeSampleRequestStateImplCopyWith(
          _$SubmitFreeSampleRequestStateImpl value,
          $Res Function(_$SubmitFreeSampleRequestStateImpl) then) =
      __$$SubmitFreeSampleRequestStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FreeSampleApprovalRespModel? resp});
}

/// @nodoc
class __$$SubmitFreeSampleRequestStateImplCopyWithImpl<$Res>
    extends _$FreeSampleApproveStateCopyWithImpl<$Res,
        _$SubmitFreeSampleRequestStateImpl>
    implements _$$SubmitFreeSampleRequestStateImplCopyWith<$Res> {
  __$$SubmitFreeSampleRequestStateImplCopyWithImpl(
      _$SubmitFreeSampleRequestStateImpl _value,
      $Res Function(_$SubmitFreeSampleRequestStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resp = freezed,
  }) {
    return _then(_$SubmitFreeSampleRequestStateImpl(
      resp: freezed == resp
          ? _value.resp
          : resp // ignore: cast_nullable_to_non_nullable
              as FreeSampleApprovalRespModel?,
    ));
  }
}

/// @nodoc

class _$SubmitFreeSampleRequestStateImpl
    implements SubmitFreeSampleRequestState {
  const _$SubmitFreeSampleRequestStateImpl({required this.resp});

  @override
  final FreeSampleApprovalRespModel? resp;

  @override
  String toString() {
    return 'FreeSampleApproveState.submitFreeSampleRequestState(resp: $resp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitFreeSampleRequestStateImpl &&
            (identical(other.resp, resp) || other.resp == resp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, resp);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitFreeSampleRequestStateImplCopyWith<
          _$SubmitFreeSampleRequestStateImpl>
      get copyWith => __$$SubmitFreeSampleRequestStateImplCopyWithImpl<
          _$SubmitFreeSampleRequestStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FreeSampleApprovalRespModel? resp)
        submitFreeSampleRequestState,
    required TResult Function() freesampleSubmitFailedState,
    required TResult Function() freesampleSubmitLoadingState,
  }) {
    return submitFreeSampleRequestState(resp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FreeSampleApprovalRespModel? resp)?
        submitFreeSampleRequestState,
    TResult? Function()? freesampleSubmitFailedState,
    TResult? Function()? freesampleSubmitLoadingState,
  }) {
    return submitFreeSampleRequestState?.call(resp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FreeSampleApprovalRespModel? resp)?
        submitFreeSampleRequestState,
    TResult Function()? freesampleSubmitFailedState,
    TResult Function()? freesampleSubmitLoadingState,
    required TResult orElse(),
  }) {
    if (submitFreeSampleRequestState != null) {
      return submitFreeSampleRequestState(resp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubmitFreeSampleRequestState value)
        submitFreeSampleRequestState,
    required TResult Function(FreesampleSubmitFailedState value)
        freesampleSubmitFailedState,
    required TResult Function(FreesampleSubmitLoadingState value)
        freesampleSubmitLoadingState,
  }) {
    return submitFreeSampleRequestState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SubmitFreeSampleRequestState value)?
        submitFreeSampleRequestState,
    TResult? Function(FreesampleSubmitFailedState value)?
        freesampleSubmitFailedState,
    TResult? Function(FreesampleSubmitLoadingState value)?
        freesampleSubmitLoadingState,
  }) {
    return submitFreeSampleRequestState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubmitFreeSampleRequestState value)?
        submitFreeSampleRequestState,
    TResult Function(FreesampleSubmitFailedState value)?
        freesampleSubmitFailedState,
    TResult Function(FreesampleSubmitLoadingState value)?
        freesampleSubmitLoadingState,
    required TResult orElse(),
  }) {
    if (submitFreeSampleRequestState != null) {
      return submitFreeSampleRequestState(this);
    }
    return orElse();
  }
}

abstract class SubmitFreeSampleRequestState implements FreeSampleApproveState {
  const factory SubmitFreeSampleRequestState(
          {required final FreeSampleApprovalRespModel? resp}) =
      _$SubmitFreeSampleRequestStateImpl;

  FreeSampleApprovalRespModel? get resp;
  @JsonKey(ignore: true)
  _$$SubmitFreeSampleRequestStateImplCopyWith<
          _$SubmitFreeSampleRequestStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FreesampleSubmitFailedStateImplCopyWith<$Res> {
  factory _$$FreesampleSubmitFailedStateImplCopyWith(
          _$FreesampleSubmitFailedStateImpl value,
          $Res Function(_$FreesampleSubmitFailedStateImpl) then) =
      __$$FreesampleSubmitFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FreesampleSubmitFailedStateImplCopyWithImpl<$Res>
    extends _$FreeSampleApproveStateCopyWithImpl<$Res,
        _$FreesampleSubmitFailedStateImpl>
    implements _$$FreesampleSubmitFailedStateImplCopyWith<$Res> {
  __$$FreesampleSubmitFailedStateImplCopyWithImpl(
      _$FreesampleSubmitFailedStateImpl _value,
      $Res Function(_$FreesampleSubmitFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FreesampleSubmitFailedStateImpl implements FreesampleSubmitFailedState {
  const _$FreesampleSubmitFailedStateImpl();

  @override
  String toString() {
    return 'FreeSampleApproveState.freesampleSubmitFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FreesampleSubmitFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FreeSampleApprovalRespModel? resp)
        submitFreeSampleRequestState,
    required TResult Function() freesampleSubmitFailedState,
    required TResult Function() freesampleSubmitLoadingState,
  }) {
    return freesampleSubmitFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FreeSampleApprovalRespModel? resp)?
        submitFreeSampleRequestState,
    TResult? Function()? freesampleSubmitFailedState,
    TResult? Function()? freesampleSubmitLoadingState,
  }) {
    return freesampleSubmitFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FreeSampleApprovalRespModel? resp)?
        submitFreeSampleRequestState,
    TResult Function()? freesampleSubmitFailedState,
    TResult Function()? freesampleSubmitLoadingState,
    required TResult orElse(),
  }) {
    if (freesampleSubmitFailedState != null) {
      return freesampleSubmitFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubmitFreeSampleRequestState value)
        submitFreeSampleRequestState,
    required TResult Function(FreesampleSubmitFailedState value)
        freesampleSubmitFailedState,
    required TResult Function(FreesampleSubmitLoadingState value)
        freesampleSubmitLoadingState,
  }) {
    return freesampleSubmitFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SubmitFreeSampleRequestState value)?
        submitFreeSampleRequestState,
    TResult? Function(FreesampleSubmitFailedState value)?
        freesampleSubmitFailedState,
    TResult? Function(FreesampleSubmitLoadingState value)?
        freesampleSubmitLoadingState,
  }) {
    return freesampleSubmitFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubmitFreeSampleRequestState value)?
        submitFreeSampleRequestState,
    TResult Function(FreesampleSubmitFailedState value)?
        freesampleSubmitFailedState,
    TResult Function(FreesampleSubmitLoadingState value)?
        freesampleSubmitLoadingState,
    required TResult orElse(),
  }) {
    if (freesampleSubmitFailedState != null) {
      return freesampleSubmitFailedState(this);
    }
    return orElse();
  }
}

abstract class FreesampleSubmitFailedState implements FreeSampleApproveState {
  const factory FreesampleSubmitFailedState() =
      _$FreesampleSubmitFailedStateImpl;
}

/// @nodoc
abstract class _$$FreesampleSubmitLoadingStateImplCopyWith<$Res> {
  factory _$$FreesampleSubmitLoadingStateImplCopyWith(
          _$FreesampleSubmitLoadingStateImpl value,
          $Res Function(_$FreesampleSubmitLoadingStateImpl) then) =
      __$$FreesampleSubmitLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FreesampleSubmitLoadingStateImplCopyWithImpl<$Res>
    extends _$FreeSampleApproveStateCopyWithImpl<$Res,
        _$FreesampleSubmitLoadingStateImpl>
    implements _$$FreesampleSubmitLoadingStateImplCopyWith<$Res> {
  __$$FreesampleSubmitLoadingStateImplCopyWithImpl(
      _$FreesampleSubmitLoadingStateImpl _value,
      $Res Function(_$FreesampleSubmitLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FreesampleSubmitLoadingStateImpl
    implements FreesampleSubmitLoadingState {
  const _$FreesampleSubmitLoadingStateImpl();

  @override
  String toString() {
    return 'FreeSampleApproveState.freesampleSubmitLoadingState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FreesampleSubmitLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FreeSampleApprovalRespModel? resp)
        submitFreeSampleRequestState,
    required TResult Function() freesampleSubmitFailedState,
    required TResult Function() freesampleSubmitLoadingState,
  }) {
    return freesampleSubmitLoadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FreeSampleApprovalRespModel? resp)?
        submitFreeSampleRequestState,
    TResult? Function()? freesampleSubmitFailedState,
    TResult? Function()? freesampleSubmitLoadingState,
  }) {
    return freesampleSubmitLoadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FreeSampleApprovalRespModel? resp)?
        submitFreeSampleRequestState,
    TResult Function()? freesampleSubmitFailedState,
    TResult Function()? freesampleSubmitLoadingState,
    required TResult orElse(),
  }) {
    if (freesampleSubmitLoadingState != null) {
      return freesampleSubmitLoadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubmitFreeSampleRequestState value)
        submitFreeSampleRequestState,
    required TResult Function(FreesampleSubmitFailedState value)
        freesampleSubmitFailedState,
    required TResult Function(FreesampleSubmitLoadingState value)
        freesampleSubmitLoadingState,
  }) {
    return freesampleSubmitLoadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SubmitFreeSampleRequestState value)?
        submitFreeSampleRequestState,
    TResult? Function(FreesampleSubmitFailedState value)?
        freesampleSubmitFailedState,
    TResult? Function(FreesampleSubmitLoadingState value)?
        freesampleSubmitLoadingState,
  }) {
    return freesampleSubmitLoadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubmitFreeSampleRequestState value)?
        submitFreeSampleRequestState,
    TResult Function(FreesampleSubmitFailedState value)?
        freesampleSubmitFailedState,
    TResult Function(FreesampleSubmitLoadingState value)?
        freesampleSubmitLoadingState,
    required TResult orElse(),
  }) {
    if (freesampleSubmitLoadingState != null) {
      return freesampleSubmitLoadingState(this);
    }
    return orElse();
  }
}

abstract class FreesampleSubmitLoadingState implements FreeSampleApproveState {
  const factory FreesampleSubmitLoadingState() =
      _$FreesampleSubmitLoadingStateImpl;
}
