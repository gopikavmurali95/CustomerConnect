// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'approve_return_product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ApproveReturnProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ReturnApproveInModel approval)
        approveProductEvent,
    required TResult Function() addApprovalLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ReturnApproveInModel approval)? approveProductEvent,
    TResult? Function()? addApprovalLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ReturnApproveInModel approval)? approveProductEvent,
    TResult Function()? addApprovalLoadingEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApproveProductEvent value) approveProductEvent,
    required TResult Function(AddApprovalLoadingEvent value)
        addApprovalLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApproveProductEvent value)? approveProductEvent,
    TResult? Function(AddApprovalLoadingEvent value)? addApprovalLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApproveProductEvent value)? approveProductEvent,
    TResult Function(AddApprovalLoadingEvent value)? addApprovalLoadingEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApproveReturnProductEventCopyWith<$Res> {
  factory $ApproveReturnProductEventCopyWith(ApproveReturnProductEvent value,
          $Res Function(ApproveReturnProductEvent) then) =
      _$ApproveReturnProductEventCopyWithImpl<$Res, ApproveReturnProductEvent>;
}

/// @nodoc
class _$ApproveReturnProductEventCopyWithImpl<$Res,
        $Val extends ApproveReturnProductEvent>
    implements $ApproveReturnProductEventCopyWith<$Res> {
  _$ApproveReturnProductEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ApproveProductEventImplCopyWith<$Res> {
  factory _$$ApproveProductEventImplCopyWith(_$ApproveProductEventImpl value,
          $Res Function(_$ApproveProductEventImpl) then) =
      __$$ApproveProductEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ReturnApproveInModel approval});
}

/// @nodoc
class __$$ApproveProductEventImplCopyWithImpl<$Res>
    extends _$ApproveReturnProductEventCopyWithImpl<$Res,
        _$ApproveProductEventImpl>
    implements _$$ApproveProductEventImplCopyWith<$Res> {
  __$$ApproveProductEventImplCopyWithImpl(_$ApproveProductEventImpl _value,
      $Res Function(_$ApproveProductEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? approval = null,
  }) {
    return _then(_$ApproveProductEventImpl(
      approval: null == approval
          ? _value.approval
          : approval // ignore: cast_nullable_to_non_nullable
              as ReturnApproveInModel,
    ));
  }
}

/// @nodoc

class _$ApproveProductEventImpl implements ApproveProductEvent {
  const _$ApproveProductEventImpl({required this.approval});

  @override
  final ReturnApproveInModel approval;

  @override
  String toString() {
    return 'ApproveReturnProductEvent.approveProductEvent(approval: $approval)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApproveProductEventImpl &&
            (identical(other.approval, approval) ||
                other.approval == approval));
  }

  @override
  int get hashCode => Object.hash(runtimeType, approval);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApproveProductEventImplCopyWith<_$ApproveProductEventImpl> get copyWith =>
      __$$ApproveProductEventImplCopyWithImpl<_$ApproveProductEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ReturnApproveInModel approval)
        approveProductEvent,
    required TResult Function() addApprovalLoadingEvent,
  }) {
    return approveProductEvent(approval);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ReturnApproveInModel approval)? approveProductEvent,
    TResult? Function()? addApprovalLoadingEvent,
  }) {
    return approveProductEvent?.call(approval);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ReturnApproveInModel approval)? approveProductEvent,
    TResult Function()? addApprovalLoadingEvent,
    required TResult orElse(),
  }) {
    if (approveProductEvent != null) {
      return approveProductEvent(approval);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApproveProductEvent value) approveProductEvent,
    required TResult Function(AddApprovalLoadingEvent value)
        addApprovalLoadingEvent,
  }) {
    return approveProductEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApproveProductEvent value)? approveProductEvent,
    TResult? Function(AddApprovalLoadingEvent value)? addApprovalLoadingEvent,
  }) {
    return approveProductEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApproveProductEvent value)? approveProductEvent,
    TResult Function(AddApprovalLoadingEvent value)? addApprovalLoadingEvent,
    required TResult orElse(),
  }) {
    if (approveProductEvent != null) {
      return approveProductEvent(this);
    }
    return orElse();
  }
}

abstract class ApproveProductEvent implements ApproveReturnProductEvent {
  const factory ApproveProductEvent(
          {required final ReturnApproveInModel approval}) =
      _$ApproveProductEventImpl;

