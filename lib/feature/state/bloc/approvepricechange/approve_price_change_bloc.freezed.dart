// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'approve_price_change_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ApprovePriceChangeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApprovePriceChangeinModel approval)
        getPricChangeApprovalEvent,
    required TResult Function() addApprovalLoadinEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApprovePriceChangeinModel approval)?
        getPricChangeApprovalEvent,
    TResult? Function()? addApprovalLoadinEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApprovePriceChangeinModel approval)?
        getPricChangeApprovalEvent,
    TResult Function()? addApprovalLoadinEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPricChangeApprovalEvent value)
        getPricChangeApprovalEvent,
    required TResult Function(AddApprovalLoadinEvent value)
        addApprovalLoadinEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPricChangeApprovalEvent value)?
        getPricChangeApprovalEvent,
    TResult? Function(AddApprovalLoadinEvent value)? addApprovalLoadinEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPricChangeApprovalEvent value)?
        getPricChangeApprovalEvent,
    TResult Function(AddApprovalLoadinEvent value)? addApprovalLoadinEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApprovePriceChangeEventCopyWith<$Res> {
  factory $ApprovePriceChangeEventCopyWith(ApprovePriceChangeEvent value,
          $Res Function(ApprovePriceChangeEvent) then) =
      _$ApprovePriceChangeEventCopyWithImpl<$Res, ApprovePriceChangeEvent>;
}

/// @nodoc
class _$ApprovePriceChangeEventCopyWithImpl<$Res,
        $Val extends ApprovePriceChangeEvent>
    implements $ApprovePriceChangeEventCopyWith<$Res> {
  _$ApprovePriceChangeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetPricChangeApprovalEventImplCopyWith<$Res> {
  factory _$$GetPricChangeApprovalEventImplCopyWith(
          _$GetPricChangeApprovalEventImpl value,
          $Res Function(_$GetPricChangeApprovalEventImpl) then) =
      __$$GetPricChangeApprovalEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApprovePriceChangeinModel approval});
}

/// @nodoc
class __$$GetPricChangeApprovalEventImplCopyWithImpl<$Res>
    extends _$ApprovePriceChangeEventCopyWithImpl<$Res,
        _$GetPricChangeApprovalEventImpl>
    implements _$$GetPricChangeApprovalEventImplCopyWith<$Res> {
  __$$GetPricChangeApprovalEventImplCopyWithImpl(
      _$GetPricChangeApprovalEventImpl _value,
      $Res Function(_$GetPricChangeApprovalEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? approval = null,
  }) {
    return _then(_$GetPricChangeApprovalEventImpl(
      approval: null == approval
          ? _value.approval
          : approval // ignore: cast_nullable_to_non_nullable
              as ApprovePriceChangeinModel,
    ));
  }
}

/// @nodoc

class _$GetPricChangeApprovalEventImpl implements GetPricChangeApprovalEvent {
  const _$GetPricChangeApprovalEventImpl({required this.approval});

  @override
  final ApprovePriceChangeinModel approval;

  @override
  String toString() {
    return 'ApprovePriceChangeEvent.getPricChangeApprovalEvent(approval: $approval)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPricChangeApprovalEventImpl &&
            (identical(other.approval, approval) ||
                other.approval == approval));
  }

  @override
  int get hashCode => Object.hash(runtimeType, approval);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPricChangeApprovalEventImplCopyWith<_$GetPricChangeApprovalEventImpl>
      get copyWith => __$$GetPricChangeApprovalEventImplCopyWithImpl<
          _$GetPricChangeApprovalEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApprovePriceChangeinModel approval)
        getPricChangeApprovalEvent,
    required TResult Function() addApprovalLoadinEvent,
  }) {
    return getPricChangeApprovalEvent(approval);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApprovePriceChangeinModel approval)?
        getPricChangeApprovalEvent,
    TResult? Function()? addApprovalLoadinEvent,
  }) {
    return getPricChangeApprovalEvent?.call(approval);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApprovePriceChangeinModel approval)?
        getPricChangeApprovalEvent,
    TResult Function()? addApprovalLoadinEvent,
    required TResult orElse(),
  }) {
    if (getPricChangeApprovalEvent != null) {
      return getPricChangeApprovalEvent(approval);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPricChangeApprovalEvent value)
        getPricChangeApprovalEvent,
    required TResult Function(AddApprovalLoadinEvent value)
        addApprovalLoadinEvent,
  }) {
    return getPricChangeApprovalEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPricChangeApprovalEvent value)?
        getPricChangeApprovalEvent,
    TResult? Function(AddApprovalLoadinEvent value)? addApprovalLoadinEvent,
  }) {
    return getPricChangeApprovalEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPricChangeApprovalEvent value)?
        getPricChangeApprovalEvent,
    TResult Function(AddApprovalLoadinEvent value)? addApprovalLoadinEvent,
    required TResult orElse(),
  }) {
    if (getPricChangeApprovalEvent != null) {
      return getPricChangeApprovalEvent(this);
    }
    return orElse();
  }
}

