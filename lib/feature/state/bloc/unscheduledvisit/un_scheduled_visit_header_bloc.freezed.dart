// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'un_scheduled_visit_header_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UnScheduledVisitHeaderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchQuery, String mode)
        getUnScheduledHeadersEvent,
    required TResult Function() clearUnScheduledVisitEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchQuery, String mode)?
        getUnScheduledHeadersEvent,
    TResult? Function()? clearUnScheduledVisitEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchQuery, String mode)?
        getUnScheduledHeadersEvent,
    TResult Function()? clearUnScheduledVisitEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUnScheduledHeadersEvent value)
        getUnScheduledHeadersEvent,
    required TResult Function(ClearUnScheduledVisitEvent value)
        clearUnScheduledVisitEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUnScheduledHeadersEvent value)?
        getUnScheduledHeadersEvent,
    TResult? Function(ClearUnScheduledVisitEvent value)?
        clearUnScheduledVisitEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUnScheduledHeadersEvent value)?
        getUnScheduledHeadersEvent,
    TResult Function(ClearUnScheduledVisitEvent value)?
        clearUnScheduledVisitEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnScheduledVisitHeaderEventCopyWith<$Res> {
  factory $UnScheduledVisitHeaderEventCopyWith(
          UnScheduledVisitHeaderEvent value,
          $Res Function(UnScheduledVisitHeaderEvent) then) =
      _$UnScheduledVisitHeaderEventCopyWithImpl<$Res,
          UnScheduledVisitHeaderEvent>;
}

/// @nodoc
class _$UnScheduledVisitHeaderEventCopyWithImpl<$Res,
        $Val extends UnScheduledVisitHeaderEvent>
    implements $UnScheduledVisitHeaderEventCopyWith<$Res> {
  _$UnScheduledVisitHeaderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnScheduledVisitHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetUnScheduledHeadersEventImplCopyWith<$Res> {
  factory _$$GetUnScheduledHeadersEventImplCopyWith(
          _$GetUnScheduledHeadersEventImpl value,
          $Res Function(_$GetUnScheduledHeadersEventImpl) then) =
      __$$GetUnScheduledHeadersEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String searchQuery, String mode});
}

/// @nodoc
class __$$GetUnScheduledHeadersEventImplCopyWithImpl<$Res>
    extends _$UnScheduledVisitHeaderEventCopyWithImpl<$Res,
        _$GetUnScheduledHeadersEventImpl>
    implements _$$GetUnScheduledHeadersEventImplCopyWith<$Res> {
  __$$GetUnScheduledHeadersEventImplCopyWithImpl(
      _$GetUnScheduledHeadersEventImpl _value,
      $Res Function(_$GetUnScheduledHeadersEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnScheduledVisitHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchQuery = null,
    Object? mode = null,
  }) {
    return _then(_$GetUnScheduledHeadersEventImpl(
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetUnScheduledHeadersEventImpl implements GetUnScheduledHeadersEvent {
  const _$GetUnScheduledHeadersEventImpl(
      {required this.searchQuery, required this.mode});

  @override
  final String searchQuery;
  @override
  final String mode;

  @override
  String toString() {
    return 'UnScheduledVisitHeaderEvent.getUnScheduledHeadersEvent(searchQuery: $searchQuery, mode: $mode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUnScheduledHeadersEventImpl &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery) &&
            (identical(other.mode, mode) || other.mode == mode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchQuery, mode);

  /// Create a copy of UnScheduledVisitHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUnScheduledHeadersEventImplCopyWith<_$GetUnScheduledHeadersEventImpl>
      get copyWith => __$$GetUnScheduledHeadersEventImplCopyWithImpl<
          _$GetUnScheduledHeadersEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchQuery, String mode)
        getUnScheduledHeadersEvent,
    required TResult Function() clearUnScheduledVisitEvent,
  }) {
    return getUnScheduledHeadersEvent(searchQuery, mode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchQuery, String mode)?
        getUnScheduledHeadersEvent,
    TResult? Function()? clearUnScheduledVisitEvent,
  }) {
    return getUnScheduledHeadersEvent?.call(searchQuery, mode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchQuery, String mode)?
        getUnScheduledHeadersEvent,
    TResult Function()? clearUnScheduledVisitEvent,
    required TResult orElse(),
  }) {
    if (getUnScheduledHeadersEvent != null) {
      return getUnScheduledHeadersEvent(searchQuery, mode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUnScheduledHeadersEvent value)
        getUnScheduledHeadersEvent,
    required TResult Function(ClearUnScheduledVisitEvent value)
        clearUnScheduledVisitEvent,
  }) {
    return getUnScheduledHeadersEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUnScheduledHeadersEvent value)?
        getUnScheduledHeadersEvent,
    TResult? Function(ClearUnScheduledVisitEvent value)?
        clearUnScheduledVisitEvent,
  }) {
    return getUnScheduledHeadersEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUnScheduledHeadersEvent value)?
        getUnScheduledHeadersEvent,
    TResult Function(ClearUnScheduledVisitEvent value)?
        clearUnScheduledVisitEvent,
    required TResult orElse(),
  }) {
    if (getUnScheduledHeadersEvent != null) {
      return getUnScheduledHeadersEvent(this);
    }
    return orElse();
  }
}

