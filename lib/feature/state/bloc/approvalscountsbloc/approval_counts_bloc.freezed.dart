// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'approval_counts_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ApprovalCountsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userID) getApprovalsCountEvent,
    required TResult Function() clearApprovalCounts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userID)? getApprovalsCountEvent,
    TResult? Function()? clearApprovalCounts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userID)? getApprovalsCountEvent,
    TResult Function()? clearApprovalCounts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetApprovalsCountEvent value)
        getApprovalsCountEvent,
    required TResult Function(ClearApprovalCounts value) clearApprovalCounts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetApprovalsCountEvent value)? getApprovalsCountEvent,
    TResult? Function(ClearApprovalCounts value)? clearApprovalCounts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetApprovalsCountEvent value)? getApprovalsCountEvent,
    TResult Function(ClearApprovalCounts value)? clearApprovalCounts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApprovalCountsEventCopyWith<$Res> {
  factory $ApprovalCountsEventCopyWith(
          ApprovalCountsEvent value, $Res Function(ApprovalCountsEvent) then) =
      _$ApprovalCountsEventCopyWithImpl<$Res, ApprovalCountsEvent>;
}

/// @nodoc
class _$ApprovalCountsEventCopyWithImpl<$Res, $Val extends ApprovalCountsEvent>
    implements $ApprovalCountsEventCopyWith<$Res> {
  _$ApprovalCountsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApprovalCountsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetApprovalsCountEventImplCopyWith<$Res> {
  factory _$$GetApprovalsCountEventImplCopyWith(
          _$GetApprovalsCountEventImpl value,
          $Res Function(_$GetApprovalsCountEventImpl) then) =
      __$$GetApprovalsCountEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userID});
}

/// @nodoc
class __$$GetApprovalsCountEventImplCopyWithImpl<$Res>
    extends _$ApprovalCountsEventCopyWithImpl<$Res,
        _$GetApprovalsCountEventImpl>
    implements _$$GetApprovalsCountEventImplCopyWith<$Res> {
  __$$GetApprovalsCountEventImplCopyWithImpl(
      _$GetApprovalsCountEventImpl _value,
      $Res Function(_$GetApprovalsCountEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApprovalCountsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = null,
  }) {
    return _then(_$GetApprovalsCountEventImpl(
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetApprovalsCountEventImpl implements GetApprovalsCountEvent {
  const _$GetApprovalsCountEventImpl({required this.userID});

  @override
  final String userID;

  @override
  String toString() {
    return 'ApprovalCountsEvent.getApprovalsCountEvent(userID: $userID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetApprovalsCountEventImpl &&
            (identical(other.userID, userID) || other.userID == userID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userID);

  /// Create a copy of ApprovalCountsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetApprovalsCountEventImplCopyWith<_$GetApprovalsCountEventImpl>
      get copyWith => __$$GetApprovalsCountEventImplCopyWithImpl<
          _$GetApprovalsCountEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userID) getApprovalsCountEvent,
    required TResult Function() clearApprovalCounts,
  }) {
    return getApprovalsCountEvent(userID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userID)? getApprovalsCountEvent,
    TResult? Function()? clearApprovalCounts,
  }) {
    return getApprovalsCountEvent?.call(userID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userID)? getApprovalsCountEvent,
    TResult Function()? clearApprovalCounts,
    required TResult orElse(),
  }) {
    if (getApprovalsCountEvent != null) {
      return getApprovalsCountEvent(userID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetApprovalsCountEvent value)
        getApprovalsCountEvent,
    required TResult Function(ClearApprovalCounts value) clearApprovalCounts,
  }) {
    return getApprovalsCountEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetApprovalsCountEvent value)? getApprovalsCountEvent,
    TResult? Function(ClearApprovalCounts value)? clearApprovalCounts,
  }) {
    return getApprovalsCountEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetApprovalsCountEvent value)? getApprovalsCountEvent,
    TResult Function(ClearApprovalCounts value)? clearApprovalCounts,
    required TResult orElse(),
  }) {
    if (getApprovalsCountEvent != null) {
      return getApprovalsCountEvent(this);
    }
    return orElse();
  }
}

abstract class GetApprovalsCountEvent implements ApprovalCountsEvent {
  const factory GetApprovalsCountEvent({required final String userID}) =
      _$GetApprovalsCountEventImpl;

  String get userID;

