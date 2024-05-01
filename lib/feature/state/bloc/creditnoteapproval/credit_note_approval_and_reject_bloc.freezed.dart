// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credit_note_approval_and_reject_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreditNoteApprovalAndRejectEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DisputeInvoiceApproveInModel approve)
        creditNoteTakeActionEvent,
    required TResult Function() creditNoteApprovalLoadingEvent,
    required TResult Function() creditNoteApprovalClearEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DisputeInvoiceApproveInModel approve)?
        creditNoteTakeActionEvent,
    TResult? Function()? creditNoteApprovalLoadingEvent,
    TResult? Function()? creditNoteApprovalClearEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DisputeInvoiceApproveInModel approve)?
        creditNoteTakeActionEvent,
    TResult Function()? creditNoteApprovalLoadingEvent,
    TResult Function()? creditNoteApprovalClearEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreditNoteTakeActionEvent value)
        creditNoteTakeActionEvent,
    required TResult Function(CreditNoteApprovalLoadingEvent value)
        creditNoteApprovalLoadingEvent,
    required TResult Function(CreditNoteApprovalClearEvent value)
        creditNoteApprovalClearEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreditNoteTakeActionEvent value)?
        creditNoteTakeActionEvent,
    TResult? Function(CreditNoteApprovalLoadingEvent value)?
        creditNoteApprovalLoadingEvent,
    TResult? Function(CreditNoteApprovalClearEvent value)?
        creditNoteApprovalClearEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreditNoteTakeActionEvent value)?
        creditNoteTakeActionEvent,
    TResult Function(CreditNoteApprovalLoadingEvent value)?
        creditNoteApprovalLoadingEvent,
    TResult Function(CreditNoteApprovalClearEvent value)?
        creditNoteApprovalClearEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditNoteApprovalAndRejectEventCopyWith<$Res> {
  factory $CreditNoteApprovalAndRejectEventCopyWith(
          CreditNoteApprovalAndRejectEvent value,
          $Res Function(CreditNoteApprovalAndRejectEvent) then) =
      _$CreditNoteApprovalAndRejectEventCopyWithImpl<$Res,
          CreditNoteApprovalAndRejectEvent>;
}

/// @nodoc
class _$CreditNoteApprovalAndRejectEventCopyWithImpl<$Res,
        $Val extends CreditNoteApprovalAndRejectEvent>
    implements $CreditNoteApprovalAndRejectEventCopyWith<$Res> {
  _$CreditNoteApprovalAndRejectEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreditNoteTakeActionEventImplCopyWith<$Res> {
  factory _$$CreditNoteTakeActionEventImplCopyWith(
          _$CreditNoteTakeActionEventImpl value,
          $Res Function(_$CreditNoteTakeActionEventImpl) then) =
      __$$CreditNoteTakeActionEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DisputeInvoiceApproveInModel approve});
}

/// @nodoc
class __$$CreditNoteTakeActionEventImplCopyWithImpl<$Res>
    extends _$CreditNoteApprovalAndRejectEventCopyWithImpl<$Res,
        _$CreditNoteTakeActionEventImpl>
    implements _$$CreditNoteTakeActionEventImplCopyWith<$Res> {
  __$$CreditNoteTakeActionEventImplCopyWithImpl(
      _$CreditNoteTakeActionEventImpl _value,
      $Res Function(_$CreditNoteTakeActionEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? approve = null,
  }) {
    return _then(_$CreditNoteTakeActionEventImpl(
      approve: null == approve
          ? _value.approve
          : approve // ignore: cast_nullable_to_non_nullable
              as DisputeInvoiceApproveInModel,
    ));
  }
}

/// @nodoc

class _$CreditNoteTakeActionEventImpl implements CreditNoteTakeActionEvent {
  const _$CreditNoteTakeActionEventImpl({required this.approve});

  @override
  final DisputeInvoiceApproveInModel approve;

