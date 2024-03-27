// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_details_footer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InvoiceDetailsFooterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String iD) getInvoiceDetailsFooterEvent,
    required TResult Function() invoiceDetailsFooterFailedEvent,
    required TResult Function() clearInvoiceDetailsFooter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String iD)? getInvoiceDetailsFooterEvent,
    TResult? Function()? invoiceDetailsFooterFailedEvent,
    TResult? Function()? clearInvoiceDetailsFooter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String iD)? getInvoiceDetailsFooterEvent,
    TResult Function()? invoiceDetailsFooterFailedEvent,
    TResult Function()? clearInvoiceDetailsFooter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetInvoiceDetailsFooterEvent value)
        getInvoiceDetailsFooterEvent,
    required TResult Function(InvoiceDetailsFooterFailedEvent value)
        invoiceDetailsFooterFailedEvent,
    required TResult Function(ClearInvoiceDetailsFooter value)
        clearInvoiceDetailsFooter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetInvoiceDetailsFooterEvent value)?
        getInvoiceDetailsFooterEvent,
    TResult? Function(InvoiceDetailsFooterFailedEvent value)?
        invoiceDetailsFooterFailedEvent,
    TResult? Function(ClearInvoiceDetailsFooter value)?
        clearInvoiceDetailsFooter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetInvoiceDetailsFooterEvent value)?
        getInvoiceDetailsFooterEvent,
    TResult Function(InvoiceDetailsFooterFailedEvent value)?
        invoiceDetailsFooterFailedEvent,
    TResult Function(ClearInvoiceDetailsFooter value)?
        clearInvoiceDetailsFooter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceDetailsFooterEventCopyWith<$Res> {
  factory $InvoiceDetailsFooterEventCopyWith(InvoiceDetailsFooterEvent value,
          $Res Function(InvoiceDetailsFooterEvent) then) =
      _$InvoiceDetailsFooterEventCopyWithImpl<$Res, InvoiceDetailsFooterEvent>;
}

/// @nodoc
class _$InvoiceDetailsFooterEventCopyWithImpl<$Res,
        $Val extends InvoiceDetailsFooterEvent>
    implements $InvoiceDetailsFooterEventCopyWith<$Res> {
  _$InvoiceDetailsFooterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetInvoiceDetailsFooterEventImplCopyWith<$Res> {
  factory _$$GetInvoiceDetailsFooterEventImplCopyWith(
          _$GetInvoiceDetailsFooterEventImpl value,
          $Res Function(_$GetInvoiceDetailsFooterEventImpl) then) =
      __$$GetInvoiceDetailsFooterEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String iD});
}

/// @nodoc
class __$$GetInvoiceDetailsFooterEventImplCopyWithImpl<$Res>
    extends _$InvoiceDetailsFooterEventCopyWithImpl<$Res,
        _$GetInvoiceDetailsFooterEventImpl>
    implements _$$GetInvoiceDetailsFooterEventImplCopyWith<$Res> {
  __$$GetInvoiceDetailsFooterEventImplCopyWithImpl(
      _$GetInvoiceDetailsFooterEventImpl _value,
      $Res Function(_$GetInvoiceDetailsFooterEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iD = null,
  }) {
    return _then(_$GetInvoiceDetailsFooterEventImpl(
      iD: null == iD
          ? _value.iD
          : iD // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetInvoiceDetailsFooterEventImpl
    implements GetInvoiceDetailsFooterEvent {
  const _$GetInvoiceDetailsFooterEventImpl({required this.iD});

  @override
  final String iD;

  @override
  String toString() {
    return 'InvoiceDetailsFooterEvent.getInvoiceDetailsFooterEvent(iD: $iD)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetInvoiceDetailsFooterEventImpl &&
            (identical(other.iD, iD) || other.iD == iD));
  }

  @override
  int get hashCode => Object.hash(runtimeType, iD);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetInvoiceDetailsFooterEventImplCopyWith<
          _$GetInvoiceDetailsFooterEventImpl>
      get copyWith => __$$GetInvoiceDetailsFooterEventImplCopyWithImpl<
          _$GetInvoiceDetailsFooterEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String iD) getInvoiceDetailsFooterEvent,
    required TResult Function() invoiceDetailsFooterFailedEvent,
    required TResult Function() clearInvoiceDetailsFooter,
  }) {
    return getInvoiceDetailsFooterEvent(iD);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String iD)? getInvoiceDetailsFooterEvent,
    TResult? Function()? invoiceDetailsFooterFailedEvent,
    TResult? Function()? clearInvoiceDetailsFooter,
  }) {
    return getInvoiceDetailsFooterEvent?.call(iD);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String iD)? getInvoiceDetailsFooterEvent,
    TResult Function()? invoiceDetailsFooterFailedEvent,
    TResult Function()? clearInvoiceDetailsFooter,
    required TResult orElse(),
  }) {
    if (getInvoiceDetailsFooterEvent != null) {
      return getInvoiceDetailsFooterEvent(iD);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetInvoiceDetailsFooterEvent value)
        getInvoiceDetailsFooterEvent,
    required TResult Function(InvoiceDetailsFooterFailedEvent value)
        invoiceDetailsFooterFailedEvent,
    required TResult Function(ClearInvoiceDetailsFooter value)
        clearInvoiceDetailsFooter,
  }) {
    return getInvoiceDetailsFooterEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetInvoiceDetailsFooterEvent value)?
        getInvoiceDetailsFooterEvent,
    TResult? Function(InvoiceDetailsFooterFailedEvent value)?
        invoiceDetailsFooterFailedEvent,
    TResult? Function(ClearInvoiceDetailsFooter value)?
        clearInvoiceDetailsFooter,
  }) {
    return getInvoiceDetailsFooterEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetInvoiceDetailsFooterEvent value)?
        getInvoiceDetailsFooterEvent,
    TResult Function(InvoiceDetailsFooterFailedEvent value)?
        invoiceDetailsFooterFailedEvent,
    TResult Function(ClearInvoiceDetailsFooter value)?
        clearInvoiceDetailsFooter,
    required TResult orElse(),
  }) {
    if (getInvoiceDetailsFooterEvent != null) {
      return getInvoiceDetailsFooterEvent(this);
    }
    return orElse();
  }
}