  ReturnApproveInModel get approval;
  @JsonKey(ignore: true)
  _$$ApproveProductEventImplCopyWith<_$ApproveProductEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddApprovalLoadingEventImplCopyWith<$Res> {
  factory _$$AddApprovalLoadingEventImplCopyWith(
          _$AddApprovalLoadingEventImpl value,
          $Res Function(_$AddApprovalLoadingEventImpl) then) =
      __$$AddApprovalLoadingEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddApprovalLoadingEventImplCopyWithImpl<$Res>
    extends _$ApproveReturnProductEventCopyWithImpl<$Res,
        _$AddApprovalLoadingEventImpl>
    implements _$$AddApprovalLoadingEventImplCopyWith<$Res> {
  __$$AddApprovalLoadingEventImplCopyWithImpl(
      _$AddApprovalLoadingEventImpl _value,
      $Res Function(_$AddApprovalLoadingEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddApprovalLoadingEventImpl implements AddApprovalLoadingEvent {
  const _$AddApprovalLoadingEventImpl();

  @override
  String toString() {
    return 'ApproveReturnProductEvent.addApprovalLoadingEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddApprovalLoadingEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ReturnApproveInModel approval)
        approveProductEvent,
    required TResult Function() addApprovalLoadingEvent,
  }) {
    return addApprovalLoadingEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ReturnApproveInModel approval)? approveProductEvent,
    TResult? Function()? addApprovalLoadingEvent,
  }) {
    return addApprovalLoadingEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ReturnApproveInModel approval)? approveProductEvent,
    TResult Function()? addApprovalLoadingEvent,
    required TResult orElse(),
  }) {
    if (addApprovalLoadingEvent != null) {
      return addApprovalLoadingEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApproveProductEvent value) approveProductEvent,
    required TResult Function(AddApprovalLoadingEvent value)
        addApprovalLoadingEvent,
  }) {
    return addApprovalLoadingEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApproveProductEvent value)? approveProductEvent,
    TResult? Function(AddApprovalLoadingEvent value)? addApprovalLoadingEvent,
  }) {
    return addApprovalLoadingEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApproveProductEvent value)? approveProductEvent,
    TResult Function(AddApprovalLoadingEvent value)? addApprovalLoadingEvent,
    required TResult orElse(),
  }) {
    if (addApprovalLoadingEvent != null) {
      return addApprovalLoadingEvent(this);
    }
    return orElse();
  }
}

abstract class AddApprovalLoadingEvent implements ApproveReturnProductEvent {
  const factory AddApprovalLoadingEvent() = _$AddApprovalLoadingEventImpl;
}

/// @nodoc
mixin _$ApproveReturnProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ReturnApproveOutModel? response)
        approveReturnProductdSTatusState,
    required TResult Function() approveReturnLoadingState,
    required TResult Function() approvalFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ReturnApproveOutModel? response)?
        approveReturnProductdSTatusState,
    TResult? Function()? approveReturnLoadingState,
    TResult? Function()? approvalFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ReturnApproveOutModel? response)?
        approveReturnProductdSTatusState,
    TResult Function()? approveReturnLoadingState,
    TResult Function()? approvalFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApproveReturnProductdSTatusState value)
        approveReturnProductdSTatusState,
    required TResult Function(ApproveReturnLoadingState value)
        approveReturnLoadingState,
    required TResult Function(ApprovalFailedState value) approvalFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApproveReturnProductdSTatusState value)?
        approveReturnProductdSTatusState,
    TResult? Function(ApproveReturnLoadingState value)?
        approveReturnLoadingState,
    TResult? Function(ApprovalFailedState value)? approvalFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApproveReturnProductdSTatusState value)?
        approveReturnProductdSTatusState,
    TResult Function(ApproveReturnLoadingState value)?
        approveReturnLoadingState,
    TResult Function(ApprovalFailedState value)? approvalFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApproveReturnProductStateCopyWith<$Res> {
  factory $ApproveReturnProductStateCopyWith(ApproveReturnProductState value,
          $Res Function(ApproveReturnProductState) then) =
      _$ApproveReturnProductStateCopyWithImpl<$Res, ApproveReturnProductState>;
}

/// @nodoc
class _$ApproveReturnProductStateCopyWithImpl<$Res,
        $Val extends ApproveReturnProductState>
    implements $ApproveReturnProductStateCopyWith<$Res> {
  _$ApproveReturnProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ApproveReturnProductdSTatusStateImplCopyWith<$Res> {
  factory _$$ApproveReturnProductdSTatusStateImplCopyWith(
          _$ApproveReturnProductdSTatusStateImpl value,
          $Res Function(_$ApproveReturnProductdSTatusStateImpl) then) =
      __$$ApproveReturnProductdSTatusStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ReturnApproveOutModel? response});
}

