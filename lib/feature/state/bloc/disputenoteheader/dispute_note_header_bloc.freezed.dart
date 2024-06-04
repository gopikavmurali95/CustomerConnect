// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dispute_note_header_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DisputeNoteHeaderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userID, String mode, String searchQuery)
        getDisputeNoteHeadersEvent,
    required TResult Function() clearDisputeNoteHEaderEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userID, String mode, String searchQuery)?
        getDisputeNoteHeadersEvent,
    TResult? Function()? clearDisputeNoteHEaderEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userID, String mode, String searchQuery)?
        getDisputeNoteHeadersEvent,
    TResult Function()? clearDisputeNoteHEaderEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDisputeNoteHeadersEvent value)
        getDisputeNoteHeadersEvent,
    required TResult Function(ClearDisputeNoteHEaderEvent value)
        clearDisputeNoteHEaderEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDisputeNoteHeadersEvent value)?
        getDisputeNoteHeadersEvent,
    TResult? Function(ClearDisputeNoteHEaderEvent value)?
        clearDisputeNoteHEaderEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDisputeNoteHeadersEvent value)?
        getDisputeNoteHeadersEvent,
    TResult Function(ClearDisputeNoteHEaderEvent value)?
        clearDisputeNoteHEaderEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisputeNoteHeaderEventCopyWith<$Res> {
  factory $DisputeNoteHeaderEventCopyWith(DisputeNoteHeaderEvent value,
          $Res Function(DisputeNoteHeaderEvent) then) =
      _$DisputeNoteHeaderEventCopyWithImpl<$Res, DisputeNoteHeaderEvent>;
}

/// @nodoc
class _$DisputeNoteHeaderEventCopyWithImpl<$Res,
        $Val extends DisputeNoteHeaderEvent>
    implements $DisputeNoteHeaderEventCopyWith<$Res> {
  _$DisputeNoteHeaderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetDisputeNoteHeadersEventImplCopyWith<$Res> {
  factory _$$GetDisputeNoteHeadersEventImplCopyWith(
          _$GetDisputeNoteHeadersEventImpl value,
          $Res Function(_$GetDisputeNoteHeadersEventImpl) then) =
      __$$GetDisputeNoteHeadersEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userID, String mode, String searchQuery});
}

/// @nodoc
class __$$GetDisputeNoteHeadersEventImplCopyWithImpl<$Res>
    extends _$DisputeNoteHeaderEventCopyWithImpl<$Res,
        _$GetDisputeNoteHeadersEventImpl>
    implements _$$GetDisputeNoteHeadersEventImplCopyWith<$Res> {
  __$$GetDisputeNoteHeadersEventImplCopyWithImpl(
      _$GetDisputeNoteHeadersEventImpl _value,
      $Res Function(_$GetDisputeNoteHeadersEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = null,
    Object? mode = null,
    Object? searchQuery = null,
  }) {
    return _then(_$GetDisputeNoteHeadersEventImpl(
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as String,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetDisputeNoteHeadersEventImpl implements GetDisputeNoteHeadersEvent {
  const _$GetDisputeNoteHeadersEventImpl(
      {required this.userID, required this.mode, required this.searchQuery});

  @override
  final String userID;
  @override
  final String mode;
  @override
  final String searchQuery;

  @override
  String toString() {
    return 'DisputeNoteHeaderEvent.getDisputeNoteHeadersEvent(userID: $userID, mode: $mode, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDisputeNoteHeadersEventImpl &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userID, mode, searchQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDisputeNoteHeadersEventImplCopyWith<_$GetDisputeNoteHeadersEventImpl>
      get copyWith => __$$GetDisputeNoteHeadersEventImplCopyWithImpl<
          _$GetDisputeNoteHeadersEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userID, String mode, String searchQuery)
        getDisputeNoteHeadersEvent,
    required TResult Function() clearDisputeNoteHEaderEvent,
  }) {
    return getDisputeNoteHeadersEvent(userID, mode, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userID, String mode, String searchQuery)?
        getDisputeNoteHeadersEvent,
    TResult? Function()? clearDisputeNoteHEaderEvent,
  }) {
    return getDisputeNoteHeadersEvent?.call(userID, mode, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userID, String mode, String searchQuery)?
        getDisputeNoteHeadersEvent,
    TResult Function()? clearDisputeNoteHEaderEvent,
    required TResult orElse(),
  }) {
    if (getDisputeNoteHeadersEvent != null) {
      return getDisputeNoteHeadersEvent(userID, mode, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDisputeNoteHeadersEvent value)
        getDisputeNoteHeadersEvent,
    required TResult Function(ClearDisputeNoteHEaderEvent value)
        clearDisputeNoteHEaderEvent,
  }) {
    return getDisputeNoteHeadersEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDisputeNoteHeadersEvent value)?
        getDisputeNoteHeadersEvent,
    TResult? Function(ClearDisputeNoteHEaderEvent value)?
        clearDisputeNoteHEaderEvent,
  }) {
    return getDisputeNoteHeadersEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDisputeNoteHeadersEvent value)?
        getDisputeNoteHeadersEvent,
    TResult Function(ClearDisputeNoteHEaderEvent value)?
        clearDisputeNoteHEaderEvent,
    required TResult orElse(),
  }) {
    if (getDisputeNoteHeadersEvent != null) {
      return getDisputeNoteHeadersEvent(this);
    }
    return orElse();
  }
}

