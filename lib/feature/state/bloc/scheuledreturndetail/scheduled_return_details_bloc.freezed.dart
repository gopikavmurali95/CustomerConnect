// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scheduled_return_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ScheduledReturnDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String reqID, String searchQuery)
        getAllScheduledReturnDetailsEvent,
    required TResult Function() clearScheduledReturnDetailsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String reqID, String searchQuery)?
        getAllScheduledReturnDetailsEvent,
    TResult? Function()? clearScheduledReturnDetailsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String reqID, String searchQuery)?
        getAllScheduledReturnDetailsEvent,
    TResult Function()? clearScheduledReturnDetailsEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllScheduledReturnDetailsEvent value)
        getAllScheduledReturnDetailsEvent,
    required TResult Function(ClearScheduledReturnDetailsEvent value)
        clearScheduledReturnDetailsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllScheduledReturnDetailsEvent value)?
        getAllScheduledReturnDetailsEvent,
    TResult? Function(ClearScheduledReturnDetailsEvent value)?
        clearScheduledReturnDetailsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllScheduledReturnDetailsEvent value)?
        getAllScheduledReturnDetailsEvent,
    TResult Function(ClearScheduledReturnDetailsEvent value)?
        clearScheduledReturnDetailsEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduledReturnDetailsEventCopyWith<$Res> {
  factory $ScheduledReturnDetailsEventCopyWith(
          ScheduledReturnDetailsEvent value,
          $Res Function(ScheduledReturnDetailsEvent) then) =
      _$ScheduledReturnDetailsEventCopyWithImpl<$Res,
          ScheduledReturnDetailsEvent>;
}

/// @nodoc
class _$ScheduledReturnDetailsEventCopyWithImpl<$Res,
        $Val extends ScheduledReturnDetailsEvent>
    implements $ScheduledReturnDetailsEventCopyWith<$Res> {
  _$ScheduledReturnDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAllScheduledReturnDetailsEventImplCopyWith<$Res> {
  factory _$$GetAllScheduledReturnDetailsEventImplCopyWith(
          _$GetAllScheduledReturnDetailsEventImpl value,
          $Res Function(_$GetAllScheduledReturnDetailsEventImpl) then) =
      __$$GetAllScheduledReturnDetailsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String reqID, String searchQuery});
}

/// @nodoc
class __$$GetAllScheduledReturnDetailsEventImplCopyWithImpl<$Res>
    extends _$ScheduledReturnDetailsEventCopyWithImpl<$Res,
        _$GetAllScheduledReturnDetailsEventImpl>
    implements _$$GetAllScheduledReturnDetailsEventImplCopyWith<$Res> {
  __$$GetAllScheduledReturnDetailsEventImplCopyWithImpl(
      _$GetAllScheduledReturnDetailsEventImpl _value,
      $Res Function(_$GetAllScheduledReturnDetailsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reqID = null,
    Object? searchQuery = null,
  }) {
    return _then(_$GetAllScheduledReturnDetailsEventImpl(
      reqID: null == reqID
          ? _value.reqID
          : reqID // ignore: cast_nullable_to_non_nullable
              as String,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetAllScheduledReturnDetailsEventImpl
    implements GetAllScheduledReturnDetailsEvent {
  const _$GetAllScheduledReturnDetailsEventImpl(
      {required this.reqID, required this.searchQuery});

  @override
  final String reqID;
  @override
  final String searchQuery;

  @override
  String toString() {
    return 'ScheduledReturnDetailsEvent.getAllScheduledReturnDetailsEvent(reqID: $reqID, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllScheduledReturnDetailsEventImpl &&
            (identical(other.reqID, reqID) || other.reqID == reqID) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reqID, searchQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllScheduledReturnDetailsEventImplCopyWith<
          _$GetAllScheduledReturnDetailsEventImpl>
      get copyWith => __$$GetAllScheduledReturnDetailsEventImplCopyWithImpl<
          _$GetAllScheduledReturnDetailsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String reqID, String searchQuery)
        getAllScheduledReturnDetailsEvent,
    required TResult Function() clearScheduledReturnDetailsEvent,
  }) {
    return getAllScheduledReturnDetailsEvent(reqID, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String reqID, String searchQuery)?
        getAllScheduledReturnDetailsEvent,
    TResult? Function()? clearScheduledReturnDetailsEvent,
  }) {
    return getAllScheduledReturnDetailsEvent?.call(reqID, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String reqID, String searchQuery)?
        getAllScheduledReturnDetailsEvent,
    TResult Function()? clearScheduledReturnDetailsEvent,
    required TResult orElse(),
  }) {
    if (getAllScheduledReturnDetailsEvent != null) {
      return getAllScheduledReturnDetailsEvent(reqID, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllScheduledReturnDetailsEvent value)
        getAllScheduledReturnDetailsEvent,
    required TResult Function(ClearScheduledReturnDetailsEvent value)
        clearScheduledReturnDetailsEvent,
  }) {
    return getAllScheduledReturnDetailsEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllScheduledReturnDetailsEvent value)?
        getAllScheduledReturnDetailsEvent,
    TResult? Function(ClearScheduledReturnDetailsEvent value)?
        clearScheduledReturnDetailsEvent,
  }) {
    return getAllScheduledReturnDetailsEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllScheduledReturnDetailsEvent value)?
        getAllScheduledReturnDetailsEvent,
    TResult Function(ClearScheduledReturnDetailsEvent value)?
        clearScheduledReturnDetailsEvent,
    required TResult orElse(),
  }) {
    if (getAllScheduledReturnDetailsEvent != null) {
      return getAllScheduledReturnDetailsEvent(this);
    }
    return orElse();
  }
}

