// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'load_transfer_approval_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoadTransferApprovalEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoadTransferApprovalInModel approve)
        approveLoadtransferEvent,
    required TResult Function() addLoadTransferLoadingEvent,
    required TResult Function() clearLoadTransferApprovalEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoadTransferApprovalInModel approve)?
        approveLoadtransferEvent,
    TResult? Function()? addLoadTransferLoadingEvent,
    TResult? Function()? clearLoadTransferApprovalEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoadTransferApprovalInModel approve)?
        approveLoadtransferEvent,
    TResult Function()? addLoadTransferLoadingEvent,
    TResult Function()? clearLoadTransferApprovalEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApproveLoadtransferEvent value)
        approveLoadtransferEvent,
    required TResult Function(AddLoadTransferLoadingEvent value)
        addLoadTransferLoadingEvent,
    required TResult Function(ClearLoadTransferApprovalEvent value)
        clearLoadTransferApprovalEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApproveLoadtransferEvent value)? approveLoadtransferEvent,
    TResult? Function(AddLoadTransferLoadingEvent value)?
        addLoadTransferLoadingEvent,
    TResult? Function(ClearLoadTransferApprovalEvent value)?
        clearLoadTransferApprovalEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApproveLoadtransferEvent value)? approveLoadtransferEvent,
    TResult Function(AddLoadTransferLoadingEvent value)?
        addLoadTransferLoadingEvent,
    TResult Function(ClearLoadTransferApprovalEvent value)?
        clearLoadTransferApprovalEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadTransferApprovalEventCopyWith<$Res> {
  factory $LoadTransferApprovalEventCopyWith(LoadTransferApprovalEvent value,
          $Res Function(LoadTransferApprovalEvent) then) =
      _$LoadTransferApprovalEventCopyWithImpl<$Res, LoadTransferApprovalEvent>;
}

/// @nodoc
class _$LoadTransferApprovalEventCopyWithImpl<$Res,
        $Val extends LoadTransferApprovalEvent>
    implements $LoadTransferApprovalEventCopyWith<$Res> {
  _$LoadTransferApprovalEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoadTransferApprovalEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ApproveLoadtransferEventImplCopyWith<$Res> {
  factory _$$ApproveLoadtransferEventImplCopyWith(
          _$ApproveLoadtransferEventImpl value,
          $Res Function(_$ApproveLoadtransferEventImpl) then) =
      __$$ApproveLoadtransferEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoadTransferApprovalInModel approve});
}

/// @nodoc
class __$$ApproveLoadtransferEventImplCopyWithImpl<$Res>
    extends _$LoadTransferApprovalEventCopyWithImpl<$Res,
        _$ApproveLoadtransferEventImpl>
    implements _$$ApproveLoadtransferEventImplCopyWith<$Res> {
  __$$ApproveLoadtransferEventImplCopyWithImpl(
      _$ApproveLoadtransferEventImpl _value,
      $Res Function(_$ApproveLoadtransferEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoadTransferApprovalEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? approve = null,
  }) {
    return _then(_$ApproveLoadtransferEventImpl(
      approve: null == approve
          ? _value.approve
          : approve // ignore: cast_nullable_to_non_nullable
              as LoadTransferApprovalInModel,
    ));
  }
}

/// @nodoc

class _$ApproveLoadtransferEventImpl implements ApproveLoadtransferEvent {
  const _$ApproveLoadtransferEventImpl({required this.approve});

  @override
  final LoadTransferApprovalInModel approve;

