// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_header_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InvoiceHeaderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InvoiceHeaderInparas invheaderin)
        invoiceHeaderSuccessEvent,
    required TResult Function() invoiceHeaderFailedEvent,
    required TResult Function() clearInvoiceHeader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InvoiceHeaderInparas invheaderin)?
        invoiceHeaderSuccessEvent,
    TResult? Function()? invoiceHeaderFailedEvent,
    TResult? Function()? clearInvoiceHeader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InvoiceHeaderInparas invheaderin)?
        invoiceHeaderSuccessEvent,
    TResult Function()? invoiceHeaderFailedEvent,
    TResult Function()? clearInvoiceHeader,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvoiceHeaderSuccessEvent value)
        invoiceHeaderSuccessEvent,
    required TResult Function(InvoiceHeaderFailedEvent value)
        invoiceHeaderFailedEvent,
    required TResult Function(ClearInvoiceHeader value) clearInvoiceHeader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvoiceHeaderSuccessEvent value)?
        invoiceHeaderSuccessEvent,
    TResult? Function(InvoiceHeaderFailedEvent value)? invoiceHeaderFailedEvent,
    TResult? Function(ClearInvoiceHeader value)? clearInvoiceHeader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvoiceHeaderSuccessEvent value)?
        invoiceHeaderSuccessEvent,
    TResult Function(InvoiceHeaderFailedEvent value)? invoiceHeaderFailedEvent,
    TResult Function(ClearInvoiceHeader value)? clearInvoiceHeader,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceHeaderEventCopyWith<$Res> {
  factory $InvoiceHeaderEventCopyWith(
          InvoiceHeaderEvent value, $Res Function(InvoiceHeaderEvent) then) =
      _$InvoiceHeaderEventCopyWithImpl<$Res, InvoiceHeaderEvent>;
}

/// @nodoc
class _$InvoiceHeaderEventCopyWithImpl<$Res, $Val extends InvoiceHeaderEvent>
    implements $InvoiceHeaderEventCopyWith<$Res> {
  _$InvoiceHeaderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InvoiceHeaderSuccessEventImplCopyWith<$Res> {
  factory _$$InvoiceHeaderSuccessEventImplCopyWith(
          _$InvoiceHeaderSuccessEventImpl value,
          $Res Function(_$InvoiceHeaderSuccessEventImpl) then) =
      __$$InvoiceHeaderSuccessEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({InvoiceHeaderInparas invheaderin});
}

/// @nodoc
class __$$InvoiceHeaderSuccessEventImplCopyWithImpl<$Res>
    extends _$InvoiceHeaderEventCopyWithImpl<$Res,
        _$InvoiceHeaderSuccessEventImpl>
    implements _$$InvoiceHeaderSuccessEventImplCopyWith<$Res> {
  __$$InvoiceHeaderSuccessEventImplCopyWithImpl(
      _$InvoiceHeaderSuccessEventImpl _value,
      $Res Function(_$InvoiceHeaderSuccessEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invheaderin = null,
  }) {
    return _then(_$InvoiceHeaderSuccessEventImpl(
      invheaderin: null == invheaderin
          ? _value.invheaderin
          : invheaderin // ignore: cast_nullable_to_non_nullable
              as InvoiceHeaderInparas,
    ));
  }
}

/// @nodoc

class _$InvoiceHeaderSuccessEventImpl implements InvoiceHeaderSuccessEvent {
  const _$InvoiceHeaderSuccessEventImpl({required this.invheaderin});

  @override
  final InvoiceHeaderInparas invheaderin;

  @override
  String toString() {
    return 'InvoiceHeaderEvent.invoiceHeaderSuccessEvent(invheaderin: $invheaderin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceHeaderSuccessEventImpl &&
            (identical(other.invheaderin, invheaderin) ||
                other.invheaderin == invheaderin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, invheaderin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceHeaderSuccessEventImplCopyWith<_$InvoiceHeaderSuccessEventImpl>
      get copyWith => __$$InvoiceHeaderSuccessEventImplCopyWithImpl<
          _$InvoiceHeaderSuccessEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InvoiceHeaderInparas invheaderin)
        invoiceHeaderSuccessEvent,
    required TResult Function() invoiceHeaderFailedEvent,
    required TResult Function() clearInvoiceHeader,
  }) {
    return invoiceHeaderSuccessEvent(invheaderin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InvoiceHeaderInparas invheaderin)?
        invoiceHeaderSuccessEvent,
    TResult? Function()? invoiceHeaderFailedEvent,
    TResult? Function()? clearInvoiceHeader,
  }) {
    return invoiceHeaderSuccessEvent?.call(invheaderin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InvoiceHeaderInparas invheaderin)?
        invoiceHeaderSuccessEvent,
    TResult Function()? invoiceHeaderFailedEvent,
    TResult Function()? clearInvoiceHeader,
    required TResult orElse(),
  }) {
    if (invoiceHeaderSuccessEvent != null) {
      return invoiceHeaderSuccessEvent(invheaderin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvoiceHeaderSuccessEvent value)
        invoiceHeaderSuccessEvent,
    required TResult Function(InvoiceHeaderFailedEvent value)
        invoiceHeaderFailedEvent,
    required TResult Function(ClearInvoiceHeader value) clearInvoiceHeader,
  }) {
    return invoiceHeaderSuccessEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvoiceHeaderSuccessEvent value)?
        invoiceHeaderSuccessEvent,
    TResult? Function(InvoiceHeaderFailedEvent value)? invoiceHeaderFailedEvent,
    TResult? Function(ClearInvoiceHeader value)? clearInvoiceHeader,
  }) {
    return invoiceHeaderSuccessEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvoiceHeaderSuccessEvent value)?
        invoiceHeaderSuccessEvent,
    TResult Function(InvoiceHeaderFailedEvent value)? invoiceHeaderFailedEvent,
    TResult Function(ClearInvoiceHeader value)? clearInvoiceHeader,
    required TResult orElse(),
  }) {
    if (invoiceHeaderSuccessEvent != null) {
      return invoiceHeaderSuccessEvent(this);
    }
    return orElse();
  }
}