abstract class GetAllScheduledReturnDetailsEvent
    implements ScheduledReturnDetailsEvent {
  const factory GetAllScheduledReturnDetailsEvent(
          {required final String reqID, required final String searchQuery}) =
      _$GetAllScheduledReturnDetailsEventImpl;

  String get reqID;
  String get searchQuery;
  @JsonKey(ignore: true)
  _$$GetAllScheduledReturnDetailsEventImplCopyWith<
          _$GetAllScheduledReturnDetailsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearScheduledReturnDetailsEventImplCopyWith<$Res> {
  factory _$$ClearScheduledReturnDetailsEventImplCopyWith(
          _$ClearScheduledReturnDetailsEventImpl value,
          $Res Function(_$ClearScheduledReturnDetailsEventImpl) then) =
      __$$ClearScheduledReturnDetailsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearScheduledReturnDetailsEventImplCopyWithImpl<$Res>
    extends _$ScheduledReturnDetailsEventCopyWithImpl<$Res,
        _$ClearScheduledReturnDetailsEventImpl>
    implements _$$ClearScheduledReturnDetailsEventImplCopyWith<$Res> {
  __$$ClearScheduledReturnDetailsEventImplCopyWithImpl(
      _$ClearScheduledReturnDetailsEventImpl _value,
      $Res Function(_$ClearScheduledReturnDetailsEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearScheduledReturnDetailsEventImpl
    implements ClearScheduledReturnDetailsEvent {
  const _$ClearScheduledReturnDetailsEventImpl();

  @override
  String toString() {
    return 'ScheduledReturnDetailsEvent.clearScheduledReturnDetailsEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearScheduledReturnDetailsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String reqID, String searchQuery)
        getAllScheduledReturnDetailsEvent,
    required TResult Function() clearScheduledReturnDetailsEvent,
  }) {
    return clearScheduledReturnDetailsEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String reqID, String searchQuery)?
        getAllScheduledReturnDetailsEvent,
    TResult? Function()? clearScheduledReturnDetailsEvent,
  }) {
    return clearScheduledReturnDetailsEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String reqID, String searchQuery)?
        getAllScheduledReturnDetailsEvent,
    TResult Function()? clearScheduledReturnDetailsEvent,
    required TResult orElse(),
  }) {
    if (clearScheduledReturnDetailsEvent != null) {
      return clearScheduledReturnDetailsEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllScheduledReturnDetailsEvent value)
        getAllScheduledReturnDetailsEvent,
    required TResult Function(ClearScheduledReturnDetailsEvent value)
        clearScheduledReturnDetailsEvent,
  }) {
    return clearScheduledReturnDetailsEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllScheduledReturnDetailsEvent value)?
        getAllScheduledReturnDetailsEvent,
    TResult? Function(ClearScheduledReturnDetailsEvent value)?
        clearScheduledReturnDetailsEvent,
  }) {
    return clearScheduledReturnDetailsEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllScheduledReturnDetailsEvent value)?
        getAllScheduledReturnDetailsEvent,
    TResult Function(ClearScheduledReturnDetailsEvent value)?
        clearScheduledReturnDetailsEvent,
    required TResult orElse(),
  }) {
    if (clearScheduledReturnDetailsEvent != null) {
      return clearScheduledReturnDetailsEvent(this);
    }
    return orElse();
  }
}