  @override
  String toString() {
    return 'LoadTransferApprovalEvent.approveLoadtransferEvent(approve: $approve)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApproveLoadtransferEventImpl &&
            (identical(other.approve, approve) || other.approve == approve));
  }

  @override
  int get hashCode => Object.hash(runtimeType, approve);

  /// Create a copy of LoadTransferApprovalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApproveLoadtransferEventImplCopyWith<_$ApproveLoadtransferEventImpl>
      get copyWith => __$$ApproveLoadtransferEventImplCopyWithImpl<
          _$ApproveLoadtransferEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoadTransferApprovalInModel approve)
        approveLoadtransferEvent,
    required TResult Function() addLoadTransferLoadingEvent,
    required TResult Function() clearLoadTransferApprovalEvent,
  }) {
    return approveLoadtransferEvent(approve);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoadTransferApprovalInModel approve)?
        approveLoadtransferEvent,
    TResult? Function()? addLoadTransferLoadingEvent,
    TResult? Function()? clearLoadTransferApprovalEvent,
  }) {
    return approveLoadtransferEvent?.call(approve);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoadTransferApprovalInModel approve)?
        approveLoadtransferEvent,
    TResult Function()? addLoadTransferLoadingEvent,
    TResult Function()? clearLoadTransferApprovalEvent,
    required TResult orElse(),
  }) {
    if (approveLoadtransferEvent != null) {
      return approveLoadtransferEvent(approve);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApproveLoadtransferEvent value)
        approveLoadtransferEvent,
    required TResult Function(AddLoadTransferLoadingEvent value)
        addLoadTransferLoadingEvent,
    required TResult Function(ClearLoadTransferApprovalEvent value)
        clearLoadTransferApprovalEvent,
  }) {
    return approveLoadtransferEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApproveLoadtransferEvent value)? approveLoadtransferEvent,
    TResult? Function(AddLoadTransferLoadingEvent value)?
        addLoadTransferLoadingEvent,
    TResult? Function(ClearLoadTransferApprovalEvent value)?
        clearLoadTransferApprovalEvent,
  }) {
    return approveLoadtransferEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApproveLoadtransferEvent value)? approveLoadtransferEvent,
    TResult Function(AddLoadTransferLoadingEvent value)?
        addLoadTransferLoadingEvent,
    TResult Function(ClearLoadTransferApprovalEvent value)?
        clearLoadTransferApprovalEvent,
    required TResult orElse(),
  }) {
    if (approveLoadtransferEvent != null) {
      return approveLoadtransferEvent(this);
    }
    return orElse();
  }
}

abstract class ApproveLoadtransferEvent implements LoadTransferApprovalEvent {
  const factory ApproveLoadtransferEvent(
          {required final LoadTransferApprovalInModel approve}) =
      _$ApproveLoadtransferEventImpl;

  LoadTransferApprovalInModel get approve;

  /// Create a copy of LoadTransferApprovalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApproveLoadtransferEventImplCopyWith<_$ApproveLoadtransferEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddLoadTransferLoadingEventImplCopyWith<$Res> {
  factory _$$AddLoadTransferLoadingEventImplCopyWith(
          _$AddLoadTransferLoadingEventImpl value,
          $Res Function(_$AddLoadTransferLoadingEventImpl) then) =
      __$$AddLoadTransferLoadingEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddLoadTransferLoadingEventImplCopyWithImpl<$Res>
    extends _$LoadTransferApprovalEventCopyWithImpl<$Res,
        _$AddLoadTransferLoadingEventImpl>
    implements _$$AddLoadTransferLoadingEventImplCopyWith<$Res> {
  __$$AddLoadTransferLoadingEventImplCopyWithImpl(
      _$AddLoadTransferLoadingEventImpl _value,
      $Res Function(_$AddLoadTransferLoadingEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoadTransferApprovalEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AddLoadTransferLoadingEventImpl implements AddLoadTransferLoadingEvent {
  const _$AddLoadTransferLoadingEventImpl();

  @override
  String toString() {
    return 'LoadTransferApprovalEvent.addLoadTransferLoadingEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddLoadTransferLoadingEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoadTransferApprovalInModel approve)
        approveLoadtransferEvent,
    required TResult Function() addLoadTransferLoadingEvent,
    required TResult Function() clearLoadTransferApprovalEvent,
  }) {
    return addLoadTransferLoadingEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoadTransferApprovalInModel approve)?
        approveLoadtransferEvent,
    TResult? Function()? addLoadTransferLoadingEvent,
    TResult? Function()? clearLoadTransferApprovalEvent,
  }) {
    return addLoadTransferLoadingEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoadTransferApprovalInModel approve)?
        approveLoadtransferEvent,
    TResult Function()? addLoadTransferLoadingEvent,
    TResult Function()? clearLoadTransferApprovalEvent,
    required TResult orElse(),
  }) {
    if (addLoadTransferLoadingEvent != null) {
      return addLoadTransferLoadingEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApproveLoadtransferEvent value)
        approveLoadtransferEvent,
    required TResult Function(AddLoadTransferLoadingEvent value)
        addLoadTransferLoadingEvent,
    required TResult Function(ClearLoadTransferApprovalEvent value)
        clearLoadTransferApprovalEvent,
  }) {
    return addLoadTransferLoadingEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApproveLoadtransferEvent value)? approveLoadtransferEvent,
    TResult? Function(AddLoadTransferLoadingEvent value)?
        addLoadTransferLoadingEvent,
    TResult? Function(ClearLoadTransferApprovalEvent value)?
        clearLoadTransferApprovalEvent,
  }) {
    return addLoadTransferLoadingEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApproveLoadtransferEvent value)? approveLoadtransferEvent,
    TResult Function(AddLoadTransferLoadingEvent value)?
        addLoadTransferLoadingEvent,
    TResult Function(ClearLoadTransferApprovalEvent value)?
        clearLoadTransferApprovalEvent,
    required TResult orElse(),
  }) {
    if (addLoadTransferLoadingEvent != null) {
      return addLoadTransferLoadingEvent(this);
    }
    return orElse();
  }
}

