// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'inventory_reconfirm_approval_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InventoryReconfirmApprovalEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InventoryReconfirmApproveInModel approve)
        approveInventoryReconfirmEvent,
    required TResult Function() inventoryReconfirmLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InventoryReconfirmApproveInModel approve)?
        approveInventoryReconfirmEvent,
    TResult? Function()? inventoryReconfirmLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InventoryReconfirmApproveInModel approve)?
        approveInventoryReconfirmEvent,
    TResult Function()? inventoryReconfirmLoadingEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApproveInventoryReconfirmEvent value)
        approveInventoryReconfirmEvent,
    required TResult Function(InventoryReconfirmLoadingEvent value)
        inventoryReconfirmLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApproveInventoryReconfirmEvent value)?
        approveInventoryReconfirmEvent,
    TResult? Function(InventoryReconfirmLoadingEvent value)?
        inventoryReconfirmLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApproveInventoryReconfirmEvent value)?
        approveInventoryReconfirmEvent,
    TResult Function(InventoryReconfirmLoadingEvent value)?
        inventoryReconfirmLoadingEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventoryReconfirmApprovalEventCopyWith<$Res> {
  factory $InventoryReconfirmApprovalEventCopyWith(
          InventoryReconfirmApprovalEvent value,
          $Res Function(InventoryReconfirmApprovalEvent) then) =
      _$InventoryReconfirmApprovalEventCopyWithImpl<$Res,
          InventoryReconfirmApprovalEvent>;
}

/// @nodoc
class _$InventoryReconfirmApprovalEventCopyWithImpl<$Res,
        $Val extends InventoryReconfirmApprovalEvent>
    implements $InventoryReconfirmApprovalEventCopyWith<$Res> {
  _$InventoryReconfirmApprovalEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InventoryReconfirmApprovalEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ApproveInventoryReconfirmEventImplCopyWith<$Res> {
  factory _$$ApproveInventoryReconfirmEventImplCopyWith(
          _$ApproveInventoryReconfirmEventImpl value,
          $Res Function(_$ApproveInventoryReconfirmEventImpl) then) =
      __$$ApproveInventoryReconfirmEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({InventoryReconfirmApproveInModel approve});
}

/// @nodoc
class __$$ApproveInventoryReconfirmEventImplCopyWithImpl<$Res>
    extends _$InventoryReconfirmApprovalEventCopyWithImpl<$Res,
        _$ApproveInventoryReconfirmEventImpl>
    implements _$$ApproveInventoryReconfirmEventImplCopyWith<$Res> {
  __$$ApproveInventoryReconfirmEventImplCopyWithImpl(
      _$ApproveInventoryReconfirmEventImpl _value,
      $Res Function(_$ApproveInventoryReconfirmEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of InventoryReconfirmApprovalEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? approve = null,
  }) {
    return _then(_$ApproveInventoryReconfirmEventImpl(
      approve: null == approve
          ? _value.approve
          : approve // ignore: cast_nullable_to_non_nullable
              as InventoryReconfirmApproveInModel,
    ));
  }
}

/// @nodoc

class _$ApproveInventoryReconfirmEventImpl
    implements ApproveInventoryReconfirmEvent {
  const _$ApproveInventoryReconfirmEventImpl({required this.approve});

  @override
  final InventoryReconfirmApproveInModel approve;

  @override
  String toString() {
    return 'InventoryReconfirmApprovalEvent.approveInventoryReconfirmEvent(approve: $approve)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApproveInventoryReconfirmEventImpl &&
            (identical(other.approve, approve) || other.approve == approve));
  }

  @override
  int get hashCode => Object.hash(runtimeType, approve);

  /// Create a copy of InventoryReconfirmApprovalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApproveInventoryReconfirmEventImplCopyWith<
          _$ApproveInventoryReconfirmEventImpl>
      get copyWith => __$$ApproveInventoryReconfirmEventImplCopyWithImpl<
          _$ApproveInventoryReconfirmEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InventoryReconfirmApproveInModel approve)
        approveInventoryReconfirmEvent,
    required TResult Function() inventoryReconfirmLoadingEvent,
  }) {
    return approveInventoryReconfirmEvent(approve);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InventoryReconfirmApproveInModel approve)?
        approveInventoryReconfirmEvent,
    TResult? Function()? inventoryReconfirmLoadingEvent,
  }) {
    return approveInventoryReconfirmEvent?.call(approve);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InventoryReconfirmApproveInModel approve)?
        approveInventoryReconfirmEvent,
    TResult Function()? inventoryReconfirmLoadingEvent,
    required TResult orElse(),
  }) {
    if (approveInventoryReconfirmEvent != null) {
      return approveInventoryReconfirmEvent(approve);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApproveInventoryReconfirmEvent value)
        approveInventoryReconfirmEvent,
    required TResult Function(InventoryReconfirmLoadingEvent value)
        inventoryReconfirmLoadingEvent,
  }) {
    return approveInventoryReconfirmEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApproveInventoryReconfirmEvent value)?
        approveInventoryReconfirmEvent,
    TResult? Function(InventoryReconfirmLoadingEvent value)?
        inventoryReconfirmLoadingEvent,
  }) {
    return approveInventoryReconfirmEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApproveInventoryReconfirmEvent value)?
        approveInventoryReconfirmEvent,
    TResult Function(InventoryReconfirmLoadingEvent value)?
        inventoryReconfirmLoadingEvent,
    required TResult orElse(),
  }) {
    if (approveInventoryReconfirmEvent != null) {
      return approveInventoryReconfirmEvent(this);
    }
    return orElse();
  }
}