  @override
  String toString() {
    return 'CreditNoteApprovalAndRejectEvent.creditNoteTakeActionEvent(approve: $approve)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreditNoteTakeActionEventImpl &&
            (identical(other.approve, approve) || other.approve == approve));
  }

  @override
  int get hashCode => Object.hash(runtimeType, approve);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreditNoteTakeActionEventImplCopyWith<_$CreditNoteTakeActionEventImpl>
      get copyWith => __$$CreditNoteTakeActionEventImplCopyWithImpl<
          _$CreditNoteTakeActionEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DisputeInvoiceApproveInModel approve)
        creditNoteTakeActionEvent,
    required TResult Function() creditNoteApprovalLoadingEvent,
    required TResult Function() creditNoteApprovalClearEvent,
  }) {
    return creditNoteTakeActionEvent(approve);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DisputeInvoiceApproveInModel approve)?
        creditNoteTakeActionEvent,
    TResult? Function()? creditNoteApprovalLoadingEvent,
    TResult? Function()? creditNoteApprovalClearEvent,
  }) {
    return creditNoteTakeActionEvent?.call(approve);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DisputeInvoiceApproveInModel approve)?
        creditNoteTakeActionEvent,
    TResult Function()? creditNoteApprovalLoadingEvent,
    TResult Function()? creditNoteApprovalClearEvent,
    required TResult orElse(),
  }) {
    if (creditNoteTakeActionEvent != null) {
      return creditNoteTakeActionEvent(approve);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreditNoteTakeActionEvent value)
        creditNoteTakeActionEvent,
    required TResult Function(CreditNoteApprovalLoadingEvent value)
        creditNoteApprovalLoadingEvent,
    required TResult Function(CreditNoteApprovalClearEvent value)
        creditNoteApprovalClearEvent,
  }) {
    return creditNoteTakeActionEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreditNoteTakeActionEvent value)?
        creditNoteTakeActionEvent,
    TResult? Function(CreditNoteApprovalLoadingEvent value)?
        creditNoteApprovalLoadingEvent,
    TResult? Function(CreditNoteApprovalClearEvent value)?
        creditNoteApprovalClearEvent,
  }) {
    return creditNoteTakeActionEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreditNoteTakeActionEvent value)?
        creditNoteTakeActionEvent,
    TResult Function(CreditNoteApprovalLoadingEvent value)?
        creditNoteApprovalLoadingEvent,
    TResult Function(CreditNoteApprovalClearEvent value)?
        creditNoteApprovalClearEvent,
    required TResult orElse(),
  }) {
    if (creditNoteTakeActionEvent != null) {
      return creditNoteTakeActionEvent(this);
    }
    return orElse();
  }
}

