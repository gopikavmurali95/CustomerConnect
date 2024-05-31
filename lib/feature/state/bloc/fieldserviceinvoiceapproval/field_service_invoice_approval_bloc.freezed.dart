// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'field_service_invoice_approval_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FieldServiceInvoiceApprovalEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String reqID, String userID)
        getFieldServiceInvoiceApproval,
    required TResult Function(String reqID, String userID) invoiceRejectEvent,
    required TResult Function() fieldServiceLoadingEvent,
    required TResult Function() clearFieldServiceInoiveApproval,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String reqID, String userID)?
        getFieldServiceInvoiceApproval,
    TResult? Function(String reqID, String userID)? invoiceRejectEvent,
    TResult? Function()? fieldServiceLoadingEvent,
    TResult? Function()? clearFieldServiceInoiveApproval,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String reqID, String userID)?
        getFieldServiceInvoiceApproval,
    TResult Function(String reqID, String userID)? invoiceRejectEvent,
    TResult Function()? fieldServiceLoadingEvent,
    TResult Function()? clearFieldServiceInoiveApproval,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFieldServiceInvoiceApprovalEvent value)
        getFieldServiceInvoiceApproval,
    required TResult Function(InvoiceRejectEvent value) invoiceRejectEvent,
    required TResult Function(FieldServiceInvoicLoadingEvent value)
        fieldServiceLoadingEvent,
    required TResult Function(ClearFieldServiceInoiveApproval value)
        clearFieldServiceInoiveApproval,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFieldServiceInvoiceApprovalEvent value)?
        getFieldServiceInvoiceApproval,
    TResult? Function(InvoiceRejectEvent value)? invoiceRejectEvent,
    TResult? Function(FieldServiceInvoicLoadingEvent value)?
        fieldServiceLoadingEvent,
    TResult? Function(ClearFieldServiceInoiveApproval value)?
        clearFieldServiceInoiveApproval,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFieldServiceInvoiceApprovalEvent value)?
        getFieldServiceInvoiceApproval,
    TResult Function(InvoiceRejectEvent value)? invoiceRejectEvent,
    TResult Function(FieldServiceInvoicLoadingEvent value)?
        fieldServiceLoadingEvent,
    TResult Function(ClearFieldServiceInoiveApproval value)?
        clearFieldServiceInoiveApproval,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldServiceInvoiceApprovalEventCopyWith<$Res> {
  factory $FieldServiceInvoiceApprovalEventCopyWith(
          FieldServiceInvoiceApprovalEvent value,
          $Res Function(FieldServiceInvoiceApprovalEvent) then) =
      _$FieldServiceInvoiceApprovalEventCopyWithImpl<$Res,
          FieldServiceInvoiceApprovalEvent>;
}

/// @nodoc
class _$FieldServiceInvoiceApprovalEventCopyWithImpl<$Res,
        $Val extends FieldServiceInvoiceApprovalEvent>
    implements $FieldServiceInvoiceApprovalEventCopyWith<$Res> {
  _$FieldServiceInvoiceApprovalEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetFieldServiceInvoiceApprovalEventImplCopyWith<$Res> {
  factory _$$GetFieldServiceInvoiceApprovalEventImplCopyWith(
          _$GetFieldServiceInvoiceApprovalEventImpl value,
          $Res Function(_$GetFieldServiceInvoiceApprovalEventImpl) then) =
      __$$GetFieldServiceInvoiceApprovalEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String reqID, String userID});
}

