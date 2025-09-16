// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dispute_note_approval_and_reject_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DisputeNoteApprovalAndRejectEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DisputeInvoiceApproveInModel approve)
        approveDisputeNoteEvent,
    required TResult Function(DisputeInvoiceApproveInModel reject)
        rejectDisputeNoteEvent,
    required TResult Function() addDisputeNoteApprovalLoadingEvent,
    required TResult Function() clearDisputeApprovalEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DisputeInvoiceApproveInModel approve)?
        approveDisputeNoteEvent,
    TResult? Function(DisputeInvoiceApproveInModel reject)?
        rejectDisputeNoteEvent,
    TResult? Function()? addDisputeNoteApprovalLoadingEvent,
    TResult? Function()? clearDisputeApprovalEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DisputeInvoiceApproveInModel approve)?
        approveDisputeNoteEvent,
    TResult Function(DisputeInvoiceApproveInModel reject)?
        rejectDisputeNoteEvent,
    TResult Function()? addDisputeNoteApprovalLoadingEvent,
    TResult Function()? clearDisputeApprovalEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApproveDisputeNoteEvent value)
        approveDisputeNoteEvent,
    required TResult Function(RejectDisputeNoteEvent value)
        rejectDisputeNoteEvent,
    required TResult Function(AddDisputeNoteApprovalLoadingEvent value)
        addDisputeNoteApprovalLoadingEvent,
    required TResult Function(ClearDisputeApprovalEvent value)
        clearDisputeApprovalEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApproveDisputeNoteEvent value)? approveDisputeNoteEvent,
    TResult? Function(RejectDisputeNoteEvent value)? rejectDisputeNoteEvent,
    TResult? Function(AddDisputeNoteApprovalLoadingEvent value)?
        addDisputeNoteApprovalLoadingEvent,
    TResult? Function(ClearDisputeApprovalEvent value)?
        clearDisputeApprovalEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApproveDisputeNoteEvent value)? approveDisputeNoteEvent,
    TResult Function(RejectDisputeNoteEvent value)? rejectDisputeNoteEvent,
    TResult Function(AddDisputeNoteApprovalLoadingEvent value)?
        addDisputeNoteApprovalLoadingEvent,
    TResult Function(ClearDisputeApprovalEvent value)?
        clearDisputeApprovalEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisputeNoteApprovalAndRejectEventCopyWith<$Res> {
  factory $DisputeNoteApprovalAndRejectEventCopyWith(
          DisputeNoteApprovalAndRejectEvent value,
          $Res Function(DisputeNoteApprovalAndRejectEvent) then) =
      _$DisputeNoteApprovalAndRejectEventCopyWithImpl<$Res,
          DisputeNoteApprovalAndRejectEvent>;
}

/// @nodoc
class _$DisputeNoteApprovalAndRejectEventCopyWithImpl<$Res,
        $Val extends DisputeNoteApprovalAndRejectEvent>
    implements $DisputeNoteApprovalAndRejectEventCopyWith<$Res> {
  _$DisputeNoteApprovalAndRejectEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DisputeNoteApprovalAndRejectEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ApproveDisputeNoteEventImplCopyWith<$Res> {
  factory _$$ApproveDisputeNoteEventImplCopyWith(
          _$ApproveDisputeNoteEventImpl value,
          $Res Function(_$ApproveDisputeNoteEventImpl) then) =
      __$$ApproveDisputeNoteEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DisputeInvoiceApproveInModel approve});
}

/// @nodoc
class __$$ApproveDisputeNoteEventImplCopyWithImpl<$Res>
    extends _$DisputeNoteApprovalAndRejectEventCopyWithImpl<$Res,
        _$ApproveDisputeNoteEventImpl>
    implements _$$ApproveDisputeNoteEventImplCopyWith<$Res> {
  __$$ApproveDisputeNoteEventImplCopyWithImpl(
      _$ApproveDisputeNoteEventImpl _value,
      $Res Function(_$ApproveDisputeNoteEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of DisputeNoteApprovalAndRejectEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? approve = null,
  }) {
    return _then(_$ApproveDisputeNoteEventImpl(
      approve: null == approve
          ? _value.approve
          : approve // ignore: cast_nullable_to_non_nullable
              as DisputeInvoiceApproveInModel,
    ));
  }
}

/// @nodoc

class _$ApproveDisputeNoteEventImpl implements ApproveDisputeNoteEvent {
  const _$ApproveDisputeNoteEventImpl({required this.approve});

  @override
  final DisputeInvoiceApproveInModel approve;

