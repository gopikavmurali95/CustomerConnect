// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'asset_removal_apprval_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AssetRemovalApprvalEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AssetRemovalApprovalInModel approve)
        approveAssetRemovalEvent,
    required TResult Function(AssetRemovalApprovalInModel reject)
        assetRemovalRejectEvent,
    required TResult Function() assetRemovalApprovalLoadingEvent,
    required TResult Function() clearAssetRemovalapprovalEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AssetRemovalApprovalInModel approve)?
        approveAssetRemovalEvent,
    TResult? Function(AssetRemovalApprovalInModel reject)?
        assetRemovalRejectEvent,
    TResult? Function()? assetRemovalApprovalLoadingEvent,
    TResult? Function()? clearAssetRemovalapprovalEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AssetRemovalApprovalInModel approve)?
        approveAssetRemovalEvent,
    TResult Function(AssetRemovalApprovalInModel reject)?
        assetRemovalRejectEvent,
    TResult Function()? assetRemovalApprovalLoadingEvent,
    TResult Function()? clearAssetRemovalapprovalEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApproveAssetRemovalEvent value)
        approveAssetRemovalEvent,
    required TResult Function(AssetRemovalRejectEvent value)
        assetRemovalRejectEvent,
    required TResult Function(AssetRemovalApprovalLoadingEvent value)
        assetRemovalApprovalLoadingEvent,
    required TResult Function(ClearAssetRemovalapprovalEvent value)
        clearAssetRemovalapprovalEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApproveAssetRemovalEvent value)? approveAssetRemovalEvent,
    TResult? Function(AssetRemovalRejectEvent value)? assetRemovalRejectEvent,
    TResult? Function(AssetRemovalApprovalLoadingEvent value)?
        assetRemovalApprovalLoadingEvent,
    TResult? Function(ClearAssetRemovalapprovalEvent value)?
        clearAssetRemovalapprovalEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApproveAssetRemovalEvent value)? approveAssetRemovalEvent,
    TResult Function(AssetRemovalRejectEvent value)? assetRemovalRejectEvent,
    TResult Function(AssetRemovalApprovalLoadingEvent value)?
        assetRemovalApprovalLoadingEvent,
    TResult Function(ClearAssetRemovalapprovalEvent value)?
        clearAssetRemovalapprovalEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssetRemovalApprvalEventCopyWith<$Res> {
  factory $AssetRemovalApprvalEventCopyWith(AssetRemovalApprvalEvent value,
          $Res Function(AssetRemovalApprvalEvent) then) =
      _$AssetRemovalApprvalEventCopyWithImpl<$Res, AssetRemovalApprvalEvent>;
}

/// @nodoc
class _$AssetRemovalApprvalEventCopyWithImpl<$Res,
        $Val extends AssetRemovalApprvalEvent>
    implements $AssetRemovalApprvalEventCopyWith<$Res> {
  _$AssetRemovalApprvalEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ApproveAssetRemovalEventImplCopyWith<$Res> {
  factory _$$ApproveAssetRemovalEventImplCopyWith(
          _$ApproveAssetRemovalEventImpl value,
          $Res Function(_$ApproveAssetRemovalEventImpl) then) =
      __$$ApproveAssetRemovalEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AssetRemovalApprovalInModel approve});
}

/// @nodoc
class __$$ApproveAssetRemovalEventImplCopyWithImpl<$Res>
    extends _$AssetRemovalApprvalEventCopyWithImpl<$Res,
        _$ApproveAssetRemovalEventImpl>
    implements _$$ApproveAssetRemovalEventImplCopyWith<$Res> {
  __$$ApproveAssetRemovalEventImplCopyWithImpl(
      _$ApproveAssetRemovalEventImpl _value,
      $Res Function(_$ApproveAssetRemovalEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? approve = null,
  }) {
    return _then(_$ApproveAssetRemovalEventImpl(
      approve: null == approve
          ? _value.approve
          : approve // ignore: cast_nullable_to_non_nullable
              as AssetRemovalApprovalInModel,
    ));
  }
}

/// @nodoc

class _$ApproveAssetRemovalEventImpl implements ApproveAssetRemovalEvent {
  const _$ApproveAssetRemovalEventImpl({required this.approve});

  @override
  final AssetRemovalApprovalInModel approve;