abstract class GetUnScheduledHeadersEvent
    implements UnScheduledVisitHeaderEvent {
  const factory GetUnScheduledHeadersEvent(
      {required final String searchQuery,
      required final String mode}) = _$GetUnScheduledHeadersEventImpl;

  String get searchQuery;
  String get mode;

  /// Create a copy of UnScheduledVisitHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetUnScheduledHeadersEventImplCopyWith<_$GetUnScheduledHeadersEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearUnScheduledVisitEventImplCopyWith<$Res> {
  factory _$$ClearUnScheduledVisitEventImplCopyWith(
          _$ClearUnScheduledVisitEventImpl value,
          $Res Function(_$ClearUnScheduledVisitEventImpl) then) =
      __$$ClearUnScheduledVisitEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearUnScheduledVisitEventImplCopyWithImpl<$Res>
    extends _$UnScheduledVisitHeaderEventCopyWithImpl<$Res,
        _$ClearUnScheduledVisitEventImpl>
    implements _$$ClearUnScheduledVisitEventImplCopyWith<$Res> {
  __$$ClearUnScheduledVisitEventImplCopyWithImpl(
      _$ClearUnScheduledVisitEventImpl _value,
      $Res Function(_$ClearUnScheduledVisitEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnScheduledVisitHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearUnScheduledVisitEventImpl implements ClearUnScheduledVisitEvent {
  const _$ClearUnScheduledVisitEventImpl();

  @override
  String toString() {
    return 'UnScheduledVisitHeaderEvent.clearUnScheduledVisitEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearUnScheduledVisitEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchQuery, String mode)
        getUnScheduledHeadersEvent,
    required TResult Function() clearUnScheduledVisitEvent,
  }) {
    return clearUnScheduledVisitEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchQuery, String mode)?
        getUnScheduledHeadersEvent,
    TResult? Function()? clearUnScheduledVisitEvent,
  }) {
    return clearUnScheduledVisitEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchQuery, String mode)?
        getUnScheduledHeadersEvent,
    TResult Function()? clearUnScheduledVisitEvent,
    required TResult orElse(),
  }) {
    if (clearUnScheduledVisitEvent != null) {
      return clearUnScheduledVisitEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUnScheduledHeadersEvent value)
        getUnScheduledHeadersEvent,
    required TResult Function(ClearUnScheduledVisitEvent value)
        clearUnScheduledVisitEvent,
  }) {
    return clearUnScheduledVisitEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUnScheduledHeadersEvent value)?
        getUnScheduledHeadersEvent,
    TResult? Function(ClearUnScheduledVisitEvent value)?
        clearUnScheduledVisitEvent,
  }) {
    return clearUnScheduledVisitEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUnScheduledHeadersEvent value)?
        getUnScheduledHeadersEvent,
    TResult Function(ClearUnScheduledVisitEvent value)?
        clearUnScheduledVisitEvent,
    required TResult orElse(),
  }) {
    if (clearUnScheduledVisitEvent != null) {
      return clearUnScheduledVisitEvent(this);
    }
    return orElse();
  }
}

abstract class ClearUnScheduledVisitEvent
    implements UnScheduledVisitHeaderEvent {
  const factory ClearUnScheduledVisitEvent() = _$ClearUnScheduledVisitEventImpl;
}