abstract class CreditNoteTakeActionEvent
    implements CreditNoteApprovalAndRejectEvent {
  const factory CreditNoteTakeActionEvent(
          {required final DisputeInvoiceApproveInModel approve}) =
      _$CreditNoteTakeActionEventImpl;

  DisputeInvoiceApproveInModel get approve;
  @JsonKey(ignore: true)
  _$$CreditNoteTakeActionEventImplCopyWith<_$CreditNoteTakeActionEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreditNoteApprovalLoadingEventImplCopyWith<$Res> {
  factory _$$CreditNoteApprovalLoadingEventImplCopyWith(
          _$CreditNoteApprovalLoadingEventImpl value,
          $Res Function(_$CreditNoteApprovalLoadingEventImpl) then) =
      __$$CreditNoteApprovalLoadingEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreditNoteApprovalLoadingEventImplCopyWithImpl<$Res>
    extends _$CreditNoteApprovalAndRejectEventCopyWithImpl<$Res,
        _$CreditNoteApprovalLoadingEventImpl>
    implements _$$CreditNoteApprovalLoadingEventImplCopyWith<$Res> {
  __$$CreditNoteApprovalLoadingEventImplCopyWithImpl(
      _$CreditNoteApprovalLoadingEventImpl _value,
      $Res Function(_$CreditNoteApprovalLoadingEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreditNoteApprovalLoadingEventImpl
    implements CreditNoteApprovalLoadingEvent {
  const _$CreditNoteApprovalLoadingEventImpl();

  @override
  String toString() {
    return 'CreditNoteApprovalAndRejectEvent.creditNoteApprovalLoadingEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreditNoteApprovalLoadingEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DisputeInvoiceApproveInModel approve)
        creditNoteTakeActionEvent,
    required TResult Function() creditNoteApprovalLoadingEvent,
    required TResult Function() creditNoteApprovalClearEvent,
  }) {
    return creditNoteApprovalLoadingEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DisputeInvoiceApproveInModel approve)?
        creditNoteTakeActionEvent,
    TResult? Function()? creditNoteApprovalLoadingEvent,
    TResult? Function()? creditNoteApprovalClearEvent,
  }) {
    return creditNoteApprovalLoadingEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DisputeInvoiceApproveInModel approve)?
        creditNoteTakeActionEvent,
    TResult Function()? creditNoteApprovalLoadingEvent,
    TResult Function()? creditNoteApprovalClearEvent,
    required TResult orElse(),
  }) {
    if (creditNoteApprovalLoadingEvent != null) {
      return creditNoteApprovalLoadingEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreditNoteTakeActionEvent value)
        creditNoteTakeActionEvent,
    required TResult Function(CreditNoteApprovalLoadingEvent value)
        creditNoteApprovalLoadingEvent,
    required TResult Function(CreditNoteApprovalClearEvent value)
        creditNoteApprovalClearEvent,
  }) {
    return creditNoteApprovalLoadingEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreditNoteTakeActionEvent value)?
        creditNoteTakeActionEvent,
    TResult? Function(CreditNoteApprovalLoadingEvent value)?
        creditNoteApprovalLoadingEvent,
    TResult? Function(CreditNoteApprovalClearEvent value)?
        creditNoteApprovalClearEvent,
  }) {
    return creditNoteApprovalLoadingEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreditNoteTakeActionEvent value)?
        creditNoteTakeActionEvent,
    TResult Function(CreditNoteApprovalLoadingEvent value)?
        creditNoteApprovalLoadingEvent,
    TResult Function(CreditNoteApprovalClearEvent value)?
        creditNoteApprovalClearEvent,
    required TResult orElse(),
  }) {
    if (creditNoteApprovalLoadingEvent != null) {
      return creditNoteApprovalLoadingEvent(this);
    }
    return orElse();
  }
}

abstract class CreditNoteApprovalLoadingEvent
    implements CreditNoteApprovalAndRejectEvent {
  const factory CreditNoteApprovalLoadingEvent() =
      _$CreditNoteApprovalLoadingEventImpl;
}