abstract class AddLoadTransferLoadingEvent
    implements LoadTransferApprovalEvent {
  const factory AddLoadTransferLoadingEvent() =
      _$AddLoadTransferLoadingEventImpl;
}

/// @nodoc
abstract class _$$ClearLoadTransferApprovalEventImplCopyWith<$Res> {
  factory _$$ClearLoadTransferApprovalEventImplCopyWith(
          _$ClearLoadTransferApprovalEventImpl value,
          $Res Function(_$ClearLoadTransferApprovalEventImpl) then) =
      __$$ClearLoadTransferApprovalEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearLoadTransferApprovalEventImplCopyWithImpl<$Res>
    extends _$LoadTransferApprovalEventCopyWithImpl<$Res,
        _$ClearLoadTransferApprovalEventImpl>
    implements _$$ClearLoadTransferApprovalEventImplCopyWith<$Res> {
  __$$ClearLoadTransferApprovalEventImplCopyWithImpl(
      _$ClearLoadTransferApprovalEventImpl _value,
      $Res Function(_$ClearLoadTransferApprovalEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoadTransferApprovalEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearLoadTransferApprovalEventImpl
    implements ClearLoadTransferApprovalEvent {
  const _$ClearLoadTransferApprovalEventImpl();

  @override
  String toString() {
    return 'LoadTransferApprovalEvent.clearLoadTransferApprovalEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearLoadTransferApprovalEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoadTransferApprovalInModel approve)
        approveLoadtransferEvent,
    required TResult Function() addLoadTransferLoadingEvent,
    required TResult Function() clearLoadTransferApprovalEvent,
  }) {
    return clearLoadTransferApprovalEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoadTransferApprovalInModel approve)?
        approveLoadtransferEvent,
    TResult? Function()? addLoadTransferLoadingEvent,
    TResult? Function()? clearLoadTransferApprovalEvent,
  }) {
    return clearLoadTransferApprovalEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoadTransferApprovalInModel approve)?
        approveLoadtransferEvent,
    TResult Function()? addLoadTransferLoadingEvent,
    TResult Function()? clearLoadTransferApprovalEvent,
    required TResult orElse(),
  }) {
    if (clearLoadTransferApprovalEvent != null) {
      return clearLoadTransferApprovalEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApproveLoadtransferEvent value)
        approveLoadtransferEvent,
    required TResult Function(AddLoadTransferLoadingEvent value)
        addLoadTransferLoadingEvent,
    required TResult Function(ClearLoadTransferApprovalEvent value)
        clearLoadTransferApprovalEvent,
  }) {
    return clearLoadTransferApprovalEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApproveLoadtransferEvent value)? approveLoadtransferEvent,
    TResult? Function(AddLoadTransferLoadingEvent value)?
        addLoadTransferLoadingEvent,
    TResult? Function(ClearLoadTransferApprovalEvent value)?
        clearLoadTransferApprovalEvent,
  }) {
    return clearLoadTransferApprovalEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApproveLoadtransferEvent value)? approveLoadtransferEvent,
    TResult Function(AddLoadTransferLoadingEvent value)?
        addLoadTransferLoadingEvent,
    TResult Function(ClearLoadTransferApprovalEvent value)?
        clearLoadTransferApprovalEvent,
    required TResult orElse(),
  }) {
    if (clearLoadTransferApprovalEvent != null) {
      return clearLoadTransferApprovalEvent(this);
    }
    return orElse();
  }
}

