// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dispute_note_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DisputeNoteDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String reqId, String searchQuery)
        getDisputeNoteDetailEvent,
    required TResult Function() clearDisputeNoteDetailEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String reqId, String searchQuery)?
        getDisputeNoteDetailEvent,
    TResult? Function()? clearDisputeNoteDetailEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String reqId, String searchQuery)?
        getDisputeNoteDetailEvent,
    TResult Function()? clearDisputeNoteDetailEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDisputeNoteDetailEvent value)
        getDisputeNoteDetailEvent,
    required TResult Function(ClearDisputeNoteDetailEvent value)
        clearDisputeNoteDetailEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDisputeNoteDetailEvent value)?
        getDisputeNoteDetailEvent,
    TResult? Function(ClearDisputeNoteDetailEvent value)?
        clearDisputeNoteDetailEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDisputeNoteDetailEvent value)?
        getDisputeNoteDetailEvent,
    TResult Function(ClearDisputeNoteDetailEvent value)?
        clearDisputeNoteDetailEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisputeNoteDetailEventCopyWith<$Res> {
  factory $DisputeNoteDetailEventCopyWith(DisputeNoteDetailEvent value,
          $Res Function(DisputeNoteDetailEvent) then) =
      _$DisputeNoteDetailEventCopyWithImpl<$Res, DisputeNoteDetailEvent>;
}

/// @nodoc
class _$DisputeNoteDetailEventCopyWithImpl<$Res,
        $Val extends DisputeNoteDetailEvent>
    implements $DisputeNoteDetailEventCopyWith<$Res> {
  _$DisputeNoteDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetDisputeNoteDetailEventImplCopyWith<$Res> {
  factory _$$GetDisputeNoteDetailEventImplCopyWith(
          _$GetDisputeNoteDetailEventImpl value,
          $Res Function(_$GetDisputeNoteDetailEventImpl) then) =
      __$$GetDisputeNoteDetailEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String reqId, String searchQuery});
}

/// @nodoc
class __$$GetDisputeNoteDetailEventImplCopyWithImpl<$Res>
    extends _$DisputeNoteDetailEventCopyWithImpl<$Res,
        _$GetDisputeNoteDetailEventImpl>
    implements _$$GetDisputeNoteDetailEventImplCopyWith<$Res> {
  __$$GetDisputeNoteDetailEventImplCopyWithImpl(
      _$GetDisputeNoteDetailEventImpl _value,
      $Res Function(_$GetDisputeNoteDetailEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reqId = null,
    Object? searchQuery = null,
  }) {
    return _then(_$GetDisputeNoteDetailEventImpl(
      reqId: null == reqId
          ? _value.reqId
          : reqId // ignore: cast_nullable_to_non_nullable
              as String,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetDisputeNoteDetailEventImpl implements GetDisputeNoteDetailEvent {
  const _$GetDisputeNoteDetailEventImpl(
      {required this.reqId, required this.searchQuery});

  @override
  final String reqId;
  @override
  final String searchQuery;

  @override
  String toString() {
    return 'DisputeNoteDetailEvent.getDisputeNoteDetailEvent(reqId: $reqId, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDisputeNoteDetailEventImpl &&
            (identical(other.reqId, reqId) || other.reqId == reqId) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reqId, searchQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDisputeNoteDetailEventImplCopyWith<_$GetDisputeNoteDetailEventImpl>
      get copyWith => __$$GetDisputeNoteDetailEventImplCopyWithImpl<
          _$GetDisputeNoteDetailEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String reqId, String searchQuery)
        getDisputeNoteDetailEvent,
    required TResult Function() clearDisputeNoteDetailEvent,
  }) {
    return getDisputeNoteDetailEvent(reqId, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String reqId, String searchQuery)?
        getDisputeNoteDetailEvent,
    TResult? Function()? clearDisputeNoteDetailEvent,
  }) {
    return getDisputeNoteDetailEvent?.call(reqId, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String reqId, String searchQuery)?
        getDisputeNoteDetailEvent,
    TResult Function()? clearDisputeNoteDetailEvent,
    required TResult orElse(),
  }) {
    if (getDisputeNoteDetailEvent != null) {
      return getDisputeNoteDetailEvent(reqId, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDisputeNoteDetailEvent value)
        getDisputeNoteDetailEvent,
    required TResult Function(ClearDisputeNoteDetailEvent value)
        clearDisputeNoteDetailEvent,
  }) {
    return getDisputeNoteDetailEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDisputeNoteDetailEvent value)?
        getDisputeNoteDetailEvent,
    TResult? Function(ClearDisputeNoteDetailEvent value)?
        clearDisputeNoteDetailEvent,
  }) {
    return getDisputeNoteDetailEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDisputeNoteDetailEvent value)?
        getDisputeNoteDetailEvent,
    TResult Function(ClearDisputeNoteDetailEvent value)?
        clearDisputeNoteDetailEvent,
    required TResult orElse(),
  }) {
    if (getDisputeNoteDetailEvent != null) {
      return getDisputeNoteDetailEvent(this);
    }
    return orElse();
  }
}