  @override
  String toString() {
    return 'AssetRemovalApprvalEvent.approveAssetRemovalEvent(approve: $approve)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApproveAssetRemovalEventImpl &&
            (identical(other.approve, approve) || other.approve == approve));
  }

  @override
  int get hashCode => Object.hash(runtimeType, approve);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApproveAssetRemovalEventImplCopyWith<_$ApproveAssetRemovalEventImpl>
      get copyWith => __$$ApproveAssetRemovalEventImplCopyWithImpl<
          _$ApproveAssetRemovalEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AssetRemovalApprovalInModel approve)
        approveAssetRemovalEvent,
    required TResult Function(AssetRemovalApprovalInModel reject)
        assetRemovalRejectEvent,
    required TResult Function() assetRemovalApprovalLoadingEvent,
    required TResult Function() clearAssetRemovalapprovalEvent,
  }) {
    return approveAssetRemovalEvent(approve);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AssetRemovalApprovalInModel approve)?
        approveAssetRemovalEvent,
    TResult? Function(AssetRemovalApprovalInModel reject)?
        assetRemovalRejectEvent,
    TResult? Function()? assetRemovalApprovalLoadingEvent,
    TResult? Function()? clearAssetRemovalapprovalEvent,
  }) {
    return approveAssetRemovalEvent?.call(approve);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AssetRemovalApprovalInModel approve)?
        approveAssetRemovalEvent,
    TResult Function(AssetRemovalApprovalInModel reject)?
        assetRemovalRejectEvent,
    TResult Function()? assetRemovalApprovalLoadingEvent,
    TResult Function()? clearAssetRemovalapprovalEvent,
    required TResult orElse(),
  }) {
    if (approveAssetRemovalEvent != null) {
      return approveAssetRemovalEvent(approve);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApproveAssetRemovalEvent value)
        approveAssetRemovalEvent,
    required TResult Function(AssetRemovalRejectEvent value)
        assetRemovalRejectEvent,
    required TResult Function(AssetRemovalApprovalLoadingEvent value)
        assetRemovalApprovalLoadingEvent,
    required TResult Function(ClearAssetRemovalapprovalEvent value)
        clearAssetRemovalapprovalEvent,
  }) {
    return approveAssetRemovalEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApproveAssetRemovalEvent value)? approveAssetRemovalEvent,
    TResult? Function(AssetRemovalRejectEvent value)? assetRemovalRejectEvent,
    TResult? Function(AssetRemovalApprovalLoadingEvent value)?
        assetRemovalApprovalLoadingEvent,
    TResult? Function(ClearAssetRemovalapprovalEvent value)?
        clearAssetRemovalapprovalEvent,
  }) {
    return approveAssetRemovalEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApproveAssetRemovalEvent value)? approveAssetRemovalEvent,
    TResult Function(AssetRemovalRejectEvent value)? assetRemovalRejectEvent,
    TResult Function(AssetRemovalApprovalLoadingEvent value)?
        assetRemovalApprovalLoadingEvent,
    TResult Function(ClearAssetRemovalapprovalEvent value)?
        clearAssetRemovalapprovalEvent,
    required TResult orElse(),
  }) {
    if (approveAssetRemovalEvent != null) {
      return approveAssetRemovalEvent(this);
    }
    return orElse();
  }
}

abstract class ApproveAssetRemovalEvent implements AssetRemovalApprvalEvent {
  const factory ApproveAssetRemovalEvent(
          {required final AssetRemovalApprovalInModel approve}) =
      _$ApproveAssetRemovalEventImpl;

  AssetRemovalApprovalInModel get approve;
  @JsonKey(ignore: true)
  _$$ApproveAssetRemovalEventImplCopyWith<_$ApproveAssetRemovalEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AssetRemovalRejectEventImplCopyWith<$Res> {
  factory _$$AssetRemovalRejectEventImplCopyWith(
          _$AssetRemovalRejectEventImpl value,
          $Res Function(_$AssetRemovalRejectEventImpl) then) =
      __$$AssetRemovalRejectEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AssetRemovalApprovalInModel reject});
}