  @override
  String toString() {
    return 'DisputeNoteApprovalAndRejectEvent.approveDisputeNoteEvent(approve: $approve)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApproveDisputeNoteEventImpl &&
            (identical(other.approve, approve) || other.approve == approve));
  }

  @override
  int get hashCode => Object.hash(runtimeType, approve);

  /// Create a copy of DisputeNoteApprovalAndRejectEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApproveDisputeNoteEventImplCopyWith<_$ApproveDisputeNoteEventImpl>
      get copyWith => __$$ApproveDisputeNoteEventImplCopyWithImpl<
          _$ApproveDisputeNoteEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DisputeInvoiceApproveInModel approve)
        approveDisputeNoteEvent,
    required TResult Function(DisputeInvoiceApproveInModel reject)
        rejectDisputeNoteEvent,
    required TResult Function() addDisputeNoteApprovalLoadingEvent,
    required TResult Function() clearDisputeApprovalEvent,
  }) {
    return approveDisputeNoteEvent(approve);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DisputeInvoiceApproveInModel approve)?
        approveDisputeNoteEvent,
    TResult? Function(DisputeInvoiceApproveInModel reject)?
        rejectDisputeNoteEvent,
    TResult? Function()? addDisputeNoteApprovalLoadingEvent,
    TResult? Function()? clearDisputeApprovalEvent,
  }) {
    return approveDisputeNoteEvent?.call(approve);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DisputeInvoiceApproveInModel approve)?
        approveDisputeNoteEvent,
    TResult Function(DisputeInvoiceApproveInModel reject)?
        rejectDisputeNoteEvent,
    TResult Function()? addDisputeNoteApprovalLoadingEvent,
    TResult Function()? clearDisputeApprovalEvent,
    required TResult orElse(),
  }) {
    if (approveDisputeNoteEvent != null) {
      return approveDisputeNoteEvent(approve);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApproveDisputeNoteEvent value)
        approveDisputeNoteEvent,
    required TResult Function(RejectDisputeNoteEvent value)
        rejectDisputeNoteEvent,
    required TResult Function(AddDisputeNoteApprovalLoadingEvent value)
        addDisputeNoteApprovalLoadingEvent,
    required TResult Function(ClearDisputeApprovalEvent value)
        clearDisputeApprovalEvent,
  }) {
    return approveDisputeNoteEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApproveDisputeNoteEvent value)? approveDisputeNoteEvent,
    TResult? Function(RejectDisputeNoteEvent value)? rejectDisputeNoteEvent,
    TResult? Function(AddDisputeNoteApprovalLoadingEvent value)?
        addDisputeNoteApprovalLoadingEvent,
    TResult? Function(ClearDisputeApprovalEvent value)?
        clearDisputeApprovalEvent,
  }) {
    return approveDisputeNoteEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApproveDisputeNoteEvent value)? approveDisputeNoteEvent,
    TResult Function(RejectDisputeNoteEvent value)? rejectDisputeNoteEvent,
    TResult Function(AddDisputeNoteApprovalLoadingEvent value)?
        addDisputeNoteApprovalLoadingEvent,
    TResult Function(ClearDisputeApprovalEvent value)?
        clearDisputeApprovalEvent,
    required TResult orElse(),
  }) {
    if (approveDisputeNoteEvent != null) {
      return approveDisputeNoteEvent(this);
    }
    return orElse();
  }
}

abstract class ApproveDisputeNoteEvent
    implements DisputeNoteApprovalAndRejectEvent {
  const factory ApproveDisputeNoteEvent(
          {required final DisputeInvoiceApproveInModel approve}) =
      _$ApproveDisputeNoteEventImpl;

  DisputeInvoiceApproveInModel get approve;

  /// Create a copy of DisputeNoteApprovalAndRejectEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApproveDisputeNoteEventImplCopyWith<_$ApproveDisputeNoteEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RejectDisputeNoteEventImplCopyWith<$Res> {
  factory _$$RejectDisputeNoteEventImplCopyWith(
          _$RejectDisputeNoteEventImpl value,
          $Res Function(_$RejectDisputeNoteEventImpl) then) =
      __$$RejectDisputeNoteEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DisputeInvoiceApproveInModel reject});
}

