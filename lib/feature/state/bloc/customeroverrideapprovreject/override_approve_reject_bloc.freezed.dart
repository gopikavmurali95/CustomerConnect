// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'override_approve_reject_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OverrideApproveRejectEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ooaID, String userId, String status)
        getOverrideApproveRejectEvent,
    required TResult Function() loadingOverideApproveRejectEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ooaID, String userId, String status)?
        getOverrideApproveRejectEvent,
    TResult? Function()? loadingOverideApproveRejectEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ooaID, String userId, String status)?
        getOverrideApproveRejectEvent,
    TResult Function()? loadingOverideApproveRejectEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOverrideApproveRejectEvent value)
        getOverrideApproveRejectEvent,
    required TResult Function(LoadingOverideApproveRejectEvent value)
        loadingOverideApproveRejectEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOverrideApproveRejectEvent value)?
        getOverrideApproveRejectEvent,
    TResult? Function(LoadingOverideApproveRejectEvent value)?
        loadingOverideApproveRejectEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOverrideApproveRejectEvent value)?
        getOverrideApproveRejectEvent,
    TResult Function(LoadingOverideApproveRejectEvent value)?
        loadingOverideApproveRejectEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OverrideApproveRejectEventCopyWith<$Res> {
  factory $OverrideApproveRejectEventCopyWith(OverrideApproveRejectEvent value,
          $Res Function(OverrideApproveRejectEvent) then) =
      _$OverrideApproveRejectEventCopyWithImpl<$Res,
          OverrideApproveRejectEvent>;
}

/// @nodoc
class _$OverrideApproveRejectEventCopyWithImpl<$Res,
        $Val extends OverrideApproveRejectEvent>
    implements $OverrideApproveRejectEventCopyWith<$Res> {
  _$OverrideApproveRejectEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetOverrideApproveRejectEventImplCopyWith<$Res> {
  factory _$$GetOverrideApproveRejectEventImplCopyWith(
          _$GetOverrideApproveRejectEventImpl value,
          $Res Function(_$GetOverrideApproveRejectEventImpl) then) =
      __$$GetOverrideApproveRejectEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String ooaID, String userId, String status});
}

/// @nodoc
class __$$GetOverrideApproveRejectEventImplCopyWithImpl<$Res>
    extends _$OverrideApproveRejectEventCopyWithImpl<$Res,
        _$GetOverrideApproveRejectEventImpl>
    implements _$$GetOverrideApproveRejectEventImplCopyWith<$Res> {
  __$$GetOverrideApproveRejectEventImplCopyWithImpl(
      _$GetOverrideApproveRejectEventImpl _value,
      $Res Function(_$GetOverrideApproveRejectEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ooaID = null,
    Object? userId = null,
    Object? status = null,
  }) {
    return _then(_$GetOverrideApproveRejectEventImpl(
      ooaID: null == ooaID
          ? _value.ooaID
          : ooaID // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetOverrideApproveRejectEventImpl
    implements GetOverrideApproveRejectEvent {
  const _$GetOverrideApproveRejectEventImpl(
      {required this.ooaID, required this.userId, required this.status});

  @override
  final String ooaID;
  @override
  final String userId;
  @override
  final String status;

  @override
  String toString() {
    return 'OverrideApproveRejectEvent.getOverrideApproveRejectEvent(ooaID: $ooaID, userId: $userId, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOverrideApproveRejectEventImpl &&
            (identical(other.ooaID, ooaID) || other.ooaID == ooaID) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ooaID, userId, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOverrideApproveRejectEventImplCopyWith<
          _$GetOverrideApproveRejectEventImpl>
      get copyWith => __$$GetOverrideApproveRejectEventImplCopyWithImpl<
          _$GetOverrideApproveRejectEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ooaID, String userId, String status)
        getOverrideApproveRejectEvent,
    required TResult Function() loadingOverideApproveRejectEvent,
  }) {
    return getOverrideApproveRejectEvent(ooaID, userId, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ooaID, String userId, String status)?
        getOverrideApproveRejectEvent,
    TResult? Function()? loadingOverideApproveRejectEvent,
  }) {
    return getOverrideApproveRejectEvent?.call(ooaID, userId, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ooaID, String userId, String status)?
        getOverrideApproveRejectEvent,
    TResult Function()? loadingOverideApproveRejectEvent,
    required TResult orElse(),
  }) {
    if (getOverrideApproveRejectEvent != null) {
      return getOverrideApproveRejectEvent(ooaID, userId, status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOverrideApproveRejectEvent value)
        getOverrideApproveRejectEvent,
    required TResult Function(LoadingOverideApproveRejectEvent value)
        loadingOverideApproveRejectEvent,
  }) {
    return getOverrideApproveRejectEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOverrideApproveRejectEvent value)?
        getOverrideApproveRejectEvent,
    TResult? Function(LoadingOverideApproveRejectEvent value)?
        loadingOverideApproveRejectEvent,
  }) {
    return getOverrideApproveRejectEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOverrideApproveRejectEvent value)?
        getOverrideApproveRejectEvent,
    TResult Function(LoadingOverideApproveRejectEvent value)?
        loadingOverideApproveRejectEvent,
    required TResult orElse(),
  }) {
    if (getOverrideApproveRejectEvent != null) {
      return getOverrideApproveRejectEvent(this);
    }
    return orElse();
  }
}