abstract class GetPricChangeApprovalEvent implements ApprovePriceChangeEvent {
  const factory GetPricChangeApprovalEvent(
          {required final ApprovePriceChangeinModel approval}) =
      _$GetPricChangeApprovalEventImpl;

  ApprovePriceChangeinModel get approval;
  @JsonKey(ignore: true)
  _$$GetPricChangeApprovalEventImplCopyWith<_$GetPricChangeApprovalEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddApprovalLoadinEventImplCopyWith<$Res> {
  factory _$$AddApprovalLoadinEventImplCopyWith(
          _$AddApprovalLoadinEventImpl value,
          $Res Function(_$AddApprovalLoadinEventImpl) then) =
      __$$AddApprovalLoadinEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddApprovalLoadinEventImplCopyWithImpl<$Res>
    extends _$ApprovePriceChangeEventCopyWithImpl<$Res,
        _$AddApprovalLoadinEventImpl>
    implements _$$AddApprovalLoadinEventImplCopyWith<$Res> {
  __$$AddApprovalLoadinEventImplCopyWithImpl(
      _$AddApprovalLoadinEventImpl _value,
      $Res Function(_$AddApprovalLoadinEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddApprovalLoadinEventImpl implements AddApprovalLoadinEvent {
  const _$AddApprovalLoadinEventImpl();

  @override
  String toString() {
    return 'ApprovePriceChangeEvent.addApprovalLoadinEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddApprovalLoadinEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApprovePriceChangeinModel approval)
        getPricChangeApprovalEvent,
    required TResult Function() addApprovalLoadinEvent,
  }) {
    return addApprovalLoadinEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApprovePriceChangeinModel approval)?
        getPricChangeApprovalEvent,
    TResult? Function()? addApprovalLoadinEvent,
  }) {
    return addApprovalLoadinEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApprovePriceChangeinModel approval)?
        getPricChangeApprovalEvent,
    TResult Function()? addApprovalLoadinEvent,
    required TResult orElse(),
  }) {
    if (addApprovalLoadinEvent != null) {
      return addApprovalLoadinEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPricChangeApprovalEvent value)
        getPricChangeApprovalEvent,
    required TResult Function(AddApprovalLoadinEvent value)
        addApprovalLoadinEvent,
  }) {
    return addApprovalLoadinEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPricChangeApprovalEvent value)?
        getPricChangeApprovalEvent,
    TResult? Function(AddApprovalLoadinEvent value)? addApprovalLoadinEvent,
  }) {
    return addApprovalLoadinEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPricChangeApprovalEvent value)?
        getPricChangeApprovalEvent,
    TResult Function(AddApprovalLoadinEvent value)? addApprovalLoadinEvent,
    required TResult orElse(),
  }) {
    if (addApprovalLoadinEvent != null) {
      return addApprovalLoadinEvent(this);
    }
    return orElse();
  }
}

abstract class AddApprovalLoadinEvent implements ApprovePriceChangeEvent {
  const factory AddApprovalLoadinEvent() = _$AddApprovalLoadinEventImpl;
}

