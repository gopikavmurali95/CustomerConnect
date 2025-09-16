// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'load_req_approval_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoadReqApprovalEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoadReqInApprovalModel approval)
        approvloadReqEvent,
    required TResult Function() approvLoadingReqEvent,
    required TResult Function() clearLoadReqApprovalEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoadReqInApprovalModel approval)? approvloadReqEvent,
    TResult? Function()? approvLoadingReqEvent,
    TResult? Function()? clearLoadReqApprovalEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoadReqInApprovalModel approval)? approvloadReqEvent,
    TResult Function()? approvLoadingReqEvent,
    TResult Function()? clearLoadReqApprovalEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApprovloadReqEvent value) approvloadReqEvent,
    required TResult Function(ApprovLoadingReqEvent value)
        approvLoadingReqEvent,
    required TResult Function(ClearLoadReqApprovalEvent value)
        clearLoadReqApprovalEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApprovloadReqEvent value)? approvloadReqEvent,
    TResult? Function(ApprovLoadingReqEvent value)? approvLoadingReqEvent,
    TResult? Function(ClearLoadReqApprovalEvent value)?
        clearLoadReqApprovalEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApprovloadReqEvent value)? approvloadReqEvent,
    TResult Function(ApprovLoadingReqEvent value)? approvLoadingReqEvent,
    TResult Function(ClearLoadReqApprovalEvent value)?
        clearLoadReqApprovalEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadReqApprovalEventCopyWith<$Res> {
  factory $LoadReqApprovalEventCopyWith(LoadReqApprovalEvent value,
          $Res Function(LoadReqApprovalEvent) then) =
      _$LoadReqApprovalEventCopyWithImpl<$Res, LoadReqApprovalEvent>;
}

/// @nodoc
class _$LoadReqApprovalEventCopyWithImpl<$Res,
        $Val extends LoadReqApprovalEvent>
    implements $LoadReqApprovalEventCopyWith<$Res> {
  _$LoadReqApprovalEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoadReqApprovalEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ApprovloadReqEventImplCopyWith<$Res> {
  factory _$$ApprovloadReqEventImplCopyWith(_$ApprovloadReqEventImpl value,
          $Res Function(_$ApprovloadReqEventImpl) then) =
      __$$ApprovloadReqEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoadReqInApprovalModel approval});
}

/// @nodoc
class __$$ApprovloadReqEventImplCopyWithImpl<$Res>
    extends _$LoadReqApprovalEventCopyWithImpl<$Res, _$ApprovloadReqEventImpl>
    implements _$$ApprovloadReqEventImplCopyWith<$Res> {
  __$$ApprovloadReqEventImplCopyWithImpl(_$ApprovloadReqEventImpl _value,
      $Res Function(_$ApprovloadReqEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoadReqApprovalEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? approval = null,
  }) {
    return _then(_$ApprovloadReqEventImpl(
      approval: null == approval
          ? _value.approval
          : approval // ignore: cast_nullable_to_non_nullable
              as LoadReqInApprovalModel,
    ));
  }
}

/// @nodoc

class _$ApprovloadReqEventImpl implements ApprovloadReqEvent {
  const _$ApprovloadReqEventImpl({required this.approval});

  @override
  final LoadReqInApprovalModel approval;