/// @nodoc
class __$$GetFieldServiceInvoiceApprovalEventImplCopyWithImpl<$Res>
    extends _$FieldServiceInvoiceApprovalEventCopyWithImpl<$Res,
        _$GetFieldServiceInvoiceApprovalEventImpl>
    implements _$$GetFieldServiceInvoiceApprovalEventImplCopyWith<$Res> {
  __$$GetFieldServiceInvoiceApprovalEventImplCopyWithImpl(
      _$GetFieldServiceInvoiceApprovalEventImpl _value,
      $Res Function(_$GetFieldServiceInvoiceApprovalEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reqID = null,
    Object? userID = null,
  }) {
    return _then(_$GetFieldServiceInvoiceApprovalEventImpl(
      reqID: null == reqID
          ? _value.reqID
          : reqID // ignore: cast_nullable_to_non_nullable
              as String,
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetFieldServiceInvoiceApprovalEventImpl
    implements GetFieldServiceInvoiceApprovalEvent {
  const _$GetFieldServiceInvoiceApprovalEventImpl(
      {required this.reqID, required this.userID});

  @override
  final String reqID;
  @override
  final String userID;

  @override
  String toString() {
    return 'FieldServiceInvoiceApprovalEvent.getFieldServiceInvoiceApproval(reqID: $reqID, userID: $userID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFieldServiceInvoiceApprovalEventImpl &&
            (identical(other.reqID, reqID) || other.reqID == reqID) &&
            (identical(other.userID, userID) || other.userID == userID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reqID, userID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFieldServiceInvoiceApprovalEventImplCopyWith<
          _$GetFieldServiceInvoiceApprovalEventImpl>
      get copyWith => __$$GetFieldServiceInvoiceApprovalEventImplCopyWithImpl<
          _$GetFieldServiceInvoiceApprovalEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String reqID, String userID)
        getFieldServiceInvoiceApproval,
    required TResult Function(String reqID, String userID) invoiceRejectEvent,
    required TResult Function() fieldServiceLoadingEvent,
    required TResult Function() clearFieldServiceInoiveApproval,
  }) {
    return getFieldServiceInvoiceApproval(reqID, userID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String reqID, String userID)?
        getFieldServiceInvoiceApproval,
    TResult? Function(String reqID, String userID)? invoiceRejectEvent,
    TResult? Function()? fieldServiceLoadingEvent,
    TResult? Function()? clearFieldServiceInoiveApproval,
  }) {
    return getFieldServiceInvoiceApproval?.call(reqID, userID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String reqID, String userID)?
        getFieldServiceInvoiceApproval,
    TResult Function(String reqID, String userID)? invoiceRejectEvent,
    TResult Function()? fieldServiceLoadingEvent,
    TResult Function()? clearFieldServiceInoiveApproval,
    required TResult orElse(),
  }) {
    if (getFieldServiceInvoiceApproval != null) {
      return getFieldServiceInvoiceApproval(reqID, userID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFieldServiceInvoiceApprovalEvent value)
        getFieldServiceInvoiceApproval,
    required TResult Function(InvoiceRejectEvent value) invoiceRejectEvent,
    required TResult Function(FieldServiceInvoicLoadingEvent value)
        fieldServiceLoadingEvent,
    required TResult Function(ClearFieldServiceInoiveApproval value)
        clearFieldServiceInoiveApproval,
  }) {
    return getFieldServiceInvoiceApproval(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFieldServiceInvoiceApprovalEvent value)?
        getFieldServiceInvoiceApproval,
    TResult? Function(InvoiceRejectEvent value)? invoiceRejectEvent,
    TResult? Function(FieldServiceInvoicLoadingEvent value)?
        fieldServiceLoadingEvent,
    TResult? Function(ClearFieldServiceInoiveApproval value)?
        clearFieldServiceInoiveApproval,
  }) {
    return getFieldServiceInvoiceApproval?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFieldServiceInvoiceApprovalEvent value)?
        getFieldServiceInvoiceApproval,
    TResult Function(InvoiceRejectEvent value)? invoiceRejectEvent,
    TResult Function(FieldServiceInvoicLoadingEvent value)?
        fieldServiceLoadingEvent,
    TResult Function(ClearFieldServiceInoiveApproval value)?
        clearFieldServiceInoiveApproval,
    required TResult orElse(),
  }) {
    if (getFieldServiceInvoiceApproval != null) {
      return getFieldServiceInvoiceApproval(this);
    }
    return orElse();
  }
}

abstract class GetFieldServiceInvoiceApprovalEvent
    implements FieldServiceInvoiceApprovalEvent {
  const factory GetFieldServiceInvoiceApprovalEvent(
          {required final String reqID, required final String userID}) =
      _$GetFieldServiceInvoiceApprovalEventImpl;

  String get reqID;
  String get userID;
  @JsonKey(ignore: true)
  _$$GetFieldServiceInvoiceApprovalEventImplCopyWith<
          _$GetFieldServiceInvoiceApprovalEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvoiceRejectEventImplCopyWith<$Res> {
  factory _$$InvoiceRejectEventImplCopyWith(_$InvoiceRejectEventImpl value,
          $Res Function(_$InvoiceRejectEventImpl) then) =
      __$$InvoiceRejectEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String reqID, String userID});
}

