// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_settlement_approval_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PostSettlementApprovalEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String udpID) getPostApprovalEvent,
    required TResult Function() clearPostApprovalEvent,
    required TResult Function() PostLoadingApprovalEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String udpID)? getPostApprovalEvent,
    TResult? Function()? clearPostApprovalEvent,
    TResult? Function()? PostLoadingApprovalEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String udpID)? getPostApprovalEvent,
    TResult Function()? clearPostApprovalEvent,
    TResult Function()? PostLoadingApprovalEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPostApprovalEvent value) getPostApprovalEvent,
    required TResult Function(ClearPostApprovalEvent value)
        clearPostApprovalEvent,
    required TResult Function(PostLoadingApprovalEvent value)
        PostLoadingApprovalEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPostApprovalEvent value)? getPostApprovalEvent,
    TResult? Function(ClearPostApprovalEvent value)? clearPostApprovalEvent,
    TResult? Function(PostLoadingApprovalEvent value)? PostLoadingApprovalEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPostApprovalEvent value)? getPostApprovalEvent,
    TResult Function(ClearPostApprovalEvent value)? clearPostApprovalEvent,
    TResult Function(PostLoadingApprovalEvent value)? PostLoadingApprovalEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostSettlementApprovalEventCopyWith<$Res> {
  factory $PostSettlementApprovalEventCopyWith(
          PostSettlementApprovalEvent value,
          $Res Function(PostSettlementApprovalEvent) then) =
      _$PostSettlementApprovalEventCopyWithImpl<$Res,
          PostSettlementApprovalEvent>;
}

/// @nodoc
class _$PostSettlementApprovalEventCopyWithImpl<$Res,
        $Val extends PostSettlementApprovalEvent>
    implements $PostSettlementApprovalEventCopyWith<$Res> {
  _$PostSettlementApprovalEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetPostApprovalEventImplCopyWith<$Res> {
  factory _$$GetPostApprovalEventImplCopyWith(_$GetPostApprovalEventImpl value,
          $Res Function(_$GetPostApprovalEventImpl) then) =
      __$$GetPostApprovalEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String udpID});
}

/// @nodoc
class __$$GetPostApprovalEventImplCopyWithImpl<$Res>
    extends _$PostSettlementApprovalEventCopyWithImpl<$Res,
        _$GetPostApprovalEventImpl>
    implements _$$GetPostApprovalEventImplCopyWith<$Res> {
  __$$GetPostApprovalEventImplCopyWithImpl(_$GetPostApprovalEventImpl _value,
      $Res Function(_$GetPostApprovalEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? udpID = null,
  }) {
    return _then(_$GetPostApprovalEventImpl(
      udpID: null == udpID
          ? _value.udpID
          : udpID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetPostApprovalEventImpl implements GetPostApprovalEvent {
  const _$GetPostApprovalEventImpl({required this.udpID});

  @override
  final String udpID;

  @override
  String toString() {
    return 'PostSettlementApprovalEvent.getPostApprovalEvent(udpID: $udpID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPostApprovalEventImpl &&
            (identical(other.udpID, udpID) || other.udpID == udpID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, udpID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPostApprovalEventImplCopyWith<_$GetPostApprovalEventImpl>
      get copyWith =>
          __$$GetPostApprovalEventImplCopyWithImpl<_$GetPostApprovalEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String udpID) getPostApprovalEvent,
    required TResult Function() clearPostApprovalEvent,
    required TResult Function() PostLoadingApprovalEvent,
  }) {
    return getPostApprovalEvent(udpID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String udpID)? getPostApprovalEvent,
    TResult? Function()? clearPostApprovalEvent,
    TResult? Function()? PostLoadingApprovalEvent,
  }) {
    return getPostApprovalEvent?.call(udpID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String udpID)? getPostApprovalEvent,
    TResult Function()? clearPostApprovalEvent,
    TResult Function()? PostLoadingApprovalEvent,
    required TResult orElse(),
  }) {
    if (getPostApprovalEvent != null) {
      return getPostApprovalEvent(udpID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPostApprovalEvent value) getPostApprovalEvent,
    required TResult Function(ClearPostApprovalEvent value)
        clearPostApprovalEvent,
    required TResult Function(PostLoadingApprovalEvent value)
        PostLoadingApprovalEvent,
  }) {
    return getPostApprovalEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPostApprovalEvent value)? getPostApprovalEvent,
    TResult? Function(ClearPostApprovalEvent value)? clearPostApprovalEvent,
    TResult? Function(PostLoadingApprovalEvent value)? PostLoadingApprovalEvent,
  }) {
    return getPostApprovalEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPostApprovalEvent value)? getPostApprovalEvent,
    TResult Function(ClearPostApprovalEvent value)? clearPostApprovalEvent,
    TResult Function(PostLoadingApprovalEvent value)? PostLoadingApprovalEvent,
    required TResult orElse(),
  }) {
    if (getPostApprovalEvent != null) {
      return getPostApprovalEvent(this);
    }
    return orElse();
  }
}