abstract class GetOverrideApproveRejectEvent
    implements OverrideApproveRejectEvent {
  const factory GetOverrideApproveRejectEvent(
      {required final String ooaID,
      required final String userId,
      required final String status}) = _$GetOverrideApproveRejectEventImpl;

  String get ooaID;
  String get userId;
  String get status;
  @JsonKey(ignore: true)
  _$$GetOverrideApproveRejectEventImplCopyWith<
          _$GetOverrideApproveRejectEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingOverideApproveRejectEventImplCopyWith<$Res> {
  factory _$$LoadingOverideApproveRejectEventImplCopyWith(
          _$LoadingOverideApproveRejectEventImpl value,
          $Res Function(_$LoadingOverideApproveRejectEventImpl) then) =
      __$$LoadingOverideApproveRejectEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingOverideApproveRejectEventImplCopyWithImpl<$Res>
    extends _$OverrideApproveRejectEventCopyWithImpl<$Res,
        _$LoadingOverideApproveRejectEventImpl>
    implements _$$LoadingOverideApproveRejectEventImplCopyWith<$Res> {
  __$$LoadingOverideApproveRejectEventImplCopyWithImpl(
      _$LoadingOverideApproveRejectEventImpl _value,
      $Res Function(_$LoadingOverideApproveRejectEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingOverideApproveRejectEventImpl
    implements LoadingOverideApproveRejectEvent {
  const _$LoadingOverideApproveRejectEventImpl();

  @override
  String toString() {
    return 'OverrideApproveRejectEvent.loadingOverideApproveRejectEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingOverideApproveRejectEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String ooaID, String userId, String status)
        getOverrideApproveRejectEvent,
    required TResult Function() loadingOverideApproveRejectEvent,
  }) {
    return loadingOverideApproveRejectEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String ooaID, String userId, String status)?
        getOverrideApproveRejectEvent,
    TResult? Function()? loadingOverideApproveRejectEvent,
  }) {
    return loadingOverideApproveRejectEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String ooaID, String userId, String status)?
        getOverrideApproveRejectEvent,
    TResult Function()? loadingOverideApproveRejectEvent,
    required TResult orElse(),
  }) {
    if (loadingOverideApproveRejectEvent != null) {
      return loadingOverideApproveRejectEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOverrideApproveRejectEvent value)
        getOverrideApproveRejectEvent,
    required TResult Function(LoadingOverideApproveRejectEvent value)
        loadingOverideApproveRejectEvent,
  }) {
    return loadingOverideApproveRejectEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOverrideApproveRejectEvent value)?
        getOverrideApproveRejectEvent,
    TResult? Function(LoadingOverideApproveRejectEvent value)?
        loadingOverideApproveRejectEvent,
  }) {
    return loadingOverideApproveRejectEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOverrideApproveRejectEvent value)?
        getOverrideApproveRejectEvent,
    TResult Function(LoadingOverideApproveRejectEvent value)?
        loadingOverideApproveRejectEvent,
    required TResult orElse(),
  }) {
    if (loadingOverideApproveRejectEvent != null) {
      return loadingOverideApproveRejectEvent(this);
    }
    return orElse();
  }
}