/// @nodoc
class __$$InvoiceRejectEventImplCopyWithImpl<$Res>
    extends _$FieldServiceInvoiceApprovalEventCopyWithImpl<$Res,
        _$InvoiceRejectEventImpl>
    implements _$$InvoiceRejectEventImplCopyWith<$Res> {
  __$$InvoiceRejectEventImplCopyWithImpl(_$InvoiceRejectEventImpl _value,
      $Res Function(_$InvoiceRejectEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reqID = null,
    Object? userID = null,
  }) {
    return _then(_$InvoiceRejectEventImpl(
      reqID: null == reqID
          ? _value.reqID
          : reqID // ignore: cast_nullable_to_non_nullable
              as String,
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvoiceRejectEventImpl implements InvoiceRejectEvent {
  const _$InvoiceRejectEventImpl({required this.reqID, required this.userID});

  @override
  final String reqID;
  @override
  final String userID;

  @override
  String toString() {
    return 'FieldServiceInvoiceApprovalEvent.invoiceRejectEvent(reqID: $reqID, userID: $userID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceRejectEventImpl &&
            (identical(other.reqID, reqID) || other.reqID == reqID) &&
            (identical(other.userID, userID) || other.userID == userID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reqID, userID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceRejectEventImplCopyWith<_$InvoiceRejectEventImpl> get copyWith =>
      __$$InvoiceRejectEventImplCopyWithImpl<_$InvoiceRejectEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String reqID, String userID)
        getFieldServiceInvoiceApproval,
    required TResult Function(String reqID, String userID) invoiceRejectEvent,
    required TResult Function() fieldServiceLoadingEvent,
    required TResult Function() clearFieldServiceInoiveApproval,
  }) {
    return invoiceRejectEvent(reqID, userID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String reqID, String userID)?
        getFieldServiceInvoiceApproval,
    TResult? Function(String reqID, String userID)? invoiceRejectEvent,
    TResult? Function()? fieldServiceLoadingEvent,
    TResult? Function()? clearFieldServiceInoiveApproval,
  }) {
    return invoiceRejectEvent?.call(reqID, userID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String reqID, String userID)?
        getFieldServiceInvoiceApproval,
    TResult Function(String reqID, String userID)? invoiceRejectEvent,
    TResult Function()? fieldServiceLoadingEvent,
    TResult Function()? clearFieldServiceInoiveApproval,
    required TResult orElse(),
  }) {
    if (invoiceRejectEvent != null) {
      return invoiceRejectEvent(reqID, userID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFieldServiceInvoiceApprovalEvent value)
        getFieldServiceInvoiceApproval,
    required TResult Function(InvoiceRejectEvent value) invoiceRejectEvent,
    required TResult Function(FieldServiceInvoicLoadingEvent value)
        fieldServiceLoadingEvent,
    required TResult Function(ClearFieldServiceInoiveApproval value)
        clearFieldServiceInoiveApproval,
  }) {
    return invoiceRejectEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFieldServiceInvoiceApprovalEvent value)?
        getFieldServiceInvoiceApproval,
    TResult? Function(InvoiceRejectEvent value)? invoiceRejectEvent,
    TResult? Function(FieldServiceInvoicLoadingEvent value)?
        fieldServiceLoadingEvent,
    TResult? Function(ClearFieldServiceInoiveApproval value)?
        clearFieldServiceInoiveApproval,
  }) {
    return invoiceRejectEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFieldServiceInvoiceApprovalEvent value)?
        getFieldServiceInvoiceApproval,
    TResult Function(InvoiceRejectEvent value)? invoiceRejectEvent,
    TResult Function(FieldServiceInvoicLoadingEvent value)?
        fieldServiceLoadingEvent,
    TResult Function(ClearFieldServiceInoiveApproval value)?
        clearFieldServiceInoiveApproval,
    required TResult orElse(),
  }) {
    if (invoiceRejectEvent != null) {
      return invoiceRejectEvent(this);
    }
    return orElse();
  }
}

abstract class InvoiceRejectEvent implements FieldServiceInvoiceApprovalEvent {
  const factory InvoiceRejectEvent(
      {required final String reqID,
      required final String userID}) = _$InvoiceRejectEventImpl;