abstract class ApproveInventoryReconfirmEvent
    implements InventoryReconfirmApprovalEvent {
  const factory ApproveInventoryReconfirmEvent(
          {required final InventoryReconfirmApproveInModel approve}) =
      _$ApproveInventoryReconfirmEventImpl;

  InventoryReconfirmApproveInModel get approve;

  /// Create a copy of InventoryReconfirmApprovalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApproveInventoryReconfirmEventImplCopyWith<
          _$ApproveInventoryReconfirmEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InventoryReconfirmLoadingEventImplCopyWith<$Res> {
  factory _$$InventoryReconfirmLoadingEventImplCopyWith(
          _$InventoryReconfirmLoadingEventImpl value,
          $Res Function(_$InventoryReconfirmLoadingEventImpl) then) =
      __$$InventoryReconfirmLoadingEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InventoryReconfirmLoadingEventImplCopyWithImpl<$Res>
    extends _$InventoryReconfirmApprovalEventCopyWithImpl<$Res,
        _$InventoryReconfirmLoadingEventImpl>
    implements _$$InventoryReconfirmLoadingEventImplCopyWith<$Res> {
  __$$InventoryReconfirmLoadingEventImplCopyWithImpl(
      _$InventoryReconfirmLoadingEventImpl _value,
      $Res Function(_$InventoryReconfirmLoadingEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of InventoryReconfirmApprovalEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InventoryReconfirmLoadingEventImpl
    implements InventoryReconfirmLoadingEvent {
  const _$InventoryReconfirmLoadingEventImpl();

  @override
  String toString() {
    return 'InventoryReconfirmApprovalEvent.inventoryReconfirmLoadingEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InventoryReconfirmLoadingEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InventoryReconfirmApproveInModel approve)
        approveInventoryReconfirmEvent,
    required TResult Function() inventoryReconfirmLoadingEvent,
  }) {
    return inventoryReconfirmLoadingEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InventoryReconfirmApproveInModel approve)?
        approveInventoryReconfirmEvent,
    TResult? Function()? inventoryReconfirmLoadingEvent,
  }) {
    return inventoryReconfirmLoadingEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InventoryReconfirmApproveInModel approve)?
        approveInventoryReconfirmEvent,
    TResult Function()? inventoryReconfirmLoadingEvent,
    required TResult orElse(),
  }) {
    if (inventoryReconfirmLoadingEvent != null) {
      return inventoryReconfirmLoadingEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApproveInventoryReconfirmEvent value)
        approveInventoryReconfirmEvent,
    required TResult Function(InventoryReconfirmLoadingEvent value)
        inventoryReconfirmLoadingEvent,
  }) {
    return inventoryReconfirmLoadingEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApproveInventoryReconfirmEvent value)?
        approveInventoryReconfirmEvent,
    TResult? Function(InventoryReconfirmLoadingEvent value)?
        inventoryReconfirmLoadingEvent,
  }) {
    return inventoryReconfirmLoadingEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApproveInventoryReconfirmEvent value)?
        approveInventoryReconfirmEvent,
    TResult Function(InventoryReconfirmLoadingEvent value)?
        inventoryReconfirmLoadingEvent,
    required TResult orElse(),
  }) {
    if (inventoryReconfirmLoadingEvent != null) {
      return inventoryReconfirmLoadingEvent(this);
    }
    return orElse();
  }
}