abstract class ClearLoadTransferApprovalEvent
    implements LoadTransferApprovalEvent {
  const factory ClearLoadTransferApprovalEvent() =
      _$ClearLoadTransferApprovalEventImpl;
}

/// @nodoc
mixin _$LoadTransferApprovalState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoadTransferApprovalOutModel? response)
        approveLoadTransferState,
    required TResult Function() loadTransferApprovalFailedState,
    required TResult Function() loadTransferApprovalLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoadTransferApprovalOutModel? response)?
        approveLoadTransferState,
    TResult? Function()? loadTransferApprovalFailedState,
    TResult? Function()? loadTransferApprovalLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoadTransferApprovalOutModel? response)?
        approveLoadTransferState,
    TResult Function()? loadTransferApprovalFailedState,
    TResult Function()? loadTransferApprovalLoadingState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApproveLoadTransferState value)
        approveLoadTransferState,
    required TResult Function(LoadTransferApprovalFailedState value)
        loadTransferApprovalFailedState,
    required TResult Function(LoadTransferApprovalLoadingState value)
        loadTransferApprovalLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApproveLoadTransferState value)? approveLoadTransferState,
    TResult? Function(LoadTransferApprovalFailedState value)?
        loadTransferApprovalFailedState,
    TResult? Function(LoadTransferApprovalLoadingState value)?
        loadTransferApprovalLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApproveLoadTransferState value)? approveLoadTransferState,
    TResult Function(LoadTransferApprovalFailedState value)?
        loadTransferApprovalFailedState,
    TResult Function(LoadTransferApprovalLoadingState value)?
        loadTransferApprovalLoadingState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadTransferApprovalStateCopyWith<$Res> {
  factory $LoadTransferApprovalStateCopyWith(LoadTransferApprovalState value,
          $Res Function(LoadTransferApprovalState) then) =
      _$LoadTransferApprovalStateCopyWithImpl<$Res, LoadTransferApprovalState>;
}

/// @nodoc
class _$LoadTransferApprovalStateCopyWithImpl<$Res,
        $Val extends LoadTransferApprovalState>
    implements $LoadTransferApprovalStateCopyWith<$Res> {
  _$LoadTransferApprovalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoadTransferApprovalState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ApproveLoadTransferStateImplCopyWith<$Res> {
  factory _$$ApproveLoadTransferStateImplCopyWith(
          _$ApproveLoadTransferStateImpl value,
          $Res Function(_$ApproveLoadTransferStateImpl) then) =
      __$$ApproveLoadTransferStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoadTransferApprovalOutModel? response});
}

/// @nodoc
class __$$ApproveLoadTransferStateImplCopyWithImpl<$Res>
    extends _$LoadTransferApprovalStateCopyWithImpl<$Res,
        _$ApproveLoadTransferStateImpl>
    implements _$$ApproveLoadTransferStateImplCopyWith<$Res> {
  __$$ApproveLoadTransferStateImplCopyWithImpl(
      _$ApproveLoadTransferStateImpl _value,
      $Res Function(_$ApproveLoadTransferStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoadTransferApprovalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_$ApproveLoadTransferStateImpl(
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as LoadTransferApprovalOutModel?,
    ));
  }
}

/// @nodoc

class _$ApproveLoadTransferStateImpl implements ApproveLoadTransferState {
  const _$ApproveLoadTransferStateImpl({required this.response});

  @override
  final LoadTransferApprovalOutModel? response;

