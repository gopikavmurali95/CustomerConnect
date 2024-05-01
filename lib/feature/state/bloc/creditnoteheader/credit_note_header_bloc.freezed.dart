// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credit_note_header_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreditNoteHeaderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getAllCreditNoteHeadersEvent,
    required TResult Function() clearCreditNoteHeadersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getAllCreditNoteHeadersEvent,
    TResult? Function()? clearCreditNoteHeadersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getAllCreditNoteHeadersEvent,
    TResult Function()? clearCreditNoteHeadersEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCreditNoteHeadersEvent value)
        getAllCreditNoteHeadersEvent,
    required TResult Function(ClearCreditNoteHeadersEvent value)
        clearCreditNoteHeadersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCreditNoteHeadersEvent value)?
        getAllCreditNoteHeadersEvent,
    TResult? Function(ClearCreditNoteHeadersEvent value)?
        clearCreditNoteHeadersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCreditNoteHeadersEvent value)?
        getAllCreditNoteHeadersEvent,
    TResult Function(ClearCreditNoteHeadersEvent value)?
        clearCreditNoteHeadersEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditNoteHeaderEventCopyWith<$Res> {
  factory $CreditNoteHeaderEventCopyWith(CreditNoteHeaderEvent value,
          $Res Function(CreditNoteHeaderEvent) then) =
      _$CreditNoteHeaderEventCopyWithImpl<$Res, CreditNoteHeaderEvent>;
}

/// @nodoc
class _$CreditNoteHeaderEventCopyWithImpl<$Res,
        $Val extends CreditNoteHeaderEvent>
    implements $CreditNoteHeaderEventCopyWith<$Res> {
  _$CreditNoteHeaderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAllCreditNoteHeadersEventImplCopyWith<$Res> {
  factory _$$GetAllCreditNoteHeadersEventImplCopyWith(
          _$GetAllCreditNoteHeadersEventImpl value,
          $Res Function(_$GetAllCreditNoteHeadersEventImpl) then) =
      __$$GetAllCreditNoteHeadersEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$GetAllCreditNoteHeadersEventImplCopyWithImpl<$Res>
    extends _$CreditNoteHeaderEventCopyWithImpl<$Res,
        _$GetAllCreditNoteHeadersEventImpl>
    implements _$$GetAllCreditNoteHeadersEventImplCopyWith<$Res> {
  __$$GetAllCreditNoteHeadersEventImplCopyWithImpl(
      _$GetAllCreditNoteHeadersEventImpl _value,
      $Res Function(_$GetAllCreditNoteHeadersEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$GetAllCreditNoteHeadersEventImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetAllCreditNoteHeadersEventImpl
    implements GetAllCreditNoteHeadersEvent {
  const _$GetAllCreditNoteHeadersEventImpl({required this.userId});

  @override
  final String userId;

  @override
  String toString() {
    return 'CreditNoteHeaderEvent.getAllCreditNoteHeadersEvent(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllCreditNoteHeadersEventImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllCreditNoteHeadersEventImplCopyWith<
          _$GetAllCreditNoteHeadersEventImpl>
      get copyWith => __$$GetAllCreditNoteHeadersEventImplCopyWithImpl<
          _$GetAllCreditNoteHeadersEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getAllCreditNoteHeadersEvent,
    required TResult Function() clearCreditNoteHeadersEvent,
  }) {
    return getAllCreditNoteHeadersEvent(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getAllCreditNoteHeadersEvent,
    TResult? Function()? clearCreditNoteHeadersEvent,
  }) {
    return getAllCreditNoteHeadersEvent?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getAllCreditNoteHeadersEvent,
    TResult Function()? clearCreditNoteHeadersEvent,
    required TResult orElse(),
  }) {
    if (getAllCreditNoteHeadersEvent != null) {
      return getAllCreditNoteHeadersEvent(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCreditNoteHeadersEvent value)
        getAllCreditNoteHeadersEvent,
    required TResult Function(ClearCreditNoteHeadersEvent value)
        clearCreditNoteHeadersEvent,
  }) {
    return getAllCreditNoteHeadersEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCreditNoteHeadersEvent value)?
        getAllCreditNoteHeadersEvent,
    TResult? Function(ClearCreditNoteHeadersEvent value)?
        clearCreditNoteHeadersEvent,
  }) {
    return getAllCreditNoteHeadersEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCreditNoteHeadersEvent value)?
        getAllCreditNoteHeadersEvent,
    TResult Function(ClearCreditNoteHeadersEvent value)?
        clearCreditNoteHeadersEvent,
    required TResult orElse(),
  }) {
    if (getAllCreditNoteHeadersEvent != null) {
      return getAllCreditNoteHeadersEvent(this);
    }
    return orElse();
  }
}