abstract class InventoryReconfirmLoadingEvent
    implements InventoryReconfirmApprovalEvent {
  const factory InventoryReconfirmLoadingEvent() =
      _$InventoryReconfirmLoadingEventImpl;
}

/// @nodoc
mixin _$InventoryReconfirmApprovalState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InventoryReconfirmApprovalRespModel? response)
        inventoryReconfirmApproveState,
    required TResult Function() inventoryReconfirmApproveFailedState,
    required TResult Function() inventoryReconfirmApproveLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InventoryReconfirmApprovalRespModel? response)?
        inventoryReconfirmApproveState,
    TResult? Function()? inventoryReconfirmApproveFailedState,
    TResult? Function()? inventoryReconfirmApproveLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InventoryReconfirmApprovalRespModel? response)?
        inventoryReconfirmApproveState,
    TResult Function()? inventoryReconfirmApproveFailedState,
    TResult Function()? inventoryReconfirmApproveLoadingState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InventoryReconfirmApproveState value)
        inventoryReconfirmApproveState,
    required TResult Function(InventoryReconfirmApproveFailedState value)
        inventoryReconfirmApproveFailedState,
    required TResult Function(InventoryReconfirmApproveLoadingState value)
        inventoryReconfirmApproveLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InventoryReconfirmApproveState value)?
        inventoryReconfirmApproveState,
    TResult? Function(InventoryReconfirmApproveFailedState value)?
        inventoryReconfirmApproveFailedState,
    TResult? Function(InventoryReconfirmApproveLoadingState value)?
        inventoryReconfirmApproveLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InventoryReconfirmApproveState value)?
        inventoryReconfirmApproveState,
    TResult Function(InventoryReconfirmApproveFailedState value)?
        inventoryReconfirmApproveFailedState,
    TResult Function(InventoryReconfirmApproveLoadingState value)?
        inventoryReconfirmApproveLoadingState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InventoryReconfirmApprovalStateCopyWith<$Res> {
  factory $InventoryReconfirmApprovalStateCopyWith(
          InventoryReconfirmApprovalState value,
          $Res Function(InventoryReconfirmApprovalState) then) =
      _$InventoryReconfirmApprovalStateCopyWithImpl<$Res,
          InventoryReconfirmApprovalState>;
}