abstract class GetInvoiceDetailsFooterEvent
    implements InvoiceDetailsFooterEvent {
  const factory GetInvoiceDetailsFooterEvent({required final String iD}) =
      _$GetInvoiceDetailsFooterEventImpl;

  String get iD;
  @JsonKey(ignore: true)
  _$$GetInvoiceDetailsFooterEventImplCopyWith<
          _$GetInvoiceDetailsFooterEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvoiceDetailsFooterFailedEventImplCopyWith<$Res> {
  factory _$$InvoiceDetailsFooterFailedEventImplCopyWith(
          _$InvoiceDetailsFooterFailedEventImpl value,
          $Res Function(_$InvoiceDetailsFooterFailedEventImpl) then) =
      __$$InvoiceDetailsFooterFailedEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvoiceDetailsFooterFailedEventImplCopyWithImpl<$Res>
    extends _$InvoiceDetailsFooterEventCopyWithImpl<$Res,
        _$InvoiceDetailsFooterFailedEventImpl>
    implements _$$InvoiceDetailsFooterFailedEventImplCopyWith<$Res> {
  __$$InvoiceDetailsFooterFailedEventImplCopyWithImpl(
      _$InvoiceDetailsFooterFailedEventImpl _value,
      $Res Function(_$InvoiceDetailsFooterFailedEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InvoiceDetailsFooterFailedEventImpl
    implements InvoiceDetailsFooterFailedEvent {
  const _$InvoiceDetailsFooterFailedEventImpl();

  @override
  String toString() {
    return 'InvoiceDetailsFooterEvent.invoiceDetailsFooterFailedEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceDetailsFooterFailedEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String iD) getInvoiceDetailsFooterEvent,
    required TResult Function() invoiceDetailsFooterFailedEvent,
    required TResult Function() clearInvoiceDetailsFooter,
  }) {
    return invoiceDetailsFooterFailedEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String iD)? getInvoiceDetailsFooterEvent,
    TResult? Function()? invoiceDetailsFooterFailedEvent,
    TResult? Function()? clearInvoiceDetailsFooter,
  }) {
    return invoiceDetailsFooterFailedEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String iD)? getInvoiceDetailsFooterEvent,
    TResult Function()? invoiceDetailsFooterFailedEvent,
    TResult Function()? clearInvoiceDetailsFooter,
    required TResult orElse(),
  }) {
    if (invoiceDetailsFooterFailedEvent != null) {
      return invoiceDetailsFooterFailedEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetInvoiceDetailsFooterEvent value)
        getInvoiceDetailsFooterEvent,
    required TResult Function(InvoiceDetailsFooterFailedEvent value)
        invoiceDetailsFooterFailedEvent,
    required TResult Function(ClearInvoiceDetailsFooter value)
        clearInvoiceDetailsFooter,
  }) {
    return invoiceDetailsFooterFailedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetInvoiceDetailsFooterEvent value)?
        getInvoiceDetailsFooterEvent,
    TResult? Function(InvoiceDetailsFooterFailedEvent value)?
        invoiceDetailsFooterFailedEvent,
    TResult? Function(ClearInvoiceDetailsFooter value)?
        clearInvoiceDetailsFooter,
  }) {
    return invoiceDetailsFooterFailedEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetInvoiceDetailsFooterEvent value)?
        getInvoiceDetailsFooterEvent,
    TResult Function(InvoiceDetailsFooterFailedEvent value)?
        invoiceDetailsFooterFailedEvent,
    TResult Function(ClearInvoiceDetailsFooter value)?
        clearInvoiceDetailsFooter,
    required TResult orElse(),
  }) {
    if (invoiceDetailsFooterFailedEvent != null) {
      return invoiceDetailsFooterFailedEvent(this);
    }
    return orElse();
  }
}