abstract class InvoiceHeaderSuccessEvent implements InvoiceHeaderEvent {
  const factory InvoiceHeaderSuccessEvent(
          {required final InvoiceHeaderInparas invheaderin}) =
      _$InvoiceHeaderSuccessEventImpl;

  InvoiceHeaderInparas get invheaderin;
  @JsonKey(ignore: true)
  _$$InvoiceHeaderSuccessEventImplCopyWith<_$InvoiceHeaderSuccessEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvoiceHeaderFailedEventImplCopyWith<$Res> {
  factory _$$InvoiceHeaderFailedEventImplCopyWith(
          _$InvoiceHeaderFailedEventImpl value,
          $Res Function(_$InvoiceHeaderFailedEventImpl) then) =
      __$$InvoiceHeaderFailedEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvoiceHeaderFailedEventImplCopyWithImpl<$Res>
    extends _$InvoiceHeaderEventCopyWithImpl<$Res,
        _$InvoiceHeaderFailedEventImpl>
    implements _$$InvoiceHeaderFailedEventImplCopyWith<$Res> {
  __$$InvoiceHeaderFailedEventImplCopyWithImpl(
      _$InvoiceHeaderFailedEventImpl _value,
      $Res Function(_$InvoiceHeaderFailedEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InvoiceHeaderFailedEventImpl implements InvoiceHeaderFailedEvent {
  const _$InvoiceHeaderFailedEventImpl();

  @override
  String toString() {
    return 'InvoiceHeaderEvent.invoiceHeaderFailedEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceHeaderFailedEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InvoiceHeaderInparas invheaderin)
        invoiceHeaderSuccessEvent,
    required TResult Function() invoiceHeaderFailedEvent,
    required TResult Function() clearInvoiceHeader,
  }) {
    return invoiceHeaderFailedEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InvoiceHeaderInparas invheaderin)?
        invoiceHeaderSuccessEvent,
    TResult? Function()? invoiceHeaderFailedEvent,
    TResult? Function()? clearInvoiceHeader,
  }) {
    return invoiceHeaderFailedEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InvoiceHeaderInparas invheaderin)?
        invoiceHeaderSuccessEvent,
    TResult Function()? invoiceHeaderFailedEvent,
    TResult Function()? clearInvoiceHeader,
    required TResult orElse(),
  }) {
    if (invoiceHeaderFailedEvent != null) {
      return invoiceHeaderFailedEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvoiceHeaderSuccessEvent value)
        invoiceHeaderSuccessEvent,
    required TResult Function(InvoiceHeaderFailedEvent value)
        invoiceHeaderFailedEvent,
    required TResult Function(ClearInvoiceHeader value) clearInvoiceHeader,
  }) {
    return invoiceHeaderFailedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvoiceHeaderSuccessEvent value)?
        invoiceHeaderSuccessEvent,
    TResult? Function(InvoiceHeaderFailedEvent value)? invoiceHeaderFailedEvent,
    TResult? Function(ClearInvoiceHeader value)? clearInvoiceHeader,
  }) {
    return invoiceHeaderFailedEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvoiceHeaderSuccessEvent value)?
        invoiceHeaderSuccessEvent,
    TResult Function(InvoiceHeaderFailedEvent value)? invoiceHeaderFailedEvent,
    TResult Function(ClearInvoiceHeader value)? clearInvoiceHeader,
    required TResult orElse(),
  }) {
    if (invoiceHeaderFailedEvent != null) {
      return invoiceHeaderFailedEvent(this);
    }
    return orElse();
  }
}