  String get reqID;
  String get userID;
  @JsonKey(ignore: true)
  _$$InvoiceRejectEventImplCopyWith<_$InvoiceRejectEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FieldServiceInvoicLoadingEventImplCopyWith<$Res> {
  factory _$$FieldServiceInvoicLoadingEventImplCopyWith(
          _$FieldServiceInvoicLoadingEventImpl value,
          $Res Function(_$FieldServiceInvoicLoadingEventImpl) then) =
      __$$FieldServiceInvoicLoadingEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FieldServiceInvoicLoadingEventImplCopyWithImpl<$Res>
    extends _$FieldServiceInvoiceApprovalEventCopyWithImpl<$Res,
        _$FieldServiceInvoicLoadingEventImpl>
    implements _$$FieldServiceInvoicLoadingEventImplCopyWith<$Res> {
  __$$FieldServiceInvoicLoadingEventImplCopyWithImpl(
      _$FieldServiceInvoicLoadingEventImpl _value,
      $Res Function(_$FieldServiceInvoicLoadingEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FieldServiceInvoicLoadingEventImpl
    implements FieldServiceInvoicLoadingEvent {
  const _$FieldServiceInvoicLoadingEventImpl();

  @override
  String toString() {
    return 'FieldServiceInvoiceApprovalEvent.fieldServiceLoadingEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FieldServiceInvoicLoadingEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String reqID, String userID)
        getFieldServiceInvoiceApproval,
    required TResult Function(String reqID, String userID) invoiceRejectEvent,
    required TResult Function() fieldServiceLoadingEvent,
    required TResult Function() clearFieldServiceInoiveApproval,
  }) {
    return fieldServiceLoadingEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String reqID, String userID)?
        getFieldServiceInvoiceApproval,
    TResult? Function(String reqID, String userID)? invoiceRejectEvent,
    TResult? Function()? fieldServiceLoadingEvent,
    TResult? Function()? clearFieldServiceInoiveApproval,
  }) {
    return fieldServiceLoadingEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String reqID, String userID)?
        getFieldServiceInvoiceApproval,
    TResult Function(String reqID, String userID)? invoiceRejectEvent,
    TResult Function()? fieldServiceLoadingEvent,
    TResult Function()? clearFieldServiceInoiveApproval,
    required TResult orElse(),
  }) {
    if (fieldServiceLoadingEvent != null) {
      return fieldServiceLoadingEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFieldServiceInvoiceApprovalEvent value)
        getFieldServiceInvoiceApproval,
    required TResult Function(InvoiceRejectEvent value) invoiceRejectEvent,
    required TResult Function(FieldServiceInvoicLoadingEvent value)
        fieldServiceLoadingEvent,
    required TResult Function(ClearFieldServiceInoiveApproval value)
        clearFieldServiceInoiveApproval,
  }) {
    return fieldServiceLoadingEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFieldServiceInvoiceApprovalEvent value)?
        getFieldServiceInvoiceApproval,
    TResult? Function(InvoiceRejectEvent value)? invoiceRejectEvent,
    TResult? Function(FieldServiceInvoicLoadingEvent value)?
        fieldServiceLoadingEvent,
    TResult? Function(ClearFieldServiceInoiveApproval value)?
        clearFieldServiceInoiveApproval,
  }) {
    return fieldServiceLoadingEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFieldServiceInvoiceApprovalEvent value)?
        getFieldServiceInvoiceApproval,
    TResult Function(InvoiceRejectEvent value)? invoiceRejectEvent,
    TResult Function(FieldServiceInvoicLoadingEvent value)?
        fieldServiceLoadingEvent,
    TResult Function(ClearFieldServiceInoiveApproval value)?
        clearFieldServiceInoiveApproval,
    required TResult orElse(),
  }) {
    if (fieldServiceLoadingEvent != null) {
      return fieldServiceLoadingEvent(this);
    }
    return orElse();
  }
}

abstract class FieldServiceInvoicLoadingEvent
    implements FieldServiceInvoiceApprovalEvent {
  const factory FieldServiceInvoicLoadingEvent() =
      _$FieldServiceInvoicLoadingEventImpl;
}