abstract class GetDisputeNoteDetailEvent implements DisputeNoteDetailEvent {
  const factory GetDisputeNoteDetailEvent(
      {required final String reqId,
      required final String searchQuery}) = _$GetDisputeNoteDetailEventImpl;

  String get reqId;
  String get searchQuery;
  @JsonKey(ignore: true)
  _$$GetDisputeNoteDetailEventImplCopyWith<_$GetDisputeNoteDetailEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearDisputeNoteDetailEventImplCopyWith<$Res> {
  factory _$$ClearDisputeNoteDetailEventImplCopyWith(
          _$ClearDisputeNoteDetailEventImpl value,
          $Res Function(_$ClearDisputeNoteDetailEventImpl) then) =
      __$$ClearDisputeNoteDetailEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearDisputeNoteDetailEventImplCopyWithImpl<$Res>
    extends _$DisputeNoteDetailEventCopyWithImpl<$Res,
        _$ClearDisputeNoteDetailEventImpl>
    implements _$$ClearDisputeNoteDetailEventImplCopyWith<$Res> {
  __$$ClearDisputeNoteDetailEventImplCopyWithImpl(
      _$ClearDisputeNoteDetailEventImpl _value,
      $Res Function(_$ClearDisputeNoteDetailEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearDisputeNoteDetailEventImpl implements ClearDisputeNoteDetailEvent {
  const _$ClearDisputeNoteDetailEventImpl();

  @override
  String toString() {
    return 'DisputeNoteDetailEvent.clearDisputeNoteDetailEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearDisputeNoteDetailEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String reqId, String searchQuery)
        getDisputeNoteDetailEvent,
    required TResult Function() clearDisputeNoteDetailEvent,
  }) {
    return clearDisputeNoteDetailEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String reqId, String searchQuery)?
        getDisputeNoteDetailEvent,
    TResult? Function()? clearDisputeNoteDetailEvent,
  }) {
    return clearDisputeNoteDetailEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String reqId, String searchQuery)?
        getDisputeNoteDetailEvent,
    TResult Function()? clearDisputeNoteDetailEvent,
    required TResult orElse(),
  }) {
    if (clearDisputeNoteDetailEvent != null) {
      return clearDisputeNoteDetailEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDisputeNoteDetailEvent value)
        getDisputeNoteDetailEvent,
    required TResult Function(ClearDisputeNoteDetailEvent value)
        clearDisputeNoteDetailEvent,
  }) {
    return clearDisputeNoteDetailEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDisputeNoteDetailEvent value)?
        getDisputeNoteDetailEvent,
    TResult? Function(ClearDisputeNoteDetailEvent value)?
        clearDisputeNoteDetailEvent,
  }) {
    return clearDisputeNoteDetailEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDisputeNoteDetailEvent value)?
        getDisputeNoteDetailEvent,
    TResult Function(ClearDisputeNoteDetailEvent value)?
        clearDisputeNoteDetailEvent,
    required TResult orElse(),
  }) {
    if (clearDisputeNoteDetailEvent != null) {
      return clearDisputeNoteDetailEvent(this);
    }
    return orElse();
  }
}

abstract class ClearDisputeNoteDetailEvent implements DisputeNoteDetailEvent {
  const factory ClearDisputeNoteDetailEvent() =
      _$ClearDisputeNoteDetailEventImpl;
}