abstract class InvoiceHeaderFailedEvent implements InvoiceHeaderEvent {
  const factory InvoiceHeaderFailedEvent() = _$InvoiceHeaderFailedEventImpl;
}

/// @nodoc
abstract class _$$ClearInvoiceHeaderImplCopyWith<$Res> {
  factory _$$ClearInvoiceHeaderImplCopyWith(_$ClearInvoiceHeaderImpl value,
          $Res Function(_$ClearInvoiceHeaderImpl) then) =
      __$$ClearInvoiceHeaderImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearInvoiceHeaderImplCopyWithImpl<$Res>
    extends _$InvoiceHeaderEventCopyWithImpl<$Res, _$ClearInvoiceHeaderImpl>
    implements _$$ClearInvoiceHeaderImplCopyWith<$Res> {
  __$$ClearInvoiceHeaderImplCopyWithImpl(_$ClearInvoiceHeaderImpl _value,
      $Res Function(_$ClearInvoiceHeaderImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearInvoiceHeaderImpl implements ClearInvoiceHeader {
  const _$ClearInvoiceHeaderImpl();

  @override
  String toString() {
    return 'InvoiceHeaderEvent.clearInvoiceHeader()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearInvoiceHeaderImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(InvoiceHeaderInparas invheaderin)
        invoiceHeaderSuccessEvent,
    required TResult Function() invoiceHeaderFailedEvent,
    required TResult Function() clearInvoiceHeader,
  }) {
    return clearInvoiceHeader();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(InvoiceHeaderInparas invheaderin)?
        invoiceHeaderSuccessEvent,
    TResult? Function()? invoiceHeaderFailedEvent,
    TResult? Function()? clearInvoiceHeader,
  }) {
    return clearInvoiceHeader?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(InvoiceHeaderInparas invheaderin)?
        invoiceHeaderSuccessEvent,
    TResult Function()? invoiceHeaderFailedEvent,
    TResult Function()? clearInvoiceHeader,
    required TResult orElse(),
  }) {
    if (clearInvoiceHeader != null) {
      return clearInvoiceHeader();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvoiceHeaderSuccessEvent value)
        invoiceHeaderSuccessEvent,
    required TResult Function(InvoiceHeaderFailedEvent value)
        invoiceHeaderFailedEvent,
    required TResult Function(ClearInvoiceHeader value) clearInvoiceHeader,
  }) {
    return clearInvoiceHeader(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvoiceHeaderSuccessEvent value)?
        invoiceHeaderSuccessEvent,
    TResult? Function(InvoiceHeaderFailedEvent value)? invoiceHeaderFailedEvent,
    TResult? Function(ClearInvoiceHeader value)? clearInvoiceHeader,
  }) {
    return clearInvoiceHeader?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvoiceHeaderSuccessEvent value)?
        invoiceHeaderSuccessEvent,
    TResult Function(InvoiceHeaderFailedEvent value)? invoiceHeaderFailedEvent,
    TResult Function(ClearInvoiceHeader value)? clearInvoiceHeader,
    required TResult orElse(),
  }) {
    if (clearInvoiceHeader != null) {
      return clearInvoiceHeader(this);
    }
    return orElse();
  }
}