/// @nodoc
class _$InventoryReconfirmApprovalStateCopyWithImpl<$Res,
        $Val extends InventoryReconfirmApprovalState>
    implements $InventoryReconfirmApprovalStateCopyWith<$Res> {
  _$InventoryReconfirmApprovalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InventoryReconfirmApprovalState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InventoryReconfirmApproveStateImplCopyWith<$Res> {
  factory _$$InventoryReconfirmApproveStateImplCopyWith(
          _$InventoryReconfirmApproveStateImpl value,
          $Res Function(_$InventoryReconfirmApproveStateImpl) then) =
      __$$InventoryReconfirmApproveStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({InventoryReconfirmApprovalRespModel? response});
}

/// @nodoc
class __$$InventoryReconfirmApproveStateImplCopyWithImpl<$Res>
    extends _$InventoryReconfirmApprovalStateCopyWithImpl<$Res,
        _$InventoryReconfirmApproveStateImpl>
    implements _$$InventoryReconfirmApproveStateImplCopyWith<$Res> {
  __$$InventoryReconfirmApproveStateImplCopyWithImpl(
      _$InventoryReconfirmApproveStateImpl _value,
      $Res Function(_$InventoryReconfirmApproveStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of InventoryReconfirmApprovalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_$InventoryReconfirmApproveStateImpl(
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as InventoryReconfirmApprovalRespModel?,
    ));
  }
}

/// @nodoc

class _$InventoryReconfirmApproveStateImpl
    implements InventoryReconfirmApproveState {
  const _$InventoryReconfirmApproveStateImpl({required this.response});

  @override
  final InventoryReconfirmApprovalRespModel? response;

  @override
  String toString() {
    return 'InventoryReconfirmApprovalState.inventoryReconfirmApproveState(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InventoryReconfirmApproveStateImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  /// Create a copy of InventoryReconfirmApprovalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InventoryReconfirmApproveStateImplCopyWith<
          _$InventoryReconfirmApproveStateImpl>
      get copyWith => __$$InventoryReconfirmApproveStateImplCopyWithImpl<
          _$InventoryReconfirmApproveStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InventoryReconfirmApprovalRespModel? response)
        inventoryReconfirmApproveState,
    required TResult Function() inventoryReconfirmApproveFailedState,
    required TResult Function() inventoryReconfirmApproveLoadingState,
  }) {
    return inventoryReconfirmApproveState(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InventoryReconfirmApprovalRespModel? response)?
        inventoryReconfirmApproveState,
    TResult? Function()? inventoryReconfirmApproveFailedState,
    TResult? Function()? inventoryReconfirmApproveLoadingState,
  }) {
    return inventoryReconfirmApproveState?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InventoryReconfirmApprovalRespModel? response)?
        inventoryReconfirmApproveState,
    TResult Function()? inventoryReconfirmApproveFailedState,
    TResult Function()? inventoryReconfirmApproveLoadingState,
    required TResult orElse(),
  }) {
    if (inventoryReconfirmApproveState != null) {
      return inventoryReconfirmApproveState(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InventoryReconfirmApproveState value)
        inventoryReconfirmApproveState,
    required TResult Function(InventoryReconfirmApproveFailedState value)
        inventoryReconfirmApproveFailedState,
    required TResult Function(InventoryReconfirmApproveLoadingState value)
        inventoryReconfirmApproveLoadingState,
  }) {
    return inventoryReconfirmApproveState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InventoryReconfirmApproveState value)?
        inventoryReconfirmApproveState,
    TResult? Function(InventoryReconfirmApproveFailedState value)?
        inventoryReconfirmApproveFailedState,
    TResult? Function(InventoryReconfirmApproveLoadingState value)?
        inventoryReconfirmApproveLoadingState,
  }) {
    return inventoryReconfirmApproveState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InventoryReconfirmApproveState value)?
        inventoryReconfirmApproveState,
    TResult Function(InventoryReconfirmApproveFailedState value)?
        inventoryReconfirmApproveFailedState,
    TResult Function(InventoryReconfirmApproveLoadingState value)?
        inventoryReconfirmApproveLoadingState,
    required TResult orElse(),
  }) {
    if (inventoryReconfirmApproveState != null) {
      return inventoryReconfirmApproveState(this);
    }
    return orElse();
  }
}