/// @nodoc
abstract class _$$ClearFieldServiceInoiveApprovalImplCopyWith<$Res> {
  factory _$$ClearFieldServiceInoiveApprovalImplCopyWith(
          _$ClearFieldServiceInoiveApprovalImpl value,
          $Res Function(_$ClearFieldServiceInoiveApprovalImpl) then) =
      __$$ClearFieldServiceInoiveApprovalImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearFieldServiceInoiveApprovalImplCopyWithImpl<$Res>
    extends _$FieldServiceInvoiceApprovalEventCopyWithImpl<$Res,
        _$ClearFieldServiceInoiveApprovalImpl>
    implements _$$ClearFieldServiceInoiveApprovalImplCopyWith<$Res> {
  __$$ClearFieldServiceInoiveApprovalImplCopyWithImpl(
      _$ClearFieldServiceInoiveApprovalImpl _value,
      $Res Function(_$ClearFieldServiceInoiveApprovalImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearFieldServiceInoiveApprovalImpl
    implements ClearFieldServiceInoiveApproval {
  const _$ClearFieldServiceInoiveApprovalImpl();

  @override
  String toString() {
    return 'FieldServiceInvoiceApprovalEvent.clearFieldServiceInoiveApproval()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearFieldServiceInoiveApprovalImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String reqID, String userID)
        getFieldServiceInvoiceApproval,
    required TResult Function(String reqID, String userID) invoiceRejectEvent,
    required TResult Function() fieldServiceLoadingEvent,
    required TResult Function() clearFieldServiceInoiveApproval,
  }) {
    return clearFieldServiceInoiveApproval();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String reqID, String userID)?
        getFieldServiceInvoiceApproval,
    TResult? Function(String reqID, String userID)? invoiceRejectEvent,
    TResult? Function()? fieldServiceLoadingEvent,
    TResult? Function()? clearFieldServiceInoiveApproval,
  }) {
    return clearFieldServiceInoiveApproval?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String reqID, String userID)?
        getFieldServiceInvoiceApproval,
    TResult Function(String reqID, String userID)? invoiceRejectEvent,
    TResult Function()? fieldServiceLoadingEvent,
    TResult Function()? clearFieldServiceInoiveApproval,
    required TResult orElse(),
  }) {
    if (clearFieldServiceInoiveApproval != null) {
      return clearFieldServiceInoiveApproval();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFieldServiceInvoiceApprovalEvent value)
        getFieldServiceInvoiceApproval,
    required TResult Function(InvoiceRejectEvent value) invoiceRejectEvent,
    required TResult Function(FieldServiceInvoicLoadingEvent value)
        fieldServiceLoadingEvent,
    required TResult Function(ClearFieldServiceInoiveApproval value)
        clearFieldServiceInoiveApproval,
  }) {
    return clearFieldServiceInoiveApproval(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFieldServiceInvoiceApprovalEvent value)?
        getFieldServiceInvoiceApproval,
    TResult? Function(InvoiceRejectEvent value)? invoiceRejectEvent,
    TResult? Function(FieldServiceInvoicLoadingEvent value)?
        fieldServiceLoadingEvent,
    TResult? Function(ClearFieldServiceInoiveApproval value)?
        clearFieldServiceInoiveApproval,
  }) {
    return clearFieldServiceInoiveApproval?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFieldServiceInvoiceApprovalEvent value)?
        getFieldServiceInvoiceApproval,
    TResult Function(InvoiceRejectEvent value)? invoiceRejectEvent,
    TResult Function(FieldServiceInvoicLoadingEvent value)?
        fieldServiceLoadingEvent,
    TResult Function(ClearFieldServiceInoiveApproval value)?
        clearFieldServiceInoiveApproval,
    required TResult orElse(),
  }) {
    if (clearFieldServiceInoiveApproval != null) {
      return clearFieldServiceInoiveApproval(this);
    }
    return orElse();
  }
}

abstract class ClearFieldServiceInoiveApproval
    implements FieldServiceInvoiceApprovalEvent {
  const factory ClearFieldServiceInoiveApproval() =
      _$ClearFieldServiceInoiveApprovalImpl;
}

/// @nodoc
mixin _$FieldServiceInvoiceApprovalState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FieldServiceInvoiceApprovalModel? approval)
        getFieldServiceInvoiceApproval,
    required TResult Function() fieldServiceInvoiceApprovalFailed,
    required TResult Function() fieldServiceInvoiceLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FieldServiceInvoiceApprovalModel? approval)?
        getFieldServiceInvoiceApproval,
    TResult? Function()? fieldServiceInvoiceApprovalFailed,
    TResult? Function()? fieldServiceInvoiceLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FieldServiceInvoiceApprovalModel? approval)?
        getFieldServiceInvoiceApproval,
    TResult Function()? fieldServiceInvoiceApprovalFailed,
    TResult Function()? fieldServiceInvoiceLoadingState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFieldServiceInvoiceApprovalState value)
        getFieldServiceInvoiceApproval,
    required TResult Function(FieldServiceInvoiceApprovalFailed value)
        fieldServiceInvoiceApprovalFailed,
    required TResult Function(_FieldServiceInvoiceLoadingState value)
        fieldServiceInvoiceLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFieldServiceInvoiceApprovalState value)?
        getFieldServiceInvoiceApproval,
    TResult? Function(FieldServiceInvoiceApprovalFailed value)?
        fieldServiceInvoiceApprovalFailed,
    TResult? Function(_FieldServiceInvoiceLoadingState value)?
        fieldServiceInvoiceLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFieldServiceInvoiceApprovalState value)?
        getFieldServiceInvoiceApproval,
    TResult Function(FieldServiceInvoiceApprovalFailed value)?
        fieldServiceInvoiceApprovalFailed,
    TResult Function(_FieldServiceInvoiceLoadingState value)?
        fieldServiceInvoiceLoadingState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldServiceInvoiceApprovalStateCopyWith<$Res> {
  factory $FieldServiceInvoiceApprovalStateCopyWith(
          FieldServiceInvoiceApprovalState value,
          $Res Function(FieldServiceInvoiceApprovalState) then) =
      _$FieldServiceInvoiceApprovalStateCopyWithImpl<$Res,
          FieldServiceInvoiceApprovalState>;
}