abstract class LoadingOverideApproveRejectEvent
    implements OverrideApproveRejectEvent {
  const factory LoadingOverideApproveRejectEvent() =
      _$LoadingOverideApproveRejectEventImpl;
}

/// @nodoc
mixin _$OverrideApproveRejectState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OverideApprovRejectModel? approve)
        getOverrideApprovalState,
    required TResult Function() overrideCusFailedState,
    required TResult Function() overrideCusLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OverideApprovRejectModel? approve)?
        getOverrideApprovalState,
    TResult? Function()? overrideCusFailedState,
    TResult? Function()? overrideCusLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OverideApprovRejectModel? approve)?
        getOverrideApprovalState,
    TResult Function()? overrideCusFailedState,
    TResult Function()? overrideCusLoadingState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOverrideApprovalState value)
        getOverrideApprovalState,
    required TResult Function(OverrideCusFailedState value)
        overrideCusFailedState,
    required TResult Function(OverrideCusLoadingState value)
        overrideCusLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOverrideApprovalState value)? getOverrideApprovalState,
    TResult? Function(OverrideCusFailedState value)? overrideCusFailedState,
    TResult? Function(OverrideCusLoadingState value)? overrideCusLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOverrideApprovalState value)? getOverrideApprovalState,
    TResult Function(OverrideCusFailedState value)? overrideCusFailedState,
    TResult Function(OverrideCusLoadingState value)? overrideCusLoadingState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OverrideApproveRejectStateCopyWith<$Res> {
  factory $OverrideApproveRejectStateCopyWith(OverrideApproveRejectState value,
          $Res Function(OverrideApproveRejectState) then) =
      _$OverrideApproveRejectStateCopyWithImpl<$Res,
          OverrideApproveRejectState>;
}

/// @nodoc
class _$OverrideApproveRejectStateCopyWithImpl<$Res,
        $Val extends OverrideApproveRejectState>
    implements $OverrideApproveRejectStateCopyWith<$Res> {
  _$OverrideApproveRejectStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetOverrideApprovalStateImplCopyWith<$Res> {
  factory _$$GetOverrideApprovalStateImplCopyWith(
          _$GetOverrideApprovalStateImpl value,
          $Res Function(_$GetOverrideApprovalStateImpl) then) =
      __$$GetOverrideApprovalStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OverideApprovRejectModel? approve});
}

/// @nodoc
class __$$GetOverrideApprovalStateImplCopyWithImpl<$Res>
    extends _$OverrideApproveRejectStateCopyWithImpl<$Res,
        _$GetOverrideApprovalStateImpl>
    implements _$$GetOverrideApprovalStateImplCopyWith<$Res> {
  __$$GetOverrideApprovalStateImplCopyWithImpl(
      _$GetOverrideApprovalStateImpl _value,
      $Res Function(_$GetOverrideApprovalStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? approve = freezed,
  }) {
    return _then(_$GetOverrideApprovalStateImpl(
      approve: freezed == approve
          ? _value.approve
          : approve // ignore: cast_nullable_to_non_nullable
              as OverideApprovRejectModel?,
    ));
  }
}

/// @nodoc

class _$GetOverrideApprovalStateImpl implements GetOverrideApprovalState {
  const _$GetOverrideApprovalStateImpl({required this.approve});

  @override
  final OverideApprovRejectModel? approve;