/// @nodoc
mixin _$UnScheduledVisitHeaderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<UnScheduledApprovalHeaderModel>? headers)
        getUnScheduledVistHeadersState,
    required TResult Function() unScheduledVisitFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UnScheduledApprovalHeaderModel>? headers)?
        getUnScheduledVistHeadersState,
    TResult? Function()? unScheduledVisitFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UnScheduledApprovalHeaderModel>? headers)?
        getUnScheduledVistHeadersState,
    TResult Function()? unScheduledVisitFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUnScheduledVistHeadersState value)
        getUnScheduledVistHeadersState,
    required TResult Function(UnScheduledVisitFailedState value)
        unScheduledVisitFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUnScheduledVistHeadersState value)?
        getUnScheduledVistHeadersState,
    TResult? Function(UnScheduledVisitFailedState value)?
        unScheduledVisitFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUnScheduledVistHeadersState value)?
        getUnScheduledVistHeadersState,
    TResult Function(UnScheduledVisitFailedState value)?
        unScheduledVisitFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnScheduledVisitHeaderStateCopyWith<$Res> {
  factory $UnScheduledVisitHeaderStateCopyWith(
          UnScheduledVisitHeaderState value,
          $Res Function(UnScheduledVisitHeaderState) then) =
      _$UnScheduledVisitHeaderStateCopyWithImpl<$Res,
          UnScheduledVisitHeaderState>;
}

/// @nodoc
class _$UnScheduledVisitHeaderStateCopyWithImpl<$Res,
        $Val extends UnScheduledVisitHeaderState>
    implements $UnScheduledVisitHeaderStateCopyWith<$Res> {
  _$UnScheduledVisitHeaderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnScheduledVisitHeaderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetUnScheduledVistHeadersStateImplCopyWith<$Res> {
  factory _$$GetUnScheduledVistHeadersStateImplCopyWith(
          _$GetUnScheduledVistHeadersStateImpl value,
          $Res Function(_$GetUnScheduledVistHeadersStateImpl) then) =
      __$$GetUnScheduledVistHeadersStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UnScheduledApprovalHeaderModel>? headers});
}

/// @nodoc
class __$$GetUnScheduledVistHeadersStateImplCopyWithImpl<$Res>
    extends _$UnScheduledVisitHeaderStateCopyWithImpl<$Res,
        _$GetUnScheduledVistHeadersStateImpl>
    implements _$$GetUnScheduledVistHeadersStateImplCopyWith<$Res> {
  __$$GetUnScheduledVistHeadersStateImplCopyWithImpl(
      _$GetUnScheduledVistHeadersStateImpl _value,
      $Res Function(_$GetUnScheduledVistHeadersStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnScheduledVisitHeaderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headers = freezed,
  }) {
    return _then(_$GetUnScheduledVistHeadersStateImpl(
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as List<UnScheduledApprovalHeaderModel>?,
    ));
  }
}

/// @nodoc

class _$GetUnScheduledVistHeadersStateImpl
    implements GetUnScheduledVistHeadersState {
  const _$GetUnScheduledVistHeadersStateImpl(
      {required final List<UnScheduledApprovalHeaderModel>? headers})
      : _headers = headers;

  final List<UnScheduledApprovalHeaderModel>? _headers;
  @override
  List<UnScheduledApprovalHeaderModel>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableListView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UnScheduledVisitHeaderState.getUnScheduledVistHeadersState(headers: $headers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUnScheduledVistHeadersStateImpl &&
            const DeepCollectionEquality().equals(other._headers, _headers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_headers));

  /// Create a copy of UnScheduledVisitHeaderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUnScheduledVistHeadersStateImplCopyWith<
          _$GetUnScheduledVistHeadersStateImpl>
      get copyWith => __$$GetUnScheduledVistHeadersStateImplCopyWithImpl<
          _$GetUnScheduledVistHeadersStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<UnScheduledApprovalHeaderModel>? headers)
        getUnScheduledVistHeadersState,
    required TResult Function() unScheduledVisitFailedState,
  }) {
    return getUnScheduledVistHeadersState(headers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UnScheduledApprovalHeaderModel>? headers)?
        getUnScheduledVistHeadersState,
    TResult? Function()? unScheduledVisitFailedState,
  }) {
    return getUnScheduledVistHeadersState?.call(headers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UnScheduledApprovalHeaderModel>? headers)?
        getUnScheduledVistHeadersState,
    TResult Function()? unScheduledVisitFailedState,
    required TResult orElse(),
  }) {
    if (getUnScheduledVistHeadersState != null) {
      return getUnScheduledVistHeadersState(headers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUnScheduledVistHeadersState value)
        getUnScheduledVistHeadersState,
    required TResult Function(UnScheduledVisitFailedState value)
        unScheduledVisitFailedState,
  }) {
    return getUnScheduledVistHeadersState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUnScheduledVistHeadersState value)?
        getUnScheduledVistHeadersState,
    TResult? Function(UnScheduledVisitFailedState value)?
        unScheduledVisitFailedState,
  }) {
    return getUnScheduledVistHeadersState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUnScheduledVistHeadersState value)?
        getUnScheduledVistHeadersState,
    TResult Function(UnScheduledVisitFailedState value)?
        unScheduledVisitFailedState,
    required TResult orElse(),
  }) {
    if (getUnScheduledVistHeadersState != null) {
      return getUnScheduledVistHeadersState(this);
    }
    return orElse();
  }
}