/// @nodoc
class _$FieldServiceInvoiceApprovalStateCopyWithImpl<$Res,
        $Val extends FieldServiceInvoiceApprovalState>
    implements $FieldServiceInvoiceApprovalStateCopyWith<$Res> {
  _$FieldServiceInvoiceApprovalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetFieldServiceInvoiceApprovalStateImplCopyWith<$Res> {
  factory _$$GetFieldServiceInvoiceApprovalStateImplCopyWith(
          _$GetFieldServiceInvoiceApprovalStateImpl value,
          $Res Function(_$GetFieldServiceInvoiceApprovalStateImpl) then) =
      __$$GetFieldServiceInvoiceApprovalStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FieldServiceInvoiceApprovalModel? approval});
}

/// @nodoc
class __$$GetFieldServiceInvoiceApprovalStateImplCopyWithImpl<$Res>
    extends _$FieldServiceInvoiceApprovalStateCopyWithImpl<$Res,
        _$GetFieldServiceInvoiceApprovalStateImpl>
    implements _$$GetFieldServiceInvoiceApprovalStateImplCopyWith<$Res> {
  __$$GetFieldServiceInvoiceApprovalStateImplCopyWithImpl(
      _$GetFieldServiceInvoiceApprovalStateImpl _value,
      $Res Function(_$GetFieldServiceInvoiceApprovalStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? approval = freezed,
  }) {
    return _then(_$GetFieldServiceInvoiceApprovalStateImpl(
      approval: freezed == approval
          ? _value.approval
          : approval // ignore: cast_nullable_to_non_nullable
              as FieldServiceInvoiceApprovalModel?,
    ));
  }
}

/// @nodoc

class _$GetFieldServiceInvoiceApprovalStateImpl
    implements GetFieldServiceInvoiceApprovalState {
  const _$GetFieldServiceInvoiceApprovalStateImpl({required this.approval});

  @override
  final FieldServiceInvoiceApprovalModel? approval;

  @override
  String toString() {
    return 'FieldServiceInvoiceApprovalState.getFieldServiceInvoiceApproval(approval: $approval)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFieldServiceInvoiceApprovalStateImpl &&
            (identical(other.approval, approval) ||
                other.approval == approval));
  }

  @override
  int get hashCode => Object.hash(runtimeType, approval);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFieldServiceInvoiceApprovalStateImplCopyWith<
          _$GetFieldServiceInvoiceApprovalStateImpl>
      get copyWith => __$$GetFieldServiceInvoiceApprovalStateImplCopyWithImpl<
          _$GetFieldServiceInvoiceApprovalStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FieldServiceInvoiceApprovalModel? approval)
        getFieldServiceInvoiceApproval,
    required TResult Function() fieldServiceInvoiceApprovalFailed,
    required TResult Function() fieldServiceInvoiceLoadingState,
  }) {
    return getFieldServiceInvoiceApproval(approval);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FieldServiceInvoiceApprovalModel? approval)?
        getFieldServiceInvoiceApproval,
    TResult? Function()? fieldServiceInvoiceApprovalFailed,
    TResult? Function()? fieldServiceInvoiceLoadingState,
  }) {
    return getFieldServiceInvoiceApproval?.call(approval);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FieldServiceInvoiceApprovalModel? approval)?
        getFieldServiceInvoiceApproval,
    TResult Function()? fieldServiceInvoiceApprovalFailed,
    TResult Function()? fieldServiceInvoiceLoadingState,
    required TResult orElse(),
  }) {
    if (getFieldServiceInvoiceApproval != null) {
      return getFieldServiceInvoiceApproval(approval);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFieldServiceInvoiceApprovalState value)
        getFieldServiceInvoiceApproval,
    required TResult Function(FieldServiceInvoiceApprovalFailed value)
        fieldServiceInvoiceApprovalFailed,
    required TResult Function(_FieldServiceInvoiceLoadingState value)
        fieldServiceInvoiceLoadingState,
  }) {
    return getFieldServiceInvoiceApproval(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFieldServiceInvoiceApprovalState value)?
        getFieldServiceInvoiceApproval,
    TResult? Function(FieldServiceInvoiceApprovalFailed value)?
        fieldServiceInvoiceApprovalFailed,
    TResult? Function(_FieldServiceInvoiceLoadingState value)?
        fieldServiceInvoiceLoadingState,
  }) {
    return getFieldServiceInvoiceApproval?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFieldServiceInvoiceApprovalState value)?
        getFieldServiceInvoiceApproval,
    TResult Function(FieldServiceInvoiceApprovalFailed value)?
        fieldServiceInvoiceApprovalFailed,
    TResult Function(_FieldServiceInvoiceLoadingState value)?
        fieldServiceInvoiceLoadingState,
    required TResult orElse(),
  }) {
    if (getFieldServiceInvoiceApproval != null) {
      return getFieldServiceInvoiceApproval(this);
    }
    return orElse();
  }
}