/// @nodoc
mixin _$ApprovePriceChangeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApprovePriceChangeModel? approval)
        getPriceChangeApprovalState,
    required TResult Function() approveLoadingState,
    required TResult Function() getPriceChangeApprovalFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApprovePriceChangeModel? approval)?
        getPriceChangeApprovalState,
    TResult? Function()? approveLoadingState,
    TResult? Function()? getPriceChangeApprovalFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApprovePriceChangeModel? approval)?
        getPriceChangeApprovalState,
    TResult Function()? approveLoadingState,
    TResult Function()? getPriceChangeApprovalFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPriceChangeApprovalState value)
        getPriceChangeApprovalState,
    required TResult Function(ApproveLoadingState value) approveLoadingState,
    required TResult Function(GetPriceChangeApprovalFailed value)
        getPriceChangeApprovalFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPriceChangeApprovalState value)?
        getPriceChangeApprovalState,
    TResult? Function(ApproveLoadingState value)? approveLoadingState,
    TResult? Function(GetPriceChangeApprovalFailed value)?
        getPriceChangeApprovalFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPriceChangeApprovalState value)?
        getPriceChangeApprovalState,
    TResult Function(ApproveLoadingState value)? approveLoadingState,
    TResult Function(GetPriceChangeApprovalFailed value)?
        getPriceChangeApprovalFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApprovePriceChangeStateCopyWith<$Res> {
  factory $ApprovePriceChangeStateCopyWith(ApprovePriceChangeState value,
          $Res Function(ApprovePriceChangeState) then) =
      _$ApprovePriceChangeStateCopyWithImpl<$Res, ApprovePriceChangeState>;
}

/// @nodoc
class _$ApprovePriceChangeStateCopyWithImpl<$Res,
        $Val extends ApprovePriceChangeState>
    implements $ApprovePriceChangeStateCopyWith<$Res> {
  _$ApprovePriceChangeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetPriceChangeApprovalStateImplCopyWith<$Res> {
  factory _$$GetPriceChangeApprovalStateImplCopyWith(
          _$GetPriceChangeApprovalStateImpl value,
          $Res Function(_$GetPriceChangeApprovalStateImpl) then) =
      __$$GetPriceChangeApprovalStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApprovePriceChangeModel? approval});
}

/// @nodoc
class __$$GetPriceChangeApprovalStateImplCopyWithImpl<$Res>
    extends _$ApprovePriceChangeStateCopyWithImpl<$Res,
        _$GetPriceChangeApprovalStateImpl>
    implements _$$GetPriceChangeApprovalStateImplCopyWith<$Res> {
  __$$GetPriceChangeApprovalStateImplCopyWithImpl(
      _$GetPriceChangeApprovalStateImpl _value,
      $Res Function(_$GetPriceChangeApprovalStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? approval = freezed,
  }) {
    return _then(_$GetPriceChangeApprovalStateImpl(
      approval: freezed == approval
          ? _value.approval
          : approval // ignore: cast_nullable_to_non_nullable
              as ApprovePriceChangeModel?,
    ));
  }
}

/// @nodoc

class _$GetPriceChangeApprovalStateImpl implements GetPriceChangeApprovalState {
  const _$GetPriceChangeApprovalStateImpl({required this.approval});

  @override
  final ApprovePriceChangeModel? approval;