abstract class GetPostApprovalEvent implements PostSettlementApprovalEvent {
  const factory GetPostApprovalEvent({required final String udpID}) =
      _$GetPostApprovalEventImpl;

  String get udpID;
  @JsonKey(ignore: true)
  _$$GetPostApprovalEventImplCopyWith<_$GetPostApprovalEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearPostApprovalEventImplCopyWith<$Res> {
  factory _$$ClearPostApprovalEventImplCopyWith(
          _$ClearPostApprovalEventImpl value,
          $Res Function(_$ClearPostApprovalEventImpl) then) =
      __$$ClearPostApprovalEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearPostApprovalEventImplCopyWithImpl<$Res>
    extends _$PostSettlementApprovalEventCopyWithImpl<$Res,
        _$ClearPostApprovalEventImpl>
    implements _$$ClearPostApprovalEventImplCopyWith<$Res> {
  __$$ClearPostApprovalEventImplCopyWithImpl(
      _$ClearPostApprovalEventImpl _value,
      $Res Function(_$ClearPostApprovalEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearPostApprovalEventImpl implements ClearPostApprovalEvent {
  const _$ClearPostApprovalEventImpl();

  @override
  String toString() {
    return 'PostSettlementApprovalEvent.clearPostApprovalEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearPostApprovalEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String udpID) getPostApprovalEvent,
    required TResult Function() clearPostApprovalEvent,
    required TResult Function() PostLoadingApprovalEvent,
  }) {
    return clearPostApprovalEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String udpID)? getPostApprovalEvent,
    TResult? Function()? clearPostApprovalEvent,
    TResult? Function()? PostLoadingApprovalEvent,
  }) {
    return clearPostApprovalEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String udpID)? getPostApprovalEvent,
    TResult Function()? clearPostApprovalEvent,
    TResult Function()? PostLoadingApprovalEvent,
    required TResult orElse(),
  }) {
    if (clearPostApprovalEvent != null) {
      return clearPostApprovalEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPostApprovalEvent value) getPostApprovalEvent,
    required TResult Function(ClearPostApprovalEvent value)
        clearPostApprovalEvent,
    required TResult Function(PostLoadingApprovalEvent value)
        PostLoadingApprovalEvent,
  }) {
    return clearPostApprovalEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPostApprovalEvent value)? getPostApprovalEvent,
    TResult? Function(ClearPostApprovalEvent value)? clearPostApprovalEvent,
    TResult? Function(PostLoadingApprovalEvent value)? PostLoadingApprovalEvent,
  }) {
    return clearPostApprovalEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPostApprovalEvent value)? getPostApprovalEvent,
    TResult Function(ClearPostApprovalEvent value)? clearPostApprovalEvent,
    TResult Function(PostLoadingApprovalEvent value)? PostLoadingApprovalEvent,
    required TResult orElse(),
  }) {
    if (clearPostApprovalEvent != null) {
      return clearPostApprovalEvent(this);
    }
    return orElse();
  }
}

abstract class ClearPostApprovalEvent implements PostSettlementApprovalEvent {
  const factory ClearPostApprovalEvent() = _$ClearPostApprovalEventImpl;
}