/// @nodoc
class __$$RejectDisputeNoteEventImplCopyWithImpl<$Res>
    extends _$DisputeNoteApprovalAndRejectEventCopyWithImpl<$Res,
        _$RejectDisputeNoteEventImpl>
    implements _$$RejectDisputeNoteEventImplCopyWith<$Res> {
  __$$RejectDisputeNoteEventImplCopyWithImpl(
      _$RejectDisputeNoteEventImpl _value,
      $Res Function(_$RejectDisputeNoteEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of DisputeNoteApprovalAndRejectEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reject = null,
  }) {
    return _then(_$RejectDisputeNoteEventImpl(
      reject: null == reject
          ? _value.reject
          : reject // ignore: cast_nullable_to_non_nullable
              as DisputeInvoiceApproveInModel,
    ));
  }
}

/// @nodoc

class _$RejectDisputeNoteEventImpl implements RejectDisputeNoteEvent {
  const _$RejectDisputeNoteEventImpl({required this.reject});

  @override
  final DisputeInvoiceApproveInModel reject;

  @override
  String toString() {
    return 'DisputeNoteApprovalAndRejectEvent.rejectDisputeNoteEvent(reject: $reject)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RejectDisputeNoteEventImpl &&
            (identical(other.reject, reject) || other.reject == reject));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reject);

  /// Create a copy of DisputeNoteApprovalAndRejectEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RejectDisputeNoteEventImplCopyWith<_$RejectDisputeNoteEventImpl>
      get copyWith => __$$RejectDisputeNoteEventImplCopyWithImpl<
          _$RejectDisputeNoteEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DisputeInvoiceApproveInModel approve)
        approveDisputeNoteEvent,
    required TResult Function(DisputeInvoiceApproveInModel reject)
        rejectDisputeNoteEvent,
    required TResult Function() addDisputeNoteApprovalLoadingEvent,
    required TResult Function() clearDisputeApprovalEvent,
  }) {
    return rejectDisputeNoteEvent(reject);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DisputeInvoiceApproveInModel approve)?
        approveDisputeNoteEvent,
    TResult? Function(DisputeInvoiceApproveInModel reject)?
        rejectDisputeNoteEvent,
    TResult? Function()? addDisputeNoteApprovalLoadingEvent,
    TResult? Function()? clearDisputeApprovalEvent,
  }) {
    return rejectDisputeNoteEvent?.call(reject);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DisputeInvoiceApproveInModel approve)?
        approveDisputeNoteEvent,
    TResult Function(DisputeInvoiceApproveInModel reject)?
        rejectDisputeNoteEvent,
    TResult Function()? addDisputeNoteApprovalLoadingEvent,
    TResult Function()? clearDisputeApprovalEvent,
    required TResult orElse(),
  }) {
    if (rejectDisputeNoteEvent != null) {
      return rejectDisputeNoteEvent(reject);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApproveDisputeNoteEvent value)
        approveDisputeNoteEvent,
    required TResult Function(RejectDisputeNoteEvent value)
        rejectDisputeNoteEvent,
    required TResult Function(AddDisputeNoteApprovalLoadingEvent value)
        addDisputeNoteApprovalLoadingEvent,
    required TResult Function(ClearDisputeApprovalEvent value)
        clearDisputeApprovalEvent,
  }) {
    return rejectDisputeNoteEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApproveDisputeNoteEvent value)? approveDisputeNoteEvent,
    TResult? Function(RejectDisputeNoteEvent value)? rejectDisputeNoteEvent,
    TResult? Function(AddDisputeNoteApprovalLoadingEvent value)?
        addDisputeNoteApprovalLoadingEvent,
    TResult? Function(ClearDisputeApprovalEvent value)?
        clearDisputeApprovalEvent,
  }) {
    return rejectDisputeNoteEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApproveDisputeNoteEvent value)? approveDisputeNoteEvent,
    TResult Function(RejectDisputeNoteEvent value)? rejectDisputeNoteEvent,
    TResult Function(AddDisputeNoteApprovalLoadingEvent value)?
        addDisputeNoteApprovalLoadingEvent,
    TResult Function(ClearDisputeApprovalEvent value)?
        clearDisputeApprovalEvent,
    required TResult orElse(),
  }) {
    if (rejectDisputeNoteEvent != null) {
      return rejectDisputeNoteEvent(this);
    }
    return orElse();
  }
}