abstract class ClearInvoiceHeader implements InvoiceHeaderEvent {
  const factory ClearInvoiceHeader() = _$ClearInvoiceHeaderImpl;
}

/// @nodoc
mixin _$InvoiceHeaderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<InvoiceHeaderModel>? invheader)
        invoiceHeaderSuccessState,
    required TResult Function() invoiceHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<InvoiceHeaderModel>? invheader)?
        invoiceHeaderSuccessState,
    TResult? Function()? invoiceHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<InvoiceHeaderModel>? invheader)?
        invoiceHeaderSuccessState,
    TResult Function()? invoiceHeaderFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvoiceHeaderSuccessState value)
        invoiceHeaderSuccessState,
    required TResult Function(InvoiceHeaderFailedState value)
        invoiceHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvoiceHeaderSuccessState value)?
        invoiceHeaderSuccessState,
    TResult? Function(InvoiceHeaderFailedState value)? invoiceHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvoiceHeaderSuccessState value)?
        invoiceHeaderSuccessState,
    TResult Function(InvoiceHeaderFailedState value)? invoiceHeaderFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceHeaderStateCopyWith<$Res> {
  factory $InvoiceHeaderStateCopyWith(
          InvoiceHeaderState value, $Res Function(InvoiceHeaderState) then) =
      _$InvoiceHeaderStateCopyWithImpl<$Res, InvoiceHeaderState>;
}

/// @nodoc
class _$InvoiceHeaderStateCopyWithImpl<$Res, $Val extends InvoiceHeaderState>
    implements $InvoiceHeaderStateCopyWith<$Res> {
  _$InvoiceHeaderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InvoiceHeaderSuccessStateImplCopyWith<$Res> {
  factory _$$InvoiceHeaderSuccessStateImplCopyWith(
          _$InvoiceHeaderSuccessStateImpl value,
          $Res Function(_$InvoiceHeaderSuccessStateImpl) then) =
      __$$InvoiceHeaderSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<InvoiceHeaderModel>? invheader});
}

/// @nodoc
class __$$InvoiceHeaderSuccessStateImplCopyWithImpl<$Res>
    extends _$InvoiceHeaderStateCopyWithImpl<$Res,
        _$InvoiceHeaderSuccessStateImpl>
    implements _$$InvoiceHeaderSuccessStateImplCopyWith<$Res> {
  __$$InvoiceHeaderSuccessStateImplCopyWithImpl(
      _$InvoiceHeaderSuccessStateImpl _value,
      $Res Function(_$InvoiceHeaderSuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invheader = freezed,
  }) {
    return _then(_$InvoiceHeaderSuccessStateImpl(
      invheader: freezed == invheader
          ? _value._invheader
          : invheader // ignore: cast_nullable_to_non_nullable
              as List<InvoiceHeaderModel>?,
    ));
  }
}

/// @nodoc

class _$InvoiceHeaderSuccessStateImpl implements InvoiceHeaderSuccessState {
  const _$InvoiceHeaderSuccessStateImpl(
      {required final List<InvoiceHeaderModel>? invheader})
      : _invheader = invheader;