abstract class GetDisputeNoteHeadersEvent implements DisputeNoteHeaderEvent {
  const factory GetDisputeNoteHeadersEvent(
      {required final String userID,
      required final String mode,
      required final String searchQuery}) = _$GetDisputeNoteHeadersEventImpl;

  String get userID;
  String get mode;
  String get searchQuery;
  @JsonKey(ignore: true)
  _$$GetDisputeNoteHeadersEventImplCopyWith<_$GetDisputeNoteHeadersEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearDisputeNoteHEaderEventImplCopyWith<$Res> {
  factory _$$ClearDisputeNoteHEaderEventImplCopyWith(
          _$ClearDisputeNoteHEaderEventImpl value,
          $Res Function(_$ClearDisputeNoteHEaderEventImpl) then) =
      __$$ClearDisputeNoteHEaderEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearDisputeNoteHEaderEventImplCopyWithImpl<$Res>
    extends _$DisputeNoteHeaderEventCopyWithImpl<$Res,
        _$ClearDisputeNoteHEaderEventImpl>
    implements _$$ClearDisputeNoteHEaderEventImplCopyWith<$Res> {
  __$$ClearDisputeNoteHEaderEventImplCopyWithImpl(
      _$ClearDisputeNoteHEaderEventImpl _value,
      $Res Function(_$ClearDisputeNoteHEaderEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearDisputeNoteHEaderEventImpl implements ClearDisputeNoteHEaderEvent {
  const _$ClearDisputeNoteHEaderEventImpl();

  @override
  String toString() {
    return 'DisputeNoteHeaderEvent.clearDisputeNoteHEaderEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearDisputeNoteHEaderEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userID, String mode, String searchQuery)
        getDisputeNoteHeadersEvent,
    required TResult Function() clearDisputeNoteHEaderEvent,
  }) {
    return clearDisputeNoteHEaderEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userID, String mode, String searchQuery)?
        getDisputeNoteHeadersEvent,
    TResult? Function()? clearDisputeNoteHEaderEvent,
  }) {
    return clearDisputeNoteHEaderEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userID, String mode, String searchQuery)?
        getDisputeNoteHeadersEvent,
    TResult Function()? clearDisputeNoteHEaderEvent,
    required TResult orElse(),
  }) {
    if (clearDisputeNoteHEaderEvent != null) {
      return clearDisputeNoteHEaderEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDisputeNoteHeadersEvent value)
        getDisputeNoteHeadersEvent,
    required TResult Function(ClearDisputeNoteHEaderEvent value)
        clearDisputeNoteHEaderEvent,
  }) {
    return clearDisputeNoteHEaderEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDisputeNoteHeadersEvent value)?
        getDisputeNoteHeadersEvent,
    TResult? Function(ClearDisputeNoteHEaderEvent value)?
        clearDisputeNoteHEaderEvent,
  }) {
    return clearDisputeNoteHEaderEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDisputeNoteHeadersEvent value)?
        getDisputeNoteHeadersEvent,
    TResult Function(ClearDisputeNoteHEaderEvent value)?
        clearDisputeNoteHEaderEvent,
    required TResult orElse(),
  }) {
    if (clearDisputeNoteHEaderEvent != null) {
      return clearDisputeNoteHEaderEvent(this);
    }
    return orElse();
  }
}