abstract class RejectDisputeNoteEvent
    implements DisputeNoteApprovalAndRejectEvent {
  const factory RejectDisputeNoteEvent(
          {required final DisputeInvoiceApproveInModel reject}) =
      _$RejectDisputeNoteEventImpl;

  DisputeInvoiceApproveInModel get reject;

  /// Create a copy of DisputeNoteApprovalAndRejectEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RejectDisputeNoteEventImplCopyWith<_$RejectDisputeNoteEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddDisputeNoteApprovalLoadingEventImplCopyWith<$Res> {
  factory _$$AddDisputeNoteApprovalLoadingEventImplCopyWith(
          _$AddDisputeNoteApprovalLoadingEventImpl value,
          $Res Function(_$AddDisputeNoteApprovalLoadingEventImpl) then) =
      __$$AddDisputeNoteApprovalLoadingEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddDisputeNoteApprovalLoadingEventImplCopyWithImpl<$Res>
    extends _$DisputeNoteApprovalAndRejectEventCopyWithImpl<$Res,
        _$AddDisputeNoteApprovalLoadingEventImpl>
    implements _$$AddDisputeNoteApprovalLoadingEventImplCopyWith<$Res> {
  __$$AddDisputeNoteApprovalLoadingEventImplCopyWithImpl(
      _$AddDisputeNoteApprovalLoadingEventImpl _value,
      $Res Function(_$AddDisputeNoteApprovalLoadingEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of DisputeNoteApprovalAndRejectEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AddDisputeNoteApprovalLoadingEventImpl
    implements AddDisputeNoteApprovalLoadingEvent {
  const _$AddDisputeNoteApprovalLoadingEventImpl();

  @override
  String toString() {
    return 'DisputeNoteApprovalAndRejectEvent.addDisputeNoteApprovalLoadingEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddDisputeNoteApprovalLoadingEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DisputeInvoiceApproveInModel approve)
        approveDisputeNoteEvent,
    required TResult Function(DisputeInvoiceApproveInModel reject)
        rejectDisputeNoteEvent,
    required TResult Function() addDisputeNoteApprovalLoadingEvent,
    required TResult Function() clearDisputeApprovalEvent,
  }) {
    return addDisputeNoteApprovalLoadingEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DisputeInvoiceApproveInModel approve)?
        approveDisputeNoteEvent,
    TResult? Function(DisputeInvoiceApproveInModel reject)?
        rejectDisputeNoteEvent,
    TResult? Function()? addDisputeNoteApprovalLoadingEvent,
    TResult? Function()? clearDisputeApprovalEvent,
  }) {
    return addDisputeNoteApprovalLoadingEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DisputeInvoiceApproveInModel approve)?
        approveDisputeNoteEvent,
    TResult Function(DisputeInvoiceApproveInModel reject)?
        rejectDisputeNoteEvent,
    TResult Function()? addDisputeNoteApprovalLoadingEvent,
    TResult Function()? clearDisputeApprovalEvent,
    required TResult orElse(),
  }) {
    if (addDisputeNoteApprovalLoadingEvent != null) {
      return addDisputeNoteApprovalLoadingEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApproveDisputeNoteEvent value)
        approveDisputeNoteEvent,
    required TResult Function(RejectDisputeNoteEvent value)
        rejectDisputeNoteEvent,
    required TResult Function(AddDisputeNoteApprovalLoadingEvent value)
        addDisputeNoteApprovalLoadingEvent,
    required TResult Function(ClearDisputeApprovalEvent value)
        clearDisputeApprovalEvent,
  }) {
    return addDisputeNoteApprovalLoadingEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApproveDisputeNoteEvent value)? approveDisputeNoteEvent,
    TResult? Function(RejectDisputeNoteEvent value)? rejectDisputeNoteEvent,
    TResult? Function(AddDisputeNoteApprovalLoadingEvent value)?
        addDisputeNoteApprovalLoadingEvent,
    TResult? Function(ClearDisputeApprovalEvent value)?
        clearDisputeApprovalEvent,
  }) {
    return addDisputeNoteApprovalLoadingEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApproveDisputeNoteEvent value)? approveDisputeNoteEvent,
    TResult Function(RejectDisputeNoteEvent value)? rejectDisputeNoteEvent,
    TResult Function(AddDisputeNoteApprovalLoadingEvent value)?
        addDisputeNoteApprovalLoadingEvent,
    TResult Function(ClearDisputeApprovalEvent value)?
        clearDisputeApprovalEvent,
    required TResult orElse(),
  }) {
    if (addDisputeNoteApprovalLoadingEvent != null) {
      return addDisputeNoteApprovalLoadingEvent(this);
    }
    return orElse();
  }
}

abstract class AddDisputeNoteApprovalLoadingEvent
    implements DisputeNoteApprovalAndRejectEvent {
  const factory AddDisputeNoteApprovalLoadingEvent() =
      _$AddDisputeNoteApprovalLoadingEventImpl;
}