  @override
  String toString() {
    return 'ApprovePriceChangeState.getPriceChangeApprovalState(approval: $approval)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPriceChangeApprovalStateImpl &&
            (identical(other.approval, approval) ||
                other.approval == approval));
  }

  @override
  int get hashCode => Object.hash(runtimeType, approval);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPriceChangeApprovalStateImplCopyWith<_$GetPriceChangeApprovalStateImpl>
      get copyWith => __$$GetPriceChangeApprovalStateImplCopyWithImpl<
          _$GetPriceChangeApprovalStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApprovePriceChangeModel? approval)
        getPriceChangeApprovalState,
    required TResult Function() approveLoadingState,
    required TResult Function() getPriceChangeApprovalFailed,
  }) {
    return getPriceChangeApprovalState(approval);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApprovePriceChangeModel? approval)?
        getPriceChangeApprovalState,
    TResult? Function()? approveLoadingState,
    TResult? Function()? getPriceChangeApprovalFailed,
  }) {
    return getPriceChangeApprovalState?.call(approval);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApprovePriceChangeModel? approval)?
        getPriceChangeApprovalState,
    TResult Function()? approveLoadingState,
    TResult Function()? getPriceChangeApprovalFailed,
    required TResult orElse(),
  }) {
    if (getPriceChangeApprovalState != null) {
      return getPriceChangeApprovalState(approval);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPriceChangeApprovalState value)
        getPriceChangeApprovalState,
    required TResult Function(ApproveLoadingState value) approveLoadingState,
    required TResult Function(GetPriceChangeApprovalFailed value)
        getPriceChangeApprovalFailed,
  }) {
    return getPriceChangeApprovalState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPriceChangeApprovalState value)?
        getPriceChangeApprovalState,
    TResult? Function(ApproveLoadingState value)? approveLoadingState,
    TResult? Function(GetPriceChangeApprovalFailed value)?
        getPriceChangeApprovalFailed,
  }) {
    return getPriceChangeApprovalState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPriceChangeApprovalState value)?
        getPriceChangeApprovalState,
    TResult Function(ApproveLoadingState value)? approveLoadingState,
    TResult Function(GetPriceChangeApprovalFailed value)?
        getPriceChangeApprovalFailed,
    required TResult orElse(),
  }) {
    if (getPriceChangeApprovalState != null) {
      return getPriceChangeApprovalState(this);
    }
    return orElse();
  }
}

abstract class GetPriceChangeApprovalState implements ApprovePriceChangeState {
  const factory GetPriceChangeApprovalState(
          {required final ApprovePriceChangeModel? approval}) =
      _$GetPriceChangeApprovalStateImpl;

  ApprovePriceChangeModel? get approval;
  @JsonKey(ignore: true)
  _$$GetPriceChangeApprovalStateImplCopyWith<_$GetPriceChangeApprovalStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApproveLoadingStateImplCopyWith<$Res> {
  factory _$$ApproveLoadingStateImplCopyWith(_$ApproveLoadingStateImpl value,
          $Res Function(_$ApproveLoadingStateImpl) then) =
      __$$ApproveLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ApproveLoadingStateImplCopyWithImpl<$Res>
    extends _$ApprovePriceChangeStateCopyWithImpl<$Res,
        _$ApproveLoadingStateImpl>
    implements _$$ApproveLoadingStateImplCopyWith<$Res> {
  __$$ApproveLoadingStateImplCopyWithImpl(_$ApproveLoadingStateImpl _value,
      $Res Function(_$ApproveLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ApproveLoadingStateImpl implements ApproveLoadingState {
  const _$ApproveLoadingStateImpl();

  @override
  String toString() {
    return 'ApprovePriceChangeState.approveLoadingState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApproveLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApprovePriceChangeModel? approval)
        getPriceChangeApprovalState,
    required TResult Function() approveLoadingState,
    required TResult Function() getPriceChangeApprovalFailed,
  }) {
    return approveLoadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApprovePriceChangeModel? approval)?
        getPriceChangeApprovalState,
    TResult? Function()? approveLoadingState,
    TResult? Function()? getPriceChangeApprovalFailed,
  }) {
    return approveLoadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApprovePriceChangeModel? approval)?
        getPriceChangeApprovalState,
    TResult Function()? approveLoadingState,
    TResult Function()? getPriceChangeApprovalFailed,
    required TResult orElse(),
  }) {
    if (approveLoadingState != null) {
      return approveLoadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPriceChangeApprovalState value)
        getPriceChangeApprovalState,
    required TResult Function(ApproveLoadingState value) approveLoadingState,
    required TResult Function(GetPriceChangeApprovalFailed value)
        getPriceChangeApprovalFailed,
  }) {
    return approveLoadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPriceChangeApprovalState value)?
        getPriceChangeApprovalState,
    TResult? Function(ApproveLoadingState value)? approveLoadingState,
    TResult? Function(GetPriceChangeApprovalFailed value)?
        getPriceChangeApprovalFailed,
  }) {
    return approveLoadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPriceChangeApprovalState value)?
        getPriceChangeApprovalState,
    TResult Function(ApproveLoadingState value)? approveLoadingState,
    TResult Function(GetPriceChangeApprovalFailed value)?
        getPriceChangeApprovalFailed,
    required TResult orElse(),
  }) {
    if (approveLoadingState != null) {
      return approveLoadingState(this);
    }
    return orElse();
  }
}

