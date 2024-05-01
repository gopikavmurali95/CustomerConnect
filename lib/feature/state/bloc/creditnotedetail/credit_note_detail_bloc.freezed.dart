// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'credit_note_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreditNoteDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String reqId) getCreditNoteDetailsEvent,
    required TResult Function() clearCreditNoteDetailEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String reqId)? getCreditNoteDetailsEvent,
    TResult? Function()? clearCreditNoteDetailEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String reqId)? getCreditNoteDetailsEvent,
    TResult Function()? clearCreditNoteDetailEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCreditNoteDetailsEvent value)
        getCreditNoteDetailsEvent,
    required TResult Function(ClearCreditNoteDetailEvent value)
        clearCreditNoteDetailEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCreditNoteDetailsEvent value)?
        getCreditNoteDetailsEvent,
    TResult? Function(ClearCreditNoteDetailEvent value)?
        clearCreditNoteDetailEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCreditNoteDetailsEvent value)?
        getCreditNoteDetailsEvent,
    TResult Function(ClearCreditNoteDetailEvent value)?
        clearCreditNoteDetailEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditNoteDetailEventCopyWith<$Res> {
  factory $CreditNoteDetailEventCopyWith(CreditNoteDetailEvent value,
          $Res Function(CreditNoteDetailEvent) then) =
      _$CreditNoteDetailEventCopyWithImpl<$Res, CreditNoteDetailEvent>;
}

/// @nodoc
class _$CreditNoteDetailEventCopyWithImpl<$Res,
        $Val extends CreditNoteDetailEvent>
    implements $CreditNoteDetailEventCopyWith<$Res> {
  _$CreditNoteDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCreditNoteDetailsEventImplCopyWith<$Res> {
  factory _$$GetCreditNoteDetailsEventImplCopyWith(
          _$GetCreditNoteDetailsEventImpl value,
          $Res Function(_$GetCreditNoteDetailsEventImpl) then) =
      __$$GetCreditNoteDetailsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String reqId});
}

/// @nodoc
class __$$GetCreditNoteDetailsEventImplCopyWithImpl<$Res>
    extends _$CreditNoteDetailEventCopyWithImpl<$Res,
        _$GetCreditNoteDetailsEventImpl>
    implements _$$GetCreditNoteDetailsEventImplCopyWith<$Res> {
  __$$GetCreditNoteDetailsEventImplCopyWithImpl(
      _$GetCreditNoteDetailsEventImpl _value,
      $Res Function(_$GetCreditNoteDetailsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reqId = null,
  }) {
    return _then(_$GetCreditNoteDetailsEventImpl(
      reqId: null == reqId
          ? _value.reqId
          : reqId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCreditNoteDetailsEventImpl implements GetCreditNoteDetailsEvent {
  const _$GetCreditNoteDetailsEventImpl({required this.reqId});

  @override
  final String reqId;

  @override
  String toString() {
    return 'CreditNoteDetailEvent.getCreditNoteDetailsEvent(reqId: $reqId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCreditNoteDetailsEventImpl &&
            (identical(other.reqId, reqId) || other.reqId == reqId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reqId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCreditNoteDetailsEventImplCopyWith<_$GetCreditNoteDetailsEventImpl>
      get copyWith => __$$GetCreditNoteDetailsEventImplCopyWithImpl<
          _$GetCreditNoteDetailsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String reqId) getCreditNoteDetailsEvent,
    required TResult Function() clearCreditNoteDetailEvent,
  }) {
    return getCreditNoteDetailsEvent(reqId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String reqId)? getCreditNoteDetailsEvent,
    TResult? Function()? clearCreditNoteDetailEvent,
  }) {
    return getCreditNoteDetailsEvent?.call(reqId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String reqId)? getCreditNoteDetailsEvent,
    TResult Function()? clearCreditNoteDetailEvent,
    required TResult orElse(),
  }) {
    if (getCreditNoteDetailsEvent != null) {
      return getCreditNoteDetailsEvent(reqId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCreditNoteDetailsEvent value)
        getCreditNoteDetailsEvent,
    required TResult Function(ClearCreditNoteDetailEvent value)
        clearCreditNoteDetailEvent,
  }) {
    return getCreditNoteDetailsEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCreditNoteDetailsEvent value)?
        getCreditNoteDetailsEvent,
    TResult? Function(ClearCreditNoteDetailEvent value)?
        clearCreditNoteDetailEvent,
  }) {
    return getCreditNoteDetailsEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCreditNoteDetailsEvent value)?
        getCreditNoteDetailsEvent,
    TResult Function(ClearCreditNoteDetailEvent value)?
        clearCreditNoteDetailEvent,
    required TResult orElse(),
  }) {
    if (getCreditNoteDetailsEvent != null) {
      return getCreditNoteDetailsEvent(this);
    }
    return orElse();
  }
}