/// @nodoc
class __$$AssetRemovalRejectEventImplCopyWithImpl<$Res>
    extends _$AssetRemovalApprvalEventCopyWithImpl<$Res,
        _$AssetRemovalRejectEventImpl>
    implements _$$AssetRemovalRejectEventImplCopyWith<$Res> {
  __$$AssetRemovalRejectEventImplCopyWithImpl(
      _$AssetRemovalRejectEventImpl _value,
      $Res Function(_$AssetRemovalRejectEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reject = null,
  }) {
    return _then(_$AssetRemovalRejectEventImpl(
      reject: null == reject
          ? _value.reject
          : reject // ignore: cast_nullable_to_non_nullable
              as AssetRemovalApprovalInModel,
    ));
  }
}

/// @nodoc

class _$AssetRemovalRejectEventImpl implements AssetRemovalRejectEvent {
  const _$AssetRemovalRejectEventImpl({required this.reject});

  @override
  final AssetRemovalApprovalInModel reject;

  @override
  String toString() {
    return 'AssetRemovalApprvalEvent.assetRemovalRejectEvent(reject: $reject)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetRemovalRejectEventImpl &&
            (identical(other.reject, reject) || other.reject == reject));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reject);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AssetRemovalRejectEventImplCopyWith<_$AssetRemovalRejectEventImpl>
      get copyWith => __$$AssetRemovalRejectEventImplCopyWithImpl<
          _$AssetRemovalRejectEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AssetRemovalApprovalInModel approve)
        approveAssetRemovalEvent,
    required TResult Function(AssetRemovalApprovalInModel reject)
        assetRemovalRejectEvent,
    required TResult Function() assetRemovalApprovalLoadingEvent,
    required TResult Function() clearAssetRemovalapprovalEvent,
  }) {
    return assetRemovalRejectEvent(reject);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AssetRemovalApprovalInModel approve)?
        approveAssetRemovalEvent,
    TResult? Function(AssetRemovalApprovalInModel reject)?
        assetRemovalRejectEvent,
    TResult? Function()? assetRemovalApprovalLoadingEvent,
    TResult? Function()? clearAssetRemovalapprovalEvent,
  }) {
    return assetRemovalRejectEvent?.call(reject);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AssetRemovalApprovalInModel approve)?
        approveAssetRemovalEvent,
    TResult Function(AssetRemovalApprovalInModel reject)?
        assetRemovalRejectEvent,
    TResult Function()? assetRemovalApprovalLoadingEvent,
    TResult Function()? clearAssetRemovalapprovalEvent,
    required TResult orElse(),
  }) {
    if (assetRemovalRejectEvent != null) {
      return assetRemovalRejectEvent(reject);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApproveAssetRemovalEvent value)
        approveAssetRemovalEvent,
    required TResult Function(AssetRemovalRejectEvent value)
        assetRemovalRejectEvent,
    required TResult Function(AssetRemovalApprovalLoadingEvent value)
        assetRemovalApprovalLoadingEvent,
    required TResult Function(ClearAssetRemovalapprovalEvent value)
        clearAssetRemovalapprovalEvent,
  }) {
    return assetRemovalRejectEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApproveAssetRemovalEvent value)? approveAssetRemovalEvent,
    TResult? Function(AssetRemovalRejectEvent value)? assetRemovalRejectEvent,
    TResult? Function(AssetRemovalApprovalLoadingEvent value)?
        assetRemovalApprovalLoadingEvent,
    TResult? Function(ClearAssetRemovalapprovalEvent value)?
        clearAssetRemovalapprovalEvent,
  }) {
    return assetRemovalRejectEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApproveAssetRemovalEvent value)? approveAssetRemovalEvent,
    TResult Function(AssetRemovalRejectEvent value)? assetRemovalRejectEvent,
    TResult Function(AssetRemovalApprovalLoadingEvent value)?
        assetRemovalApprovalLoadingEvent,
    TResult Function(ClearAssetRemovalapprovalEvent value)?
        clearAssetRemovalapprovalEvent,
    required TResult orElse(),
  }) {
    if (assetRemovalRejectEvent != null) {
      return assetRemovalRejectEvent(this);
    }
    return orElse();
  }
}

abstract class AssetRemovalRejectEvent implements AssetRemovalApprvalEvent {
  const factory AssetRemovalRejectEvent(
          {required final AssetRemovalApprovalInModel reject}) =
      _$AssetRemovalRejectEventImpl;