  /// Create a copy of ApprovalCountsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetApprovalsCountEventImplCopyWith<_$GetApprovalsCountEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearApprovalCountsImplCopyWith<$Res> {
  factory _$$ClearApprovalCountsImplCopyWith(_$ClearApprovalCountsImpl value,
          $Res Function(_$ClearApprovalCountsImpl) then) =
      __$$ClearApprovalCountsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearApprovalCountsImplCopyWithImpl<$Res>
    extends _$ApprovalCountsEventCopyWithImpl<$Res, _$ClearApprovalCountsImpl>
    implements _$$ClearApprovalCountsImplCopyWith<$Res> {
  __$$ClearApprovalCountsImplCopyWithImpl(_$ClearApprovalCountsImpl _value,
      $Res Function(_$ClearApprovalCountsImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApprovalCountsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearApprovalCountsImpl implements ClearApprovalCounts {
  const _$ClearApprovalCountsImpl();

  @override
  String toString() {
    return 'ApprovalCountsEvent.clearApprovalCounts()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearApprovalCountsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userID) getApprovalsCountEvent,
    required TResult Function() clearApprovalCounts,
  }) {
    return clearApprovalCounts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userID)? getApprovalsCountEvent,
    TResult? Function()? clearApprovalCounts,
  }) {
    return clearApprovalCounts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userID)? getApprovalsCountEvent,
    TResult Function()? clearApprovalCounts,
    required TResult orElse(),
  }) {
    if (clearApprovalCounts != null) {
      return clearApprovalCounts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetApprovalsCountEvent value)
        getApprovalsCountEvent,
    required TResult Function(ClearApprovalCounts value) clearApprovalCounts,
  }) {
    return clearApprovalCounts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetApprovalsCountEvent value)? getApprovalsCountEvent,
    TResult? Function(ClearApprovalCounts value)? clearApprovalCounts,
  }) {
    return clearApprovalCounts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetApprovalsCountEvent value)? getApprovalsCountEvent,
    TResult Function(ClearApprovalCounts value)? clearApprovalCounts,
    required TResult orElse(),
  }) {
    if (clearApprovalCounts != null) {
      return clearApprovalCounts(this);
    }
    return orElse();
  }
}

abstract class ClearApprovalCounts implements ApprovalCountsEvent {
  const factory ClearApprovalCounts() = _$ClearApprovalCountsImpl;
}

/// @nodoc
mixin _$ApprovalCountsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApprovalCountModel? approvalCounts)
        getApprovalsCount,
    required TResult Function() getApprovalCountsFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApprovalCountModel? approvalCounts)? getApprovalsCount,
    TResult? Function()? getApprovalCountsFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApprovalCountModel? approvalCounts)? getApprovalsCount,
    TResult Function()? getApprovalCountsFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetApprovalsCount value) getApprovalsCount,
    required TResult Function(GetApprovalCountsFailed value)
        getApprovalCountsFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetApprovalsCount value)? getApprovalsCount,
    TResult? Function(GetApprovalCountsFailed value)? getApprovalCountsFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetApprovalsCount value)? getApprovalsCount,
    TResult Function(GetApprovalCountsFailed value)? getApprovalCountsFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApprovalCountsStateCopyWith<$Res> {
  factory $ApprovalCountsStateCopyWith(
          ApprovalCountsState value, $Res Function(ApprovalCountsState) then) =
      _$ApprovalCountsStateCopyWithImpl<$Res, ApprovalCountsState>;
}

/// @nodoc
class _$ApprovalCountsStateCopyWithImpl<$Res, $Val extends ApprovalCountsState>
    implements $ApprovalCountsStateCopyWith<$Res> {
  _$ApprovalCountsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApprovalCountsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetApprovalsCountImplCopyWith<$Res> {
  factory _$$GetApprovalsCountImplCopyWith(_$GetApprovalsCountImpl value,
          $Res Function(_$GetApprovalsCountImpl) then) =
      __$$GetApprovalsCountImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApprovalCountModel? approvalCounts});
}

/// @nodoc
class __$$GetApprovalsCountImplCopyWithImpl<$Res>
    extends _$ApprovalCountsStateCopyWithImpl<$Res, _$GetApprovalsCountImpl>
    implements _$$GetApprovalsCountImplCopyWith<$Res> {
  __$$GetApprovalsCountImplCopyWithImpl(_$GetApprovalsCountImpl _value,
      $Res Function(_$GetApprovalsCountImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApprovalCountsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? approvalCounts = freezed,
  }) {
    return _then(_$GetApprovalsCountImpl(
      approvalCounts: freezed == approvalCounts
          ? _value.approvalCounts
          : approvalCounts // ignore: cast_nullable_to_non_nullable
              as ApprovalCountModel?,
    ));
  }
}

/// @nodoc

class _$GetApprovalsCountImpl implements GetApprovalsCount {
  const _$GetApprovalsCountImpl({required this.approvalCounts});

  @override
  final ApprovalCountModel? approvalCounts;