abstract class InvoiceDetailsFooterFailedEvent
    implements InvoiceDetailsFooterEvent {
  const factory InvoiceDetailsFooterFailedEvent() =
      _$InvoiceDetailsFooterFailedEventImpl;
}

/// @nodoc
abstract class _$$ClearInvoiceDetailsFooterImplCopyWith<$Res> {
  factory _$$ClearInvoiceDetailsFooterImplCopyWith(
          _$ClearInvoiceDetailsFooterImpl value,
          $Res Function(_$ClearInvoiceDetailsFooterImpl) then) =
      __$$ClearInvoiceDetailsFooterImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearInvoiceDetailsFooterImplCopyWithImpl<$Res>
    extends _$InvoiceDetailsFooterEventCopyWithImpl<$Res,
        _$ClearInvoiceDetailsFooterImpl>
    implements _$$ClearInvoiceDetailsFooterImplCopyWith<$Res> {
  __$$ClearInvoiceDetailsFooterImplCopyWithImpl(
      _$ClearInvoiceDetailsFooterImpl _value,
      $Res Function(_$ClearInvoiceDetailsFooterImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearInvoiceDetailsFooterImpl implements ClearInvoiceDetailsFooter {
  const _$ClearInvoiceDetailsFooterImpl();

  @override
  String toString() {
    return 'InvoiceDetailsFooterEvent.clearInvoiceDetailsFooter()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearInvoiceDetailsFooterImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String iD) getInvoiceDetailsFooterEvent,
    required TResult Function() invoiceDetailsFooterFailedEvent,
    required TResult Function() clearInvoiceDetailsFooter,
  }) {
    return clearInvoiceDetailsFooter();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String iD)? getInvoiceDetailsFooterEvent,
    TResult? Function()? invoiceDetailsFooterFailedEvent,
    TResult? Function()? clearInvoiceDetailsFooter,
  }) {
    return clearInvoiceDetailsFooter?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String iD)? getInvoiceDetailsFooterEvent,
    TResult Function()? invoiceDetailsFooterFailedEvent,
    TResult Function()? clearInvoiceDetailsFooter,
    required TResult orElse(),
  }) {
    if (clearInvoiceDetailsFooter != null) {
      return clearInvoiceDetailsFooter();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetInvoiceDetailsFooterEvent value)
        getInvoiceDetailsFooterEvent,
    required TResult Function(InvoiceDetailsFooterFailedEvent value)
        invoiceDetailsFooterFailedEvent,
    required TResult Function(ClearInvoiceDetailsFooter value)
        clearInvoiceDetailsFooter,
  }) {
    return clearInvoiceDetailsFooter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetInvoiceDetailsFooterEvent value)?
        getInvoiceDetailsFooterEvent,
    TResult? Function(InvoiceDetailsFooterFailedEvent value)?
        invoiceDetailsFooterFailedEvent,
    TResult? Function(ClearInvoiceDetailsFooter value)?
        clearInvoiceDetailsFooter,
  }) {
    return clearInvoiceDetailsFooter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetInvoiceDetailsFooterEvent value)?
        getInvoiceDetailsFooterEvent,
    TResult Function(InvoiceDetailsFooterFailedEvent value)?
        invoiceDetailsFooterFailedEvent,
    TResult Function(ClearInvoiceDetailsFooter value)?
        clearInvoiceDetailsFooter,
    required TResult orElse(),
  }) {
    if (clearInvoiceDetailsFooter != null) {
      return clearInvoiceDetailsFooter(this);
    }
    return orElse();
  }
}