  AssetRemovalApprovalInModel get reject;
  @JsonKey(ignore: true)
  _$$AssetRemovalRejectEventImplCopyWith<_$AssetRemovalRejectEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AssetRemovalApprovalLoadingEventImplCopyWith<$Res> {
  factory _$$AssetRemovalApprovalLoadingEventImplCopyWith(
          _$AssetRemovalApprovalLoadingEventImpl value,
          $Res Function(_$AssetRemovalApprovalLoadingEventImpl) then) =
      __$$AssetRemovalApprovalLoadingEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AssetRemovalApprovalLoadingEventImplCopyWithImpl<$Res>
    extends _$AssetRemovalApprvalEventCopyWithImpl<$Res,
        _$AssetRemovalApprovalLoadingEventImpl>
    implements _$$AssetRemovalApprovalLoadingEventImplCopyWith<$Res> {
  __$$AssetRemovalApprovalLoadingEventImplCopyWithImpl(
      _$AssetRemovalApprovalLoadingEventImpl _value,
      $Res Function(_$AssetRemovalApprovalLoadingEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AssetRemovalApprovalLoadingEventImpl
    implements AssetRemovalApprovalLoadingEvent {
  const _$AssetRemovalApprovalLoadingEventImpl();

  @override
  String toString() {
    return 'AssetRemovalApprvalEvent.assetRemovalApprovalLoadingEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetRemovalApprovalLoadingEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AssetRemovalApprovalInModel approve)
        approveAssetRemovalEvent,
    required TResult Function(AssetRemovalApprovalInModel reject)
        assetRemovalRejectEvent,
    required TResult Function() assetRemovalApprovalLoadingEvent,
    required TResult Function() clearAssetRemovalapprovalEvent,
  }) {
    return assetRemovalApprovalLoadingEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AssetRemovalApprovalInModel approve)?
        approveAssetRemovalEvent,
    TResult? Function(AssetRemovalApprovalInModel reject)?
        assetRemovalRejectEvent,
    TResult? Function()? assetRemovalApprovalLoadingEvent,
    TResult? Function()? clearAssetRemovalapprovalEvent,
  }) {
    return assetRemovalApprovalLoadingEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AssetRemovalApprovalInModel approve)?
        approveAssetRemovalEvent,
    TResult Function(AssetRemovalApprovalInModel reject)?
        assetRemovalRejectEvent,
    TResult Function()? assetRemovalApprovalLoadingEvent,
    TResult Function()? clearAssetRemovalapprovalEvent,
    required TResult orElse(),
  }) {
    if (assetRemovalApprovalLoadingEvent != null) {
      return assetRemovalApprovalLoadingEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApproveAssetRemovalEvent value)
        approveAssetRemovalEvent,
    required TResult Function(AssetRemovalRejectEvent value)
        assetRemovalRejectEvent,
    required TResult Function(AssetRemovalApprovalLoadingEvent value)
        assetRemovalApprovalLoadingEvent,
    required TResult Function(ClearAssetRemovalapprovalEvent value)
        clearAssetRemovalapprovalEvent,
  }) {
    return assetRemovalApprovalLoadingEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApproveAssetRemovalEvent value)? approveAssetRemovalEvent,
    TResult? Function(AssetRemovalRejectEvent value)? assetRemovalRejectEvent,
    TResult? Function(AssetRemovalApprovalLoadingEvent value)?
        assetRemovalApprovalLoadingEvent,
    TResult? Function(ClearAssetRemovalapprovalEvent value)?
        clearAssetRemovalapprovalEvent,
  }) {
    return assetRemovalApprovalLoadingEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApproveAssetRemovalEvent value)? approveAssetRemovalEvent,
    TResult Function(AssetRemovalRejectEvent value)? assetRemovalRejectEvent,
    TResult Function(AssetRemovalApprovalLoadingEvent value)?
        assetRemovalApprovalLoadingEvent,
    TResult Function(ClearAssetRemovalapprovalEvent value)?
        clearAssetRemovalapprovalEvent,
    required TResult orElse(),
  }) {
    if (assetRemovalApprovalLoadingEvent != null) {
      return assetRemovalApprovalLoadingEvent(this);
    }
    return orElse();
  }
}