  @override
  String toString() {
    return 'ApprovalCountsState.getApprovalsCount(approvalCounts: $approvalCounts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetApprovalsCountImpl &&
            (identical(other.approvalCounts, approvalCounts) ||
                other.approvalCounts == approvalCounts));
  }

  @override
  int get hashCode => Object.hash(runtimeType, approvalCounts);

  /// Create a copy of ApprovalCountsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetApprovalsCountImplCopyWith<_$GetApprovalsCountImpl> get copyWith =>
      __$$GetApprovalsCountImplCopyWithImpl<_$GetApprovalsCountImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApprovalCountModel? approvalCounts)
        getApprovalsCount,
    required TResult Function() getApprovalCountsFailed,
  }) {
    return getApprovalsCount(approvalCounts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApprovalCountModel? approvalCounts)? getApprovalsCount,
    TResult? Function()? getApprovalCountsFailed,
  }) {
    return getApprovalsCount?.call(approvalCounts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApprovalCountModel? approvalCounts)? getApprovalsCount,
    TResult Function()? getApprovalCountsFailed,
    required TResult orElse(),
  }) {
    if (getApprovalsCount != null) {
      return getApprovalsCount(approvalCounts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetApprovalsCount value) getApprovalsCount,
    required TResult Function(GetApprovalCountsFailed value)
        getApprovalCountsFailed,
  }) {
    return getApprovalsCount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetApprovalsCount value)? getApprovalsCount,
    TResult? Function(GetApprovalCountsFailed value)? getApprovalCountsFailed,
  }) {
    return getApprovalsCount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetApprovalsCount value)? getApprovalsCount,
    TResult Function(GetApprovalCountsFailed value)? getApprovalCountsFailed,
    required TResult orElse(),
  }) {
    if (getApprovalsCount != null) {
      return getApprovalsCount(this);
    }
    return orElse();
  }
}

abstract class GetApprovalsCount implements ApprovalCountsState {
  const factory GetApprovalsCount(
          {required final ApprovalCountModel? approvalCounts}) =
      _$GetApprovalsCountImpl;

  ApprovalCountModel? get approvalCounts;

  /// Create a copy of ApprovalCountsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetApprovalsCountImplCopyWith<_$GetApprovalsCountImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetApprovalCountsFailedImplCopyWith<$Res> {
  factory _$$GetApprovalCountsFailedImplCopyWith(
          _$GetApprovalCountsFailedImpl value,
          $Res Function(_$GetApprovalCountsFailedImpl) then) =
      __$$GetApprovalCountsFailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetApprovalCountsFailedImplCopyWithImpl<$Res>
    extends _$ApprovalCountsStateCopyWithImpl<$Res,
        _$GetApprovalCountsFailedImpl>
    implements _$$GetApprovalCountsFailedImplCopyWith<$Res> {
  __$$GetApprovalCountsFailedImplCopyWithImpl(
      _$GetApprovalCountsFailedImpl _value,
      $Res Function(_$GetApprovalCountsFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ApprovalCountsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetApprovalCountsFailedImpl implements GetApprovalCountsFailed {
  const _$GetApprovalCountsFailedImpl();

  @override
  String toString() {
    return 'ApprovalCountsState.getApprovalCountsFailed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetApprovalCountsFailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApprovalCountModel? approvalCounts)
        getApprovalsCount,
    required TResult Function() getApprovalCountsFailed,
  }) {
    return getApprovalCountsFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApprovalCountModel? approvalCounts)? getApprovalsCount,
    TResult? Function()? getApprovalCountsFailed,
  }) {
    return getApprovalCountsFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApprovalCountModel? approvalCounts)? getApprovalsCount,
    TResult Function()? getApprovalCountsFailed,
    required TResult orElse(),
  }) {
    if (getApprovalCountsFailed != null) {
      return getApprovalCountsFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetApprovalsCount value) getApprovalsCount,
    required TResult Function(GetApprovalCountsFailed value)
        getApprovalCountsFailed,
  }) {
    return getApprovalCountsFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetApprovalsCount value)? getApprovalsCount,
    TResult? Function(GetApprovalCountsFailed value)? getApprovalCountsFailed,
  }) {
    return getApprovalCountsFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetApprovalsCount value)? getApprovalsCount,
    TResult Function(GetApprovalCountsFailed value)? getApprovalCountsFailed,
    required TResult orElse(),
  }) {
    if (getApprovalCountsFailed != null) {
      return getApprovalCountsFailed(this);
    }
    return orElse();
  }
}

abstract class GetApprovalCountsFailed implements ApprovalCountsState {
  const factory GetApprovalCountsFailed() = _$GetApprovalCountsFailedImpl;
}