abstract class GetAllCreditNoteHeadersEvent implements CreditNoteHeaderEvent {
  const factory GetAllCreditNoteHeadersEvent({required final String userId}) =
      _$GetAllCreditNoteHeadersEventImpl;

  String get userId;
  @JsonKey(ignore: true)
  _$$GetAllCreditNoteHeadersEventImplCopyWith<
          _$GetAllCreditNoteHeadersEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearCreditNoteHeadersEventImplCopyWith<$Res> {
  factory _$$ClearCreditNoteHeadersEventImplCopyWith(
          _$ClearCreditNoteHeadersEventImpl value,
          $Res Function(_$ClearCreditNoteHeadersEventImpl) then) =
      __$$ClearCreditNoteHeadersEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearCreditNoteHeadersEventImplCopyWithImpl<$Res>
    extends _$CreditNoteHeaderEventCopyWithImpl<$Res,
        _$ClearCreditNoteHeadersEventImpl>
    implements _$$ClearCreditNoteHeadersEventImplCopyWith<$Res> {
  __$$ClearCreditNoteHeadersEventImplCopyWithImpl(
      _$ClearCreditNoteHeadersEventImpl _value,
      $Res Function(_$ClearCreditNoteHeadersEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearCreditNoteHeadersEventImpl implements ClearCreditNoteHeadersEvent {
  const _$ClearCreditNoteHeadersEventImpl();

  @override
  String toString() {
    return 'CreditNoteHeaderEvent.clearCreditNoteHeadersEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearCreditNoteHeadersEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getAllCreditNoteHeadersEvent,
    required TResult Function() clearCreditNoteHeadersEvent,
  }) {
    return clearCreditNoteHeadersEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getAllCreditNoteHeadersEvent,
    TResult? Function()? clearCreditNoteHeadersEvent,
  }) {
    return clearCreditNoteHeadersEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getAllCreditNoteHeadersEvent,
    TResult Function()? clearCreditNoteHeadersEvent,
    required TResult orElse(),
  }) {
    if (clearCreditNoteHeadersEvent != null) {
      return clearCreditNoteHeadersEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllCreditNoteHeadersEvent value)
        getAllCreditNoteHeadersEvent,
    required TResult Function(ClearCreditNoteHeadersEvent value)
        clearCreditNoteHeadersEvent,
  }) {
    return clearCreditNoteHeadersEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllCreditNoteHeadersEvent value)?
        getAllCreditNoteHeadersEvent,
    TResult? Function(ClearCreditNoteHeadersEvent value)?
        clearCreditNoteHeadersEvent,
  }) {
    return clearCreditNoteHeadersEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllCreditNoteHeadersEvent value)?
        getAllCreditNoteHeadersEvent,
    TResult Function(ClearCreditNoteHeadersEvent value)?
        clearCreditNoteHeadersEvent,
    required TResult orElse(),
  }) {
    if (clearCreditNoteHeadersEvent != null) {
      return clearCreditNoteHeadersEvent(this);
    }
    return orElse();
  }
}

abstract class ClearCreditNoteHeadersEvent implements CreditNoteHeaderEvent {
  const factory ClearCreditNoteHeadersEvent() =
      _$ClearCreditNoteHeadersEventImpl;
}