abstract class InventoryReconfirmApproveState
    implements InventoryReconfirmApprovalState {
  const factory InventoryReconfirmApproveState(
          {required final InventoryReconfirmApprovalRespModel? response}) =
      _$InventoryReconfirmApproveStateImpl;

  InventoryReconfirmApprovalRespModel? get response;

  /// Create a copy of InventoryReconfirmApprovalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InventoryReconfirmApproveStateImplCopyWith<
          _$InventoryReconfirmApproveStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InventoryReconfirmApproveFailedStateImplCopyWith<$Res> {
  factory _$$InventoryReconfirmApproveFailedStateImplCopyWith(
          _$InventoryReconfirmApproveFailedStateImpl value,
          $Res Function(_$InventoryReconfirmApproveFailedStateImpl) then) =
      __$$InventoryReconfirmApproveFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InventoryReconfirmApproveFailedStateImplCopyWithImpl<$Res>
    extends _$InventoryReconfirmApprovalStateCopyWithImpl<$Res,
        _$InventoryReconfirmApproveFailedStateImpl>
    implements _$$InventoryReconfirmApproveFailedStateImplCopyWith<$Res> {
  __$$InventoryReconfirmApproveFailedStateImplCopyWithImpl(
      _$InventoryReconfirmApproveFailedStateImpl _value,
      $Res Function(_$InventoryReconfirmApproveFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of InventoryReconfirmApprovalState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InventoryReconfirmApproveFailedStateImpl
    implements InventoryReconfirmApproveFailedState {
  const _$InventoryReconfirmApproveFailedStateImpl();

  @override
  String toString() {
    return 'InventoryReconfirmApprovalState.inventoryReconfirmApproveFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InventoryReconfirmApproveFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InventoryReconfirmApprovalRespModel? response)
        inventoryReconfirmApproveState,
    required TResult Function() inventoryReconfirmApproveFailedState,
    required TResult Function() inventoryReconfirmApproveLoadingState,
  }) {
    return inventoryReconfirmApproveFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InventoryReconfirmApprovalRespModel? response)?
        inventoryReconfirmApproveState,
    TResult? Function()? inventoryReconfirmApproveFailedState,
    TResult? Function()? inventoryReconfirmApproveLoadingState,
  }) {
    return inventoryReconfirmApproveFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InventoryReconfirmApprovalRespModel? response)?
        inventoryReconfirmApproveState,
    TResult Function()? inventoryReconfirmApproveFailedState,
    TResult Function()? inventoryReconfirmApproveLoadingState,
    required TResult orElse(),
  }) {
    if (inventoryReconfirmApproveFailedState != null) {
      return inventoryReconfirmApproveFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InventoryReconfirmApproveState value)
        inventoryReconfirmApproveState,
    required TResult Function(InventoryReconfirmApproveFailedState value)
        inventoryReconfirmApproveFailedState,
    required TResult Function(InventoryReconfirmApproveLoadingState value)
        inventoryReconfirmApproveLoadingState,
  }) {
    return inventoryReconfirmApproveFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InventoryReconfirmApproveState value)?
        inventoryReconfirmApproveState,
    TResult? Function(InventoryReconfirmApproveFailedState value)?
        inventoryReconfirmApproveFailedState,
    TResult? Function(InventoryReconfirmApproveLoadingState value)?
        inventoryReconfirmApproveLoadingState,
  }) {
    return inventoryReconfirmApproveFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InventoryReconfirmApproveState value)?
        inventoryReconfirmApproveState,
    TResult Function(InventoryReconfirmApproveFailedState value)?
        inventoryReconfirmApproveFailedState,
    TResult Function(InventoryReconfirmApproveLoadingState value)?
        inventoryReconfirmApproveLoadingState,
    required TResult orElse(),
  }) {
    if (inventoryReconfirmApproveFailedState != null) {
      return inventoryReconfirmApproveFailedState(this);
    }
    return orElse();
  }
}