abstract class GetCreditNoteDetailsEvent implements CreditNoteDetailEvent {
  const factory GetCreditNoteDetailsEvent({required final String reqId}) =
      _$GetCreditNoteDetailsEventImpl;

  String get reqId;
  @JsonKey(ignore: true)
  _$$GetCreditNoteDetailsEventImplCopyWith<_$GetCreditNoteDetailsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearCreditNoteDetailEventImplCopyWith<$Res> {
  factory _$$ClearCreditNoteDetailEventImplCopyWith(
          _$ClearCreditNoteDetailEventImpl value,
          $Res Function(_$ClearCreditNoteDetailEventImpl) then) =
      __$$ClearCreditNoteDetailEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearCreditNoteDetailEventImplCopyWithImpl<$Res>
    extends _$CreditNoteDetailEventCopyWithImpl<$Res,
        _$ClearCreditNoteDetailEventImpl>
    implements _$$ClearCreditNoteDetailEventImplCopyWith<$Res> {
  __$$ClearCreditNoteDetailEventImplCopyWithImpl(
      _$ClearCreditNoteDetailEventImpl _value,
      $Res Function(_$ClearCreditNoteDetailEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearCreditNoteDetailEventImpl implements ClearCreditNoteDetailEvent {
  const _$ClearCreditNoteDetailEventImpl();

  @override
  String toString() {
    return 'CreditNoteDetailEvent.clearCreditNoteDetailEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearCreditNoteDetailEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String reqId) getCreditNoteDetailsEvent,
    required TResult Function() clearCreditNoteDetailEvent,
  }) {
    return clearCreditNoteDetailEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String reqId)? getCreditNoteDetailsEvent,
    TResult? Function()? clearCreditNoteDetailEvent,
  }) {
    return clearCreditNoteDetailEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String reqId)? getCreditNoteDetailsEvent,
    TResult Function()? clearCreditNoteDetailEvent,
    required TResult orElse(),
  }) {
    if (clearCreditNoteDetailEvent != null) {
      return clearCreditNoteDetailEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCreditNoteDetailsEvent value)
        getCreditNoteDetailsEvent,
    required TResult Function(ClearCreditNoteDetailEvent value)
        clearCreditNoteDetailEvent,
  }) {
    return clearCreditNoteDetailEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCreditNoteDetailsEvent value)?
        getCreditNoteDetailsEvent,
    TResult? Function(ClearCreditNoteDetailEvent value)?
        clearCreditNoteDetailEvent,
  }) {
    return clearCreditNoteDetailEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCreditNoteDetailsEvent value)?
        getCreditNoteDetailsEvent,
    TResult Function(ClearCreditNoteDetailEvent value)?
        clearCreditNoteDetailEvent,
    required TResult orElse(),
  }) {
    if (clearCreditNoteDetailEvent != null) {
      return clearCreditNoteDetailEvent(this);
    }
    return orElse();
  }
}