abstract class ClearScheduledReturnDetailsEvent
    implements ScheduledReturnDetailsEvent {
  const factory ClearScheduledReturnDetailsEvent() =
      _$ClearScheduledReturnDetailsEventImpl;
}

/// @nodoc
mixin _$ScheduledReturnDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<SheduledReturnDetailModel>? details)
        getScheduledReturnDetailState,
    required TResult Function() scheduledReturnDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<SheduledReturnDetailModel>? details)?
        getScheduledReturnDetailState,
    TResult? Function()? scheduledReturnDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SheduledReturnDetailModel>? details)?
        getScheduledReturnDetailState,
    TResult Function()? scheduledReturnDetailFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetScheduledReturnDetailState value)
        getScheduledReturnDetailState,
    required TResult Function(ScheduledReturnDetailFailedState value)
        scheduledReturnDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetScheduledReturnDetailState value)?
        getScheduledReturnDetailState,
    TResult? Function(ScheduledReturnDetailFailedState value)?
        scheduledReturnDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetScheduledReturnDetailState value)?
        getScheduledReturnDetailState,
    TResult Function(ScheduledReturnDetailFailedState value)?
        scheduledReturnDetailFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduledReturnDetailsStateCopyWith<$Res> {
  factory $ScheduledReturnDetailsStateCopyWith(
          ScheduledReturnDetailsState value,
          $Res Function(ScheduledReturnDetailsState) then) =
      _$ScheduledReturnDetailsStateCopyWithImpl<$Res,
          ScheduledReturnDetailsState>;
}

/// @nodoc
class _$ScheduledReturnDetailsStateCopyWithImpl<$Res,
        $Val extends ScheduledReturnDetailsState>
    implements $ScheduledReturnDetailsStateCopyWith<$Res> {
  _$ScheduledReturnDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetScheduledReturnDetailStateImplCopyWith<$Res> {
  factory _$$GetScheduledReturnDetailStateImplCopyWith(
          _$GetScheduledReturnDetailStateImpl value,
          $Res Function(_$GetScheduledReturnDetailStateImpl) then) =
      __$$GetScheduledReturnDetailStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SheduledReturnDetailModel>? details});
}

/// @nodoc
class __$$GetScheduledReturnDetailStateImplCopyWithImpl<$Res>
    extends _$ScheduledReturnDetailsStateCopyWithImpl<$Res,
        _$GetScheduledReturnDetailStateImpl>
    implements _$$GetScheduledReturnDetailStateImplCopyWith<$Res> {
  __$$GetScheduledReturnDetailStateImplCopyWithImpl(
      _$GetScheduledReturnDetailStateImpl _value,
      $Res Function(_$GetScheduledReturnDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? details = freezed,
  }) {
    return _then(_$GetScheduledReturnDetailStateImpl(
      details: freezed == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<SheduledReturnDetailModel>?,
    ));
  }
}

/// @nodoc

class _$GetScheduledReturnDetailStateImpl
    implements GetScheduledReturnDetailState {
  const _$GetScheduledReturnDetailStateImpl(
      {required final List<SheduledReturnDetailModel>? details})
      : _details = details;

  final List<SheduledReturnDetailModel>? _details;
  @override
  List<SheduledReturnDetailModel>? get details {
    final value = _details;
    if (value == null) return null;
    if (_details is EqualUnmodifiableListView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ScheduledReturnDetailsState.getScheduledReturnDetailState(details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetScheduledReturnDetailStateImpl &&
            const DeepCollectionEquality().equals(other._details, _details));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_details));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetScheduledReturnDetailStateImplCopyWith<
          _$GetScheduledReturnDetailStateImpl>
      get copyWith => __$$GetScheduledReturnDetailStateImplCopyWithImpl<
          _$GetScheduledReturnDetailStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<SheduledReturnDetailModel>? details)
        getScheduledReturnDetailState,
    required TResult Function() scheduledReturnDetailFailedState,
  }) {
    return getScheduledReturnDetailState(details);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<SheduledReturnDetailModel>? details)?
        getScheduledReturnDetailState,
    TResult? Function()? scheduledReturnDetailFailedState,
  }) {
    return getScheduledReturnDetailState?.call(details);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SheduledReturnDetailModel>? details)?
        getScheduledReturnDetailState,
    TResult Function()? scheduledReturnDetailFailedState,
    required TResult orElse(),
  }) {
    if (getScheduledReturnDetailState != null) {
      return getScheduledReturnDetailState(details);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetScheduledReturnDetailState value)
        getScheduledReturnDetailState,
    required TResult Function(ScheduledReturnDetailFailedState value)
        scheduledReturnDetailFailedState,
  }) {
    return getScheduledReturnDetailState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetScheduledReturnDetailState value)?
        getScheduledReturnDetailState,
    TResult? Function(ScheduledReturnDetailFailedState value)?
        scheduledReturnDetailFailedState,
  }) {
    return getScheduledReturnDetailState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetScheduledReturnDetailState value)?
        getScheduledReturnDetailState,
    TResult Function(ScheduledReturnDetailFailedState value)?
        scheduledReturnDetailFailedState,
    required TResult orElse(),
  }) {
    if (getScheduledReturnDetailState != null) {
      return getScheduledReturnDetailState(this);
    }
    return orElse();
  }
}