abstract class GetFieldServiceInvoiceApprovalState
    implements FieldServiceInvoiceApprovalState {
  const factory GetFieldServiceInvoiceApprovalState(
          {required final FieldServiceInvoiceApprovalModel? approval}) =
      _$GetFieldServiceInvoiceApprovalStateImpl;

  FieldServiceInvoiceApprovalModel? get approval;
  @JsonKey(ignore: true)
  _$$GetFieldServiceInvoiceApprovalStateImplCopyWith<
          _$GetFieldServiceInvoiceApprovalStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FieldServiceInvoiceApprovalFailedImplCopyWith<$Res> {
  factory _$$FieldServiceInvoiceApprovalFailedImplCopyWith(
          _$FieldServiceInvoiceApprovalFailedImpl value,
          $Res Function(_$FieldServiceInvoiceApprovalFailedImpl) then) =
      __$$FieldServiceInvoiceApprovalFailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FieldServiceInvoiceApprovalFailedImplCopyWithImpl<$Res>
    extends _$FieldServiceInvoiceApprovalStateCopyWithImpl<$Res,
        _$FieldServiceInvoiceApprovalFailedImpl>
    implements _$$FieldServiceInvoiceApprovalFailedImplCopyWith<$Res> {
  __$$FieldServiceInvoiceApprovalFailedImplCopyWithImpl(
      _$FieldServiceInvoiceApprovalFailedImpl _value,
      $Res Function(_$FieldServiceInvoiceApprovalFailedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FieldServiceInvoiceApprovalFailedImpl
    implements FieldServiceInvoiceApprovalFailed {
  const _$FieldServiceInvoiceApprovalFailedImpl();

  @override
  String toString() {
    return 'FieldServiceInvoiceApprovalState.fieldServiceInvoiceApprovalFailed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FieldServiceInvoiceApprovalFailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FieldServiceInvoiceApprovalModel? approval)
        getFieldServiceInvoiceApproval,
    required TResult Function() fieldServiceInvoiceApprovalFailed,
    required TResult Function() fieldServiceInvoiceLoadingState,
  }) {
    return fieldServiceInvoiceApprovalFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FieldServiceInvoiceApprovalModel? approval)?
        getFieldServiceInvoiceApproval,
    TResult? Function()? fieldServiceInvoiceApprovalFailed,
    TResult? Function()? fieldServiceInvoiceLoadingState,
  }) {
    return fieldServiceInvoiceApprovalFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FieldServiceInvoiceApprovalModel? approval)?
        getFieldServiceInvoiceApproval,
    TResult Function()? fieldServiceInvoiceApprovalFailed,
    TResult Function()? fieldServiceInvoiceLoadingState,
    required TResult orElse(),
  }) {
    if (fieldServiceInvoiceApprovalFailed != null) {
      return fieldServiceInvoiceApprovalFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFieldServiceInvoiceApprovalState value)
        getFieldServiceInvoiceApproval,
    required TResult Function(FieldServiceInvoiceApprovalFailed value)
        fieldServiceInvoiceApprovalFailed,
    required TResult Function(_FieldServiceInvoiceLoadingState value)
        fieldServiceInvoiceLoadingState,
  }) {
    return fieldServiceInvoiceApprovalFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFieldServiceInvoiceApprovalState value)?
        getFieldServiceInvoiceApproval,
    TResult? Function(FieldServiceInvoiceApprovalFailed value)?
        fieldServiceInvoiceApprovalFailed,
    TResult? Function(_FieldServiceInvoiceLoadingState value)?
        fieldServiceInvoiceLoadingState,
  }) {
    return fieldServiceInvoiceApprovalFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFieldServiceInvoiceApprovalState value)?
        getFieldServiceInvoiceApproval,
    TResult Function(FieldServiceInvoiceApprovalFailed value)?
        fieldServiceInvoiceApprovalFailed,
    TResult Function(_FieldServiceInvoiceLoadingState value)?
        fieldServiceInvoiceLoadingState,
    required TResult orElse(),
  }) {
    if (fieldServiceInvoiceApprovalFailed != null) {
      return fieldServiceInvoiceApprovalFailed(this);
    }
    return orElse();
  }
}