/// @nodoc
abstract class _$$PostLoadingApprovalEventImplCopyWith<$Res> {
  factory _$$PostLoadingApprovalEventImplCopyWith(
          _$PostLoadingApprovalEventImpl value,
          $Res Function(_$PostLoadingApprovalEventImpl) then) =
      __$$PostLoadingApprovalEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PostLoadingApprovalEventImplCopyWithImpl<$Res>
    extends _$PostSettlementApprovalEventCopyWithImpl<$Res,
        _$PostLoadingApprovalEventImpl>
    implements _$$PostLoadingApprovalEventImplCopyWith<$Res> {
  __$$PostLoadingApprovalEventImplCopyWithImpl(
      _$PostLoadingApprovalEventImpl _value,
      $Res Function(_$PostLoadingApprovalEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PostLoadingApprovalEventImpl implements PostLoadingApprovalEvent {
  const _$PostLoadingApprovalEventImpl();

  @override
  String toString() {
    return 'PostSettlementApprovalEvent.PostLoadingApprovalEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostLoadingApprovalEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String udpID) getPostApprovalEvent,
    required TResult Function() clearPostApprovalEvent,
    required TResult Function() PostLoadingApprovalEvent,
  }) {
    return PostLoadingApprovalEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String udpID)? getPostApprovalEvent,
    TResult? Function()? clearPostApprovalEvent,
    TResult? Function()? PostLoadingApprovalEvent,
  }) {
    return PostLoadingApprovalEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String udpID)? getPostApprovalEvent,
    TResult Function()? clearPostApprovalEvent,
    TResult Function()? PostLoadingApprovalEvent,
    required TResult orElse(),
  }) {
    if (PostLoadingApprovalEvent != null) {
      return PostLoadingApprovalEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPostApprovalEvent value) getPostApprovalEvent,
    required TResult Function(ClearPostApprovalEvent value)
        clearPostApprovalEvent,
    required TResult Function(PostLoadingApprovalEvent value)
        PostLoadingApprovalEvent,
  }) {
    return PostLoadingApprovalEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPostApprovalEvent value)? getPostApprovalEvent,
    TResult? Function(ClearPostApprovalEvent value)? clearPostApprovalEvent,
    TResult? Function(PostLoadingApprovalEvent value)? PostLoadingApprovalEvent,
  }) {
    return PostLoadingApprovalEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPostApprovalEvent value)? getPostApprovalEvent,
    TResult Function(ClearPostApprovalEvent value)? clearPostApprovalEvent,
    TResult Function(PostLoadingApprovalEvent value)? PostLoadingApprovalEvent,
    required TResult orElse(),
  }) {
    if (PostLoadingApprovalEvent != null) {
      return PostLoadingApprovalEvent(this);
    }
    return orElse();
  }
}

abstract class PostLoadingApprovalEvent implements PostSettlementApprovalEvent {
  const factory PostLoadingApprovalEvent() = _$PostLoadingApprovalEventImpl;
}

/// @nodoc
mixin _$PostSettlementApprovalState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PostSettlementApprovalModel? postApproval)
        getPostSettlementApprovalState,
    required TResult Function() postSettlementApprovalFailedState,
    required TResult Function() postLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PostSettlementApprovalModel? postApproval)?
        getPostSettlementApprovalState,
    TResult? Function()? postSettlementApprovalFailedState,
    TResult? Function()? postLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PostSettlementApprovalModel? postApproval)?
        getPostSettlementApprovalState,
    TResult Function()? postSettlementApprovalFailedState,
    TResult Function()? postLoadingState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPostSettlementApprovalState value)
        getPostSettlementApprovalState,
    required TResult Function(PostSettlementApprovalFailedState value)
        postSettlementApprovalFailedState,
    required TResult Function(PostLoadingState value) postLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPostSettlementApprovalState value)?
        getPostSettlementApprovalState,
    TResult? Function(PostSettlementApprovalFailedState value)?
        postSettlementApprovalFailedState,
    TResult? Function(PostLoadingState value)? postLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPostSettlementApprovalState value)?
        getPostSettlementApprovalState,
    TResult Function(PostSettlementApprovalFailedState value)?
        postSettlementApprovalFailedState,
    TResult Function(PostLoadingState value)? postLoadingState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostSettlementApprovalStateCopyWith<$Res> {
  factory $PostSettlementApprovalStateCopyWith(
          PostSettlementApprovalState value,
          $Res Function(PostSettlementApprovalState) then) =
      _$PostSettlementApprovalStateCopyWithImpl<$Res,
          PostSettlementApprovalState>;
}

/// @nodoc
class _$PostSettlementApprovalStateCopyWithImpl<$Res,
        $Val extends PostSettlementApprovalState>
    implements $PostSettlementApprovalStateCopyWith<$Res> {
  _$PostSettlementApprovalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetPostSettlementApprovalStateImplCopyWith<$Res> {
  factory _$$GetPostSettlementApprovalStateImplCopyWith(
          _$GetPostSettlementApprovalStateImpl value,
          $Res Function(_$GetPostSettlementApprovalStateImpl) then) =
      __$$GetPostSettlementApprovalStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PostSettlementApprovalModel? postApproval});
}

/// @nodoc
class __$$GetPostSettlementApprovalStateImplCopyWithImpl<$Res>
    extends _$PostSettlementApprovalStateCopyWithImpl<$Res,
        _$GetPostSettlementApprovalStateImpl>
    implements _$$GetPostSettlementApprovalStateImplCopyWith<$Res> {
  __$$GetPostSettlementApprovalStateImplCopyWithImpl(
      _$GetPostSettlementApprovalStateImpl _value,
      $Res Function(_$GetPostSettlementApprovalStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postApproval = freezed,
  }) {
    return _then(_$GetPostSettlementApprovalStateImpl(
      postApproval: freezed == postApproval
          ? _value.postApproval
          : postApproval // ignore: cast_nullable_to_non_nullable
              as PostSettlementApprovalModel?,
    ));
  }
}