/// @nodoc
class __$$ApproveReturnProductdSTatusStateImplCopyWithImpl<$Res>
    extends _$ApproveReturnProductStateCopyWithImpl<$Res,
        _$ApproveReturnProductdSTatusStateImpl>
    implements _$$ApproveReturnProductdSTatusStateImplCopyWith<$Res> {
  __$$ApproveReturnProductdSTatusStateImplCopyWithImpl(
      _$ApproveReturnProductdSTatusStateImpl _value,
      $Res Function(_$ApproveReturnProductdSTatusStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_$ApproveReturnProductdSTatusStateImpl(
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ReturnApproveOutModel?,
    ));
  }
}

/// @nodoc

class _$ApproveReturnProductdSTatusStateImpl
    implements ApproveReturnProductdSTatusState {
  const _$ApproveReturnProductdSTatusStateImpl({required this.response});

  @override
  final ReturnApproveOutModel? response;

  @override
  String toString() {
    return 'ApproveReturnProductState.approveReturnProductdSTatusState(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApproveReturnProductdSTatusStateImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApproveReturnProductdSTatusStateImplCopyWith<
          _$ApproveReturnProductdSTatusStateImpl>
      get copyWith => __$$ApproveReturnProductdSTatusStateImplCopyWithImpl<
          _$ApproveReturnProductdSTatusStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ReturnApproveOutModel? response)
        approveReturnProductdSTatusState,
    required TResult Function() approveReturnLoadingState,
    required TResult Function() approvalFailedState,
  }) {
    return approveReturnProductdSTatusState(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ReturnApproveOutModel? response)?
        approveReturnProductdSTatusState,
    TResult? Function()? approveReturnLoadingState,
    TResult? Function()? approvalFailedState,
  }) {
    return approveReturnProductdSTatusState?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ReturnApproveOutModel? response)?
        approveReturnProductdSTatusState,
    TResult Function()? approveReturnLoadingState,
    TResult Function()? approvalFailedState,
    required TResult orElse(),
  }) {
    if (approveReturnProductdSTatusState != null) {
      return approveReturnProductdSTatusState(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApproveReturnProductdSTatusState value)
        approveReturnProductdSTatusState,
    required TResult Function(ApproveReturnLoadingState value)
        approveReturnLoadingState,
    required TResult Function(ApprovalFailedState value) approvalFailedState,
  }) {
    return approveReturnProductdSTatusState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApproveReturnProductdSTatusState value)?
        approveReturnProductdSTatusState,
    TResult? Function(ApproveReturnLoadingState value)?
        approveReturnLoadingState,
    TResult? Function(ApprovalFailedState value)? approvalFailedState,
  }) {
    return approveReturnProductdSTatusState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApproveReturnProductdSTatusState value)?
        approveReturnProductdSTatusState,
    TResult Function(ApproveReturnLoadingState value)?
        approveReturnLoadingState,
    TResult Function(ApprovalFailedState value)? approvalFailedState,
    required TResult orElse(),
  }) {
    if (approveReturnProductdSTatusState != null) {
      return approveReturnProductdSTatusState(this);
    }
    return orElse();
  }
}