  @override
  String toString() {
    return 'LoadReqApprovalEvent.approvloadReqEvent(approval: $approval)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApprovloadReqEventImpl &&
            (identical(other.approval, approval) ||
                other.approval == approval));
  }

  @override
  int get hashCode => Object.hash(runtimeType, approval);

  /// Create a copy of LoadReqApprovalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApprovloadReqEventImplCopyWith<_$ApprovloadReqEventImpl> get copyWith =>
      __$$ApprovloadReqEventImplCopyWithImpl<_$ApprovloadReqEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoadReqInApprovalModel approval)
        approvloadReqEvent,
    required TResult Function() approvLoadingReqEvent,
    required TResult Function() clearLoadReqApprovalEvent,
  }) {
    return approvloadReqEvent(approval);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoadReqInApprovalModel approval)? approvloadReqEvent,
    TResult? Function()? approvLoadingReqEvent,
    TResult? Function()? clearLoadReqApprovalEvent,
  }) {
    return approvloadReqEvent?.call(approval);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoadReqInApprovalModel approval)? approvloadReqEvent,
    TResult Function()? approvLoadingReqEvent,
    TResult Function()? clearLoadReqApprovalEvent,
    required TResult orElse(),
  }) {
    if (approvloadReqEvent != null) {
      return approvloadReqEvent(approval);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApprovloadReqEvent value) approvloadReqEvent,
    required TResult Function(ApprovLoadingReqEvent value)
        approvLoadingReqEvent,
    required TResult Function(ClearLoadReqApprovalEvent value)
        clearLoadReqApprovalEvent,
  }) {
    return approvloadReqEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApprovloadReqEvent value)? approvloadReqEvent,
    TResult? Function(ApprovLoadingReqEvent value)? approvLoadingReqEvent,
    TResult? Function(ClearLoadReqApprovalEvent value)?
        clearLoadReqApprovalEvent,
  }) {
    return approvloadReqEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApprovloadReqEvent value)? approvloadReqEvent,
    TResult Function(ApprovLoadingReqEvent value)? approvLoadingReqEvent,
    TResult Function(ClearLoadReqApprovalEvent value)?
        clearLoadReqApprovalEvent,
    required TResult orElse(),
  }) {
    if (approvloadReqEvent != null) {
      return approvloadReqEvent(this);
    }
    return orElse();
  }
}

abstract class ApprovloadReqEvent implements LoadReqApprovalEvent {
  const factory ApprovloadReqEvent(
          {required final LoadReqInApprovalModel approval}) =
      _$ApprovloadReqEventImpl;

  LoadReqInApprovalModel get approval;

  /// Create a copy of LoadReqApprovalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApprovloadReqEventImplCopyWith<_$ApprovloadReqEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApprovLoadingReqEventImplCopyWith<$Res> {
  factory _$$ApprovLoadingReqEventImplCopyWith(
          _$ApprovLoadingReqEventImpl value,
          $Res Function(_$ApprovLoadingReqEventImpl) then) =
      __$$ApprovLoadingReqEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ApprovLoadingReqEventImplCopyWithImpl<$Res>
    extends _$LoadReqApprovalEventCopyWithImpl<$Res,
        _$ApprovLoadingReqEventImpl>
    implements _$$ApprovLoadingReqEventImplCopyWith<$Res> {
  __$$ApprovLoadingReqEventImplCopyWithImpl(_$ApprovLoadingReqEventImpl _value,
      $Res Function(_$ApprovLoadingReqEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoadReqApprovalEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ApprovLoadingReqEventImpl implements ApprovLoadingReqEvent {
  const _$ApprovLoadingReqEventImpl();

  @override
  String toString() {
    return 'LoadReqApprovalEvent.approvLoadingReqEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApprovLoadingReqEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoadReqInApprovalModel approval)
        approvloadReqEvent,
    required TResult Function() approvLoadingReqEvent,
    required TResult Function() clearLoadReqApprovalEvent,
  }) {
    return approvLoadingReqEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoadReqInApprovalModel approval)? approvloadReqEvent,
    TResult? Function()? approvLoadingReqEvent,
    TResult? Function()? clearLoadReqApprovalEvent,
  }) {
    return approvLoadingReqEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoadReqInApprovalModel approval)? approvloadReqEvent,
    TResult Function()? approvLoadingReqEvent,
    TResult Function()? clearLoadReqApprovalEvent,
    required TResult orElse(),
  }) {
    if (approvLoadingReqEvent != null) {
      return approvLoadingReqEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApprovloadReqEvent value) approvloadReqEvent,
    required TResult Function(ApprovLoadingReqEvent value)
        approvLoadingReqEvent,
    required TResult Function(ClearLoadReqApprovalEvent value)
        clearLoadReqApprovalEvent,
  }) {
    return approvLoadingReqEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApprovloadReqEvent value)? approvloadReqEvent,
    TResult? Function(ApprovLoadingReqEvent value)? approvLoadingReqEvent,
    TResult? Function(ClearLoadReqApprovalEvent value)?
        clearLoadReqApprovalEvent,
  }) {
    return approvLoadingReqEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApprovloadReqEvent value)? approvloadReqEvent,
    TResult Function(ApprovLoadingReqEvent value)? approvLoadingReqEvent,
    TResult Function(ClearLoadReqApprovalEvent value)?
        clearLoadReqApprovalEvent,
    required TResult orElse(),
  }) {
    if (approvLoadingReqEvent != null) {
      return approvLoadingReqEvent(this);
    }
    return orElse();
  }
}