abstract class InventoryReconfirmApproveFailedState
    implements InventoryReconfirmApprovalState {
  const factory InventoryReconfirmApproveFailedState() =
      _$InventoryReconfirmApproveFailedStateImpl;
}

/// @nodoc
abstract class _$$InventoryReconfirmApproveLoadingStateImplCopyWith<$Res> {
  factory _$$InventoryReconfirmApproveLoadingStateImplCopyWith(
          _$InventoryReconfirmApproveLoadingStateImpl value,
          $Res Function(_$InventoryReconfirmApproveLoadingStateImpl) then) =
      __$$InventoryReconfirmApproveLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InventoryReconfirmApproveLoadingStateImplCopyWithImpl<$Res>
    extends _$InventoryReconfirmApprovalStateCopyWithImpl<$Res,
        _$InventoryReconfirmApproveLoadingStateImpl>
    implements _$$InventoryReconfirmApproveLoadingStateImplCopyWith<$Res> {
  __$$InventoryReconfirmApproveLoadingStateImplCopyWithImpl(
      _$InventoryReconfirmApproveLoadingStateImpl _value,
      $Res Function(_$InventoryReconfirmApproveLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of InventoryReconfirmApprovalState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InventoryReconfirmApproveLoadingStateImpl
    implements InventoryReconfirmApproveLoadingState {
  const _$InventoryReconfirmApproveLoadingStateImpl();

  @override
  String toString() {
    return 'InventoryReconfirmApprovalState.inventoryReconfirmApproveLoadingState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InventoryReconfirmApproveLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InventoryReconfirmApprovalRespModel? response)
        inventoryReconfirmApproveState,
    required TResult Function() inventoryReconfirmApproveFailedState,
    required TResult Function() inventoryReconfirmApproveLoadingState,
  }) {
    return inventoryReconfirmApproveLoadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InventoryReconfirmApprovalRespModel? response)?
        inventoryReconfirmApproveState,
    TResult? Function()? inventoryReconfirmApproveFailedState,
    TResult? Function()? inventoryReconfirmApproveLoadingState,
  }) {
    return inventoryReconfirmApproveLoadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InventoryReconfirmApprovalRespModel? response)?
        inventoryReconfirmApproveState,
    TResult Function()? inventoryReconfirmApproveFailedState,
    TResult Function()? inventoryReconfirmApproveLoadingState,
    required TResult orElse(),
  }) {
    if (inventoryReconfirmApproveLoadingState != null) {
      return inventoryReconfirmApproveLoadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InventoryReconfirmApproveState value)
        inventoryReconfirmApproveState,
    required TResult Function(InventoryReconfirmApproveFailedState value)
        inventoryReconfirmApproveFailedState,
    required TResult Function(InventoryReconfirmApproveLoadingState value)
        inventoryReconfirmApproveLoadingState,
  }) {
    return inventoryReconfirmApproveLoadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InventoryReconfirmApproveState value)?
        inventoryReconfirmApproveState,
    TResult? Function(InventoryReconfirmApproveFailedState value)?
        inventoryReconfirmApproveFailedState,
    TResult? Function(InventoryReconfirmApproveLoadingState value)?
        inventoryReconfirmApproveLoadingState,
  }) {
    return inventoryReconfirmApproveLoadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InventoryReconfirmApproveState value)?
        inventoryReconfirmApproveState,
    TResult Function(InventoryReconfirmApproveFailedState value)?
        inventoryReconfirmApproveFailedState,
    TResult Function(InventoryReconfirmApproveLoadingState value)?
        inventoryReconfirmApproveLoadingState,
    required TResult orElse(),
  }) {
    if (inventoryReconfirmApproveLoadingState != null) {
      return inventoryReconfirmApproveLoadingState(this);
    }
    return orElse();
  }
}

abstract class InventoryReconfirmApproveLoadingState
    implements InventoryReconfirmApprovalState {
  const factory InventoryReconfirmApproveLoadingState() =
      _$InventoryReconfirmApproveLoadingStateImpl;
}
