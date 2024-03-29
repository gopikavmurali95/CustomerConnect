// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cus_ins_invoice_header_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CusInsInvoiceHeaderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CusInsInvoiceHeaderInModel invIn) getCusInvEvent,
    required TResult Function() clearinvEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CusInsInvoiceHeaderInModel invIn)? getCusInvEvent,
    TResult? Function()? clearinvEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CusInsInvoiceHeaderInModel invIn)? getCusInvEvent,
    TResult Function()? clearinvEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusInvEvent value) getCusInvEvent,
    required TResult Function(ClearinvEvent value) clearinvEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusInvEvent value)? getCusInvEvent,
    TResult? Function(ClearinvEvent value)? clearinvEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusInvEvent value)? getCusInvEvent,
    TResult Function(ClearinvEvent value)? clearinvEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CusInsInvoiceHeaderEventCopyWith<$Res> {
  factory $CusInsInvoiceHeaderEventCopyWith(CusInsInvoiceHeaderEvent value,
          $Res Function(CusInsInvoiceHeaderEvent) then) =
      _$CusInsInvoiceHeaderEventCopyWithImpl<$Res, CusInsInvoiceHeaderEvent>;
}

/// @nodoc
class _$CusInsInvoiceHeaderEventCopyWithImpl<$Res,
        $Val extends CusInsInvoiceHeaderEvent>
    implements $CusInsInvoiceHeaderEventCopyWith<$Res> {
  _$CusInsInvoiceHeaderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCusInvEventImplCopyWith<$Res> {
  factory _$$GetCusInvEventImplCopyWith(_$GetCusInvEventImpl value,
          $Res Function(_$GetCusInvEventImpl) then) =
      __$$GetCusInvEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CusInsInvoiceHeaderInModel invIn});
}

/// @nodoc
class __$$GetCusInvEventImplCopyWithImpl<$Res>
    extends _$CusInsInvoiceHeaderEventCopyWithImpl<$Res, _$GetCusInvEventImpl>
    implements _$$GetCusInvEventImplCopyWith<$Res> {
  __$$GetCusInvEventImplCopyWithImpl(
      _$GetCusInvEventImpl _value, $Res Function(_$GetCusInvEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invIn = null,
  }) {
    return _then(_$GetCusInvEventImpl(
      invIn: null == invIn
          ? _value.invIn
          : invIn // ignore: cast_nullable_to_non_nullable
              as CusInsInvoiceHeaderInModel,
    ));
  }
}

/// @nodoc

class _$GetCusInvEventImpl implements GetCusInvEvent {
  const _$GetCusInvEventImpl({required this.invIn});

  @override
  final CusInsInvoiceHeaderInModel invIn;

  @override
  String toString() {
    return 'CusInsInvoiceHeaderEvent.getCusInvEvent(invIn: $invIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCusInvEventImpl &&
            (identical(other.invIn, invIn) || other.invIn == invIn));
  }

  @override
  int get hashCode => Object.hash(runtimeType, invIn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCusInvEventImplCopyWith<_$GetCusInvEventImpl> get copyWith =>
      __$$GetCusInvEventImplCopyWithImpl<_$GetCusInvEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CusInsInvoiceHeaderInModel invIn) getCusInvEvent,
    required TResult Function() clearinvEvent,
  }) {
    return getCusInvEvent(invIn);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CusInsInvoiceHeaderInModel invIn)? getCusInvEvent,
    TResult? Function()? clearinvEvent,
  }) {
    return getCusInvEvent?.call(invIn);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CusInsInvoiceHeaderInModel invIn)? getCusInvEvent,
    TResult Function()? clearinvEvent,
    required TResult orElse(),
  }) {
    if (getCusInvEvent != null) {
      return getCusInvEvent(invIn);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusInvEvent value) getCusInvEvent,
    required TResult Function(ClearinvEvent value) clearinvEvent,
  }) {
    return getCusInvEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusInvEvent value)? getCusInvEvent,
    TResult? Function(ClearinvEvent value)? clearinvEvent,
  }) {
    return getCusInvEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusInvEvent value)? getCusInvEvent,
    TResult Function(ClearinvEvent value)? clearinvEvent,
    required TResult orElse(),
  }) {
    if (getCusInvEvent != null) {
      return getCusInvEvent(this);
    }
    return orElse();
  }
}

abstract class GetCusInvEvent implements CusInsInvoiceHeaderEvent {
  const factory GetCusInvEvent(
      {required final CusInsInvoiceHeaderInModel invIn}) = _$GetCusInvEventImpl;