abstract class AssetRemovalApprovalLoadingEvent
    implements AssetRemovalApprvalEvent {
  const factory AssetRemovalApprovalLoadingEvent() =
      _$AssetRemovalApprovalLoadingEventImpl;
}

/// @nodoc
abstract class _$$ClearAssetRemovalapprovalEventImplCopyWith<$Res> {
  factory _$$ClearAssetRemovalapprovalEventImplCopyWith(
          _$ClearAssetRemovalapprovalEventImpl value,
          $Res Function(_$ClearAssetRemovalapprovalEventImpl) then) =
      __$$ClearAssetRemovalapprovalEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearAssetRemovalapprovalEventImplCopyWithImpl<$Res>
    extends _$AssetRemovalApprvalEventCopyWithImpl<$Res,
        _$ClearAssetRemovalapprovalEventImpl>
    implements _$$ClearAssetRemovalapprovalEventImplCopyWith<$Res> {
  __$$ClearAssetRemovalapprovalEventImplCopyWithImpl(
      _$ClearAssetRemovalapprovalEventImpl _value,
      $Res Function(_$ClearAssetRemovalapprovalEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearAssetRemovalapprovalEventImpl
    implements ClearAssetRemovalapprovalEvent {
  const _$ClearAssetRemovalapprovalEventImpl();

  @override
  String toString() {
    return 'AssetRemovalApprvalEvent.clearAssetRemovalapprovalEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearAssetRemovalapprovalEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AssetRemovalApprovalInModel approve)
        approveAssetRemovalEvent,
    required TResult Function(AssetRemovalApprovalInModel reject)
        assetRemovalRejectEvent,
    required TResult Function() assetRemovalApprovalLoadingEvent,
    required TResult Function() clearAssetRemovalapprovalEvent,
  }) {
    return clearAssetRemovalapprovalEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AssetRemovalApprovalInModel approve)?
        approveAssetRemovalEvent,
    TResult? Function(AssetRemovalApprovalInModel reject)?
        assetRemovalRejectEvent,
    TResult? Function()? assetRemovalApprovalLoadingEvent,
    TResult? Function()? clearAssetRemovalapprovalEvent,
  }) {
    return clearAssetRemovalapprovalEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AssetRemovalApprovalInModel approve)?
        approveAssetRemovalEvent,
    TResult Function(AssetRemovalApprovalInModel reject)?
        assetRemovalRejectEvent,
    TResult Function()? assetRemovalApprovalLoadingEvent,
    TResult Function()? clearAssetRemovalapprovalEvent,
    required TResult orElse(),
  }) {
    if (clearAssetRemovalapprovalEvent != null) {
      return clearAssetRemovalapprovalEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApproveAssetRemovalEvent value)
        approveAssetRemovalEvent,
    required TResult Function(AssetRemovalRejectEvent value)
        assetRemovalRejectEvent,
    required TResult Function(AssetRemovalApprovalLoadingEvent value)
        assetRemovalApprovalLoadingEvent,
    required TResult Function(ClearAssetRemovalapprovalEvent value)
        clearAssetRemovalapprovalEvent,
  }) {
    return clearAssetRemovalapprovalEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApproveAssetRemovalEvent value)? approveAssetRemovalEvent,
    TResult? Function(AssetRemovalRejectEvent value)? assetRemovalRejectEvent,
    TResult? Function(AssetRemovalApprovalLoadingEvent value)?
        assetRemovalApprovalLoadingEvent,
    TResult? Function(ClearAssetRemovalapprovalEvent value)?
        clearAssetRemovalapprovalEvent,
  }) {
    return clearAssetRemovalapprovalEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApproveAssetRemovalEvent value)? approveAssetRemovalEvent,
    TResult Function(AssetRemovalRejectEvent value)? assetRemovalRejectEvent,
    TResult Function(AssetRemovalApprovalLoadingEvent value)?
        assetRemovalApprovalLoadingEvent,
    TResult Function(ClearAssetRemovalapprovalEvent value)?
        clearAssetRemovalapprovalEvent,
    required TResult orElse(),
  }) {
    if (clearAssetRemovalapprovalEvent != null) {
      return clearAssetRemovalapprovalEvent(this);
    }
    return orElse();
  }
}

abstract class ClearAssetRemovalapprovalEvent
    implements AssetRemovalApprvalEvent {
  const factory ClearAssetRemovalapprovalEvent() =
      _$ClearAssetRemovalapprovalEventImpl;
}