abstract class ClearCreditNoteDetailEvent implements CreditNoteDetailEvent {
  const factory ClearCreditNoteDetailEvent() = _$ClearCreditNoteDetailEventImpl;
}

/// @nodoc
mixin _$CreditNoteDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CreditNoteDetailModel>? details)
        getCreditNoteDetailState,
    required TResult Function() creditNoteDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CreditNoteDetailModel>? details)?
        getCreditNoteDetailState,
    TResult? Function()? creditNoteDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CreditNoteDetailModel>? details)?
        getCreditNoteDetailState,
    TResult Function()? creditNoteDetailFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCreditNoteDetailState value)
        getCreditNoteDetailState,
    required TResult Function(CreditNoteDetailFailedState value)
        creditNoteDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCreditNoteDetailState value)? getCreditNoteDetailState,
    TResult? Function(CreditNoteDetailFailedState value)?
        creditNoteDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCreditNoteDetailState value)? getCreditNoteDetailState,
    TResult Function(CreditNoteDetailFailedState value)?
        creditNoteDetailFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditNoteDetailStateCopyWith<$Res> {
  factory $CreditNoteDetailStateCopyWith(CreditNoteDetailState value,
          $Res Function(CreditNoteDetailState) then) =
      _$CreditNoteDetailStateCopyWithImpl<$Res, CreditNoteDetailState>;
}

/// @nodoc
class _$CreditNoteDetailStateCopyWithImpl<$Res,
        $Val extends CreditNoteDetailState>
    implements $CreditNoteDetailStateCopyWith<$Res> {
  _$CreditNoteDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCreditNoteDetailStateImplCopyWith<$Res> {
  factory _$$GetCreditNoteDetailStateImplCopyWith(
          _$GetCreditNoteDetailStateImpl value,
          $Res Function(_$GetCreditNoteDetailStateImpl) then) =
      __$$GetCreditNoteDetailStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CreditNoteDetailModel>? details});
}

/// @nodoc
class __$$GetCreditNoteDetailStateImplCopyWithImpl<$Res>
    extends _$CreditNoteDetailStateCopyWithImpl<$Res,
        _$GetCreditNoteDetailStateImpl>
    implements _$$GetCreditNoteDetailStateImplCopyWith<$Res> {
  __$$GetCreditNoteDetailStateImplCopyWithImpl(
      _$GetCreditNoteDetailStateImpl _value,
      $Res Function(_$GetCreditNoteDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? details = freezed,
  }) {
    return _then(_$GetCreditNoteDetailStateImpl(
      details: freezed == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<CreditNoteDetailModel>?,
    ));
  }
}

/// @nodoc

class _$GetCreditNoteDetailStateImpl implements GetCreditNoteDetailState {
  const _$GetCreditNoteDetailStateImpl(
      {required final List<CreditNoteDetailModel>? details})
      : _details = details;

  final List<CreditNoteDetailModel>? _details;
  @override
  List<CreditNoteDetailModel>? get details {
    final value = _details;
    if (value == null) return null;
    if (_details is EqualUnmodifiableListView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CreditNoteDetailState.getCreditNoteDetailState(details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCreditNoteDetailStateImpl &&
            const DeepCollectionEquality().equals(other._details, _details));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_details));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCreditNoteDetailStateImplCopyWith<_$GetCreditNoteDetailStateImpl>
      get copyWith => __$$GetCreditNoteDetailStateImplCopyWithImpl<
          _$GetCreditNoteDetailStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CreditNoteDetailModel>? details)
        getCreditNoteDetailState,
    required TResult Function() creditNoteDetailFailedState,
  }) {
    return getCreditNoteDetailState(details);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CreditNoteDetailModel>? details)?
        getCreditNoteDetailState,
    TResult? Function()? creditNoteDetailFailedState,
  }) {
    return getCreditNoteDetailState?.call(details);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CreditNoteDetailModel>? details)?
        getCreditNoteDetailState,
    TResult Function()? creditNoteDetailFailedState,
    required TResult orElse(),
  }) {
    if (getCreditNoteDetailState != null) {
      return getCreditNoteDetailState(details);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCreditNoteDetailState value)
        getCreditNoteDetailState,
    required TResult Function(CreditNoteDetailFailedState value)
        creditNoteDetailFailedState,
  }) {
    return getCreditNoteDetailState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCreditNoteDetailState value)? getCreditNoteDetailState,
    TResult? Function(CreditNoteDetailFailedState value)?
        creditNoteDetailFailedState,
  }) {
    return getCreditNoteDetailState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCreditNoteDetailState value)? getCreditNoteDetailState,
    TResult Function(CreditNoteDetailFailedState value)?
        creditNoteDetailFailedState,
    required TResult orElse(),
  }) {
    if (getCreditNoteDetailState != null) {
      return getCreditNoteDetailState(this);
    }
    return orElse();
  }
}