abstract class ClearInvoiceDetailsFooter implements InvoiceDetailsFooterEvent {
  const factory ClearInvoiceDetailsFooter() = _$ClearInvoiceDetailsFooterImpl;
}

/// @nodoc
mixin _$InvoiceDetailsFooterState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<InvoiceDetailsFooterModel>? invfooter)
        getTypeWiseInvoice,
    required TResult Function() typeWiseInvoiceFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<InvoiceDetailsFooterModel>? invfooter)?
        getTypeWiseInvoice,
    TResult? Function()? typeWiseInvoiceFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<InvoiceDetailsFooterModel>? invfooter)?
        getTypeWiseInvoice,
    TResult Function()? typeWiseInvoiceFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTypeWiseInvoiceState value) getTypeWiseInvoice,
    required TResult Function(TypeWiseInvoiceFailedState value)
        typeWiseInvoiceFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTypeWiseInvoiceState value)? getTypeWiseInvoice,
    TResult? Function(TypeWiseInvoiceFailedState value)?
        typeWiseInvoiceFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTypeWiseInvoiceState value)? getTypeWiseInvoice,
    TResult Function(TypeWiseInvoiceFailedState value)?
        typeWiseInvoiceFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceDetailsFooterStateCopyWith<$Res> {
  factory $InvoiceDetailsFooterStateCopyWith(InvoiceDetailsFooterState value,
          $Res Function(InvoiceDetailsFooterState) then) =
      _$InvoiceDetailsFooterStateCopyWithImpl<$Res, InvoiceDetailsFooterState>;
}

/// @nodoc
class _$InvoiceDetailsFooterStateCopyWithImpl<$Res,
        $Val extends InvoiceDetailsFooterState>
    implements $InvoiceDetailsFooterStateCopyWith<$Res> {
  _$InvoiceDetailsFooterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetTypeWiseInvoiceStateImplCopyWith<$Res> {
  factory _$$GetTypeWiseInvoiceStateImplCopyWith(
          _$GetTypeWiseInvoiceStateImpl value,
          $Res Function(_$GetTypeWiseInvoiceStateImpl) then) =
      __$$GetTypeWiseInvoiceStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<InvoiceDetailsFooterModel>? invfooter});
}

/// @nodoc
class __$$GetTypeWiseInvoiceStateImplCopyWithImpl<$Res>
    extends _$InvoiceDetailsFooterStateCopyWithImpl<$Res,
        _$GetTypeWiseInvoiceStateImpl>
    implements _$$GetTypeWiseInvoiceStateImplCopyWith<$Res> {
  __$$GetTypeWiseInvoiceStateImplCopyWithImpl(
      _$GetTypeWiseInvoiceStateImpl _value,
      $Res Function(_$GetTypeWiseInvoiceStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invfooter = freezed,
  }) {
    return _then(_$GetTypeWiseInvoiceStateImpl(
      invfooter: freezed == invfooter
          ? _value._invfooter
          : invfooter // ignore: cast_nullable_to_non_nullable
              as List<InvoiceDetailsFooterModel>?,
    ));
  }
}

/// @nodoc

class _$GetTypeWiseInvoiceStateImpl implements GetTypeWiseInvoiceState {
  const _$GetTypeWiseInvoiceStateImpl(
      {required final List<InvoiceDetailsFooterModel>? invfooter})
      : _invfooter = invfooter;