/// @nodoc
mixin _$AssetRemovalApprvalState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AssetRemovalApproveOutModel? response)
        assetRemovalApprovedState,
    required TResult Function() assetRemovalAApproveFailedState,
    required TResult Function() assetRemovalApproveLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AssetRemovalApproveOutModel? response)?
        assetRemovalApprovedState,
    TResult? Function()? assetRemovalAApproveFailedState,
    TResult? Function()? assetRemovalApproveLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AssetRemovalApproveOutModel? response)?
        assetRemovalApprovedState,
    TResult Function()? assetRemovalAApproveFailedState,
    TResult Function()? assetRemovalApproveLoadingState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AssetRemovalApprovedState value)
        assetRemovalApprovedState,
    required TResult Function(AssetRemovalAApproveFailedState value)
        assetRemovalAApproveFailedState,
    required TResult Function(AssetRemovalApproveLoadingState value)
        assetRemovalApproveLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AssetRemovalApprovedState value)?
        assetRemovalApprovedState,
    TResult? Function(AssetRemovalAApproveFailedState value)?
        assetRemovalAApproveFailedState,
    TResult? Function(AssetRemovalApproveLoadingState value)?
        assetRemovalApproveLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetRemovalApprovedState value)?
        assetRemovalApprovedState,
    TResult Function(AssetRemovalAApproveFailedState value)?
        assetRemovalAApproveFailedState,
    TResult Function(AssetRemovalApproveLoadingState value)?
        assetRemovalApproveLoadingState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssetRemovalApprvalStateCopyWith<$Res> {
  factory $AssetRemovalApprvalStateCopyWith(AssetRemovalApprvalState value,
          $Res Function(AssetRemovalApprvalState) then) =
      _$AssetRemovalApprvalStateCopyWithImpl<$Res, AssetRemovalApprvalState>;
}

/// @nodoc
class _$AssetRemovalApprvalStateCopyWithImpl<$Res,
        $Val extends AssetRemovalApprvalState>
    implements $AssetRemovalApprvalStateCopyWith<$Res> {
  _$AssetRemovalApprvalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AssetRemovalApprovedStateImplCopyWith<$Res> {
  factory _$$AssetRemovalApprovedStateImplCopyWith(
          _$AssetRemovalApprovedStateImpl value,
          $Res Function(_$AssetRemovalApprovedStateImpl) then) =
      __$$AssetRemovalApprovedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AssetRemovalApproveOutModel? response});
}

/// @nodoc
class __$$AssetRemovalApprovedStateImplCopyWithImpl<$Res>
    extends _$AssetRemovalApprvalStateCopyWithImpl<$Res,
        _$AssetRemovalApprovedStateImpl>
    implements _$$AssetRemovalApprovedStateImplCopyWith<$Res> {
  __$$AssetRemovalApprovedStateImplCopyWithImpl(
      _$AssetRemovalApprovedStateImpl _value,
      $Res Function(_$AssetRemovalApprovedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_$AssetRemovalApprovedStateImpl(
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as AssetRemovalApproveOutModel?,
    ));
  }
}

/// @nodoc

class _$AssetRemovalApprovedStateImpl implements AssetRemovalApprovedState {
  const _$AssetRemovalApprovedStateImpl({required this.response});

  @override
  final AssetRemovalApproveOutModel? response;