abstract class ApprovLoadingReqEvent implements LoadReqApprovalEvent {
  const factory ApprovLoadingReqEvent() = _$ApprovLoadingReqEventImpl;
}

/// @nodoc
abstract class _$$ClearLoadReqApprovalEventImplCopyWith<$Res> {
  factory _$$ClearLoadReqApprovalEventImplCopyWith(
          _$ClearLoadReqApprovalEventImpl value,
          $Res Function(_$ClearLoadReqApprovalEventImpl) then) =
      __$$ClearLoadReqApprovalEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearLoadReqApprovalEventImplCopyWithImpl<$Res>
    extends _$LoadReqApprovalEventCopyWithImpl<$Res,
        _$ClearLoadReqApprovalEventImpl>
    implements _$$ClearLoadReqApprovalEventImplCopyWith<$Res> {
  __$$ClearLoadReqApprovalEventImplCopyWithImpl(
      _$ClearLoadReqApprovalEventImpl _value,
      $Res Function(_$ClearLoadReqApprovalEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoadReqApprovalEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearLoadReqApprovalEventImpl implements ClearLoadReqApprovalEvent {
  const _$ClearLoadReqApprovalEventImpl();

  @override
  String toString() {
    return 'LoadReqApprovalEvent.clearLoadReqApprovalEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearLoadReqApprovalEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoadReqInApprovalModel approval)
        approvloadReqEvent,
    required TResult Function() approvLoadingReqEvent,
    required TResult Function() clearLoadReqApprovalEvent,
  }) {
    return clearLoadReqApprovalEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoadReqInApprovalModel approval)? approvloadReqEvent,
    TResult? Function()? approvLoadingReqEvent,
    TResult? Function()? clearLoadReqApprovalEvent,
  }) {
    return clearLoadReqApprovalEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoadReqInApprovalModel approval)? approvloadReqEvent,
    TResult Function()? approvLoadingReqEvent,
    TResult Function()? clearLoadReqApprovalEvent,
    required TResult orElse(),
  }) {
    if (clearLoadReqApprovalEvent != null) {
      return clearLoadReqApprovalEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApprovloadReqEvent value) approvloadReqEvent,
    required TResult Function(ApprovLoadingReqEvent value)
        approvLoadingReqEvent,
    required TResult Function(ClearLoadReqApprovalEvent value)
        clearLoadReqApprovalEvent,
  }) {
    return clearLoadReqApprovalEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApprovloadReqEvent value)? approvloadReqEvent,
    TResult? Function(ApprovLoadingReqEvent value)? approvLoadingReqEvent,
    TResult? Function(ClearLoadReqApprovalEvent value)?
        clearLoadReqApprovalEvent,
  }) {
    return clearLoadReqApprovalEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApprovloadReqEvent value)? approvloadReqEvent,
    TResult Function(ApprovLoadingReqEvent value)? approvLoadingReqEvent,
    TResult Function(ClearLoadReqApprovalEvent value)?
        clearLoadReqApprovalEvent,
    required TResult orElse(),
  }) {
    if (clearLoadReqApprovalEvent != null) {
      return clearLoadReqApprovalEvent(this);
    }
    return orElse();
  }
}

abstract class ClearLoadReqApprovalEvent implements LoadReqApprovalEvent {
  const factory ClearLoadReqApprovalEvent() = _$ClearLoadReqApprovalEventImpl;
}