abstract class GetUnScheduledVistHeadersState
    implements UnScheduledVisitHeaderState {
  const factory GetUnScheduledVistHeadersState(
          {required final List<UnScheduledApprovalHeaderModel>? headers}) =
      _$GetUnScheduledVistHeadersStateImpl;

  List<UnScheduledApprovalHeaderModel>? get headers;

  /// Create a copy of UnScheduledVisitHeaderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetUnScheduledVistHeadersStateImplCopyWith<
          _$GetUnScheduledVistHeadersStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnScheduledVisitFailedStateImplCopyWith<$Res> {
  factory _$$UnScheduledVisitFailedStateImplCopyWith(
          _$UnScheduledVisitFailedStateImpl value,
          $Res Function(_$UnScheduledVisitFailedStateImpl) then) =
      __$$UnScheduledVisitFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnScheduledVisitFailedStateImplCopyWithImpl<$Res>
    extends _$UnScheduledVisitHeaderStateCopyWithImpl<$Res,
        _$UnScheduledVisitFailedStateImpl>
    implements _$$UnScheduledVisitFailedStateImplCopyWith<$Res> {
  __$$UnScheduledVisitFailedStateImplCopyWithImpl(
      _$UnScheduledVisitFailedStateImpl _value,
      $Res Function(_$UnScheduledVisitFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnScheduledVisitHeaderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnScheduledVisitFailedStateImpl implements UnScheduledVisitFailedState {
  const _$UnScheduledVisitFailedStateImpl();

  @override
  String toString() {
    return 'UnScheduledVisitHeaderState.unScheduledVisitFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnScheduledVisitFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<UnScheduledApprovalHeaderModel>? headers)
        getUnScheduledVistHeadersState,
    required TResult Function() unScheduledVisitFailedState,
  }) {
    return unScheduledVisitFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UnScheduledApprovalHeaderModel>? headers)?
        getUnScheduledVistHeadersState,
    TResult? Function()? unScheduledVisitFailedState,
  }) {
    return unScheduledVisitFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UnScheduledApprovalHeaderModel>? headers)?
        getUnScheduledVistHeadersState,
    TResult Function()? unScheduledVisitFailedState,
    required TResult orElse(),
  }) {
    if (unScheduledVisitFailedState != null) {
      return unScheduledVisitFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUnScheduledVistHeadersState value)
        getUnScheduledVistHeadersState,
    required TResult Function(UnScheduledVisitFailedState value)
        unScheduledVisitFailedState,
  }) {
    return unScheduledVisitFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUnScheduledVistHeadersState value)?
        getUnScheduledVistHeadersState,
    TResult? Function(UnScheduledVisitFailedState value)?
        unScheduledVisitFailedState,
  }) {
    return unScheduledVisitFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUnScheduledVistHeadersState value)?
        getUnScheduledVistHeadersState,
    TResult Function(UnScheduledVisitFailedState value)?
        unScheduledVisitFailedState,
    required TResult orElse(),
  }) {
    if (unScheduledVisitFailedState != null) {
      return unScheduledVisitFailedState(this);
    }
    return orElse();
  }
}

abstract class UnScheduledVisitFailedState
    implements UnScheduledVisitHeaderState {
  const factory UnScheduledVisitFailedState() =
      _$UnScheduledVisitFailedStateImpl;
}