  @override
  String toString() {
    return 'OverrideApproveRejectState.getOverrideApprovalState(approve: $approve)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOverrideApprovalStateImpl &&
            (identical(other.approve, approve) || other.approve == approve));
  }

  @override
  int get hashCode => Object.hash(runtimeType, approve);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOverrideApprovalStateImplCopyWith<_$GetOverrideApprovalStateImpl>
      get copyWith => __$$GetOverrideApprovalStateImplCopyWithImpl<
          _$GetOverrideApprovalStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OverideApprovRejectModel? approve)
        getOverrideApprovalState,
    required TResult Function() overrideCusFailedState,
    required TResult Function() overrideCusLoadingState,
  }) {
    return getOverrideApprovalState(approve);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OverideApprovRejectModel? approve)?
        getOverrideApprovalState,
    TResult? Function()? overrideCusFailedState,
    TResult? Function()? overrideCusLoadingState,
  }) {
    return getOverrideApprovalState?.call(approve);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OverideApprovRejectModel? approve)?
        getOverrideApprovalState,
    TResult Function()? overrideCusFailedState,
    TResult Function()? overrideCusLoadingState,
    required TResult orElse(),
  }) {
    if (getOverrideApprovalState != null) {
      return getOverrideApprovalState(approve);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOverrideApprovalState value)
        getOverrideApprovalState,
    required TResult Function(OverrideCusFailedState value)
        overrideCusFailedState,
    required TResult Function(OverrideCusLoadingState value)
        overrideCusLoadingState,
  }) {
    return getOverrideApprovalState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOverrideApprovalState value)? getOverrideApprovalState,
    TResult? Function(OverrideCusFailedState value)? overrideCusFailedState,
    TResult? Function(OverrideCusLoadingState value)? overrideCusLoadingState,
  }) {
    return getOverrideApprovalState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOverrideApprovalState value)? getOverrideApprovalState,
    TResult Function(OverrideCusFailedState value)? overrideCusFailedState,
    TResult Function(OverrideCusLoadingState value)? overrideCusLoadingState,
    required TResult orElse(),
  }) {
    if (getOverrideApprovalState != null) {
      return getOverrideApprovalState(this);
    }
    return orElse();
  }
}

abstract class GetOverrideApprovalState implements OverrideApproveRejectState {
  const factory GetOverrideApprovalState(
          {required final OverideApprovRejectModel? approve}) =
      _$GetOverrideApprovalStateImpl;

  OverideApprovRejectModel? get approve;
  @JsonKey(ignore: true)
  _$$GetOverrideApprovalStateImplCopyWith<_$GetOverrideApprovalStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OverrideCusFailedStateImplCopyWith<$Res> {
  factory _$$OverrideCusFailedStateImplCopyWith(
          _$OverrideCusFailedStateImpl value,
          $Res Function(_$OverrideCusFailedStateImpl) then) =
      __$$OverrideCusFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OverrideCusFailedStateImplCopyWithImpl<$Res>
    extends _$OverrideApproveRejectStateCopyWithImpl<$Res,
        _$OverrideCusFailedStateImpl>
    implements _$$OverrideCusFailedStateImplCopyWith<$Res> {
  __$$OverrideCusFailedStateImplCopyWithImpl(
      _$OverrideCusFailedStateImpl _value,
      $Res Function(_$OverrideCusFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OverrideCusFailedStateImpl implements OverrideCusFailedState {
  const _$OverrideCusFailedStateImpl();

  @override
  String toString() {
    return 'OverrideApproveRejectState.overrideCusFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OverrideCusFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OverideApprovRejectModel? approve)
        getOverrideApprovalState,
    required TResult Function() overrideCusFailedState,
    required TResult Function() overrideCusLoadingState,
  }) {
    return overrideCusFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OverideApprovRejectModel? approve)?
        getOverrideApprovalState,
    TResult? Function()? overrideCusFailedState,
    TResult? Function()? overrideCusLoadingState,
  }) {
    return overrideCusFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OverideApprovRejectModel? approve)?
        getOverrideApprovalState,
    TResult Function()? overrideCusFailedState,
    TResult Function()? overrideCusLoadingState,
    required TResult orElse(),
  }) {
    if (overrideCusFailedState != null) {
      return overrideCusFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOverrideApprovalState value)
        getOverrideApprovalState,
    required TResult Function(OverrideCusFailedState value)
        overrideCusFailedState,
    required TResult Function(OverrideCusLoadingState value)
        overrideCusLoadingState,
  }) {
    return overrideCusFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOverrideApprovalState value)? getOverrideApprovalState,
    TResult? Function(OverrideCusFailedState value)? overrideCusFailedState,
    TResult? Function(OverrideCusLoadingState value)? overrideCusLoadingState,
  }) {
    return overrideCusFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOverrideApprovalState value)? getOverrideApprovalState,
    TResult Function(OverrideCusFailedState value)? overrideCusFailedState,
    TResult Function(OverrideCusLoadingState value)? overrideCusLoadingState,
    required TResult orElse(),
  }) {
    if (overrideCusFailedState != null) {
      return overrideCusFailedState(this);
    }
    return orElse();
  }
}