/// @nodoc
mixin _$LoadReqApprovalState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoadRequestApprovalOutModel? response)
        loadReqApprovalSuccessState,
    required TResult Function() loadReqApprovalFailedState,
    required TResult Function() loadReqApprovalLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoadRequestApprovalOutModel? response)?
        loadReqApprovalSuccessState,
    TResult? Function()? loadReqApprovalFailedState,
    TResult? Function()? loadReqApprovalLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoadRequestApprovalOutModel? response)?
        loadReqApprovalSuccessState,
    TResult Function()? loadReqApprovalFailedState,
    TResult Function()? loadReqApprovalLoadingState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadReqApprovalSuccessState value)
        loadReqApprovalSuccessState,
    required TResult Function(LoadReqApprovalFailedState value)
        loadReqApprovalFailedState,
    required TResult Function(LoadReqApprovalLoadingState value)
        loadReqApprovalLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadReqApprovalSuccessState value)?
        loadReqApprovalSuccessState,
    TResult? Function(LoadReqApprovalFailedState value)?
        loadReqApprovalFailedState,
    TResult? Function(LoadReqApprovalLoadingState value)?
        loadReqApprovalLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadReqApprovalSuccessState value)?
        loadReqApprovalSuccessState,
    TResult Function(LoadReqApprovalFailedState value)?
        loadReqApprovalFailedState,
    TResult Function(LoadReqApprovalLoadingState value)?
        loadReqApprovalLoadingState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadReqApprovalStateCopyWith<$Res> {
  factory $LoadReqApprovalStateCopyWith(LoadReqApprovalState value,
          $Res Function(LoadReqApprovalState) then) =
      _$LoadReqApprovalStateCopyWithImpl<$Res, LoadReqApprovalState>;
}

/// @nodoc
class _$LoadReqApprovalStateCopyWithImpl<$Res,
        $Val extends LoadReqApprovalState>
    implements $LoadReqApprovalStateCopyWith<$Res> {
  _$LoadReqApprovalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoadReqApprovalState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadReqApprovalSuccessStateImplCopyWith<$Res> {
  factory _$$LoadReqApprovalSuccessStateImplCopyWith(
          _$LoadReqApprovalSuccessStateImpl value,
          $Res Function(_$LoadReqApprovalSuccessStateImpl) then) =
      __$$LoadReqApprovalSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoadRequestApprovalOutModel? response});
}

/// @nodoc
class __$$LoadReqApprovalSuccessStateImplCopyWithImpl<$Res>
    extends _$LoadReqApprovalStateCopyWithImpl<$Res,
        _$LoadReqApprovalSuccessStateImpl>
    implements _$$LoadReqApprovalSuccessStateImplCopyWith<$Res> {
  __$$LoadReqApprovalSuccessStateImplCopyWithImpl(
      _$LoadReqApprovalSuccessStateImpl _value,
      $Res Function(_$LoadReqApprovalSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoadReqApprovalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_$LoadReqApprovalSuccessStateImpl(
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as LoadRequestApprovalOutModel?,
    ));
  }
}

/// @nodoc

class _$LoadReqApprovalSuccessStateImpl implements LoadReqApprovalSuccessState {
  const _$LoadReqApprovalSuccessStateImpl({required this.response});

  @override
  final LoadRequestApprovalOutModel? response;