/// @nodoc

class _$GetPostSettlementApprovalStateImpl
    implements GetPostSettlementApprovalState {
  const _$GetPostSettlementApprovalStateImpl({required this.postApproval});

  @override
  final PostSettlementApprovalModel? postApproval;

  @override
  String toString() {
    return 'PostSettlementApprovalState.getPostSettlementApprovalState(postApproval: $postApproval)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPostSettlementApprovalStateImpl &&
            (identical(other.postApproval, postApproval) ||
                other.postApproval == postApproval));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postApproval);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPostSettlementApprovalStateImplCopyWith<
          _$GetPostSettlementApprovalStateImpl>
      get copyWith => __$$GetPostSettlementApprovalStateImplCopyWithImpl<
          _$GetPostSettlementApprovalStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PostSettlementApprovalModel? postApproval)
        getPostSettlementApprovalState,
    required TResult Function() postSettlementApprovalFailedState,
    required TResult Function() postLoadingState,
  }) {
    return getPostSettlementApprovalState(postApproval);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PostSettlementApprovalModel? postApproval)?
        getPostSettlementApprovalState,
    TResult? Function()? postSettlementApprovalFailedState,
    TResult? Function()? postLoadingState,
  }) {
    return getPostSettlementApprovalState?.call(postApproval);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PostSettlementApprovalModel? postApproval)?
        getPostSettlementApprovalState,
    TResult Function()? postSettlementApprovalFailedState,
    TResult Function()? postLoadingState,
    required TResult orElse(),
  }) {
    if (getPostSettlementApprovalState != null) {
      return getPostSettlementApprovalState(postApproval);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPostSettlementApprovalState value)
        getPostSettlementApprovalState,
    required TResult Function(PostSettlementApprovalFailedState value)
        postSettlementApprovalFailedState,
    required TResult Function(PostLoadingState value) postLoadingState,
  }) {
    return getPostSettlementApprovalState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPostSettlementApprovalState value)?
        getPostSettlementApprovalState,
    TResult? Function(PostSettlementApprovalFailedState value)?
        postSettlementApprovalFailedState,
    TResult? Function(PostLoadingState value)? postLoadingState,
  }) {
    return getPostSettlementApprovalState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPostSettlementApprovalState value)?
        getPostSettlementApprovalState,
    TResult Function(PostSettlementApprovalFailedState value)?
        postSettlementApprovalFailedState,
    TResult Function(PostLoadingState value)? postLoadingState,
    required TResult orElse(),
  }) {
    if (getPostSettlementApprovalState != null) {
      return getPostSettlementApprovalState(this);
    }
    return orElse();
  }
}