  final List<InvoiceHeaderModel>? _invheader;
  @override
  List<InvoiceHeaderModel>? get invheader {
    final value = _invheader;
    if (value == null) return null;
    if (_invheader is EqualUnmodifiableListView) return _invheader;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'InvoiceHeaderState.invoiceHeaderSuccessState(invheader: $invheader)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceHeaderSuccessStateImpl &&
            const DeepCollectionEquality()
                .equals(other._invheader, _invheader));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_invheader));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceHeaderSuccessStateImplCopyWith<_$InvoiceHeaderSuccessStateImpl>
      get copyWith => __$$InvoiceHeaderSuccessStateImplCopyWithImpl<
          _$InvoiceHeaderSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<InvoiceHeaderModel>? invheader)
        invoiceHeaderSuccessState,
    required TResult Function() invoiceHeaderFailedState,
  }) {
    return invoiceHeaderSuccessState(invheader);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<InvoiceHeaderModel>? invheader)?
        invoiceHeaderSuccessState,
    TResult? Function()? invoiceHeaderFailedState,
  }) {
    return invoiceHeaderSuccessState?.call(invheader);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<InvoiceHeaderModel>? invheader)?
        invoiceHeaderSuccessState,
    TResult Function()? invoiceHeaderFailedState,
    required TResult orElse(),
  }) {
    if (invoiceHeaderSuccessState != null) {
      return invoiceHeaderSuccessState(invheader);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvoiceHeaderSuccessState value)
        invoiceHeaderSuccessState,
    required TResult Function(InvoiceHeaderFailedState value)
        invoiceHeaderFailedState,
  }) {
    return invoiceHeaderSuccessState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvoiceHeaderSuccessState value)?
        invoiceHeaderSuccessState,
    TResult? Function(InvoiceHeaderFailedState value)? invoiceHeaderFailedState,
  }) {
    return invoiceHeaderSuccessState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvoiceHeaderSuccessState value)?
        invoiceHeaderSuccessState,
    TResult Function(InvoiceHeaderFailedState value)? invoiceHeaderFailedState,
    required TResult orElse(),
  }) {
    if (invoiceHeaderSuccessState != null) {
      return invoiceHeaderSuccessState(this);
    }
    return orElse();
  }
}

abstract class InvoiceHeaderSuccessState implements InvoiceHeaderState {
  const factory InvoiceHeaderSuccessState(
          {required final List<InvoiceHeaderModel>? invheader}) =
      _$InvoiceHeaderSuccessStateImpl;

  List<InvoiceHeaderModel>? get invheader;
  @JsonKey(ignore: true)
  _$$InvoiceHeaderSuccessStateImplCopyWith<_$InvoiceHeaderSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InvoiceHeaderFailedStateImplCopyWith<$Res> {
  factory _$$InvoiceHeaderFailedStateImplCopyWith(
          _$InvoiceHeaderFailedStateImpl value,
          $Res Function(_$InvoiceHeaderFailedStateImpl) then) =
      __$$InvoiceHeaderFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InvoiceHeaderFailedStateImplCopyWithImpl<$Res>
    extends _$InvoiceHeaderStateCopyWithImpl<$Res,
        _$InvoiceHeaderFailedStateImpl>
    implements _$$InvoiceHeaderFailedStateImplCopyWith<$Res> {
  __$$InvoiceHeaderFailedStateImplCopyWithImpl(
      _$InvoiceHeaderFailedStateImpl _value,
      $Res Function(_$InvoiceHeaderFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InvoiceHeaderFailedStateImpl implements InvoiceHeaderFailedState {
  const _$InvoiceHeaderFailedStateImpl();

  @override
  String toString() {
    return 'InvoiceHeaderState.invoiceHeaderFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceHeaderFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<InvoiceHeaderModel>? invheader)
        invoiceHeaderSuccessState,
    required TResult Function() invoiceHeaderFailedState,
  }) {
    return invoiceHeaderFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<InvoiceHeaderModel>? invheader)?
        invoiceHeaderSuccessState,
    TResult? Function()? invoiceHeaderFailedState,
  }) {
    return invoiceHeaderFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<InvoiceHeaderModel>? invheader)?
        invoiceHeaderSuccessState,
    TResult Function()? invoiceHeaderFailedState,
    required TResult orElse(),
  }) {
    if (invoiceHeaderFailedState != null) {
      return invoiceHeaderFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvoiceHeaderSuccessState value)
        invoiceHeaderSuccessState,
    required TResult Function(InvoiceHeaderFailedState value)
        invoiceHeaderFailedState,
  }) {
    return invoiceHeaderFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvoiceHeaderSuccessState value)?
        invoiceHeaderSuccessState,
    TResult? Function(InvoiceHeaderFailedState value)? invoiceHeaderFailedState,
  }) {
    return invoiceHeaderFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvoiceHeaderSuccessState value)?
        invoiceHeaderSuccessState,
    TResult Function(InvoiceHeaderFailedState value)? invoiceHeaderFailedState,
    required TResult orElse(),
  }) {
    if (invoiceHeaderFailedState != null) {
      return invoiceHeaderFailedState(this);
    }
    return orElse();
  }
}

abstract class InvoiceHeaderFailedState implements InvoiceHeaderState {
  const factory InvoiceHeaderFailedState() = _$InvoiceHeaderFailedStateImpl;
}