/// @nodoc
abstract class _$$CreditNoteApprovalClearEventImplCopyWith<$Res> {
  factory _$$CreditNoteApprovalClearEventImplCopyWith(
          _$CreditNoteApprovalClearEventImpl value,
          $Res Function(_$CreditNoteApprovalClearEventImpl) then) =
      __$$CreditNoteApprovalClearEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreditNoteApprovalClearEventImplCopyWithImpl<$Res>
    extends _$CreditNoteApprovalAndRejectEventCopyWithImpl<$Res,
        _$CreditNoteApprovalClearEventImpl>
    implements _$$CreditNoteApprovalClearEventImplCopyWith<$Res> {
  __$$CreditNoteApprovalClearEventImplCopyWithImpl(
      _$CreditNoteApprovalClearEventImpl _value,
      $Res Function(_$CreditNoteApprovalClearEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreditNoteApprovalClearEventImpl
    implements CreditNoteApprovalClearEvent {
  const _$CreditNoteApprovalClearEventImpl();

  @override
  String toString() {
    return 'CreditNoteApprovalAndRejectEvent.creditNoteApprovalClearEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreditNoteApprovalClearEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DisputeInvoiceApproveInModel approve)
        creditNoteTakeActionEvent,
    required TResult Function() creditNoteApprovalLoadingEvent,
    required TResult Function() creditNoteApprovalClearEvent,
  }) {
    return creditNoteApprovalClearEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DisputeInvoiceApproveInModel approve)?
        creditNoteTakeActionEvent,
    TResult? Function()? creditNoteApprovalLoadingEvent,
    TResult? Function()? creditNoteApprovalClearEvent,
  }) {
    return creditNoteApprovalClearEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DisputeInvoiceApproveInModel approve)?
        creditNoteTakeActionEvent,
    TResult Function()? creditNoteApprovalLoadingEvent,
    TResult Function()? creditNoteApprovalClearEvent,
    required TResult orElse(),
  }) {
    if (creditNoteApprovalClearEvent != null) {
      return creditNoteApprovalClearEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreditNoteTakeActionEvent value)
        creditNoteTakeActionEvent,
    required TResult Function(CreditNoteApprovalLoadingEvent value)
        creditNoteApprovalLoadingEvent,
    required TResult Function(CreditNoteApprovalClearEvent value)
        creditNoteApprovalClearEvent,
  }) {
    return creditNoteApprovalClearEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreditNoteTakeActionEvent value)?
        creditNoteTakeActionEvent,
    TResult? Function(CreditNoteApprovalLoadingEvent value)?
        creditNoteApprovalLoadingEvent,
    TResult? Function(CreditNoteApprovalClearEvent value)?
        creditNoteApprovalClearEvent,
  }) {
    return creditNoteApprovalClearEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreditNoteTakeActionEvent value)?
        creditNoteTakeActionEvent,
    TResult Function(CreditNoteApprovalLoadingEvent value)?
        creditNoteApprovalLoadingEvent,
    TResult Function(CreditNoteApprovalClearEvent value)?
        creditNoteApprovalClearEvent,
    required TResult orElse(),
  }) {
    if (creditNoteApprovalClearEvent != null) {
      return creditNoteApprovalClearEvent(this);
    }
    return orElse();
  }
}

abstract class CreditNoteApprovalClearEvent
    implements CreditNoteApprovalAndRejectEvent {
  const factory CreditNoteApprovalClearEvent() =
      _$CreditNoteApprovalClearEventImpl;
}

/// @nodoc
mixin _$CreditNoteApprovalAndRejectState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DisputeApprovalRespModel? resp, bool? isApprove)
        creditNoteActionTakenState,
    required TResult Function() creditNoteApprovalFailedState,
    required TResult Function() creditNoteApprovalLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DisputeApprovalRespModel? resp, bool? isApprove)?
        creditNoteActionTakenState,
    TResult? Function()? creditNoteApprovalFailedState,
    TResult? Function()? creditNoteApprovalLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DisputeApprovalRespModel? resp, bool? isApprove)?
        creditNoteActionTakenState,
    TResult Function()? creditNoteApprovalFailedState,
    TResult Function()? creditNoteApprovalLoadingState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreditNoteActionTakenState value)
        creditNoteActionTakenState,
    required TResult Function(CreditNoteApprovalFailedState value)
        creditNoteApprovalFailedState,
    required TResult Function(CreditNoteApprovalLoadingState value)
        creditNoteApprovalLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreditNoteActionTakenState value)?
        creditNoteActionTakenState,
    TResult? Function(CreditNoteApprovalFailedState value)?
        creditNoteApprovalFailedState,
    TResult? Function(CreditNoteApprovalLoadingState value)?
        creditNoteApprovalLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreditNoteActionTakenState value)?
        creditNoteActionTakenState,
    TResult Function(CreditNoteApprovalFailedState value)?
        creditNoteApprovalFailedState,
    TResult Function(CreditNoteApprovalLoadingState value)?
        creditNoteApprovalLoadingState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditNoteApprovalAndRejectStateCopyWith<$Res> {
  factory $CreditNoteApprovalAndRejectStateCopyWith(
          CreditNoteApprovalAndRejectState value,
          $Res Function(CreditNoteApprovalAndRejectState) then) =
      _$CreditNoteApprovalAndRejectStateCopyWithImpl<$Res,
          CreditNoteApprovalAndRejectState>;
}