/// @nodoc
mixin _$CreditNoteHeaderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CreditNoteHeaderModel>? headers)
        getCreditNoteHeadersState,
    required TResult Function() creditNoteHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CreditNoteHeaderModel>? headers)?
        getCreditNoteHeadersState,
    TResult? Function()? creditNoteHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CreditNoteHeaderModel>? headers)?
        getCreditNoteHeadersState,
    TResult Function()? creditNoteHeaderFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCreditNoteHeadersState value)
        getCreditNoteHeadersState,
    required TResult Function(CreditNoteHeaderFailedState value)
        creditNoteHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCreditNoteHeadersState value)?
        getCreditNoteHeadersState,
    TResult? Function(CreditNoteHeaderFailedState value)?
        creditNoteHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCreditNoteHeadersState value)?
        getCreditNoteHeadersState,
    TResult Function(CreditNoteHeaderFailedState value)?
        creditNoteHeaderFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditNoteHeaderStateCopyWith<$Res> {
  factory $CreditNoteHeaderStateCopyWith(CreditNoteHeaderState value,
          $Res Function(CreditNoteHeaderState) then) =
      _$CreditNoteHeaderStateCopyWithImpl<$Res, CreditNoteHeaderState>;
}

/// @nodoc
class _$CreditNoteHeaderStateCopyWithImpl<$Res,
        $Val extends CreditNoteHeaderState>
    implements $CreditNoteHeaderStateCopyWith<$Res> {
  _$CreditNoteHeaderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCreditNoteHeadersStateImplCopyWith<$Res> {
  factory _$$GetCreditNoteHeadersStateImplCopyWith(
          _$GetCreditNoteHeadersStateImpl value,
          $Res Function(_$GetCreditNoteHeadersStateImpl) then) =
      __$$GetCreditNoteHeadersStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CreditNoteHeaderModel>? headers});
}

/// @nodoc
class __$$GetCreditNoteHeadersStateImplCopyWithImpl<$Res>
    extends _$CreditNoteHeaderStateCopyWithImpl<$Res,
        _$GetCreditNoteHeadersStateImpl>
    implements _$$GetCreditNoteHeadersStateImplCopyWith<$Res> {
  __$$GetCreditNoteHeadersStateImplCopyWithImpl(
      _$GetCreditNoteHeadersStateImpl _value,
      $Res Function(_$GetCreditNoteHeadersStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headers = freezed,
  }) {
    return _then(_$GetCreditNoteHeadersStateImpl(
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as List<CreditNoteHeaderModel>?,
    ));
  }
}

/// @nodoc

class _$GetCreditNoteHeadersStateImpl implements GetCreditNoteHeadersState {
  const _$GetCreditNoteHeadersStateImpl(
      {required final List<CreditNoteHeaderModel>? headers})
      : _headers = headers;

  final List<CreditNoteHeaderModel>? _headers;
  @override
  List<CreditNoteHeaderModel>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableListView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CreditNoteHeaderState.getCreditNoteHeadersState(headers: $headers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCreditNoteHeadersStateImpl &&
            const DeepCollectionEquality().equals(other._headers, _headers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_headers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCreditNoteHeadersStateImplCopyWith<_$GetCreditNoteHeadersStateImpl>
      get copyWith => __$$GetCreditNoteHeadersStateImplCopyWithImpl<
          _$GetCreditNoteHeadersStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CreditNoteHeaderModel>? headers)
        getCreditNoteHeadersState,
    required TResult Function() creditNoteHeaderFailedState,
  }) {
    return getCreditNoteHeadersState(headers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CreditNoteHeaderModel>? headers)?
        getCreditNoteHeadersState,
    TResult? Function()? creditNoteHeaderFailedState,
  }) {
    return getCreditNoteHeadersState?.call(headers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CreditNoteHeaderModel>? headers)?
        getCreditNoteHeadersState,
    TResult Function()? creditNoteHeaderFailedState,
    required TResult orElse(),
  }) {
    if (getCreditNoteHeadersState != null) {
      return getCreditNoteHeadersState(headers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCreditNoteHeadersState value)
        getCreditNoteHeadersState,
    required TResult Function(CreditNoteHeaderFailedState value)
        creditNoteHeaderFailedState,
  }) {
    return getCreditNoteHeadersState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCreditNoteHeadersState value)?
        getCreditNoteHeadersState,
    TResult? Function(CreditNoteHeaderFailedState value)?
        creditNoteHeaderFailedState,
  }) {
    return getCreditNoteHeadersState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCreditNoteHeadersState value)?
        getCreditNoteHeadersState,
    TResult Function(CreditNoteHeaderFailedState value)?
        creditNoteHeaderFailedState,
    required TResult orElse(),
  }) {
    if (getCreditNoteHeadersState != null) {
      return getCreditNoteHeadersState(this);
    }
    return orElse();
  }
}