  CusInsInvoiceHeaderInModel get invIn;
  @JsonKey(ignore: true)
  _$$GetCusInvEventImplCopyWith<_$GetCusInvEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearinvEventImplCopyWith<$Res> {
  factory _$$ClearinvEventImplCopyWith(
          _$ClearinvEventImpl value, $Res Function(_$ClearinvEventImpl) then) =
      __$$ClearinvEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearinvEventImplCopyWithImpl<$Res>
    extends _$CusInsInvoiceHeaderEventCopyWithImpl<$Res, _$ClearinvEventImpl>
    implements _$$ClearinvEventImplCopyWith<$Res> {
  __$$ClearinvEventImplCopyWithImpl(
      _$ClearinvEventImpl _value, $Res Function(_$ClearinvEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearinvEventImpl implements ClearinvEvent {
  const _$ClearinvEventImpl();

  @override
  String toString() {
    return 'CusInsInvoiceHeaderEvent.clearinvEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearinvEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CusInsInvoiceHeaderInModel invIn) getCusInvEvent,
    required TResult Function() clearinvEvent,
  }) {
    return clearinvEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CusInsInvoiceHeaderInModel invIn)? getCusInvEvent,
    TResult? Function()? clearinvEvent,
  }) {
    return clearinvEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CusInsInvoiceHeaderInModel invIn)? getCusInvEvent,
    TResult Function()? clearinvEvent,
    required TResult orElse(),
  }) {
    if (clearinvEvent != null) {
      return clearinvEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusInvEvent value) getCusInvEvent,
    required TResult Function(ClearinvEvent value) clearinvEvent,
  }) {
    return clearinvEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusInvEvent value)? getCusInvEvent,
    TResult? Function(ClearinvEvent value)? clearinvEvent,
  }) {
    return clearinvEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusInvEvent value)? getCusInvEvent,
    TResult Function(ClearinvEvent value)? clearinvEvent,
    required TResult orElse(),
  }) {
    if (clearinvEvent != null) {
      return clearinvEvent(this);
    }
    return orElse();
  }
}

abstract class ClearinvEvent implements CusInsInvoiceHeaderEvent {
  const factory ClearinvEvent() = _$ClearinvEventImpl;
}

/// @nodoc
mixin _$CusInsInvoiceHeaderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CusInsInvoiceModel>? headers)
        getCusInvoiceHeaderState,
    required TResult Function() getcusInvFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CusInsInvoiceModel>? headers)?
        getCusInvoiceHeaderState,
    TResult? Function()? getcusInvFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CusInsInvoiceModel>? headers)?
        getCusInvoiceHeaderState,
    TResult Function()? getcusInvFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusInvoiceHeaderState value)
        getCusInvoiceHeaderState,
    required TResult Function(GetcusInvFailedState value) getcusInvFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusInvoiceHeaderState value)? getCusInvoiceHeaderState,
    TResult? Function(GetcusInvFailedState value)? getcusInvFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusInvoiceHeaderState value)? getCusInvoiceHeaderState,
    TResult Function(GetcusInvFailedState value)? getcusInvFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CusInsInvoiceHeaderStateCopyWith<$Res> {
  factory $CusInsInvoiceHeaderStateCopyWith(CusInsInvoiceHeaderState value,
          $Res Function(CusInsInvoiceHeaderState) then) =
      _$CusInsInvoiceHeaderStateCopyWithImpl<$Res, CusInsInvoiceHeaderState>;
}

/// @nodoc
class _$CusInsInvoiceHeaderStateCopyWithImpl<$Res,
        $Val extends CusInsInvoiceHeaderState>
    implements $CusInsInvoiceHeaderStateCopyWith<$Res> {
  _$CusInsInvoiceHeaderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCusInvoiceHeaderStateImplCopyWith<$Res> {
  factory _$$GetCusInvoiceHeaderStateImplCopyWith(
          _$GetCusInvoiceHeaderStateImpl value,
          $Res Function(_$GetCusInvoiceHeaderStateImpl) then) =
      __$$GetCusInvoiceHeaderStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CusInsInvoiceModel>? headers});
}

/// @nodoc
class __$$GetCusInvoiceHeaderStateImplCopyWithImpl<$Res>
    extends _$CusInsInvoiceHeaderStateCopyWithImpl<$Res,
        _$GetCusInvoiceHeaderStateImpl>
    implements _$$GetCusInvoiceHeaderStateImplCopyWith<$Res> {
  __$$GetCusInvoiceHeaderStateImplCopyWithImpl(
      _$GetCusInvoiceHeaderStateImpl _value,
      $Res Function(_$GetCusInvoiceHeaderStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headers = freezed,
  }) {
    return _then(_$GetCusInvoiceHeaderStateImpl(
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as List<CusInsInvoiceModel>?,
    ));
  }
}

/// @nodoc

class _$GetCusInvoiceHeaderStateImpl implements GetCusInvoiceHeaderState {
  const _$GetCusInvoiceHeaderStateImpl(
      {required final List<CusInsInvoiceModel>? headers})
      : _headers = headers;