/// @nodoc
abstract class _$$ClearDisputeApprovalEventImplCopyWith<$Res> {
  factory _$$ClearDisputeApprovalEventImplCopyWith(
          _$ClearDisputeApprovalEventImpl value,
          $Res Function(_$ClearDisputeApprovalEventImpl) then) =
      __$$ClearDisputeApprovalEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearDisputeApprovalEventImplCopyWithImpl<$Res>
    extends _$DisputeNoteApprovalAndRejectEventCopyWithImpl<$Res,
        _$ClearDisputeApprovalEventImpl>
    implements _$$ClearDisputeApprovalEventImplCopyWith<$Res> {
  __$$ClearDisputeApprovalEventImplCopyWithImpl(
      _$ClearDisputeApprovalEventImpl _value,
      $Res Function(_$ClearDisputeApprovalEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of DisputeNoteApprovalAndRejectEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearDisputeApprovalEventImpl implements ClearDisputeApprovalEvent {
  const _$ClearDisputeApprovalEventImpl();

  @override
  String toString() {
    return 'DisputeNoteApprovalAndRejectEvent.clearDisputeApprovalEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearDisputeApprovalEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DisputeInvoiceApproveInModel approve)
        approveDisputeNoteEvent,
    required TResult Function(DisputeInvoiceApproveInModel reject)
        rejectDisputeNoteEvent,
    required TResult Function() addDisputeNoteApprovalLoadingEvent,
    required TResult Function() clearDisputeApprovalEvent,
  }) {
    return clearDisputeApprovalEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DisputeInvoiceApproveInModel approve)?
        approveDisputeNoteEvent,
    TResult? Function(DisputeInvoiceApproveInModel reject)?
        rejectDisputeNoteEvent,
    TResult? Function()? addDisputeNoteApprovalLoadingEvent,
    TResult? Function()? clearDisputeApprovalEvent,
  }) {
    return clearDisputeApprovalEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DisputeInvoiceApproveInModel approve)?
        approveDisputeNoteEvent,
    TResult Function(DisputeInvoiceApproveInModel reject)?
        rejectDisputeNoteEvent,
    TResult Function()? addDisputeNoteApprovalLoadingEvent,
    TResult Function()? clearDisputeApprovalEvent,
    required TResult orElse(),
  }) {
    if (clearDisputeApprovalEvent != null) {
      return clearDisputeApprovalEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApproveDisputeNoteEvent value)
        approveDisputeNoteEvent,
    required TResult Function(RejectDisputeNoteEvent value)
        rejectDisputeNoteEvent,
    required TResult Function(AddDisputeNoteApprovalLoadingEvent value)
        addDisputeNoteApprovalLoadingEvent,
    required TResult Function(ClearDisputeApprovalEvent value)
        clearDisputeApprovalEvent,
  }) {
    return clearDisputeApprovalEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApproveDisputeNoteEvent value)? approveDisputeNoteEvent,
    TResult? Function(RejectDisputeNoteEvent value)? rejectDisputeNoteEvent,
    TResult? Function(AddDisputeNoteApprovalLoadingEvent value)?
        addDisputeNoteApprovalLoadingEvent,
    TResult? Function(ClearDisputeApprovalEvent value)?
        clearDisputeApprovalEvent,
  }) {
    return clearDisputeApprovalEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApproveDisputeNoteEvent value)? approveDisputeNoteEvent,
    TResult Function(RejectDisputeNoteEvent value)? rejectDisputeNoteEvent,
    TResult Function(AddDisputeNoteApprovalLoadingEvent value)?
        addDisputeNoteApprovalLoadingEvent,
    TResult Function(ClearDisputeApprovalEvent value)?
        clearDisputeApprovalEvent,
    required TResult orElse(),
  }) {
    if (clearDisputeApprovalEvent != null) {
      return clearDisputeApprovalEvent(this);
    }
    return orElse();
  }
}

abstract class ClearDisputeApprovalEvent
    implements DisputeNoteApprovalAndRejectEvent {
  const factory ClearDisputeApprovalEvent() = _$ClearDisputeApprovalEventImpl;
}