/// @nodoc
class _$CreditNoteApprovalAndRejectStateCopyWithImpl<$Res,
        $Val extends CreditNoteApprovalAndRejectState>
    implements $CreditNoteApprovalAndRejectStateCopyWith<$Res> {
  _$CreditNoteApprovalAndRejectStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreditNoteActionTakenStateImplCopyWith<$Res> {
  factory _$$CreditNoteActionTakenStateImplCopyWith(
          _$CreditNoteActionTakenStateImpl value,
          $Res Function(_$CreditNoteActionTakenStateImpl) then) =
      __$$CreditNoteActionTakenStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DisputeApprovalRespModel? resp, bool? isApprove});
}

/// @nodoc
class __$$CreditNoteActionTakenStateImplCopyWithImpl<$Res>
    extends _$CreditNoteApprovalAndRejectStateCopyWithImpl<$Res,
        _$CreditNoteActionTakenStateImpl>
    implements _$$CreditNoteActionTakenStateImplCopyWith<$Res> {
  __$$CreditNoteActionTakenStateImplCopyWithImpl(
      _$CreditNoteActionTakenStateImpl _value,
      $Res Function(_$CreditNoteActionTakenStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resp = freezed,
    Object? isApprove = freezed,
  }) {
    return _then(_$CreditNoteActionTakenStateImpl(
      resp: freezed == resp
          ? _value.resp
          : resp // ignore: cast_nullable_to_non_nullable
              as DisputeApprovalRespModel?,
      isApprove: freezed == isApprove
          ? _value.isApprove
          : isApprove // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$CreditNoteActionTakenStateImpl implements CreditNoteActionTakenState {
  const _$CreditNoteActionTakenStateImpl(
      {required this.resp, required this.isApprove});

  @override
  final DisputeApprovalRespModel? resp;
  @override
  final bool? isApprove;

  @override
  String toString() {
    return 'CreditNoteApprovalAndRejectState.creditNoteActionTakenState(resp: $resp, isApprove: $isApprove)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreditNoteActionTakenStateImpl &&
            (identical(other.resp, resp) || other.resp == resp) &&
            (identical(other.isApprove, isApprove) ||
                other.isApprove == isApprove));
  }

  @override
  int get hashCode => Object.hash(runtimeType, resp, isApprove);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreditNoteActionTakenStateImplCopyWith<_$CreditNoteActionTakenStateImpl>
      get copyWith => __$$CreditNoteActionTakenStateImplCopyWithImpl<
          _$CreditNoteActionTakenStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DisputeApprovalRespModel? resp, bool? isApprove)
        creditNoteActionTakenState,
    required TResult Function() creditNoteApprovalFailedState,
    required TResult Function() creditNoteApprovalLoadingState,
  }) {
    return creditNoteActionTakenState(resp, isApprove);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DisputeApprovalRespModel? resp, bool? isApprove)?
        creditNoteActionTakenState,
    TResult? Function()? creditNoteApprovalFailedState,
    TResult? Function()? creditNoteApprovalLoadingState,
  }) {
    return creditNoteActionTakenState?.call(resp, isApprove);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DisputeApprovalRespModel? resp, bool? isApprove)?
        creditNoteActionTakenState,
    TResult Function()? creditNoteApprovalFailedState,
    TResult Function()? creditNoteApprovalLoadingState,
    required TResult orElse(),
  }) {
    if (creditNoteActionTakenState != null) {
      return creditNoteActionTakenState(resp, isApprove);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreditNoteActionTakenState value)
        creditNoteActionTakenState,
    required TResult Function(CreditNoteApprovalFailedState value)
        creditNoteApprovalFailedState,
    required TResult Function(CreditNoteApprovalLoadingState value)
        creditNoteApprovalLoadingState,
  }) {
    return creditNoteActionTakenState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreditNoteActionTakenState value)?
        creditNoteActionTakenState,
    TResult? Function(CreditNoteApprovalFailedState value)?
        creditNoteApprovalFailedState,
    TResult? Function(CreditNoteApprovalLoadingState value)?
        creditNoteApprovalLoadingState,
  }) {
    return creditNoteActionTakenState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreditNoteActionTakenState value)?
        creditNoteActionTakenState,
    TResult Function(CreditNoteApprovalFailedState value)?
        creditNoteApprovalFailedState,
    TResult Function(CreditNoteApprovalLoadingState value)?
        creditNoteApprovalLoadingState,
    required TResult orElse(),
  }) {
    if (creditNoteActionTakenState != null) {
      return creditNoteActionTakenState(this);
    }
    return orElse();
  }
}