  @override
  String toString() {
    return 'LoadTransferApprovalState.approveLoadTransferState(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApproveLoadTransferStateImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  /// Create a copy of LoadTransferApprovalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApproveLoadTransferStateImplCopyWith<_$ApproveLoadTransferStateImpl>
      get copyWith => __$$ApproveLoadTransferStateImplCopyWithImpl<
          _$ApproveLoadTransferStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoadTransferApprovalOutModel? response)
        approveLoadTransferState,
    required TResult Function() loadTransferApprovalFailedState,
    required TResult Function() loadTransferApprovalLoadingState,
  }) {
    return approveLoadTransferState(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoadTransferApprovalOutModel? response)?
        approveLoadTransferState,
    TResult? Function()? loadTransferApprovalFailedState,
    TResult? Function()? loadTransferApprovalLoadingState,
  }) {
    return approveLoadTransferState?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoadTransferApprovalOutModel? response)?
        approveLoadTransferState,
    TResult Function()? loadTransferApprovalFailedState,
    TResult Function()? loadTransferApprovalLoadingState,
    required TResult orElse(),
  }) {
    if (approveLoadTransferState != null) {
      return approveLoadTransferState(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApproveLoadTransferState value)
        approveLoadTransferState,
    required TResult Function(LoadTransferApprovalFailedState value)
        loadTransferApprovalFailedState,
    required TResult Function(LoadTransferApprovalLoadingState value)
        loadTransferApprovalLoadingState,
  }) {
    return approveLoadTransferState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApproveLoadTransferState value)? approveLoadTransferState,
    TResult? Function(LoadTransferApprovalFailedState value)?
        loadTransferApprovalFailedState,
    TResult? Function(LoadTransferApprovalLoadingState value)?
        loadTransferApprovalLoadingState,
  }) {
    return approveLoadTransferState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApproveLoadTransferState value)? approveLoadTransferState,
    TResult Function(LoadTransferApprovalFailedState value)?
        loadTransferApprovalFailedState,
    TResult Function(LoadTransferApprovalLoadingState value)?
        loadTransferApprovalLoadingState,
    required TResult orElse(),
  }) {
    if (approveLoadTransferState != null) {
      return approveLoadTransferState(this);
    }
    return orElse();
  }
}

abstract class ApproveLoadTransferState implements LoadTransferApprovalState {
  const factory ApproveLoadTransferState(
          {required final LoadTransferApprovalOutModel? response}) =
      _$ApproveLoadTransferStateImpl;

  LoadTransferApprovalOutModel? get response;

  /// Create a copy of LoadTransferApprovalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApproveLoadTransferStateImplCopyWith<_$ApproveLoadTransferStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadTransferApprovalFailedStateImplCopyWith<$Res> {
  factory _$$LoadTransferApprovalFailedStateImplCopyWith(
          _$LoadTransferApprovalFailedStateImpl value,
          $Res Function(_$LoadTransferApprovalFailedStateImpl) then) =
      __$$LoadTransferApprovalFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadTransferApprovalFailedStateImplCopyWithImpl<$Res>
    extends _$LoadTransferApprovalStateCopyWithImpl<$Res,
        _$LoadTransferApprovalFailedStateImpl>
    implements _$$LoadTransferApprovalFailedStateImplCopyWith<$Res> {
  __$$LoadTransferApprovalFailedStateImplCopyWithImpl(
      _$LoadTransferApprovalFailedStateImpl _value,
      $Res Function(_$LoadTransferApprovalFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoadTransferApprovalState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadTransferApprovalFailedStateImpl
    implements LoadTransferApprovalFailedState {
  const _$LoadTransferApprovalFailedStateImpl();

  @override
  String toString() {
    return 'LoadTransferApprovalState.loadTransferApprovalFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadTransferApprovalFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoadTransferApprovalOutModel? response)
        approveLoadTransferState,
    required TResult Function() loadTransferApprovalFailedState,
    required TResult Function() loadTransferApprovalLoadingState,
  }) {
    return loadTransferApprovalFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoadTransferApprovalOutModel? response)?
        approveLoadTransferState,
    TResult? Function()? loadTransferApprovalFailedState,
    TResult? Function()? loadTransferApprovalLoadingState,
  }) {
    return loadTransferApprovalFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoadTransferApprovalOutModel? response)?
        approveLoadTransferState,
    TResult Function()? loadTransferApprovalFailedState,
    TResult Function()? loadTransferApprovalLoadingState,
    required TResult orElse(),
  }) {
    if (loadTransferApprovalFailedState != null) {
      return loadTransferApprovalFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApproveLoadTransferState value)
        approveLoadTransferState,
    required TResult Function(LoadTransferApprovalFailedState value)
        loadTransferApprovalFailedState,
    required TResult Function(LoadTransferApprovalLoadingState value)
        loadTransferApprovalLoadingState,
  }) {
    return loadTransferApprovalFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApproveLoadTransferState value)? approveLoadTransferState,
    TResult? Function(LoadTransferApprovalFailedState value)?
        loadTransferApprovalFailedState,
    TResult? Function(LoadTransferApprovalLoadingState value)?
        loadTransferApprovalLoadingState,
  }) {
    return loadTransferApprovalFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApproveLoadTransferState value)? approveLoadTransferState,
    TResult Function(LoadTransferApprovalFailedState value)?
        loadTransferApprovalFailedState,
    TResult Function(LoadTransferApprovalLoadingState value)?
        loadTransferApprovalLoadingState,
    required TResult orElse(),
  }) {
    if (loadTransferApprovalFailedState != null) {
      return loadTransferApprovalFailedState(this);
    }
    return orElse();
  }
}