abstract class GetCreditNoteDetailState implements CreditNoteDetailState {
  const factory GetCreditNoteDetailState(
          {required final List<CreditNoteDetailModel>? details}) =
      _$GetCreditNoteDetailStateImpl;

  List<CreditNoteDetailModel>? get details;
  @JsonKey(ignore: true)
  _$$GetCreditNoteDetailStateImplCopyWith<_$GetCreditNoteDetailStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CreditNoteDetailFailedStateImplCopyWith<$Res> {
  factory _$$CreditNoteDetailFailedStateImplCopyWith(
          _$CreditNoteDetailFailedStateImpl value,
          $Res Function(_$CreditNoteDetailFailedStateImpl) then) =
      __$$CreditNoteDetailFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreditNoteDetailFailedStateImplCopyWithImpl<$Res>
    extends _$CreditNoteDetailStateCopyWithImpl<$Res,
        _$CreditNoteDetailFailedStateImpl>
    implements _$$CreditNoteDetailFailedStateImplCopyWith<$Res> {
  __$$CreditNoteDetailFailedStateImplCopyWithImpl(
      _$CreditNoteDetailFailedStateImpl _value,
      $Res Function(_$CreditNoteDetailFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CreditNoteDetailFailedStateImpl implements CreditNoteDetailFailedState {
  const _$CreditNoteDetailFailedStateImpl();

  @override
  String toString() {
    return 'CreditNoteDetailState.creditNoteDetailFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreditNoteDetailFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CreditNoteDetailModel>? details)
        getCreditNoteDetailState,
    required TResult Function() creditNoteDetailFailedState,
  }) {
    return creditNoteDetailFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CreditNoteDetailModel>? details)?
        getCreditNoteDetailState,
    TResult? Function()? creditNoteDetailFailedState,
  }) {
    return creditNoteDetailFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CreditNoteDetailModel>? details)?
        getCreditNoteDetailState,
    TResult Function()? creditNoteDetailFailedState,
    required TResult orElse(),
  }) {
    if (creditNoteDetailFailedState != null) {
      return creditNoteDetailFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCreditNoteDetailState value)
        getCreditNoteDetailState,
    required TResult Function(CreditNoteDetailFailedState value)
        creditNoteDetailFailedState,
  }) {
    return creditNoteDetailFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCreditNoteDetailState value)? getCreditNoteDetailState,
    TResult? Function(CreditNoteDetailFailedState value)?
        creditNoteDetailFailedState,
  }) {
    return creditNoteDetailFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCreditNoteDetailState value)? getCreditNoteDetailState,
    TResult Function(CreditNoteDetailFailedState value)?
        creditNoteDetailFailedState,
    required TResult orElse(),
  }) {
    if (creditNoteDetailFailedState != null) {
      return creditNoteDetailFailedState(this);
    }
    return orElse();
  }
}

abstract class CreditNoteDetailFailedState implements CreditNoteDetailState {
  const factory CreditNoteDetailFailedState() =
      _$CreditNoteDetailFailedStateImpl;
}