abstract class GetCreditNoteHeadersState implements CreditNoteHeaderState {
  const factory GetCreditNoteHeadersState(
          {required final List<CreditNoteHeaderModel>? headers}) =
      _$GetCreditNoteHeadersStateImpl;

  List<CreditNoteHeaderModel>? get headers;
  @JsonKey(ignore: true)
  _$$GetCreditNoteHeadersStateImplCopyWith<_$GetCreditNoteHeadersStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreditNoteHeaderFailedStateImplCopyWith<$Res> {
  factory _$$CreditNoteHeaderFailedStateImplCopyWith(
          _$CreditNoteHeaderFailedStateImpl value,
          $Res Function(_$CreditNoteHeaderFailedStateImpl) then) =
      __$$CreditNoteHeaderFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreditNoteHeaderFailedStateImplCopyWithImpl<$Res>
    extends _$CreditNoteHeaderStateCopyWithImpl<$Res,
        _$CreditNoteHeaderFailedStateImpl>
    implements _$$CreditNoteHeaderFailedStateImplCopyWith<$Res> {
  __$$CreditNoteHeaderFailedStateImplCopyWithImpl(
      _$CreditNoteHeaderFailedStateImpl _value,
      $Res Function(_$CreditNoteHeaderFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreditNoteHeaderFailedStateImpl implements CreditNoteHeaderFailedState {
  const _$CreditNoteHeaderFailedStateImpl();

  @override
  String toString() {
    return 'CreditNoteHeaderState.creditNoteHeaderFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreditNoteHeaderFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CreditNoteHeaderModel>? headers)
        getCreditNoteHeadersState,
    required TResult Function() creditNoteHeaderFailedState,
  }) {
    return creditNoteHeaderFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CreditNoteHeaderModel>? headers)?
        getCreditNoteHeadersState,
    TResult? Function()? creditNoteHeaderFailedState,
  }) {
    return creditNoteHeaderFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CreditNoteHeaderModel>? headers)?
        getCreditNoteHeadersState,
    TResult Function()? creditNoteHeaderFailedState,
    required TResult orElse(),
  }) {
    if (creditNoteHeaderFailedState != null) {
      return creditNoteHeaderFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCreditNoteHeadersState value)
        getCreditNoteHeadersState,
    required TResult Function(CreditNoteHeaderFailedState value)
        creditNoteHeaderFailedState,
  }) {
    return creditNoteHeaderFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCreditNoteHeadersState value)?
        getCreditNoteHeadersState,
    TResult? Function(CreditNoteHeaderFailedState value)?
        creditNoteHeaderFailedState,
  }) {
    return creditNoteHeaderFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCreditNoteHeadersState value)?
        getCreditNoteHeadersState,
    TResult Function(CreditNoteHeaderFailedState value)?
        creditNoteHeaderFailedState,
    required TResult orElse(),
  }) {
    if (creditNoteHeaderFailedState != null) {
      return creditNoteHeaderFailedState(this);
    }
    return orElse();
  }
}

abstract class CreditNoteHeaderFailedState implements CreditNoteHeaderState {
  const factory CreditNoteHeaderFailedState() =
      _$CreditNoteHeaderFailedStateImpl;
}