abstract class LoadTransferApprovalFailedState
    implements LoadTransferApprovalState {
  const factory LoadTransferApprovalFailedState() =
      _$LoadTransferApprovalFailedStateImpl;
}

/// @nodoc
abstract class _$$LoadTransferApprovalLoadingStateImplCopyWith<$Res> {
  factory _$$LoadTransferApprovalLoadingStateImplCopyWith(
          _$LoadTransferApprovalLoadingStateImpl value,
          $Res Function(_$LoadTransferApprovalLoadingStateImpl) then) =
      __$$LoadTransferApprovalLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadTransferApprovalLoadingStateImplCopyWithImpl<$Res>
    extends _$LoadTransferApprovalStateCopyWithImpl<$Res,
        _$LoadTransferApprovalLoadingStateImpl>
    implements _$$LoadTransferApprovalLoadingStateImplCopyWith<$Res> {
  __$$LoadTransferApprovalLoadingStateImplCopyWithImpl(
      _$LoadTransferApprovalLoadingStateImpl _value,
      $Res Function(_$LoadTransferApprovalLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoadTransferApprovalState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadTransferApprovalLoadingStateImpl
    implements LoadTransferApprovalLoadingState {
  const _$LoadTransferApprovalLoadingStateImpl();

  @override
  String toString() {
    return 'LoadTransferApprovalState.loadTransferApprovalLoadingState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadTransferApprovalLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LoadTransferApprovalOutModel? response)
        approveLoadTransferState,
    required TResult Function() loadTransferApprovalFailedState,
    required TResult Function() loadTransferApprovalLoadingState,
  }) {
    return loadTransferApprovalLoadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoadTransferApprovalOutModel? response)?
        approveLoadTransferState,
    TResult? Function()? loadTransferApprovalFailedState,
    TResult? Function()? loadTransferApprovalLoadingState,
  }) {
    return loadTransferApprovalLoadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoadTransferApprovalOutModel? response)?
        approveLoadTransferState,
    TResult Function()? loadTransferApprovalFailedState,
    TResult Function()? loadTransferApprovalLoadingState,
    required TResult orElse(),
  }) {
    if (loadTransferApprovalLoadingState != null) {
      return loadTransferApprovalLoadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApproveLoadTransferState value)
        approveLoadTransferState,
    required TResult Function(LoadTransferApprovalFailedState value)
        loadTransferApprovalFailedState,
    required TResult Function(LoadTransferApprovalLoadingState value)
        loadTransferApprovalLoadingState,
  }) {
    return loadTransferApprovalLoadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApproveLoadTransferState value)? approveLoadTransferState,
    TResult? Function(LoadTransferApprovalFailedState value)?
        loadTransferApprovalFailedState,
    TResult? Function(LoadTransferApprovalLoadingState value)?
        loadTransferApprovalLoadingState,
  }) {
    return loadTransferApprovalLoadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApproveLoadTransferState value)? approveLoadTransferState,
    TResult Function(LoadTransferApprovalFailedState value)?
        loadTransferApprovalFailedState,
    TResult Function(LoadTransferApprovalLoadingState value)?
        loadTransferApprovalLoadingState,
    required TResult orElse(),
  }) {
    if (loadTransferApprovalLoadingState != null) {
      return loadTransferApprovalLoadingState(this);
    }
    return orElse();
  }
}

abstract class LoadTransferApprovalLoadingState
    implements LoadTransferApprovalState {
  const factory LoadTransferApprovalLoadingState() =
      _$LoadTransferApprovalLoadingStateImpl;
}