abstract class CreditNoteActionTakenState
    implements CreditNoteApprovalAndRejectState {
  const factory CreditNoteActionTakenState(
      {required final DisputeApprovalRespModel? resp,
      required final bool? isApprove}) = _$CreditNoteActionTakenStateImpl;

  DisputeApprovalRespModel? get resp;
  bool? get isApprove;
  @JsonKey(ignore: true)
  _$$CreditNoteActionTakenStateImplCopyWith<_$CreditNoteActionTakenStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreditNoteApprovalFailedStateImplCopyWith<$Res> {
  factory _$$CreditNoteApprovalFailedStateImplCopyWith(
          _$CreditNoteApprovalFailedStateImpl value,
          $Res Function(_$CreditNoteApprovalFailedStateImpl) then) =
      __$$CreditNoteApprovalFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreditNoteApprovalFailedStateImplCopyWithImpl<$Res>
    extends _$CreditNoteApprovalAndRejectStateCopyWithImpl<$Res,
        _$CreditNoteApprovalFailedStateImpl>
    implements _$$CreditNoteApprovalFailedStateImplCopyWith<$Res> {
  __$$CreditNoteApprovalFailedStateImplCopyWithImpl(
      _$CreditNoteApprovalFailedStateImpl _value,
      $Res Function(_$CreditNoteApprovalFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreditNoteApprovalFailedStateImpl
    implements CreditNoteApprovalFailedState {
  const _$CreditNoteApprovalFailedStateImpl();

  @override
  String toString() {
    return 'CreditNoteApprovalAndRejectState.creditNoteApprovalFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreditNoteApprovalFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DisputeApprovalRespModel? resp, bool? isApprove)
        creditNoteActionTakenState,
    required TResult Function() creditNoteApprovalFailedState,
    required TResult Function() creditNoteApprovalLoadingState,
  }) {
    return creditNoteApprovalFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DisputeApprovalRespModel? resp, bool? isApprove)?
        creditNoteActionTakenState,
    TResult? Function()? creditNoteApprovalFailedState,
    TResult? Function()? creditNoteApprovalLoadingState,
  }) {
    return creditNoteApprovalFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DisputeApprovalRespModel? resp, bool? isApprove)?
        creditNoteActionTakenState,
    TResult Function()? creditNoteApprovalFailedState,
    TResult Function()? creditNoteApprovalLoadingState,
    required TResult orElse(),
  }) {
    if (creditNoteApprovalFailedState != null) {
      return creditNoteApprovalFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreditNoteActionTakenState value)
        creditNoteActionTakenState,
    required TResult Function(CreditNoteApprovalFailedState value)
        creditNoteApprovalFailedState,
    required TResult Function(CreditNoteApprovalLoadingState value)
        creditNoteApprovalLoadingState,
  }) {
    return creditNoteApprovalFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreditNoteActionTakenState value)?
        creditNoteActionTakenState,
    TResult? Function(CreditNoteApprovalFailedState value)?
        creditNoteApprovalFailedState,
    TResult? Function(CreditNoteApprovalLoadingState value)?
        creditNoteApprovalLoadingState,
  }) {
    return creditNoteApprovalFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreditNoteActionTakenState value)?
        creditNoteActionTakenState,
    TResult Function(CreditNoteApprovalFailedState value)?
        creditNoteApprovalFailedState,
    TResult Function(CreditNoteApprovalLoadingState value)?
        creditNoteApprovalLoadingState,
    required TResult orElse(),
  }) {
    if (creditNoteApprovalFailedState != null) {
      return creditNoteApprovalFailedState(this);
    }
    return orElse();
  }
}