/// @nodoc
mixin _$DisputeNoteApprovalAndRejectState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DisputeApprovalRespModel? resp, bool? isApprove)
        disputeNoteApprovalOrRejectState,
    required TResult Function() disputeApprovalFailedState,
    required TResult Function() disputeApprovalLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DisputeApprovalRespModel? resp, bool? isApprove)?
        disputeNoteApprovalOrRejectState,
    TResult? Function()? disputeApprovalFailedState,
    TResult? Function()? disputeApprovalLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DisputeApprovalRespModel? resp, bool? isApprove)?
        disputeNoteApprovalOrRejectState,
    TResult Function()? disputeApprovalFailedState,
    TResult Function()? disputeApprovalLoadingState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DisputeNoteApprovalOrRejectState value)
        disputeNoteApprovalOrRejectState,
    required TResult Function(DisputeApprovalFailedState value)
        disputeApprovalFailedState,
    required TResult Function(DisputeApprovalLoadingState value)
        disputeApprovalLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DisputeNoteApprovalOrRejectState value)?
        disputeNoteApprovalOrRejectState,
    TResult? Function(DisputeApprovalFailedState value)?
        disputeApprovalFailedState,
    TResult? Function(DisputeApprovalLoadingState value)?
        disputeApprovalLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DisputeNoteApprovalOrRejectState value)?
        disputeNoteApprovalOrRejectState,
    TResult Function(DisputeApprovalFailedState value)?
        disputeApprovalFailedState,
    TResult Function(DisputeApprovalLoadingState value)?
        disputeApprovalLoadingState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisputeNoteApprovalAndRejectStateCopyWith<$Res> {
  factory $DisputeNoteApprovalAndRejectStateCopyWith(
          DisputeNoteApprovalAndRejectState value,
          $Res Function(DisputeNoteApprovalAndRejectState) then) =
      _$DisputeNoteApprovalAndRejectStateCopyWithImpl<$Res,
          DisputeNoteApprovalAndRejectState>;
}

/// @nodoc
class _$DisputeNoteApprovalAndRejectStateCopyWithImpl<$Res,
        $Val extends DisputeNoteApprovalAndRejectState>
    implements $DisputeNoteApprovalAndRejectStateCopyWith<$Res> {
  _$DisputeNoteApprovalAndRejectStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DisputeNoteApprovalAndRejectState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DisputeNoteApprovalOrRejectStateImplCopyWith<$Res> {
  factory _$$DisputeNoteApprovalOrRejectStateImplCopyWith(
          _$DisputeNoteApprovalOrRejectStateImpl value,
          $Res Function(_$DisputeNoteApprovalOrRejectStateImpl) then) =
      __$$DisputeNoteApprovalOrRejectStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DisputeApprovalRespModel? resp, bool? isApprove});
}

/// @nodoc
class __$$DisputeNoteApprovalOrRejectStateImplCopyWithImpl<$Res>
    extends _$DisputeNoteApprovalAndRejectStateCopyWithImpl<$Res,
        _$DisputeNoteApprovalOrRejectStateImpl>
    implements _$$DisputeNoteApprovalOrRejectStateImplCopyWith<$Res> {
  __$$DisputeNoteApprovalOrRejectStateImplCopyWithImpl(
      _$DisputeNoteApprovalOrRejectStateImpl _value,
      $Res Function(_$DisputeNoteApprovalOrRejectStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DisputeNoteApprovalAndRejectState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resp = freezed,
    Object? isApprove = freezed,
  }) {
    return _then(_$DisputeNoteApprovalOrRejectStateImpl(
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

class _$DisputeNoteApprovalOrRejectStateImpl
    implements DisputeNoteApprovalOrRejectState {
  const _$DisputeNoteApprovalOrRejectStateImpl(
      {required this.resp, required this.isApprove});

  @override
  final DisputeApprovalRespModel? resp;
  @override
  final bool? isApprove;

  @override
  String toString() {
    return 'DisputeNoteApprovalAndRejectState.disputeNoteApprovalOrRejectState(resp: $resp, isApprove: $isApprove)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisputeNoteApprovalOrRejectStateImpl &&
            (identical(other.resp, resp) || other.resp == resp) &&
            (identical(other.isApprove, isApprove) ||
                other.isApprove == isApprove));
  }

  @override
  int get hashCode => Object.hash(runtimeType, resp, isApprove);

  /// Create a copy of DisputeNoteApprovalAndRejectState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DisputeNoteApprovalOrRejectStateImplCopyWith<
          _$DisputeNoteApprovalOrRejectStateImpl>
      get copyWith => __$$DisputeNoteApprovalOrRejectStateImplCopyWithImpl<
          _$DisputeNoteApprovalOrRejectStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DisputeApprovalRespModel? resp, bool? isApprove)
        disputeNoteApprovalOrRejectState,
    required TResult Function() disputeApprovalFailedState,
    required TResult Function() disputeApprovalLoadingState,
  }) {
    return disputeNoteApprovalOrRejectState(resp, isApprove);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DisputeApprovalRespModel? resp, bool? isApprove)?
        disputeNoteApprovalOrRejectState,
    TResult? Function()? disputeApprovalFailedState,
    TResult? Function()? disputeApprovalLoadingState,
  }) {
    return disputeNoteApprovalOrRejectState?.call(resp, isApprove);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DisputeApprovalRespModel? resp, bool? isApprove)?
        disputeNoteApprovalOrRejectState,
    TResult Function()? disputeApprovalFailedState,
    TResult Function()? disputeApprovalLoadingState,
    required TResult orElse(),
  }) {
    if (disputeNoteApprovalOrRejectState != null) {
      return disputeNoteApprovalOrRejectState(resp, isApprove);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DisputeNoteApprovalOrRejectState value)
        disputeNoteApprovalOrRejectState,
    required TResult Function(DisputeApprovalFailedState value)
        disputeApprovalFailedState,
    required TResult Function(DisputeApprovalLoadingState value)
        disputeApprovalLoadingState,
  }) {
    return disputeNoteApprovalOrRejectState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DisputeNoteApprovalOrRejectState value)?
        disputeNoteApprovalOrRejectState,
    TResult? Function(DisputeApprovalFailedState value)?
        disputeApprovalFailedState,
    TResult? Function(DisputeApprovalLoadingState value)?
        disputeApprovalLoadingState,
  }) {
    return disputeNoteApprovalOrRejectState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DisputeNoteApprovalOrRejectState value)?
        disputeNoteApprovalOrRejectState,
    TResult Function(DisputeApprovalFailedState value)?
        disputeApprovalFailedState,
    TResult Function(DisputeApprovalLoadingState value)?
        disputeApprovalLoadingState,
    required TResult orElse(),
  }) {
    if (disputeNoteApprovalOrRejectState != null) {
      return disputeNoteApprovalOrRejectState(this);
    }
    return orElse();
  }
}