  final List<InvoiceDetailsFooterModel>? _invfooter;
  @override
  List<InvoiceDetailsFooterModel>? get invfooter {
    final value = _invfooter;
    if (value == null) return null;
    if (_invfooter is EqualUnmodifiableListView) return _invfooter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'InvoiceDetailsFooterState.getTypeWiseInvoice(invfooter: $invfooter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTypeWiseInvoiceStateImpl &&
            const DeepCollectionEquality()
                .equals(other._invfooter, _invfooter));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_invfooter));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTypeWiseInvoiceStateImplCopyWith<_$GetTypeWiseInvoiceStateImpl>
      get copyWith => __$$GetTypeWiseInvoiceStateImplCopyWithImpl<
          _$GetTypeWiseInvoiceStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<InvoiceDetailsFooterModel>? invfooter)
        getTypeWiseInvoice,
    required TResult Function() typeWiseInvoiceFailedState,
  }) {
    return getTypeWiseInvoice(invfooter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<InvoiceDetailsFooterModel>? invfooter)?
        getTypeWiseInvoice,
    TResult? Function()? typeWiseInvoiceFailedState,
  }) {
    return getTypeWiseInvoice?.call(invfooter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<InvoiceDetailsFooterModel>? invfooter)?
        getTypeWiseInvoice,
    TResult Function()? typeWiseInvoiceFailedState,
    required TResult orElse(),
  }) {
    if (getTypeWiseInvoice != null) {
      return getTypeWiseInvoice(invfooter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTypeWiseInvoiceState value) getTypeWiseInvoice,
    required TResult Function(TypeWiseInvoiceFailedState value)
        typeWiseInvoiceFailedState,
  }) {
    return getTypeWiseInvoice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTypeWiseInvoiceState value)? getTypeWiseInvoice,
    TResult? Function(TypeWiseInvoiceFailedState value)?
        typeWiseInvoiceFailedState,
  }) {
    return getTypeWiseInvoice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTypeWiseInvoiceState value)? getTypeWiseInvoice,
    TResult Function(TypeWiseInvoiceFailedState value)?
        typeWiseInvoiceFailedState,
    required TResult orElse(),
  }) {
    if (getTypeWiseInvoice != null) {
      return getTypeWiseInvoice(this);
    }
    return orElse();
  }
}

abstract class GetTypeWiseInvoiceState implements InvoiceDetailsFooterState {
  const factory GetTypeWiseInvoiceState(
          {required final List<InvoiceDetailsFooterModel>? invfooter}) =
      _$GetTypeWiseInvoiceStateImpl;

  List<InvoiceDetailsFooterModel>? get invfooter;
  @JsonKey(ignore: true)
  _$$GetTypeWiseInvoiceStateImplCopyWith<_$GetTypeWiseInvoiceStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TypeWiseInvoiceFailedStateImplCopyWith<$Res> {
  factory _$$TypeWiseInvoiceFailedStateImplCopyWith(
          _$TypeWiseInvoiceFailedStateImpl value,
          $Res Function(_$TypeWiseInvoiceFailedStateImpl) then) =
      __$$TypeWiseInvoiceFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TypeWiseInvoiceFailedStateImplCopyWithImpl<$Res>
    extends _$InvoiceDetailsFooterStateCopyWithImpl<$Res,
        _$TypeWiseInvoiceFailedStateImpl>
    implements _$$TypeWiseInvoiceFailedStateImplCopyWith<$Res> {
  __$$TypeWiseInvoiceFailedStateImplCopyWithImpl(
      _$TypeWiseInvoiceFailedStateImpl _value,
      $Res Function(_$TypeWiseInvoiceFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TypeWiseInvoiceFailedStateImpl implements TypeWiseInvoiceFailedState {
  const _$TypeWiseInvoiceFailedStateImpl();

  @override
  String toString() {
    return 'InvoiceDetailsFooterState.typeWiseInvoiceFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypeWiseInvoiceFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<InvoiceDetailsFooterModel>? invfooter)
        getTypeWiseInvoice,
    required TResult Function() typeWiseInvoiceFailedState,
  }) {
    return typeWiseInvoiceFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<InvoiceDetailsFooterModel>? invfooter)?
        getTypeWiseInvoice,
    TResult? Function()? typeWiseInvoiceFailedState,
  }) {
    return typeWiseInvoiceFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<InvoiceDetailsFooterModel>? invfooter)?
        getTypeWiseInvoice,
    TResult Function()? typeWiseInvoiceFailedState,
    required TResult orElse(),
  }) {
    if (typeWiseInvoiceFailedState != null) {
      return typeWiseInvoiceFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTypeWiseInvoiceState value) getTypeWiseInvoice,
    required TResult Function(TypeWiseInvoiceFailedState value)
        typeWiseInvoiceFailedState,
  }) {
    return typeWiseInvoiceFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTypeWiseInvoiceState value)? getTypeWiseInvoice,
    TResult? Function(TypeWiseInvoiceFailedState value)?
        typeWiseInvoiceFailedState,
  }) {
    return typeWiseInvoiceFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTypeWiseInvoiceState value)? getTypeWiseInvoice,
    TResult Function(TypeWiseInvoiceFailedState value)?
        typeWiseInvoiceFailedState,
    required TResult orElse(),
  }) {
    if (typeWiseInvoiceFailedState != null) {
      return typeWiseInvoiceFailedState(this);
    }
    return orElse();
  }
}

abstract class TypeWiseInvoiceFailedState implements InvoiceDetailsFooterState {
  const factory TypeWiseInvoiceFailedState() = _$TypeWiseInvoiceFailedStateImpl;
}