abstract class CreditNoteApprovalFailedState
    implements CreditNoteApprovalAndRejectState {
  const factory CreditNoteApprovalFailedState() =
      _$CreditNoteApprovalFailedStateImpl;
}

/// @nodoc
abstract class _$$CreditNoteApprovalLoadingStateImplCopyWith<$Res> {
  factory _$$CreditNoteApprovalLoadingStateImplCopyWith(
          _$CreditNoteApprovalLoadingStateImpl value,
          $Res Function(_$CreditNoteApprovalLoadingStateImpl) then) =
      __$$CreditNoteApprovalLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreditNoteApprovalLoadingStateImplCopyWithImpl<$Res>
    extends _$CreditNoteApprovalAndRejectStateCopyWithImpl<$Res,
        _$CreditNoteApprovalLoadingStateImpl>
    implements _$$CreditNoteApprovalLoadingStateImplCopyWith<$Res> {
  __$$CreditNoteApprovalLoadingStateImplCopyWithImpl(
      _$CreditNoteApprovalLoadingStateImpl _value,
      $Res Function(_$CreditNoteApprovalLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreditNoteApprovalLoadingStateImpl
    implements CreditNoteApprovalLoadingState {
  const _$CreditNoteApprovalLoadingStateImpl();

  @override
  String toString() {
    return 'CreditNoteApprovalAndRejectState.creditNoteApprovalLoadingState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreditNoteApprovalLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DisputeApprovalRespModel? resp, bool? isApprove)
        creditNoteActionTakenState,
    required TResult Function() creditNoteApprovalFailedState,
    required TResult Function() creditNoteApprovalLoadingState,
  }) {
    return creditNoteApprovalLoadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DisputeApprovalRespModel? resp, bool? isApprove)?
        creditNoteActionTakenState,
    TResult? Function()? creditNoteApprovalFailedState,
    TResult? Function()? creditNoteApprovalLoadingState,
  }) {
    return creditNoteApprovalLoadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DisputeApprovalRespModel? resp, bool? isApprove)?
        creditNoteActionTakenState,
    TResult Function()? creditNoteApprovalFailedState,
    TResult Function()? creditNoteApprovalLoadingState,
    required TResult orElse(),
  }) {
    if (creditNoteApprovalLoadingState != null) {
      return creditNoteApprovalLoadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreditNoteActionTakenState value)
        creditNoteActionTakenState,
    required TResult Function(CreditNoteApprovalFailedState value)
        creditNoteApprovalFailedState,
    required TResult Function(CreditNoteApprovalLoadingState value)
        creditNoteApprovalLoadingState,
  }) {
    return creditNoteApprovalLoadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreditNoteActionTakenState value)?
        creditNoteActionTakenState,
    TResult? Function(CreditNoteApprovalFailedState value)?
        creditNoteApprovalFailedState,
    TResult? Function(CreditNoteApprovalLoadingState value)?
        creditNoteApprovalLoadingState,
  }) {
    return creditNoteApprovalLoadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreditNoteActionTakenState value)?
        creditNoteActionTakenState,
    TResult Function(CreditNoteApprovalFailedState value)?
        creditNoteApprovalFailedState,
    TResult Function(CreditNoteApprovalLoadingState value)?
        creditNoteApprovalLoadingState,
    required TResult orElse(),
  }) {
    if (creditNoteApprovalLoadingState != null) {
      return creditNoteApprovalLoadingState(this);
    }
    return orElse();
  }
}

abstract class CreditNoteApprovalLoadingState
    implements CreditNoteApprovalAndRejectState {
  const factory CreditNoteApprovalLoadingState() =
      _$CreditNoteApprovalLoadingStateImpl;
}