abstract class DisputeNoteApprovalOrRejectState
    implements DisputeNoteApprovalAndRejectState {
  const factory DisputeNoteApprovalOrRejectState(
      {required final DisputeApprovalRespModel? resp,
      required final bool? isApprove}) = _$DisputeNoteApprovalOrRejectStateImpl;

  DisputeApprovalRespModel? get resp;
  bool? get isApprove;

  /// Create a copy of DisputeNoteApprovalAndRejectState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DisputeNoteApprovalOrRejectStateImplCopyWith<
          _$DisputeNoteApprovalOrRejectStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DisputeApprovalFailedStateImplCopyWith<$Res> {
  factory _$$DisputeApprovalFailedStateImplCopyWith(
          _$DisputeApprovalFailedStateImpl value,
          $Res Function(_$DisputeApprovalFailedStateImpl) then) =
      __$$DisputeApprovalFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisputeApprovalFailedStateImplCopyWithImpl<$Res>
    extends _$DisputeNoteApprovalAndRejectStateCopyWithImpl<$Res,
        _$DisputeApprovalFailedStateImpl>
    implements _$$DisputeApprovalFailedStateImplCopyWith<$Res> {
  __$$DisputeApprovalFailedStateImplCopyWithImpl(
      _$DisputeApprovalFailedStateImpl _value,
      $Res Function(_$DisputeApprovalFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DisputeNoteApprovalAndRejectState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DisputeApprovalFailedStateImpl implements DisputeApprovalFailedState {
  const _$DisputeApprovalFailedStateImpl();

  @override
  String toString() {
    return 'DisputeNoteApprovalAndRejectState.disputeApprovalFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisputeApprovalFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DisputeApprovalRespModel? resp, bool? isApprove)
        disputeNoteApprovalOrRejectState,
    required TResult Function() disputeApprovalFailedState,
    required TResult Function() disputeApprovalLoadingState,
  }) {
    return disputeApprovalFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DisputeApprovalRespModel? resp, bool? isApprove)?
        disputeNoteApprovalOrRejectState,
    TResult? Function()? disputeApprovalFailedState,
    TResult? Function()? disputeApprovalLoadingState,
  }) {
    return disputeApprovalFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DisputeApprovalRespModel? resp, bool? isApprove)?
        disputeNoteApprovalOrRejectState,
    TResult Function()? disputeApprovalFailedState,
    TResult Function()? disputeApprovalLoadingState,
    required TResult orElse(),
  }) {
    if (disputeApprovalFailedState != null) {
      return disputeApprovalFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DisputeNoteApprovalOrRejectState value)
        disputeNoteApprovalOrRejectState,
    required TResult Function(DisputeApprovalFailedState value)
        disputeApprovalFailedState,
    required TResult Function(DisputeApprovalLoadingState value)
        disputeApprovalLoadingState,
  }) {
    return disputeApprovalFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DisputeNoteApprovalOrRejectState value)?
        disputeNoteApprovalOrRejectState,
    TResult? Function(DisputeApprovalFailedState value)?
        disputeApprovalFailedState,
    TResult? Function(DisputeApprovalLoadingState value)?
        disputeApprovalLoadingState,
  }) {
    return disputeApprovalFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DisputeNoteApprovalOrRejectState value)?
        disputeNoteApprovalOrRejectState,
    TResult Function(DisputeApprovalFailedState value)?
        disputeApprovalFailedState,
    TResult Function(DisputeApprovalLoadingState value)?
        disputeApprovalLoadingState,
    required TResult orElse(),
  }) {
    if (disputeApprovalFailedState != null) {
      return disputeApprovalFailedState(this);
    }
    return orElse();
  }
}