  final List<CusInsInvoiceModel>? _headers;
  @override
  List<CusInsInvoiceModel>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableListView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CusInsInvoiceHeaderState.getCusInvoiceHeaderState(headers: $headers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCusInvoiceHeaderStateImpl &&
            const DeepCollectionEquality().equals(other._headers, _headers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_headers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCusInvoiceHeaderStateImplCopyWith<_$GetCusInvoiceHeaderStateImpl>
      get copyWith => __$$GetCusInvoiceHeaderStateImplCopyWithImpl<
          _$GetCusInvoiceHeaderStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CusInsInvoiceModel>? headers)
        getCusInvoiceHeaderState,
    required TResult Function() getcusInvFailedState,
  }) {
    return getCusInvoiceHeaderState(headers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CusInsInvoiceModel>? headers)?
        getCusInvoiceHeaderState,
    TResult? Function()? getcusInvFailedState,
  }) {
    return getCusInvoiceHeaderState?.call(headers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CusInsInvoiceModel>? headers)?
        getCusInvoiceHeaderState,
    TResult Function()? getcusInvFailedState,
    required TResult orElse(),
  }) {
    if (getCusInvoiceHeaderState != null) {
      return getCusInvoiceHeaderState(headers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusInvoiceHeaderState value)
        getCusInvoiceHeaderState,
    required TResult Function(GetcusInvFailedState value) getcusInvFailedState,
  }) {
    return getCusInvoiceHeaderState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusInvoiceHeaderState value)? getCusInvoiceHeaderState,
    TResult? Function(GetcusInvFailedState value)? getcusInvFailedState,
  }) {
    return getCusInvoiceHeaderState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusInvoiceHeaderState value)? getCusInvoiceHeaderState,
    TResult Function(GetcusInvFailedState value)? getcusInvFailedState,
    required TResult orElse(),
  }) {
    if (getCusInvoiceHeaderState != null) {
      return getCusInvoiceHeaderState(this);
    }
    return orElse();
  }
}

abstract class GetCusInvoiceHeaderState implements CusInsInvoiceHeaderState {
  const factory GetCusInvoiceHeaderState(
          {required final List<CusInsInvoiceModel>? headers}) =
      _$GetCusInvoiceHeaderStateImpl;

  List<CusInsInvoiceModel>? get headers;
  @JsonKey(ignore: true)
  _$$GetCusInvoiceHeaderStateImplCopyWith<_$GetCusInvoiceHeaderStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetcusInvFailedStateImplCopyWith<$Res> {
  factory _$$GetcusInvFailedStateImplCopyWith(_$GetcusInvFailedStateImpl value,
          $Res Function(_$GetcusInvFailedStateImpl) then) =
      __$$GetcusInvFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetcusInvFailedStateImplCopyWithImpl<$Res>
    extends _$CusInsInvoiceHeaderStateCopyWithImpl<$Res,
        _$GetcusInvFailedStateImpl>
    implements _$$GetcusInvFailedStateImplCopyWith<$Res> {
  __$$GetcusInvFailedStateImplCopyWithImpl(_$GetcusInvFailedStateImpl _value,
      $Res Function(_$GetcusInvFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetcusInvFailedStateImpl implements GetcusInvFailedState {
  const _$GetcusInvFailedStateImpl();

  @override
  String toString() {
    return 'CusInsInvoiceHeaderState.getcusInvFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetcusInvFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CusInsInvoiceModel>? headers)
        getCusInvoiceHeaderState,
    required TResult Function() getcusInvFailedState,
  }) {
    return getcusInvFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CusInsInvoiceModel>? headers)?
        getCusInvoiceHeaderState,
    TResult? Function()? getcusInvFailedState,
  }) {
    return getcusInvFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CusInsInvoiceModel>? headers)?
        getCusInvoiceHeaderState,
    TResult Function()? getcusInvFailedState,
    required TResult orElse(),
  }) {
    if (getcusInvFailedState != null) {
      return getcusInvFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusInvoiceHeaderState value)
        getCusInvoiceHeaderState,
    required TResult Function(GetcusInvFailedState value) getcusInvFailedState,
  }) {
    return getcusInvFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusInvoiceHeaderState value)? getCusInvoiceHeaderState,
    TResult? Function(GetcusInvFailedState value)? getcusInvFailedState,
  }) {
    return getcusInvFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusInvoiceHeaderState value)? getCusInvoiceHeaderState,
    TResult Function(GetcusInvFailedState value)? getcusInvFailedState,
    required TResult orElse(),
  }) {
    if (getcusInvFailedState != null) {
      return getcusInvFailedState(this);
    }
    return orElse();
  }
}

abstract class GetcusInvFailedState implements CusInsInvoiceHeaderState {
  const factory GetcusInvFailedState() = _$GetcusInvFailedStateImpl;
}
