// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pending_approvals_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PendingApprovalsListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getPendingApprovalsListEvent,
    required TResult Function() clearPendingApprovalsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getPendingApprovalsListEvent,
    TResult? Function()? clearPendingApprovalsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getPendingApprovalsListEvent,
    TResult Function()? clearPendingApprovalsList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPendingApprovalsListEvent value)
        getPendingApprovalsListEvent,
    required TResult Function(ClearPendingApprovalsList value)
        clearPendingApprovalsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPendingApprovalsListEvent value)?
        getPendingApprovalsListEvent,
    TResult? Function(ClearPendingApprovalsList value)?
        clearPendingApprovalsList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPendingApprovalsListEvent value)?
        getPendingApprovalsListEvent,
    TResult Function(ClearPendingApprovalsList value)?
        clearPendingApprovalsList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PendingApprovalsListEventCopyWith<$Res> {
  factory $PendingApprovalsListEventCopyWith(PendingApprovalsListEvent value,
          $Res Function(PendingApprovalsListEvent) then) =
      _$PendingApprovalsListEventCopyWithImpl<$Res, PendingApprovalsListEvent>;
}

/// @nodoc
class _$PendingApprovalsListEventCopyWithImpl<$Res,
        $Val extends PendingApprovalsListEvent>
    implements $PendingApprovalsListEventCopyWith<$Res> {
  _$PendingApprovalsListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PendingApprovalsListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetPendingApprovalsListEventImplCopyWith<$Res> {
  factory _$$GetPendingApprovalsListEventImplCopyWith(
          _$GetPendingApprovalsListEventImpl value,
          $Res Function(_$GetPendingApprovalsListEventImpl) then) =
      __$$GetPendingApprovalsListEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$GetPendingApprovalsListEventImplCopyWithImpl<$Res>
    extends _$PendingApprovalsListEventCopyWithImpl<$Res,
        _$GetPendingApprovalsListEventImpl>
    implements _$$GetPendingApprovalsListEventImplCopyWith<$Res> {
  __$$GetPendingApprovalsListEventImplCopyWithImpl(
      _$GetPendingApprovalsListEventImpl _value,
      $Res Function(_$GetPendingApprovalsListEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of PendingApprovalsListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$GetPendingApprovalsListEventImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetPendingApprovalsListEventImpl
    implements GetPendingApprovalsListEvent {
  const _$GetPendingApprovalsListEventImpl({required this.userId});

  @override
  final String userId;

  @override
  String toString() {
    return 'PendingApprovalsListEvent.getPendingApprovalsListEvent(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPendingApprovalsListEventImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of PendingApprovalsListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPendingApprovalsListEventImplCopyWith<
          _$GetPendingApprovalsListEventImpl>
      get copyWith => __$$GetPendingApprovalsListEventImplCopyWithImpl<
          _$GetPendingApprovalsListEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getPendingApprovalsListEvent,
    required TResult Function() clearPendingApprovalsList,
  }) {
    return getPendingApprovalsListEvent(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getPendingApprovalsListEvent,
    TResult? Function()? clearPendingApprovalsList,
  }) {
    return getPendingApprovalsListEvent?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getPendingApprovalsListEvent,
    TResult Function()? clearPendingApprovalsList,
    required TResult orElse(),
  }) {
    if (getPendingApprovalsListEvent != null) {
      return getPendingApprovalsListEvent(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPendingApprovalsListEvent value)
        getPendingApprovalsListEvent,
    required TResult Function(ClearPendingApprovalsList value)
        clearPendingApprovalsList,
  }) {
    return getPendingApprovalsListEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPendingApprovalsListEvent value)?
        getPendingApprovalsListEvent,
    TResult? Function(ClearPendingApprovalsList value)?
        clearPendingApprovalsList,
  }) {
    return getPendingApprovalsListEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPendingApprovalsListEvent value)?
        getPendingApprovalsListEvent,
    TResult Function(ClearPendingApprovalsList value)?
        clearPendingApprovalsList,
    required TResult orElse(),
  }) {
    if (getPendingApprovalsListEvent != null) {
      return getPendingApprovalsListEvent(this);
    }
    return orElse();
  }
}