abstract class OverrideCusFailedState implements OverrideApproveRejectState {
  const factory OverrideCusFailedState() = _$OverrideCusFailedStateImpl;
}

/// @nodoc
abstract class _$$OverrideCusLoadingStateImplCopyWith<$Res> {
  factory _$$OverrideCusLoadingStateImplCopyWith(
          _$OverrideCusLoadingStateImpl value,
          $Res Function(_$OverrideCusLoadingStateImpl) then) =
      __$$OverrideCusLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OverrideCusLoadingStateImplCopyWithImpl<$Res>
    extends _$OverrideApproveRejectStateCopyWithImpl<$Res,
        _$OverrideCusLoadingStateImpl>
    implements _$$OverrideCusLoadingStateImplCopyWith<$Res> {
  __$$OverrideCusLoadingStateImplCopyWithImpl(
      _$OverrideCusLoadingStateImpl _value,
      $Res Function(_$OverrideCusLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OverrideCusLoadingStateImpl implements OverrideCusLoadingState {
  const _$OverrideCusLoadingStateImpl();

  @override
  String toString() {
    return 'OverrideApproveRejectState.overrideCusLoadingState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OverrideCusLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OverideApprovRejectModel? approve)
        getOverrideApprovalState,
    required TResult Function() overrideCusFailedState,
    required TResult Function() overrideCusLoadingState,
  }) {
    return overrideCusLoadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OverideApprovRejectModel? approve)?
        getOverrideApprovalState,
    TResult? Function()? overrideCusFailedState,
    TResult? Function()? overrideCusLoadingState,
  }) {
    return overrideCusLoadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OverideApprovRejectModel? approve)?
        getOverrideApprovalState,
    TResult Function()? overrideCusFailedState,
    TResult Function()? overrideCusLoadingState,
    required TResult orElse(),
  }) {
    if (overrideCusLoadingState != null) {
      return overrideCusLoadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOverrideApprovalState value)
        getOverrideApprovalState,
    required TResult Function(OverrideCusFailedState value)
        overrideCusFailedState,
    required TResult Function(OverrideCusLoadingState value)
        overrideCusLoadingState,
  }) {
    return overrideCusLoadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOverrideApprovalState value)? getOverrideApprovalState,
    TResult? Function(OverrideCusFailedState value)? overrideCusFailedState,
    TResult? Function(OverrideCusLoadingState value)? overrideCusLoadingState,
  }) {
    return overrideCusLoadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOverrideApprovalState value)? getOverrideApprovalState,
    TResult Function(OverrideCusFailedState value)? overrideCusFailedState,
    TResult Function(OverrideCusLoadingState value)? overrideCusLoadingState,
    required TResult orElse(),
  }) {
    if (overrideCusLoadingState != null) {
      return overrideCusLoadingState(this);
    }
    return orElse();
  }
}

abstract class OverrideCusLoadingState implements OverrideApproveRejectState {
  const factory OverrideCusLoadingState() = _$OverrideCusLoadingStateImpl;
}