  @override
  String toString() {
    return 'AssetRemovalApprvalState.assetRemovalApprovedState(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetRemovalApprovedStateImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AssetRemovalApprovedStateImplCopyWith<_$AssetRemovalApprovedStateImpl>
      get copyWith => __$$AssetRemovalApprovedStateImplCopyWithImpl<
          _$AssetRemovalApprovedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AssetRemovalApproveOutModel? response)
        assetRemovalApprovedState,
    required TResult Function() assetRemovalAApproveFailedState,
    required TResult Function() assetRemovalApproveLoadingState,
  }) {
    return assetRemovalApprovedState(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AssetRemovalApproveOutModel? response)?
        assetRemovalApprovedState,
    TResult? Function()? assetRemovalAApproveFailedState,
    TResult? Function()? assetRemovalApproveLoadingState,
  }) {
    return assetRemovalApprovedState?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AssetRemovalApproveOutModel? response)?
        assetRemovalApprovedState,
    TResult Function()? assetRemovalAApproveFailedState,
    TResult Function()? assetRemovalApproveLoadingState,
    required TResult orElse(),
  }) {
    if (assetRemovalApprovedState != null) {
      return assetRemovalApprovedState(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AssetRemovalApprovedState value)
        assetRemovalApprovedState,
    required TResult Function(AssetRemovalAApproveFailedState value)
        assetRemovalAApproveFailedState,
    required TResult Function(AssetRemovalApproveLoadingState value)
        assetRemovalApproveLoadingState,
  }) {
    return assetRemovalApprovedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AssetRemovalApprovedState value)?
        assetRemovalApprovedState,
    TResult? Function(AssetRemovalAApproveFailedState value)?
        assetRemovalAApproveFailedState,
    TResult? Function(AssetRemovalApproveLoadingState value)?
        assetRemovalApproveLoadingState,
  }) {
    return assetRemovalApprovedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetRemovalApprovedState value)?
        assetRemovalApprovedState,
    TResult Function(AssetRemovalAApproveFailedState value)?
        assetRemovalAApproveFailedState,
    TResult Function(AssetRemovalApproveLoadingState value)?
        assetRemovalApproveLoadingState,
    required TResult orElse(),
  }) {
    if (assetRemovalApprovedState != null) {
      return assetRemovalApprovedState(this);
    }
    return orElse();
  }
}

abstract class AssetRemovalApprovedState implements AssetRemovalApprvalState {
  const factory AssetRemovalApprovedState(
          {required final AssetRemovalApproveOutModel? response}) =
      _$AssetRemovalApprovedStateImpl;

  AssetRemovalApproveOutModel? get response;
  @JsonKey(ignore: true)
  _$$AssetRemovalApprovedStateImplCopyWith<_$AssetRemovalApprovedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AssetRemovalAApproveFailedStateImplCopyWith<$Res> {
  factory _$$AssetRemovalAApproveFailedStateImplCopyWith(
          _$AssetRemovalAApproveFailedStateImpl value,
          $Res Function(_$AssetRemovalAApproveFailedStateImpl) then) =
      __$$AssetRemovalAApproveFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AssetRemovalAApproveFailedStateImplCopyWithImpl<$Res>
    extends _$AssetRemovalApprvalStateCopyWithImpl<$Res,
        _$AssetRemovalAApproveFailedStateImpl>
    implements _$$AssetRemovalAApproveFailedStateImplCopyWith<$Res> {
  __$$AssetRemovalAApproveFailedStateImplCopyWithImpl(
      _$AssetRemovalAApproveFailedStateImpl _value,
      $Res Function(_$AssetRemovalAApproveFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AssetRemovalAApproveFailedStateImpl
    implements AssetRemovalAApproveFailedState {
  const _$AssetRemovalAApproveFailedStateImpl();

  @override
  String toString() {
    return 'AssetRemovalApprvalState.assetRemovalAApproveFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetRemovalAApproveFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AssetRemovalApproveOutModel? response)
        assetRemovalApprovedState,
    required TResult Function() assetRemovalAApproveFailedState,
    required TResult Function() assetRemovalApproveLoadingState,
  }) {
    return assetRemovalAApproveFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AssetRemovalApproveOutModel? response)?
        assetRemovalApprovedState,
    TResult? Function()? assetRemovalAApproveFailedState,
    TResult? Function()? assetRemovalApproveLoadingState,
  }) {
    return assetRemovalAApproveFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AssetRemovalApproveOutModel? response)?
        assetRemovalApprovedState,
    TResult Function()? assetRemovalAApproveFailedState,
    TResult Function()? assetRemovalApproveLoadingState,
    required TResult orElse(),
  }) {
    if (assetRemovalAApproveFailedState != null) {
      return assetRemovalAApproveFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AssetRemovalApprovedState value)
        assetRemovalApprovedState,
    required TResult Function(AssetRemovalAApproveFailedState value)
        assetRemovalAApproveFailedState,
    required TResult Function(AssetRemovalApproveLoadingState value)
        assetRemovalApproveLoadingState,
  }) {
    return assetRemovalAApproveFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AssetRemovalApprovedState value)?
        assetRemovalApprovedState,
    TResult? Function(AssetRemovalAApproveFailedState value)?
        assetRemovalAApproveFailedState,
    TResult? Function(AssetRemovalApproveLoadingState value)?
        assetRemovalApproveLoadingState,
  }) {
    return assetRemovalAApproveFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetRemovalApprovedState value)?
        assetRemovalApprovedState,
    TResult Function(AssetRemovalAApproveFailedState value)?
        assetRemovalAApproveFailedState,
    TResult Function(AssetRemovalApproveLoadingState value)?
        assetRemovalApproveLoadingState,
    required TResult orElse(),
  }) {
    if (assetRemovalAApproveFailedState != null) {
      return assetRemovalAApproveFailedState(this);
    }
    return orElse();
  }
}