abstract class FieldServiceInvoiceApprovalFailed
    implements FieldServiceInvoiceApprovalState {
  const factory FieldServiceInvoiceApprovalFailed() =
      _$FieldServiceInvoiceApprovalFailedImpl;
}

/// @nodoc
abstract class _$$FieldServiceInvoiceLoadingStateImplCopyWith<$Res> {
  factory _$$FieldServiceInvoiceLoadingStateImplCopyWith(
          _$FieldServiceInvoiceLoadingStateImpl value,
          $Res Function(_$FieldServiceInvoiceLoadingStateImpl) then) =
      __$$FieldServiceInvoiceLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FieldServiceInvoiceLoadingStateImplCopyWithImpl<$Res>
    extends _$FieldServiceInvoiceApprovalStateCopyWithImpl<$Res,
        _$FieldServiceInvoiceLoadingStateImpl>
    implements _$$FieldServiceInvoiceLoadingStateImplCopyWith<$Res> {
  __$$FieldServiceInvoiceLoadingStateImplCopyWithImpl(
      _$FieldServiceInvoiceLoadingStateImpl _value,
      $Res Function(_$FieldServiceInvoiceLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FieldServiceInvoiceLoadingStateImpl
    implements _FieldServiceInvoiceLoadingState {
  const _$FieldServiceInvoiceLoadingStateImpl();

  @override
  String toString() {
    return 'FieldServiceInvoiceApprovalState.fieldServiceInvoiceLoadingState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FieldServiceInvoiceLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(FieldServiceInvoiceApprovalModel? approval)
        getFieldServiceInvoiceApproval,
    required TResult Function() fieldServiceInvoiceApprovalFailed,
    required TResult Function() fieldServiceInvoiceLoadingState,
  }) {
    return fieldServiceInvoiceLoadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(FieldServiceInvoiceApprovalModel? approval)?
        getFieldServiceInvoiceApproval,
    TResult? Function()? fieldServiceInvoiceApprovalFailed,
    TResult? Function()? fieldServiceInvoiceLoadingState,
  }) {
    return fieldServiceInvoiceLoadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(FieldServiceInvoiceApprovalModel? approval)?
        getFieldServiceInvoiceApproval,
    TResult Function()? fieldServiceInvoiceApprovalFailed,
    TResult Function()? fieldServiceInvoiceLoadingState,
    required TResult orElse(),
  }) {
    if (fieldServiceInvoiceLoadingState != null) {
      return fieldServiceInvoiceLoadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFieldServiceInvoiceApprovalState value)
        getFieldServiceInvoiceApproval,
    required TResult Function(FieldServiceInvoiceApprovalFailed value)
        fieldServiceInvoiceApprovalFailed,
    required TResult Function(_FieldServiceInvoiceLoadingState value)
        fieldServiceInvoiceLoadingState,
  }) {
    return fieldServiceInvoiceLoadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFieldServiceInvoiceApprovalState value)?
        getFieldServiceInvoiceApproval,
    TResult? Function(FieldServiceInvoiceApprovalFailed value)?
        fieldServiceInvoiceApprovalFailed,
    TResult? Function(_FieldServiceInvoiceLoadingState value)?
        fieldServiceInvoiceLoadingState,
  }) {
    return fieldServiceInvoiceLoadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFieldServiceInvoiceApprovalState value)?
        getFieldServiceInvoiceApproval,
    TResult Function(FieldServiceInvoiceApprovalFailed value)?
        fieldServiceInvoiceApprovalFailed,
    TResult Function(_FieldServiceInvoiceLoadingState value)?
        fieldServiceInvoiceLoadingState,
    required TResult orElse(),
  }) {
    if (fieldServiceInvoiceLoadingState != null) {
      return fieldServiceInvoiceLoadingState(this);
    }
    return orElse();
  }
}

abstract class _FieldServiceInvoiceLoadingState
    implements FieldServiceInvoiceApprovalState {
  const factory _FieldServiceInvoiceLoadingState() =
      _$FieldServiceInvoiceLoadingStateImpl;
}