/// @nodoc
mixin _$DisputeNoteDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DisputeNoteDetailModel>? details)
        getDisputeNoteDetailState,
    required TResult Function() getdisputenoteDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<DisputeNoteDetailModel>? details)?
        getDisputeNoteDetailState,
    TResult? Function()? getdisputenoteDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DisputeNoteDetailModel>? details)?
        getDisputeNoteDetailState,
    TResult Function()? getdisputenoteDetailFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDisputeNoteDetailState value)
        getDisputeNoteDetailState,
    required TResult Function(GetdisputenoteDetailFailedState value)
        getdisputenoteDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDisputeNoteDetailState value)?
        getDisputeNoteDetailState,
    TResult? Function(GetdisputenoteDetailFailedState value)?
        getdisputenoteDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDisputeNoteDetailState value)?
        getDisputeNoteDetailState,
    TResult Function(GetdisputenoteDetailFailedState value)?
        getdisputenoteDetailFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisputeNoteDetailStateCopyWith<$Res> {
  factory $DisputeNoteDetailStateCopyWith(DisputeNoteDetailState value,
          $Res Function(DisputeNoteDetailState) then) =
      _$DisputeNoteDetailStateCopyWithImpl<$Res, DisputeNoteDetailState>;
}

/// @nodoc
class _$DisputeNoteDetailStateCopyWithImpl<$Res,
        $Val extends DisputeNoteDetailState>
    implements $DisputeNoteDetailStateCopyWith<$Res> {
  _$DisputeNoteDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetDisputeNoteDetailStateImplCopyWith<$Res> {
  factory _$$GetDisputeNoteDetailStateImplCopyWith(
          _$GetDisputeNoteDetailStateImpl value,
          $Res Function(_$GetDisputeNoteDetailStateImpl) then) =
      __$$GetDisputeNoteDetailStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<DisputeNoteDetailModel>? details});
}

/// @nodoc
class __$$GetDisputeNoteDetailStateImplCopyWithImpl<$Res>
    extends _$DisputeNoteDetailStateCopyWithImpl<$Res,
        _$GetDisputeNoteDetailStateImpl>
    implements _$$GetDisputeNoteDetailStateImplCopyWith<$Res> {
  __$$GetDisputeNoteDetailStateImplCopyWithImpl(
      _$GetDisputeNoteDetailStateImpl _value,
      $Res Function(_$GetDisputeNoteDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? details = freezed,
  }) {
    return _then(_$GetDisputeNoteDetailStateImpl(
      details: freezed == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<DisputeNoteDetailModel>?,
    ));
  }
}

/// @nodoc

class _$GetDisputeNoteDetailStateImpl implements GetDisputeNoteDetailState {
  const _$GetDisputeNoteDetailStateImpl(
      {required final List<DisputeNoteDetailModel>? details})
      : _details = details;

  final List<DisputeNoteDetailModel>? _details;
  @override
  List<DisputeNoteDetailModel>? get details {
    final value = _details;
    if (value == null) return null;
    if (_details is EqualUnmodifiableListView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DisputeNoteDetailState.getDisputeNoteDetailState(details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDisputeNoteDetailStateImpl &&
            const DeepCollectionEquality().equals(other._details, _details));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_details));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDisputeNoteDetailStateImplCopyWith<_$GetDisputeNoteDetailStateImpl>
      get copyWith => __$$GetDisputeNoteDetailStateImplCopyWithImpl<
          _$GetDisputeNoteDetailStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DisputeNoteDetailModel>? details)
        getDisputeNoteDetailState,
    required TResult Function() getdisputenoteDetailFailedState,
  }) {
    return getDisputeNoteDetailState(details);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<DisputeNoteDetailModel>? details)?
        getDisputeNoteDetailState,
    TResult? Function()? getdisputenoteDetailFailedState,
  }) {
    return getDisputeNoteDetailState?.call(details);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DisputeNoteDetailModel>? details)?
        getDisputeNoteDetailState,
    TResult Function()? getdisputenoteDetailFailedState,
    required TResult orElse(),
  }) {
    if (getDisputeNoteDetailState != null) {
      return getDisputeNoteDetailState(details);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDisputeNoteDetailState value)
        getDisputeNoteDetailState,
    required TResult Function(GetdisputenoteDetailFailedState value)
        getdisputenoteDetailFailedState,
  }) {
    return getDisputeNoteDetailState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDisputeNoteDetailState value)?
        getDisputeNoteDetailState,
    TResult? Function(GetdisputenoteDetailFailedState value)?
        getdisputenoteDetailFailedState,
  }) {
    return getDisputeNoteDetailState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDisputeNoteDetailState value)?
        getDisputeNoteDetailState,
    TResult Function(GetdisputenoteDetailFailedState value)?
        getdisputenoteDetailFailedState,
    required TResult orElse(),
  }) {
    if (getDisputeNoteDetailState != null) {
      return getDisputeNoteDetailState(this);
    }
    return orElse();
  }
}