abstract class GetPendingApprovalsListEvent
    implements PendingApprovalsListEvent {
  const factory GetPendingApprovalsListEvent({required final String userId}) =
      _$GetPendingApprovalsListEventImpl;

  String get userId;

  /// Create a copy of PendingApprovalsListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetPendingApprovalsListEventImplCopyWith<
          _$GetPendingApprovalsListEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearPendingApprovalsListImplCopyWith<$Res> {
  factory _$$ClearPendingApprovalsListImplCopyWith(
          _$ClearPendingApprovalsListImpl value,
          $Res Function(_$ClearPendingApprovalsListImpl) then) =
      __$$ClearPendingApprovalsListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearPendingApprovalsListImplCopyWithImpl<$Res>
    extends _$PendingApprovalsListEventCopyWithImpl<$Res,
        _$ClearPendingApprovalsListImpl>
    implements _$$ClearPendingApprovalsListImplCopyWith<$Res> {
  __$$ClearPendingApprovalsListImplCopyWithImpl(
      _$ClearPendingApprovalsListImpl _value,
      $Res Function(_$ClearPendingApprovalsListImpl) _then)
      : super(_value, _then);

  /// Create a copy of PendingApprovalsListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearPendingApprovalsListImpl implements ClearPendingApprovalsList {
  const _$ClearPendingApprovalsListImpl();

  @override
  String toString() {
    return 'PendingApprovalsListEvent.clearPendingApprovalsList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearPendingApprovalsListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) getPendingApprovalsListEvent,
    required TResult Function() clearPendingApprovalsList,
  }) {
    return clearPendingApprovalsList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? getPendingApprovalsListEvent,
    TResult? Function()? clearPendingApprovalsList,
  }) {
    return clearPendingApprovalsList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? getPendingApprovalsListEvent,
    TResult Function()? clearPendingApprovalsList,
    required TResult orElse(),
  }) {
    if (clearPendingApprovalsList != null) {
      return clearPendingApprovalsList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPendingApprovalsListEvent value)
        getPendingApprovalsListEvent,
    required TResult Function(ClearPendingApprovalsList value)
        clearPendingApprovalsList,
  }) {
    return clearPendingApprovalsList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPendingApprovalsListEvent value)?
        getPendingApprovalsListEvent,
    TResult? Function(ClearPendingApprovalsList value)?
        clearPendingApprovalsList,
  }) {
    return clearPendingApprovalsList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPendingApprovalsListEvent value)?
        getPendingApprovalsListEvent,
    TResult Function(ClearPendingApprovalsList value)?
        clearPendingApprovalsList,
    required TResult orElse(),
  }) {
    if (clearPendingApprovalsList != null) {
      return clearPendingApprovalsList(this);
    }
    return orElse();
  }
}

abstract class ClearPendingApprovalsList implements PendingApprovalsListEvent {
  const factory ClearPendingApprovalsList() = _$ClearPendingApprovalsListImpl;
}

/// @nodoc
mixin _$PendingApprovalsListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PendingApprovalsModel>? approvals)
        getPendingApprovalsListState,
    required TResult Function() pendingApprovalsListFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PendingApprovalsModel>? approvals)?
        getPendingApprovalsListState,
    TResult? Function()? pendingApprovalsListFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PendingApprovalsModel>? approvals)?
        getPendingApprovalsListState,
    TResult Function()? pendingApprovalsListFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPendingApprovalsListState value)
        getPendingApprovalsListState,
    required TResult Function(PendingApprovalsListFailedState value)
        pendingApprovalsListFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPendingApprovalsListState value)?
        getPendingApprovalsListState,
    TResult? Function(PendingApprovalsListFailedState value)?
        pendingApprovalsListFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPendingApprovalsListState value)?
        getPendingApprovalsListState,
    TResult Function(PendingApprovalsListFailedState value)?
        pendingApprovalsListFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PendingApprovalsListStateCopyWith<$Res> {
  factory $PendingApprovalsListStateCopyWith(PendingApprovalsListState value,
          $Res Function(PendingApprovalsListState) then) =
      _$PendingApprovalsListStateCopyWithImpl<$Res, PendingApprovalsListState>;
}

/// @nodoc
class _$PendingApprovalsListStateCopyWithImpl<$Res,
        $Val extends PendingApprovalsListState>
    implements $PendingApprovalsListStateCopyWith<$Res> {
  _$PendingApprovalsListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PendingApprovalsListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetPendingApprovalsListStateImplCopyWith<$Res> {
  factory _$$GetPendingApprovalsListStateImplCopyWith(
          _$GetPendingApprovalsListStateImpl value,
          $Res Function(_$GetPendingApprovalsListStateImpl) then) =
      __$$GetPendingApprovalsListStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PendingApprovalsModel>? approvals});
}

/// @nodoc
class __$$GetPendingApprovalsListStateImplCopyWithImpl<$Res>
    extends _$PendingApprovalsListStateCopyWithImpl<$Res,
        _$GetPendingApprovalsListStateImpl>
    implements _$$GetPendingApprovalsListStateImplCopyWith<$Res> {
  __$$GetPendingApprovalsListStateImplCopyWithImpl(
      _$GetPendingApprovalsListStateImpl _value,
      $Res Function(_$GetPendingApprovalsListStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PendingApprovalsListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? approvals = freezed,
  }) {
    return _then(_$GetPendingApprovalsListStateImpl(
      approvals: freezed == approvals
          ? _value._approvals
          : approvals // ignore: cast_nullable_to_non_nullable
              as List<PendingApprovalsModel>?,
    ));
  }
}

/// @nodoc