abstract class ApproveLoadingState implements ApprovePriceChangeState {
  const factory ApproveLoadingState() = _$ApproveLoadingStateImpl;
}

/// @nodoc
abstract class _$$GetPriceChangeApprovalFailedImplCopyWith<$Res> {
  factory _$$GetPriceChangeApprovalFailedImplCopyWith(
          _$GetPriceChangeApprovalFailedImpl value,
          $Res Function(_$GetPriceChangeApprovalFailedImpl) then) =
      __$$GetPriceChangeApprovalFailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPriceChangeApprovalFailedImplCopyWithImpl<$Res>
    extends _$ApprovePriceChangeStateCopyWithImpl<$Res,
        _$GetPriceChangeApprovalFailedImpl>
    implements _$$GetPriceChangeApprovalFailedImplCopyWith<$Res> {
  __$$GetPriceChangeApprovalFailedImplCopyWithImpl(
      _$GetPriceChangeApprovalFailedImpl _value,
      $Res Function(_$GetPriceChangeApprovalFailedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetPriceChangeApprovalFailedImpl
    implements GetPriceChangeApprovalFailed {
  const _$GetPriceChangeApprovalFailedImpl();

  @override
  String toString() {
    return 'ApprovePriceChangeState.getPriceChangeApprovalFailed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPriceChangeApprovalFailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ApprovePriceChangeModel? approval)
        getPriceChangeApprovalState,
    required TResult Function() approveLoadingState,
    required TResult Function() getPriceChangeApprovalFailed,
  }) {
    return getPriceChangeApprovalFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ApprovePriceChangeModel? approval)?
        getPriceChangeApprovalState,
    TResult? Function()? approveLoadingState,
    TResult? Function()? getPriceChangeApprovalFailed,
  }) {
    return getPriceChangeApprovalFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ApprovePriceChangeModel? approval)?
        getPriceChangeApprovalState,
    TResult Function()? approveLoadingState,
    TResult Function()? getPriceChangeApprovalFailed,
    required TResult orElse(),
  }) {
    if (getPriceChangeApprovalFailed != null) {
      return getPriceChangeApprovalFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPriceChangeApprovalState value)
        getPriceChangeApprovalState,
    required TResult Function(ApproveLoadingState value) approveLoadingState,
    required TResult Function(GetPriceChangeApprovalFailed value)
        getPriceChangeApprovalFailed,
  }) {
    return getPriceChangeApprovalFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPriceChangeApprovalState value)?
        getPriceChangeApprovalState,
    TResult? Function(ApproveLoadingState value)? approveLoadingState,
    TResult? Function(GetPriceChangeApprovalFailed value)?
        getPriceChangeApprovalFailed,
  }) {
    return getPriceChangeApprovalFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPriceChangeApprovalState value)?
        getPriceChangeApprovalState,
    TResult Function(ApproveLoadingState value)? approveLoadingState,
    TResult Function(GetPriceChangeApprovalFailed value)?
        getPriceChangeApprovalFailed,
    required TResult orElse(),
  }) {
    if (getPriceChangeApprovalFailed != null) {
      return getPriceChangeApprovalFailed(this);
    }
    return orElse();
  }
}

abstract class GetPriceChangeApprovalFailed implements ApprovePriceChangeState {
  const factory GetPriceChangeApprovalFailed() =
      _$GetPriceChangeApprovalFailedImpl;
}