  @override
  String toString() {
    return 'LoadReqApprovalState.loadReqApprovalSuccessState(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadReqApprovalSuccessStateImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  /// Create a copy of LoadReqApprovalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadReqApprovalSuccessStateImplCopyWith<_$LoadReqApprovalSuccessStateImpl>
      get copyWith => __$$LoadReqApprovalSuccessStateImplCopyWithImpl<
          _$LoadReqApprovalSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoadRequestApprovalOutModel? response)
        loadReqApprovalSuccessState,
    required TResult Function() loadReqApprovalFailedState,
    required TResult Function() loadReqApprovalLoadingState,
  }) {
    return loadReqApprovalSuccessState(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoadRequestApprovalOutModel? response)?
        loadReqApprovalSuccessState,
    TResult? Function()? loadReqApprovalFailedState,
    TResult? Function()? loadReqApprovalLoadingState,
  }) {
    return loadReqApprovalSuccessState?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoadRequestApprovalOutModel? response)?
        loadReqApprovalSuccessState,
    TResult Function()? loadReqApprovalFailedState,
    TResult Function()? loadReqApprovalLoadingState,
    required TResult orElse(),
  }) {
    if (loadReqApprovalSuccessState != null) {
      return loadReqApprovalSuccessState(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadReqApprovalSuccessState value)
        loadReqApprovalSuccessState,
    required TResult Function(LoadReqApprovalFailedState value)
        loadReqApprovalFailedState,
    required TResult Function(LoadReqApprovalLoadingState value)
        loadReqApprovalLoadingState,
  }) {
    return loadReqApprovalSuccessState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadReqApprovalSuccessState value)?
        loadReqApprovalSuccessState,
    TResult? Function(LoadReqApprovalFailedState value)?
        loadReqApprovalFailedState,
    TResult? Function(LoadReqApprovalLoadingState value)?
        loadReqApprovalLoadingState,
  }) {
    return loadReqApprovalSuccessState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadReqApprovalSuccessState value)?
        loadReqApprovalSuccessState,
    TResult Function(LoadReqApprovalFailedState value)?
        loadReqApprovalFailedState,
    TResult Function(LoadReqApprovalLoadingState value)?
        loadReqApprovalLoadingState,
    required TResult orElse(),
  }) {
    if (loadReqApprovalSuccessState != null) {
      return loadReqApprovalSuccessState(this);
    }
    return orElse();
  }
}

abstract class LoadReqApprovalSuccessState implements LoadReqApprovalState {
  const factory LoadReqApprovalSuccessState(
          {required final LoadRequestApprovalOutModel? response}) =
      _$LoadReqApprovalSuccessStateImpl;

  LoadRequestApprovalOutModel? get response;

  /// Create a copy of LoadReqApprovalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadReqApprovalSuccessStateImplCopyWith<_$LoadReqApprovalSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadReqApprovalFailedStateImplCopyWith<$Res> {
  factory _$$LoadReqApprovalFailedStateImplCopyWith(
          _$LoadReqApprovalFailedStateImpl value,
          $Res Function(_$LoadReqApprovalFailedStateImpl) then) =
      __$$LoadReqApprovalFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadReqApprovalFailedStateImplCopyWithImpl<$Res>
    extends _$LoadReqApprovalStateCopyWithImpl<$Res,
        _$LoadReqApprovalFailedStateImpl>
    implements _$$LoadReqApprovalFailedStateImplCopyWith<$Res> {
  __$$LoadReqApprovalFailedStateImplCopyWithImpl(
      _$LoadReqApprovalFailedStateImpl _value,
      $Res Function(_$LoadReqApprovalFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoadReqApprovalState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadReqApprovalFailedStateImpl implements LoadReqApprovalFailedState {
  const _$LoadReqApprovalFailedStateImpl();

  @override
  String toString() {
    return 'LoadReqApprovalState.loadReqApprovalFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadReqApprovalFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoadRequestApprovalOutModel? response)
        loadReqApprovalSuccessState,
    required TResult Function() loadReqApprovalFailedState,
    required TResult Function() loadReqApprovalLoadingState,
  }) {
    return loadReqApprovalFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoadRequestApprovalOutModel? response)?
        loadReqApprovalSuccessState,
    TResult? Function()? loadReqApprovalFailedState,
    TResult? Function()? loadReqApprovalLoadingState,
  }) {
    return loadReqApprovalFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoadRequestApprovalOutModel? response)?
        loadReqApprovalSuccessState,
    TResult Function()? loadReqApprovalFailedState,
    TResult Function()? loadReqApprovalLoadingState,
    required TResult orElse(),
  }) {
    if (loadReqApprovalFailedState != null) {
      return loadReqApprovalFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadReqApprovalSuccessState value)
        loadReqApprovalSuccessState,
    required TResult Function(LoadReqApprovalFailedState value)
        loadReqApprovalFailedState,
    required TResult Function(LoadReqApprovalLoadingState value)
        loadReqApprovalLoadingState,
  }) {
    return loadReqApprovalFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadReqApprovalSuccessState value)?
        loadReqApprovalSuccessState,
    TResult? Function(LoadReqApprovalFailedState value)?
        loadReqApprovalFailedState,
    TResult? Function(LoadReqApprovalLoadingState value)?
        loadReqApprovalLoadingState,
  }) {
    return loadReqApprovalFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadReqApprovalSuccessState value)?
        loadReqApprovalSuccessState,
    TResult Function(LoadReqApprovalFailedState value)?
        loadReqApprovalFailedState,
    TResult Function(LoadReqApprovalLoadingState value)?
        loadReqApprovalLoadingState,
    required TResult orElse(),
  }) {
    if (loadReqApprovalFailedState != null) {
      return loadReqApprovalFailedState(this);
    }
    return orElse();
  }
}