abstract class GetScheduledReturnDetailState
    implements ScheduledReturnDetailsState {
  const factory GetScheduledReturnDetailState(
          {required final List<SheduledReturnDetailModel>? details}) =
      _$GetScheduledReturnDetailStateImpl;

  List<SheduledReturnDetailModel>? get details;
  @JsonKey(ignore: true)
  _$$GetScheduledReturnDetailStateImplCopyWith<
          _$GetScheduledReturnDetailStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ScheduledReturnDetailFailedStateImplCopyWith<$Res> {
  factory _$$ScheduledReturnDetailFailedStateImplCopyWith(
          _$ScheduledReturnDetailFailedStateImpl value,
          $Res Function(_$ScheduledReturnDetailFailedStateImpl) then) =
      __$$ScheduledReturnDetailFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ScheduledReturnDetailFailedStateImplCopyWithImpl<$Res>
    extends _$ScheduledReturnDetailsStateCopyWithImpl<$Res,
        _$ScheduledReturnDetailFailedStateImpl>
    implements _$$ScheduledReturnDetailFailedStateImplCopyWith<$Res> {
  __$$ScheduledReturnDetailFailedStateImplCopyWithImpl(
      _$ScheduledReturnDetailFailedStateImpl _value,
      $Res Function(_$ScheduledReturnDetailFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ScheduledReturnDetailFailedStateImpl
    implements ScheduledReturnDetailFailedState {
  const _$ScheduledReturnDetailFailedStateImpl();

  @override
  String toString() {
    return 'ScheduledReturnDetailsState.scheduledReturnDetailFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScheduledReturnDetailFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<SheduledReturnDetailModel>? details)
        getScheduledReturnDetailState,
    required TResult Function() scheduledReturnDetailFailedState,
  }) {
    return scheduledReturnDetailFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<SheduledReturnDetailModel>? details)?
        getScheduledReturnDetailState,
    TResult? Function()? scheduledReturnDetailFailedState,
  }) {
    return scheduledReturnDetailFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SheduledReturnDetailModel>? details)?
        getScheduledReturnDetailState,
    TResult Function()? scheduledReturnDetailFailedState,
    required TResult orElse(),
  }) {
    if (scheduledReturnDetailFailedState != null) {
      return scheduledReturnDetailFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetScheduledReturnDetailState value)
        getScheduledReturnDetailState,
    required TResult Function(ScheduledReturnDetailFailedState value)
        scheduledReturnDetailFailedState,
  }) {
    return scheduledReturnDetailFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetScheduledReturnDetailState value)?
        getScheduledReturnDetailState,
    TResult? Function(ScheduledReturnDetailFailedState value)?
        scheduledReturnDetailFailedState,
  }) {
    return scheduledReturnDetailFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetScheduledReturnDetailState value)?
        getScheduledReturnDetailState,
    TResult Function(ScheduledReturnDetailFailedState value)?
        scheduledReturnDetailFailedState,
    required TResult orElse(),
  }) {
    if (scheduledReturnDetailFailedState != null) {
      return scheduledReturnDetailFailedState(this);
    }
    return orElse();
  }
}

abstract class ScheduledReturnDetailFailedState
    implements ScheduledReturnDetailsState {
  const factory ScheduledReturnDetailFailedState() =
      _$ScheduledReturnDetailFailedStateImpl;
}