abstract class ClearDisputeNoteHEaderEvent implements DisputeNoteHeaderEvent {
  const factory ClearDisputeNoteHEaderEvent() =
      _$ClearDisputeNoteHEaderEventImpl;
}

/// @nodoc
mixin _$DisputeNoteHeaderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DisputeNoteHeaderModel>? headers)
        getDisputeNoteHeaderState,
    required TResult Function() disputeNoteHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<DisputeNoteHeaderModel>? headers)?
        getDisputeNoteHeaderState,
    TResult? Function()? disputeNoteHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DisputeNoteHeaderModel>? headers)?
        getDisputeNoteHeaderState,
    TResult Function()? disputeNoteHeaderFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDisputeNoteHeaderState value)
        getDisputeNoteHeaderState,
    required TResult Function(DisputeNoteHeaderFailedState value)
        disputeNoteHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDisputeNoteHeaderState value)?
        getDisputeNoteHeaderState,
    TResult? Function(DisputeNoteHeaderFailedState value)?
        disputeNoteHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDisputeNoteHeaderState value)?
        getDisputeNoteHeaderState,
    TResult Function(DisputeNoteHeaderFailedState value)?
        disputeNoteHeaderFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisputeNoteHeaderStateCopyWith<$Res> {
  factory $DisputeNoteHeaderStateCopyWith(DisputeNoteHeaderState value,
          $Res Function(DisputeNoteHeaderState) then) =
      _$DisputeNoteHeaderStateCopyWithImpl<$Res, DisputeNoteHeaderState>;
}

/// @nodoc
class _$DisputeNoteHeaderStateCopyWithImpl<$Res,
        $Val extends DisputeNoteHeaderState>
    implements $DisputeNoteHeaderStateCopyWith<$Res> {
  _$DisputeNoteHeaderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetDisputeNoteHeaderStateImplCopyWith<$Res> {
  factory _$$GetDisputeNoteHeaderStateImplCopyWith(
          _$GetDisputeNoteHeaderStateImpl value,
          $Res Function(_$GetDisputeNoteHeaderStateImpl) then) =
      __$$GetDisputeNoteHeaderStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<DisputeNoteHeaderModel>? headers});
}

/// @nodoc
class __$$GetDisputeNoteHeaderStateImplCopyWithImpl<$Res>
    extends _$DisputeNoteHeaderStateCopyWithImpl<$Res,
        _$GetDisputeNoteHeaderStateImpl>
    implements _$$GetDisputeNoteHeaderStateImplCopyWith<$Res> {
  __$$GetDisputeNoteHeaderStateImplCopyWithImpl(
      _$GetDisputeNoteHeaderStateImpl _value,
      $Res Function(_$GetDisputeNoteHeaderStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headers = freezed,
  }) {
    return _then(_$GetDisputeNoteHeaderStateImpl(
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as List<DisputeNoteHeaderModel>?,
    ));
  }
}

/// @nodoc

class _$GetDisputeNoteHeaderStateImpl implements GetDisputeNoteHeaderState {
  const _$GetDisputeNoteHeaderStateImpl(
      {required final List<DisputeNoteHeaderModel>? headers})
      : _headers = headers;

  final List<DisputeNoteHeaderModel>? _headers;
  @override
  List<DisputeNoteHeaderModel>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableListView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DisputeNoteHeaderState.getDisputeNoteHeaderState(headers: $headers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDisputeNoteHeaderStateImpl &&
            const DeepCollectionEquality().equals(other._headers, _headers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_headers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDisputeNoteHeaderStateImplCopyWith<_$GetDisputeNoteHeaderStateImpl>
      get copyWith => __$$GetDisputeNoteHeaderStateImplCopyWithImpl<
          _$GetDisputeNoteHeaderStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DisputeNoteHeaderModel>? headers)
        getDisputeNoteHeaderState,
    required TResult Function() disputeNoteHeaderFailedState,
  }) {
    return getDisputeNoteHeaderState(headers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<DisputeNoteHeaderModel>? headers)?
        getDisputeNoteHeaderState,
    TResult? Function()? disputeNoteHeaderFailedState,
  }) {
    return getDisputeNoteHeaderState?.call(headers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DisputeNoteHeaderModel>? headers)?
        getDisputeNoteHeaderState,
    TResult Function()? disputeNoteHeaderFailedState,
    required TResult orElse(),
  }) {
    if (getDisputeNoteHeaderState != null) {
      return getDisputeNoteHeaderState(headers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDisputeNoteHeaderState value)
        getDisputeNoteHeaderState,
    required TResult Function(DisputeNoteHeaderFailedState value)
        disputeNoteHeaderFailedState,
  }) {
    return getDisputeNoteHeaderState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDisputeNoteHeaderState value)?
        getDisputeNoteHeaderState,
    TResult? Function(DisputeNoteHeaderFailedState value)?
        disputeNoteHeaderFailedState,
  }) {
    return getDisputeNoteHeaderState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDisputeNoteHeaderState value)?
        getDisputeNoteHeaderState,
    TResult Function(DisputeNoteHeaderFailedState value)?
        disputeNoteHeaderFailedState,
    required TResult orElse(),
  }) {
    if (getDisputeNoteHeaderState != null) {
      return getDisputeNoteHeaderState(this);
    }
    return orElse();
  }
}