abstract class GetPostSettlementApprovalState
    implements PostSettlementApprovalState {
  const factory GetPostSettlementApprovalState(
          {required final PostSettlementApprovalModel? postApproval}) =
      _$GetPostSettlementApprovalStateImpl;

  PostSettlementApprovalModel? get postApproval;
  @JsonKey(ignore: true)
  _$$GetPostSettlementApprovalStateImplCopyWith<
          _$GetPostSettlementApprovalStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PostSettlementApprovalFailedStateImplCopyWith<$Res> {
  factory _$$PostSettlementApprovalFailedStateImplCopyWith(
          _$PostSettlementApprovalFailedStateImpl value,
          $Res Function(_$PostSettlementApprovalFailedStateImpl) then) =
      __$$PostSettlementApprovalFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PostSettlementApprovalFailedStateImplCopyWithImpl<$Res>
    extends _$PostSettlementApprovalStateCopyWithImpl<$Res,
        _$PostSettlementApprovalFailedStateImpl>
    implements _$$PostSettlementApprovalFailedStateImplCopyWith<$Res> {
  __$$PostSettlementApprovalFailedStateImplCopyWithImpl(
      _$PostSettlementApprovalFailedStateImpl _value,
      $Res Function(_$PostSettlementApprovalFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PostSettlementApprovalFailedStateImpl
    implements PostSettlementApprovalFailedState {
  const _$PostSettlementApprovalFailedStateImpl();

  @override
  String toString() {
    return 'PostSettlementApprovalState.postSettlementApprovalFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostSettlementApprovalFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PostSettlementApprovalModel? postApproval)
        getPostSettlementApprovalState,
    required TResult Function() postSettlementApprovalFailedState,
    required TResult Function() postLoadingState,
  }) {
    return postSettlementApprovalFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PostSettlementApprovalModel? postApproval)?
        getPostSettlementApprovalState,
    TResult? Function()? postSettlementApprovalFailedState,
    TResult? Function()? postLoadingState,
  }) {
    return postSettlementApprovalFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PostSettlementApprovalModel? postApproval)?
        getPostSettlementApprovalState,
    TResult Function()? postSettlementApprovalFailedState,
    TResult Function()? postLoadingState,
    required TResult orElse(),
  }) {
    if (postSettlementApprovalFailedState != null) {
      return postSettlementApprovalFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPostSettlementApprovalState value)
        getPostSettlementApprovalState,
    required TResult Function(PostSettlementApprovalFailedState value)
        postSettlementApprovalFailedState,
    required TResult Function(PostLoadingState value) postLoadingState,
  }) {
    return postSettlementApprovalFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPostSettlementApprovalState value)?
        getPostSettlementApprovalState,
    TResult? Function(PostSettlementApprovalFailedState value)?
        postSettlementApprovalFailedState,
    TResult? Function(PostLoadingState value)? postLoadingState,
  }) {
    return postSettlementApprovalFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPostSettlementApprovalState value)?
        getPostSettlementApprovalState,
    TResult Function(PostSettlementApprovalFailedState value)?
        postSettlementApprovalFailedState,
    TResult Function(PostLoadingState value)? postLoadingState,
    required TResult orElse(),
  }) {
    if (postSettlementApprovalFailedState != null) {
      return postSettlementApprovalFailedState(this);
    }
    return orElse();
  }
}

abstract class PostSettlementApprovalFailedState
    implements PostSettlementApprovalState {
  const factory PostSettlementApprovalFailedState() =
      _$PostSettlementApprovalFailedStateImpl;
}

/// @nodoc
abstract class _$$PostLoadingStateImplCopyWith<$Res> {
  factory _$$PostLoadingStateImplCopyWith(_$PostLoadingStateImpl value,
          $Res Function(_$PostLoadingStateImpl) then) =
      __$$PostLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PostLoadingStateImplCopyWithImpl<$Res>
    extends _$PostSettlementApprovalStateCopyWithImpl<$Res,
        _$PostLoadingStateImpl>
    implements _$$PostLoadingStateImplCopyWith<$Res> {
  __$$PostLoadingStateImplCopyWithImpl(_$PostLoadingStateImpl _value,
      $Res Function(_$PostLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PostLoadingStateImpl implements PostLoadingState {
  const _$PostLoadingStateImpl();

  @override
  String toString() {
    return 'PostSettlementApprovalState.postLoadingState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PostLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PostSettlementApprovalModel? postApproval)
        getPostSettlementApprovalState,
    required TResult Function() postSettlementApprovalFailedState,
    required TResult Function() postLoadingState,
  }) {
    return postLoadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PostSettlementApprovalModel? postApproval)?
        getPostSettlementApprovalState,
    TResult? Function()? postSettlementApprovalFailedState,
    TResult? Function()? postLoadingState,
  }) {
    return postLoadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PostSettlementApprovalModel? postApproval)?
        getPostSettlementApprovalState,
    TResult Function()? postSettlementApprovalFailedState,
    TResult Function()? postLoadingState,
    required TResult orElse(),
  }) {
    if (postLoadingState != null) {
      return postLoadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPostSettlementApprovalState value)
        getPostSettlementApprovalState,
    required TResult Function(PostSettlementApprovalFailedState value)
        postSettlementApprovalFailedState,
    required TResult Function(PostLoadingState value) postLoadingState,
  }) {
    return postLoadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPostSettlementApprovalState value)?
        getPostSettlementApprovalState,
    TResult? Function(PostSettlementApprovalFailedState value)?
        postSettlementApprovalFailedState,
    TResult? Function(PostLoadingState value)? postLoadingState,
  }) {
    return postLoadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPostSettlementApprovalState value)?
        getPostSettlementApprovalState,
    TResult Function(PostSettlementApprovalFailedState value)?
        postSettlementApprovalFailedState,
    TResult Function(PostLoadingState value)? postLoadingState,
    required TResult orElse(),
  }) {
    if (postLoadingState != null) {
      return postLoadingState(this);
    }
    return orElse();
  }
}

abstract class PostLoadingState implements PostSettlementApprovalState {
  const factory PostLoadingState() = _$PostLoadingStateImpl;
}