abstract class AssetRemovalAApproveFailedState
    implements AssetRemovalApprvalState {
  const factory AssetRemovalAApproveFailedState() =
      _$AssetRemovalAApproveFailedStateImpl;
}

/// @nodoc
abstract class _$$AssetRemovalApproveLoadingStateImplCopyWith<$Res> {
  factory _$$AssetRemovalApproveLoadingStateImplCopyWith(
          _$AssetRemovalApproveLoadingStateImpl value,
          $Res Function(_$AssetRemovalApproveLoadingStateImpl) then) =
      __$$AssetRemovalApproveLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AssetRemovalApproveLoadingStateImplCopyWithImpl<$Res>
    extends _$AssetRemovalApprvalStateCopyWithImpl<$Res,
        _$AssetRemovalApproveLoadingStateImpl>
    implements _$$AssetRemovalApproveLoadingStateImplCopyWith<$Res> {
  __$$AssetRemovalApproveLoadingStateImplCopyWithImpl(
      _$AssetRemovalApproveLoadingStateImpl _value,
      $Res Function(_$AssetRemovalApproveLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AssetRemovalApproveLoadingStateImpl
    implements AssetRemovalApproveLoadingState {
  const _$AssetRemovalApproveLoadingStateImpl();

  @override
  String toString() {
    return 'AssetRemovalApprvalState.assetRemovalApproveLoadingState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetRemovalApproveLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AssetRemovalApproveOutModel? response)
        assetRemovalApprovedState,
    required TResult Function() assetRemovalAApproveFailedState,
    required TResult Function() assetRemovalApproveLoadingState,
  }) {
    return assetRemovalApproveLoadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AssetRemovalApproveOutModel? response)?
        assetRemovalApprovedState,
    TResult? Function()? assetRemovalAApproveFailedState,
    TResult? Function()? assetRemovalApproveLoadingState,
  }) {
    return assetRemovalApproveLoadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AssetRemovalApproveOutModel? response)?
        assetRemovalApprovedState,
    TResult Function()? assetRemovalAApproveFailedState,
    TResult Function()? assetRemovalApproveLoadingState,
    required TResult orElse(),
  }) {
    if (assetRemovalApproveLoadingState != null) {
      return assetRemovalApproveLoadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AssetRemovalApprovedState value)
        assetRemovalApprovedState,
    required TResult Function(AssetRemovalAApproveFailedState value)
        assetRemovalAApproveFailedState,
    required TResult Function(AssetRemovalApproveLoadingState value)
        assetRemovalApproveLoadingState,
  }) {
    return assetRemovalApproveLoadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AssetRemovalApprovedState value)?
        assetRemovalApprovedState,
    TResult? Function(AssetRemovalAApproveFailedState value)?
        assetRemovalAApproveFailedState,
    TResult? Function(AssetRemovalApproveLoadingState value)?
        assetRemovalApproveLoadingState,
  }) {
    return assetRemovalApproveLoadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetRemovalApprovedState value)?
        assetRemovalApprovedState,
    TResult Function(AssetRemovalAApproveFailedState value)?
        assetRemovalAApproveFailedState,
    TResult Function(AssetRemovalApproveLoadingState value)?
        assetRemovalApproveLoadingState,
    required TResult orElse(),
  }) {
    if (assetRemovalApproveLoadingState != null) {
      return assetRemovalApproveLoadingState(this);
    }
    return orElse();
  }
}

abstract class AssetRemovalApproveLoadingState
    implements AssetRemovalApprvalState {
  const factory AssetRemovalApproveLoadingState() =
      _$AssetRemovalApproveLoadingStateImpl;
}