abstract class GetDisputeNoteHeaderState implements DisputeNoteHeaderState {
  const factory GetDisputeNoteHeaderState(
          {required final List<DisputeNoteHeaderModel>? headers}) =
      _$GetDisputeNoteHeaderStateImpl;

  List<DisputeNoteHeaderModel>? get headers;
  @JsonKey(ignore: true)
  _$$GetDisputeNoteHeaderStateImplCopyWith<_$GetDisputeNoteHeaderStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DisputeNoteHeaderFailedStateImplCopyWith<$Res> {
  factory _$$DisputeNoteHeaderFailedStateImplCopyWith(
          _$DisputeNoteHeaderFailedStateImpl value,
          $Res Function(_$DisputeNoteHeaderFailedStateImpl) then) =
      __$$DisputeNoteHeaderFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisputeNoteHeaderFailedStateImplCopyWithImpl<$Res>
    extends _$DisputeNoteHeaderStateCopyWithImpl<$Res,
        _$DisputeNoteHeaderFailedStateImpl>
    implements _$$DisputeNoteHeaderFailedStateImplCopyWith<$Res> {
  __$$DisputeNoteHeaderFailedStateImplCopyWithImpl(
      _$DisputeNoteHeaderFailedStateImpl _value,
      $Res Function(_$DisputeNoteHeaderFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$DisputeNoteHeaderFailedStateImpl
    implements DisputeNoteHeaderFailedState {
  const _$DisputeNoteHeaderFailedStateImpl();

  @override
  String toString() {
    return 'DisputeNoteHeaderState.disputeNoteHeaderFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisputeNoteHeaderFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DisputeNoteHeaderModel>? headers)
        getDisputeNoteHeaderState,
    required TResult Function() disputeNoteHeaderFailedState,
  }) {
    return disputeNoteHeaderFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<DisputeNoteHeaderModel>? headers)?
        getDisputeNoteHeaderState,
    TResult? Function()? disputeNoteHeaderFailedState,
  }) {
    return disputeNoteHeaderFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DisputeNoteHeaderModel>? headers)?
        getDisputeNoteHeaderState,
    TResult Function()? disputeNoteHeaderFailedState,
    required TResult orElse(),
  }) {
    if (disputeNoteHeaderFailedState != null) {
      return disputeNoteHeaderFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDisputeNoteHeaderState value)
        getDisputeNoteHeaderState,
    required TResult Function(DisputeNoteHeaderFailedState value)
        disputeNoteHeaderFailedState,
  }) {
    return disputeNoteHeaderFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDisputeNoteHeaderState value)?
        getDisputeNoteHeaderState,
    TResult? Function(DisputeNoteHeaderFailedState value)?
        disputeNoteHeaderFailedState,
  }) {
    return disputeNoteHeaderFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDisputeNoteHeaderState value)?
        getDisputeNoteHeaderState,
    TResult Function(DisputeNoteHeaderFailedState value)?
        disputeNoteHeaderFailedState,
    required TResult orElse(),
  }) {
    if (disputeNoteHeaderFailedState != null) {
      return disputeNoteHeaderFailedState(this);
    }
    return orElse();
  }
}

abstract class DisputeNoteHeaderFailedState implements DisputeNoteHeaderState {
  const factory DisputeNoteHeaderFailedState() =
      _$DisputeNoteHeaderFailedStateImpl;
}