abstract class ApproveReturnProductdSTatusState
    implements ApproveReturnProductState {
  const factory ApproveReturnProductdSTatusState(
          {required final ReturnApproveOutModel? response}) =
      _$ApproveReturnProductdSTatusStateImpl;

  ReturnApproveOutModel? get response;
  @JsonKey(ignore: true)
  _$$ApproveReturnProductdSTatusStateImplCopyWith<
          _$ApproveReturnProductdSTatusStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApproveReturnLoadingStateImplCopyWith<$Res> {
  factory _$$ApproveReturnLoadingStateImplCopyWith(
          _$ApproveReturnLoadingStateImpl value,
          $Res Function(_$ApproveReturnLoadingStateImpl) then) =
      __$$ApproveReturnLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ApproveReturnLoadingStateImplCopyWithImpl<$Res>
    extends _$ApproveReturnProductStateCopyWithImpl<$Res,
        _$ApproveReturnLoadingStateImpl>
    implements _$$ApproveReturnLoadingStateImplCopyWith<$Res> {
  __$$ApproveReturnLoadingStateImplCopyWithImpl(
      _$ApproveReturnLoadingStateImpl _value,
      $Res Function(_$ApproveReturnLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ApproveReturnLoadingStateImpl implements ApproveReturnLoadingState {
  const _$ApproveReturnLoadingStateImpl();

  @override
  String toString() {
    return 'ApproveReturnProductState.approveReturnLoadingState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApproveReturnLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ReturnApproveOutModel? response)
        approveReturnProductdSTatusState,
    required TResult Function() approveReturnLoadingState,
    required TResult Function() approvalFailedState,
  }) {
    return approveReturnLoadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ReturnApproveOutModel? response)?
        approveReturnProductdSTatusState,
    TResult? Function()? approveReturnLoadingState,
    TResult? Function()? approvalFailedState,
  }) {
    return approveReturnLoadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ReturnApproveOutModel? response)?
        approveReturnProductdSTatusState,
    TResult Function()? approveReturnLoadingState,
    TResult Function()? approvalFailedState,
    required TResult orElse(),
  }) {
    if (approveReturnLoadingState != null) {
      return approveReturnLoadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApproveReturnProductdSTatusState value)
        approveReturnProductdSTatusState,
    required TResult Function(ApproveReturnLoadingState value)
        approveReturnLoadingState,
    required TResult Function(ApprovalFailedState value) approvalFailedState,
  }) {
    return approveReturnLoadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApproveReturnProductdSTatusState value)?
        approveReturnProductdSTatusState,
    TResult? Function(ApproveReturnLoadingState value)?
        approveReturnLoadingState,
    TResult? Function(ApprovalFailedState value)? approvalFailedState,
  }) {
    return approveReturnLoadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApproveReturnProductdSTatusState value)?
        approveReturnProductdSTatusState,
    TResult Function(ApproveReturnLoadingState value)?
        approveReturnLoadingState,
    TResult Function(ApprovalFailedState value)? approvalFailedState,
    required TResult orElse(),
  }) {
    if (approveReturnLoadingState != null) {
      return approveReturnLoadingState(this);
    }
    return orElse();
  }
}

abstract class ApproveReturnLoadingState implements ApproveReturnProductState {
  const factory ApproveReturnLoadingState() = _$ApproveReturnLoadingStateImpl;
}

/// @nodoc
abstract class _$$ApprovalFailedStateImplCopyWith<$Res> {
  factory _$$ApprovalFailedStateImplCopyWith(_$ApprovalFailedStateImpl value,
          $Res Function(_$ApprovalFailedStateImpl) then) =
      __$$ApprovalFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ApprovalFailedStateImplCopyWithImpl<$Res>
    extends _$ApproveReturnProductStateCopyWithImpl<$Res,
        _$ApprovalFailedStateImpl>
    implements _$$ApprovalFailedStateImplCopyWith<$Res> {
  __$$ApprovalFailedStateImplCopyWithImpl(_$ApprovalFailedStateImpl _value,
      $Res Function(_$ApprovalFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ApprovalFailedStateImpl implements ApprovalFailedState {
  const _$ApprovalFailedStateImpl();

  @override
  String toString() {
    return 'ApproveReturnProductState.approvalFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApprovalFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ReturnApproveOutModel? response)
        approveReturnProductdSTatusState,
    required TResult Function() approveReturnLoadingState,
    required TResult Function() approvalFailedState,
  }) {
    return approvalFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ReturnApproveOutModel? response)?
        approveReturnProductdSTatusState,
    TResult? Function()? approveReturnLoadingState,
    TResult? Function()? approvalFailedState,
  }) {
    return approvalFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ReturnApproveOutModel? response)?
        approveReturnProductdSTatusState,
    TResult Function()? approveReturnLoadingState,
    TResult Function()? approvalFailedState,
    required TResult orElse(),
  }) {
    if (approvalFailedState != null) {
      return approvalFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApproveReturnProductdSTatusState value)
        approveReturnProductdSTatusState,
    required TResult Function(ApproveReturnLoadingState value)
        approveReturnLoadingState,
    required TResult Function(ApprovalFailedState value) approvalFailedState,
  }) {
    return approvalFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApproveReturnProductdSTatusState value)?
        approveReturnProductdSTatusState,
    TResult? Function(ApproveReturnLoadingState value)?
        approveReturnLoadingState,
    TResult? Function(ApprovalFailedState value)? approvalFailedState,
  }) {
    return approvalFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApproveReturnProductdSTatusState value)?
        approveReturnProductdSTatusState,
    TResult Function(ApproveReturnLoadingState value)?
        approveReturnLoadingState,
    TResult Function(ApprovalFailedState value)? approvalFailedState,
    required TResult orElse(),
  }) {
    if (approvalFailedState != null) {
      return approvalFailedState(this);
    }
    return orElse();
  }
}

abstract class ApprovalFailedState implements ApproveReturnProductState {
  const factory ApprovalFailedState() = _$ApprovalFailedStateImpl;
}