abstract class LoadReqApprovalFailedState implements LoadReqApprovalState {
  const factory LoadReqApprovalFailedState() = _$LoadReqApprovalFailedStateImpl;
}

/// @nodoc
abstract class _$$LoadReqApprovalLoadingStateImplCopyWith<$Res> {
  factory _$$LoadReqApprovalLoadingStateImplCopyWith(
          _$LoadReqApprovalLoadingStateImpl value,
          $Res Function(_$LoadReqApprovalLoadingStateImpl) then) =
      __$$LoadReqApprovalLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadReqApprovalLoadingStateImplCopyWithImpl<$Res>
    extends _$LoadReqApprovalStateCopyWithImpl<$Res,
        _$LoadReqApprovalLoadingStateImpl>
    implements _$$LoadReqApprovalLoadingStateImplCopyWith<$Res> {
  __$$LoadReqApprovalLoadingStateImplCopyWithImpl(
      _$LoadReqApprovalLoadingStateImpl _value,
      $Res Function(_$LoadReqApprovalLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoadReqApprovalState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadReqApprovalLoadingStateImpl implements LoadReqApprovalLoadingState {
  const _$LoadReqApprovalLoadingStateImpl();

  @override
  String toString() {
    return 'LoadReqApprovalState.loadReqApprovalLoadingState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadReqApprovalLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoadRequestApprovalOutModel? response)
        loadReqApprovalSuccessState,
    required TResult Function() loadReqApprovalFailedState,
    required TResult Function() loadReqApprovalLoadingState,
  }) {
    return loadReqApprovalLoadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoadRequestApprovalOutModel? response)?
        loadReqApprovalSuccessState,
    TResult? Function()? loadReqApprovalFailedState,
    TResult? Function()? loadReqApprovalLoadingState,
  }) {
    return loadReqApprovalLoadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoadRequestApprovalOutModel? response)?
        loadReqApprovalSuccessState,
    TResult Function()? loadReqApprovalFailedState,
    TResult Function()? loadReqApprovalLoadingState,
    required TResult orElse(),
  }) {
    if (loadReqApprovalLoadingState != null) {
      return loadReqApprovalLoadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadReqApprovalSuccessState value)
        loadReqApprovalSuccessState,
    required TResult Function(LoadReqApprovalFailedState value)
        loadReqApprovalFailedState,
    required TResult Function(LoadReqApprovalLoadingState value)
        loadReqApprovalLoadingState,
  }) {
    return loadReqApprovalLoadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadReqApprovalSuccessState value)?
        loadReqApprovalSuccessState,
    TResult? Function(LoadReqApprovalFailedState value)?
        loadReqApprovalFailedState,
    TResult? Function(LoadReqApprovalLoadingState value)?
        loadReqApprovalLoadingState,
  }) {
    return loadReqApprovalLoadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadReqApprovalSuccessState value)?
        loadReqApprovalSuccessState,
    TResult Function(LoadReqApprovalFailedState value)?
        loadReqApprovalFailedState,
    TResult Function(LoadReqApprovalLoadingState value)?
        loadReqApprovalLoadingState,
    required TResult orElse(),
  }) {
    if (loadReqApprovalLoadingState != null) {
      return loadReqApprovalLoadingState(this);
    }
    return orElse();
  }
}

abstract class LoadReqApprovalLoadingState implements LoadReqApprovalState {
  const factory LoadReqApprovalLoadingState() =
      _$LoadReqApprovalLoadingStateImpl;
}