abstract class DisputeApprovalFailedState
    implements DisputeNoteApprovalAndRejectState {
  const factory DisputeApprovalFailedState() = _$DisputeApprovalFailedStateImpl;
}

/// @nodoc
abstract class _$$DisputeApprovalLoadingStateImplCopyWith<$Res> {
  factory _$$DisputeApprovalLoadingStateImplCopyWith(
          _$DisputeApprovalLoadingStateImpl value,
          $Res Function(_$DisputeApprovalLoadingStateImpl) then) =
      __$$DisputeApprovalLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisputeApprovalLoadingStateImplCopyWithImpl<$Res>
    extends _$DisputeNoteApprovalAndRejectStateCopyWithImpl<$Res,
        _$DisputeApprovalLoadingStateImpl>
    implements _$$DisputeApprovalLoadingStateImplCopyWith<$Res> {
  __$$DisputeApprovalLoadingStateImplCopyWithImpl(
      _$DisputeApprovalLoadingStateImpl _value,
      $Res Function(_$DisputeApprovalLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DisputeNoteApprovalAndRejectState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DisputeApprovalLoadingStateImpl implements DisputeApprovalLoadingState {
  const _$DisputeApprovalLoadingStateImpl();

  @override
  String toString() {
    return 'DisputeNoteApprovalAndRejectState.disputeApprovalLoadingState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisputeApprovalLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DisputeApprovalRespModel? resp, bool? isApprove)
        disputeNoteApprovalOrRejectState,
    required TResult Function() disputeApprovalFailedState,
    required TResult Function() disputeApprovalLoadingState,
  }) {
    return disputeApprovalLoadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DisputeApprovalRespModel? resp, bool? isApprove)?
        disputeNoteApprovalOrRejectState,
    TResult? Function()? disputeApprovalFailedState,
    TResult? Function()? disputeApprovalLoadingState,
  }) {
    return disputeApprovalLoadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DisputeApprovalRespModel? resp, bool? isApprove)?
        disputeNoteApprovalOrRejectState,
    TResult Function()? disputeApprovalFailedState,
    TResult Function()? disputeApprovalLoadingState,
    required TResult orElse(),
  }) {
    if (disputeApprovalLoadingState != null) {
      return disputeApprovalLoadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DisputeNoteApprovalOrRejectState value)
        disputeNoteApprovalOrRejectState,
    required TResult Function(DisputeApprovalFailedState value)
        disputeApprovalFailedState,
    required TResult Function(DisputeApprovalLoadingState value)
        disputeApprovalLoadingState,
  }) {
    return disputeApprovalLoadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DisputeNoteApprovalOrRejectState value)?
        disputeNoteApprovalOrRejectState,
    TResult? Function(DisputeApprovalFailedState value)?
        disputeApprovalFailedState,
    TResult? Function(DisputeApprovalLoadingState value)?
        disputeApprovalLoadingState,
  }) {
    return disputeApprovalLoadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DisputeNoteApprovalOrRejectState value)?
        disputeNoteApprovalOrRejectState,
    TResult Function(DisputeApprovalFailedState value)?
        disputeApprovalFailedState,
    TResult Function(DisputeApprovalLoadingState value)?
        disputeApprovalLoadingState,
    required TResult orElse(),
  }) {
    if (disputeApprovalLoadingState != null) {
      return disputeApprovalLoadingState(this);
    }
    return orElse();
  }
}

abstract class DisputeApprovalLoadingState
    implements DisputeNoteApprovalAndRejectState {
  const factory DisputeApprovalLoadingState() =
      _$DisputeApprovalLoadingStateImpl;
}