abstract class GetDisputeNoteDetailState implements DisputeNoteDetailState {
  const factory GetDisputeNoteDetailState(
          {required final List<DisputeNoteDetailModel>? details}) =
      _$GetDisputeNoteDetailStateImpl;

  List<DisputeNoteDetailModel>? get details;
  @JsonKey(ignore: true)
  _$$GetDisputeNoteDetailStateImplCopyWith<_$GetDisputeNoteDetailStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetdisputenoteDetailFailedStateImplCopyWith<$Res> {
  factory _$$GetdisputenoteDetailFailedStateImplCopyWith(
          _$GetdisputenoteDetailFailedStateImpl value,
          $Res Function(_$GetdisputenoteDetailFailedStateImpl) then) =
      __$$GetdisputenoteDetailFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetdisputenoteDetailFailedStateImplCopyWithImpl<$Res>
    extends _$DisputeNoteDetailStateCopyWithImpl<$Res,
        _$GetdisputenoteDetailFailedStateImpl>
    implements _$$GetdisputenoteDetailFailedStateImplCopyWith<$Res> {
  __$$GetdisputenoteDetailFailedStateImplCopyWithImpl(
      _$GetdisputenoteDetailFailedStateImpl _value,
      $Res Function(_$GetdisputenoteDetailFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetdisputenoteDetailFailedStateImpl
    implements GetdisputenoteDetailFailedState {
  const _$GetdisputenoteDetailFailedStateImpl();

  @override
  String toString() {
    return 'DisputeNoteDetailState.getdisputenoteDetailFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetdisputenoteDetailFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<DisputeNoteDetailModel>? details)
        getDisputeNoteDetailState,
    required TResult Function() getdisputenoteDetailFailedState,
  }) {
    return getdisputenoteDetailFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<DisputeNoteDetailModel>? details)?
        getDisputeNoteDetailState,
    TResult? Function()? getdisputenoteDetailFailedState,
  }) {
    return getdisputenoteDetailFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<DisputeNoteDetailModel>? details)?
        getDisputeNoteDetailState,
    TResult Function()? getdisputenoteDetailFailedState,
    required TResult orElse(),
  }) {
    if (getdisputenoteDetailFailedState != null) {
      return getdisputenoteDetailFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDisputeNoteDetailState value)
        getDisputeNoteDetailState,
    required TResult Function(GetdisputenoteDetailFailedState value)
        getdisputenoteDetailFailedState,
  }) {
    return getdisputenoteDetailFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDisputeNoteDetailState value)?
        getDisputeNoteDetailState,
    TResult? Function(GetdisputenoteDetailFailedState value)?
        getdisputenoteDetailFailedState,
  }) {
    return getdisputenoteDetailFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDisputeNoteDetailState value)?
        getDisputeNoteDetailState,
    TResult Function(GetdisputenoteDetailFailedState value)?
        getdisputenoteDetailFailedState,
    required TResult orElse(),
  }) {
    if (getdisputenoteDetailFailedState != null) {
      return getdisputenoteDetailFailedState(this);
    }
    return orElse();
  }
}

abstract class GetdisputenoteDetailFailedState
    implements DisputeNoteDetailState {
  const factory GetdisputenoteDetailFailedState() =
      _$GetdisputenoteDetailFailedStateImpl;
}