class _$GetPendingApprovalsListStateImpl
    implements GetPendingApprovalsListState {
  const _$GetPendingApprovalsListStateImpl(
      {required final List<PendingApprovalsModel>? approvals})
      : _approvals = approvals;

  final List<PendingApprovalsModel>? _approvals;
  @override
  List<PendingApprovalsModel>? get approvals {
    final value = _approvals;
    if (value == null) return null;
    if (_approvals is EqualUnmodifiableListView) return _approvals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PendingApprovalsListState.getPendingApprovalsListState(approvals: $approvals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPendingApprovalsListStateImpl &&
            const DeepCollectionEquality()
                .equals(other._approvals, _approvals));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_approvals));

  /// Create a copy of PendingApprovalsListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPendingApprovalsListStateImplCopyWith<
          _$GetPendingApprovalsListStateImpl>
      get copyWith => __$$GetPendingApprovalsListStateImplCopyWithImpl<
          _$GetPendingApprovalsListStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PendingApprovalsModel>? approvals)
        getPendingApprovalsListState,
    required TResult Function() pendingApprovalsListFailedState,
  }) {
    return getPendingApprovalsListState(approvals);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PendingApprovalsModel>? approvals)?
        getPendingApprovalsListState,
    TResult? Function()? pendingApprovalsListFailedState,
  }) {
    return getPendingApprovalsListState?.call(approvals);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PendingApprovalsModel>? approvals)?
        getPendingApprovalsListState,
    TResult Function()? pendingApprovalsListFailedState,
    required TResult orElse(),
  }) {
    if (getPendingApprovalsListState != null) {
      return getPendingApprovalsListState(approvals);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPendingApprovalsListState value)
        getPendingApprovalsListState,
    required TResult Function(PendingApprovalsListFailedState value)
        pendingApprovalsListFailedState,
  }) {
    return getPendingApprovalsListState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPendingApprovalsListState value)?
        getPendingApprovalsListState,
    TResult? Function(PendingApprovalsListFailedState value)?
        pendingApprovalsListFailedState,
  }) {
    return getPendingApprovalsListState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPendingApprovalsListState value)?
        getPendingApprovalsListState,
    TResult Function(PendingApprovalsListFailedState value)?
        pendingApprovalsListFailedState,
    required TResult orElse(),
  }) {
    if (getPendingApprovalsListState != null) {
      return getPendingApprovalsListState(this);
    }
    return orElse();
  }
}

abstract class GetPendingApprovalsListState
    implements PendingApprovalsListState {
  const factory GetPendingApprovalsListState(
          {required final List<PendingApprovalsModel>? approvals}) =
      _$GetPendingApprovalsListStateImpl;

  List<PendingApprovalsModel>? get approvals;

  /// Create a copy of PendingApprovalsListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetPendingApprovalsListStateImplCopyWith<
          _$GetPendingApprovalsListStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PendingApprovalsListFailedStateImplCopyWith<$Res> {
  factory _$$PendingApprovalsListFailedStateImplCopyWith(
          _$PendingApprovalsListFailedStateImpl value,
          $Res Function(_$PendingApprovalsListFailedStateImpl) then) =
      __$$PendingApprovalsListFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PendingApprovalsListFailedStateImplCopyWithImpl<$Res>
    extends _$PendingApprovalsListStateCopyWithImpl<$Res,
        _$PendingApprovalsListFailedStateImpl>
    implements _$$PendingApprovalsListFailedStateImplCopyWith<$Res> {
  __$$PendingApprovalsListFailedStateImplCopyWithImpl(
      _$PendingApprovalsListFailedStateImpl _value,
      $Res Function(_$PendingApprovalsListFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PendingApprovalsListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PendingApprovalsListFailedStateImpl
    implements PendingApprovalsListFailedState {
  const _$PendingApprovalsListFailedStateImpl();

  @override
  String toString() {
    return 'PendingApprovalsListState.pendingApprovalsListFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PendingApprovalsListFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PendingApprovalsModel>? approvals)
        getPendingApprovalsListState,
    required TResult Function() pendingApprovalsListFailedState,
  }) {
    return pendingApprovalsListFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PendingApprovalsModel>? approvals)?
        getPendingApprovalsListState,
    TResult? Function()? pendingApprovalsListFailedState,
  }) {
    return pendingApprovalsListFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PendingApprovalsModel>? approvals)?
        getPendingApprovalsListState,
    TResult Function()? pendingApprovalsListFailedState,
    required TResult orElse(),
  }) {
    if (pendingApprovalsListFailedState != null) {
      return pendingApprovalsListFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPendingApprovalsListState value)
        getPendingApprovalsListState,
    required TResult Function(PendingApprovalsListFailedState value)
        pendingApprovalsListFailedState,
  }) {
    return pendingApprovalsListFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPendingApprovalsListState value)?
        getPendingApprovalsListState,
    TResult? Function(PendingApprovalsListFailedState value)?
        pendingApprovalsListFailedState,
  }) {
    return pendingApprovalsListFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPendingApprovalsListState value)?
        getPendingApprovalsListState,
    TResult Function(PendingApprovalsListFailedState value)?
        pendingApprovalsListFailedState,
    required TResult orElse(),
  }) {
    if (pendingApprovalsListFailedState != null) {
      return pendingApprovalsListFailedState(this);
    }
    return orElse();
  }
}

abstract class PendingApprovalsListFailedState
    implements PendingApprovalsListState {
  const factory PendingApprovalsListFailedState() =
      _$PendingApprovalsListFailedStateImpl;
}
