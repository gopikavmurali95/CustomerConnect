// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'asset_adding_approval_and_rject_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AssetAddingApprovalAndRjectBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AssetAddApprovalInModel approve)
        assetAddingApproveEvent,
    required TResult Function() addAssetAddingApproveLoadingEvent,
    required TResult Function() clearAssetAddingApprovalEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AssetAddApprovalInModel approve)? assetAddingApproveEvent,
    TResult? Function()? addAssetAddingApproveLoadingEvent,
    TResult? Function()? clearAssetAddingApprovalEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AssetAddApprovalInModel approve)? assetAddingApproveEvent,
    TResult Function()? addAssetAddingApproveLoadingEvent,
    TResult Function()? clearAssetAddingApprovalEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AssetAddingApproveEvent value)
        assetAddingApproveEvent,
    required TResult Function(AddAssetAddingApproveLoadingEvent value)
        addAssetAddingApproveLoadingEvent,
    required TResult Function(ClearAssetAddingApprovalEvent value)
        clearAssetAddingApprovalEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AssetAddingApproveEvent value)? assetAddingApproveEvent,
    TResult? Function(AddAssetAddingApproveLoadingEvent value)?
        addAssetAddingApproveLoadingEvent,
    TResult? Function(ClearAssetAddingApprovalEvent value)?
        clearAssetAddingApprovalEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetAddingApproveEvent value)? assetAddingApproveEvent,
    TResult Function(AddAssetAddingApproveLoadingEvent value)?
        addAssetAddingApproveLoadingEvent,
    TResult Function(ClearAssetAddingApprovalEvent value)?
        clearAssetAddingApprovalEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssetAddingApprovalAndRjectBlocEventCopyWith<$Res> {
  factory $AssetAddingApprovalAndRjectBlocEventCopyWith(
          AssetAddingApprovalAndRjectBlocEvent value,
          $Res Function(AssetAddingApprovalAndRjectBlocEvent) then) =
      _$AssetAddingApprovalAndRjectBlocEventCopyWithImpl<$Res,
          AssetAddingApprovalAndRjectBlocEvent>;
}

/// @nodoc
class _$AssetAddingApprovalAndRjectBlocEventCopyWithImpl<$Res,
        $Val extends AssetAddingApprovalAndRjectBlocEvent>
    implements $AssetAddingApprovalAndRjectBlocEventCopyWith<$Res> {
  _$AssetAddingApprovalAndRjectBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AssetAddingApproveEventImplCopyWith<$Res> {
  factory _$$AssetAddingApproveEventImplCopyWith(
          _$AssetAddingApproveEventImpl value,
          $Res Function(_$AssetAddingApproveEventImpl) then) =
      __$$AssetAddingApproveEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AssetAddApprovalInModel approve});
}

/// @nodoc
class __$$AssetAddingApproveEventImplCopyWithImpl<$Res>
    extends _$AssetAddingApprovalAndRjectBlocEventCopyWithImpl<$Res,
        _$AssetAddingApproveEventImpl>
    implements _$$AssetAddingApproveEventImplCopyWith<$Res> {
  __$$AssetAddingApproveEventImplCopyWithImpl(
      _$AssetAddingApproveEventImpl _value,
      $Res Function(_$AssetAddingApproveEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? approve = null,
  }) {
    return _then(_$AssetAddingApproveEventImpl(
      approve: null == approve
          ? _value.approve
          : approve // ignore: cast_nullable_to_non_nullable
              as AssetAddApprovalInModel,
    ));
  }
}

/// @nodoc

class _$AssetAddingApproveEventImpl implements AssetAddingApproveEvent {
  const _$AssetAddingApproveEventImpl({required this.approve});

  @override
  final AssetAddApprovalInModel approve;

  @override
  String toString() {
    return 'AssetAddingApprovalAndRjectBlocEvent.assetAddingApproveEvent(approve: $approve)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetAddingApproveEventImpl &&
            (identical(other.approve, approve) || other.approve == approve));
  }

  @override
  int get hashCode => Object.hash(runtimeType, approve);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AssetAddingApproveEventImplCopyWith<_$AssetAddingApproveEventImpl>
      get copyWith => __$$AssetAddingApproveEventImplCopyWithImpl<
          _$AssetAddingApproveEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AssetAddApprovalInModel approve)
        assetAddingApproveEvent,
    required TResult Function() addAssetAddingApproveLoadingEvent,
    required TResult Function() clearAssetAddingApprovalEvent,
  }) {
    return assetAddingApproveEvent(approve);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AssetAddApprovalInModel approve)? assetAddingApproveEvent,
    TResult? Function()? addAssetAddingApproveLoadingEvent,
    TResult? Function()? clearAssetAddingApprovalEvent,
  }) {
    return assetAddingApproveEvent?.call(approve);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AssetAddApprovalInModel approve)? assetAddingApproveEvent,
    TResult Function()? addAssetAddingApproveLoadingEvent,
    TResult Function()? clearAssetAddingApprovalEvent,
    required TResult orElse(),
  }) {
    if (assetAddingApproveEvent != null) {
      return assetAddingApproveEvent(approve);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AssetAddingApproveEvent value)
        assetAddingApproveEvent,
    required TResult Function(AddAssetAddingApproveLoadingEvent value)
        addAssetAddingApproveLoadingEvent,
    required TResult Function(ClearAssetAddingApprovalEvent value)
        clearAssetAddingApprovalEvent,
  }) {
    return assetAddingApproveEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AssetAddingApproveEvent value)? assetAddingApproveEvent,
    TResult? Function(AddAssetAddingApproveLoadingEvent value)?
        addAssetAddingApproveLoadingEvent,
    TResult? Function(ClearAssetAddingApprovalEvent value)?
        clearAssetAddingApprovalEvent,
  }) {
    return assetAddingApproveEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetAddingApproveEvent value)? assetAddingApproveEvent,
    TResult Function(AddAssetAddingApproveLoadingEvent value)?
        addAssetAddingApproveLoadingEvent,
    TResult Function(ClearAssetAddingApprovalEvent value)?
        clearAssetAddingApprovalEvent,
    required TResult orElse(),
  }) {
    if (assetAddingApproveEvent != null) {
      return assetAddingApproveEvent(this);
    }
    return orElse();
  }
}

abstract class AssetAddingApproveEvent
    implements AssetAddingApprovalAndRjectBlocEvent {
  const factory AssetAddingApproveEvent(
          {required final AssetAddApprovalInModel approve}) =
      _$AssetAddingApproveEventImpl;

  AssetAddApprovalInModel get approve;
  @JsonKey(ignore: true)
  _$$AssetAddingApproveEventImplCopyWith<_$AssetAddingApproveEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddAssetAddingApproveLoadingEventImplCopyWith<$Res> {
  factory _$$AddAssetAddingApproveLoadingEventImplCopyWith(
          _$AddAssetAddingApproveLoadingEventImpl value,
          $Res Function(_$AddAssetAddingApproveLoadingEventImpl) then) =
      __$$AddAssetAddingApproveLoadingEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddAssetAddingApproveLoadingEventImplCopyWithImpl<$Res>
    extends _$AssetAddingApprovalAndRjectBlocEventCopyWithImpl<$Res,
        _$AddAssetAddingApproveLoadingEventImpl>
    implements _$$AddAssetAddingApproveLoadingEventImplCopyWith<$Res> {
  __$$AddAssetAddingApproveLoadingEventImplCopyWithImpl(
      _$AddAssetAddingApproveLoadingEventImpl _value,
      $Res Function(_$AddAssetAddingApproveLoadingEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AddAssetAddingApproveLoadingEventImpl
    implements AddAssetAddingApproveLoadingEvent {
  const _$AddAssetAddingApproveLoadingEventImpl();

  @override
  String toString() {
    return 'AssetAddingApprovalAndRjectBlocEvent.addAssetAddingApproveLoadingEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddAssetAddingApproveLoadingEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AssetAddApprovalInModel approve)
        assetAddingApproveEvent,
    required TResult Function() addAssetAddingApproveLoadingEvent,
    required TResult Function() clearAssetAddingApprovalEvent,
  }) {
    return addAssetAddingApproveLoadingEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AssetAddApprovalInModel approve)? assetAddingApproveEvent,
    TResult? Function()? addAssetAddingApproveLoadingEvent,
    TResult? Function()? clearAssetAddingApprovalEvent,
  }) {
    return addAssetAddingApproveLoadingEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AssetAddApprovalInModel approve)? assetAddingApproveEvent,
    TResult Function()? addAssetAddingApproveLoadingEvent,
    TResult Function()? clearAssetAddingApprovalEvent,
    required TResult orElse(),
  }) {
    if (addAssetAddingApproveLoadingEvent != null) {
      return addAssetAddingApproveLoadingEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AssetAddingApproveEvent value)
        assetAddingApproveEvent,
    required TResult Function(AddAssetAddingApproveLoadingEvent value)
        addAssetAddingApproveLoadingEvent,
    required TResult Function(ClearAssetAddingApprovalEvent value)
        clearAssetAddingApprovalEvent,
  }) {
    return addAssetAddingApproveLoadingEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AssetAddingApproveEvent value)? assetAddingApproveEvent,
    TResult? Function(AddAssetAddingApproveLoadingEvent value)?
        addAssetAddingApproveLoadingEvent,
    TResult? Function(ClearAssetAddingApprovalEvent value)?
        clearAssetAddingApprovalEvent,
  }) {
    return addAssetAddingApproveLoadingEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetAddingApproveEvent value)? assetAddingApproveEvent,
    TResult Function(AddAssetAddingApproveLoadingEvent value)?
        addAssetAddingApproveLoadingEvent,
    TResult Function(ClearAssetAddingApprovalEvent value)?
        clearAssetAddingApprovalEvent,
    required TResult orElse(),
  }) {
    if (addAssetAddingApproveLoadingEvent != null) {
      return addAssetAddingApproveLoadingEvent(this);
    }
    return orElse();
  }
}

abstract class AddAssetAddingApproveLoadingEvent
    implements AssetAddingApprovalAndRjectBlocEvent {
  const factory AddAssetAddingApproveLoadingEvent() =
      _$AddAssetAddingApproveLoadingEventImpl;
}

/// @nodoc
abstract class _$$ClearAssetAddingApprovalEventImplCopyWith<$Res> {
  factory _$$ClearAssetAddingApprovalEventImplCopyWith(
          _$ClearAssetAddingApprovalEventImpl value,
          $Res Function(_$ClearAssetAddingApprovalEventImpl) then) =
      __$$ClearAssetAddingApprovalEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearAssetAddingApprovalEventImplCopyWithImpl<$Res>
    extends _$AssetAddingApprovalAndRjectBlocEventCopyWithImpl<$Res,
        _$ClearAssetAddingApprovalEventImpl>
    implements _$$ClearAssetAddingApprovalEventImplCopyWith<$Res> {
  __$$ClearAssetAddingApprovalEventImplCopyWithImpl(
      _$ClearAssetAddingApprovalEventImpl _value,
      $Res Function(_$ClearAssetAddingApprovalEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearAssetAddingApprovalEventImpl
    implements ClearAssetAddingApprovalEvent {
  const _$ClearAssetAddingApprovalEventImpl();

  @override
  String toString() {
    return 'AssetAddingApprovalAndRjectBlocEvent.clearAssetAddingApprovalEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearAssetAddingApprovalEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AssetAddApprovalInModel approve)
        assetAddingApproveEvent,
    required TResult Function() addAssetAddingApproveLoadingEvent,
    required TResult Function() clearAssetAddingApprovalEvent,
  }) {
    return clearAssetAddingApprovalEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AssetAddApprovalInModel approve)? assetAddingApproveEvent,
    TResult? Function()? addAssetAddingApproveLoadingEvent,
    TResult? Function()? clearAssetAddingApprovalEvent,
  }) {
    return clearAssetAddingApprovalEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AssetAddApprovalInModel approve)? assetAddingApproveEvent,
    TResult Function()? addAssetAddingApproveLoadingEvent,
    TResult Function()? clearAssetAddingApprovalEvent,
    required TResult orElse(),
  }) {
    if (clearAssetAddingApprovalEvent != null) {
      return clearAssetAddingApprovalEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AssetAddingApproveEvent value)
        assetAddingApproveEvent,
    required TResult Function(AddAssetAddingApproveLoadingEvent value)
        addAssetAddingApproveLoadingEvent,
    required TResult Function(ClearAssetAddingApprovalEvent value)
        clearAssetAddingApprovalEvent,
  }) {
    return clearAssetAddingApprovalEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AssetAddingApproveEvent value)? assetAddingApproveEvent,
    TResult? Function(AddAssetAddingApproveLoadingEvent value)?
        addAssetAddingApproveLoadingEvent,
    TResult? Function(ClearAssetAddingApprovalEvent value)?
        clearAssetAddingApprovalEvent,
  }) {
    return clearAssetAddingApprovalEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetAddingApproveEvent value)? assetAddingApproveEvent,
    TResult Function(AddAssetAddingApproveLoadingEvent value)?
        addAssetAddingApproveLoadingEvent,
    TResult Function(ClearAssetAddingApprovalEvent value)?
        clearAssetAddingApprovalEvent,
    required TResult orElse(),
  }) {
    if (clearAssetAddingApprovalEvent != null) {
      return clearAssetAddingApprovalEvent(this);
    }
    return orElse();
  }
}

abstract class ClearAssetAddingApprovalEvent
    implements AssetAddingApprovalAndRjectBlocEvent {
  const factory ClearAssetAddingApprovalEvent() =
      _$ClearAssetAddingApprovalEventImpl;
}

/// @nodoc
mixin _$AssetAddingApprovalAndRjectBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AssetAddRespOutModel? response, bool isApproval)
        assetAddingApprvalState,
    required TResult Function() assetAddingApprovalFailedState,
    required TResult Function() assetAddingApprovalLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AssetAddRespOutModel? response, bool isApproval)?
        assetAddingApprvalState,
    TResult? Function()? assetAddingApprovalFailedState,
    TResult? Function()? assetAddingApprovalLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AssetAddRespOutModel? response, bool isApproval)?
        assetAddingApprvalState,
    TResult Function()? assetAddingApprovalFailedState,
    TResult Function()? assetAddingApprovalLoadingState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AssetAddingApprovalStates value)
        assetAddingApprvalState,
    required TResult Function(AssetAddingApprovalFailedState value)
        assetAddingApprovalFailedState,
    required TResult Function(AssetAddingApprovalLoadingState value)
        assetAddingApprovalLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AssetAddingApprovalStates value)? assetAddingApprvalState,
    TResult? Function(AssetAddingApprovalFailedState value)?
        assetAddingApprovalFailedState,
    TResult? Function(AssetAddingApprovalLoadingState value)?
        assetAddingApprovalLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetAddingApprovalStates value)? assetAddingApprvalState,
    TResult Function(AssetAddingApprovalFailedState value)?
        assetAddingApprovalFailedState,
    TResult Function(AssetAddingApprovalLoadingState value)?
        assetAddingApprovalLoadingState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssetAddingApprovalAndRjectBlocStateCopyWith<$Res> {
  factory $AssetAddingApprovalAndRjectBlocStateCopyWith(
          AssetAddingApprovalAndRjectBlocState value,
          $Res Function(AssetAddingApprovalAndRjectBlocState) then) =
      _$AssetAddingApprovalAndRjectBlocStateCopyWithImpl<$Res,
          AssetAddingApprovalAndRjectBlocState>;
}

/// @nodoc
class _$AssetAddingApprovalAndRjectBlocStateCopyWithImpl<$Res,
        $Val extends AssetAddingApprovalAndRjectBlocState>
    implements $AssetAddingApprovalAndRjectBlocStateCopyWith<$Res> {
  _$AssetAddingApprovalAndRjectBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AssetAddingApprovalStatesImplCopyWith<$Res> {
  factory _$$AssetAddingApprovalStatesImplCopyWith(
          _$AssetAddingApprovalStatesImpl value,
          $Res Function(_$AssetAddingApprovalStatesImpl) then) =
      __$$AssetAddingApprovalStatesImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AssetAddRespOutModel? response, bool isApproval});
}

/// @nodoc
class __$$AssetAddingApprovalStatesImplCopyWithImpl<$Res>
    extends _$AssetAddingApprovalAndRjectBlocStateCopyWithImpl<$Res,
        _$AssetAddingApprovalStatesImpl>
    implements _$$AssetAddingApprovalStatesImplCopyWith<$Res> {
  __$$AssetAddingApprovalStatesImplCopyWithImpl(
      _$AssetAddingApprovalStatesImpl _value,
      $Res Function(_$AssetAddingApprovalStatesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
    Object? isApproval = null,
  }) {
    return _then(_$AssetAddingApprovalStatesImpl(
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as AssetAddRespOutModel?,
      isApproval: null == isApproval
          ? _value.isApproval
          : isApproval // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AssetAddingApprovalStatesImpl implements AssetAddingApprovalStates {
  const _$AssetAddingApprovalStatesImpl(
      {required this.response, required this.isApproval});

  @override
  final AssetAddRespOutModel? response;
  @override
  final bool isApproval;

  @override
  String toString() {
    return 'AssetAddingApprovalAndRjectBlocState.assetAddingApprvalState(response: $response, isApproval: $isApproval)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetAddingApprovalStatesImpl &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.isApproval, isApproval) ||
                other.isApproval == isApproval));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response, isApproval);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AssetAddingApprovalStatesImplCopyWith<_$AssetAddingApprovalStatesImpl>
      get copyWith => __$$AssetAddingApprovalStatesImplCopyWithImpl<
          _$AssetAddingApprovalStatesImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AssetAddRespOutModel? response, bool isApproval)
        assetAddingApprvalState,
    required TResult Function() assetAddingApprovalFailedState,
    required TResult Function() assetAddingApprovalLoadingState,
  }) {
    return assetAddingApprvalState(response, isApproval);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AssetAddRespOutModel? response, bool isApproval)?
        assetAddingApprvalState,
    TResult? Function()? assetAddingApprovalFailedState,
    TResult? Function()? assetAddingApprovalLoadingState,
  }) {
    return assetAddingApprvalState?.call(response, isApproval);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AssetAddRespOutModel? response, bool isApproval)?
        assetAddingApprvalState,
    TResult Function()? assetAddingApprovalFailedState,
    TResult Function()? assetAddingApprovalLoadingState,
    required TResult orElse(),
  }) {
    if (assetAddingApprvalState != null) {
      return assetAddingApprvalState(response, isApproval);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AssetAddingApprovalStates value)
        assetAddingApprvalState,
    required TResult Function(AssetAddingApprovalFailedState value)
        assetAddingApprovalFailedState,
    required TResult Function(AssetAddingApprovalLoadingState value)
        assetAddingApprovalLoadingState,
  }) {
    return assetAddingApprvalState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AssetAddingApprovalStates value)? assetAddingApprvalState,
    TResult? Function(AssetAddingApprovalFailedState value)?
        assetAddingApprovalFailedState,
    TResult? Function(AssetAddingApprovalLoadingState value)?
        assetAddingApprovalLoadingState,
  }) {
    return assetAddingApprvalState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetAddingApprovalStates value)? assetAddingApprvalState,
    TResult Function(AssetAddingApprovalFailedState value)?
        assetAddingApprovalFailedState,
    TResult Function(AssetAddingApprovalLoadingState value)?
        assetAddingApprovalLoadingState,
    required TResult orElse(),
  }) {
    if (assetAddingApprvalState != null) {
      return assetAddingApprvalState(this);
    }
    return orElse();
  }
}

abstract class AssetAddingApprovalStates
    implements AssetAddingApprovalAndRjectBlocState {
  const factory AssetAddingApprovalStates(
      {required final AssetAddRespOutModel? response,
      required final bool isApproval}) = _$AssetAddingApprovalStatesImpl;

  AssetAddRespOutModel? get response;
  bool get isApproval;
  @JsonKey(ignore: true)
  _$$AssetAddingApprovalStatesImplCopyWith<_$AssetAddingApprovalStatesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AssetAddingApprovalFailedStateImplCopyWith<$Res> {
  factory _$$AssetAddingApprovalFailedStateImplCopyWith(
          _$AssetAddingApprovalFailedStateImpl value,
          $Res Function(_$AssetAddingApprovalFailedStateImpl) then) =
      __$$AssetAddingApprovalFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AssetAddingApprovalFailedStateImplCopyWithImpl<$Res>
    extends _$AssetAddingApprovalAndRjectBlocStateCopyWithImpl<$Res,
        _$AssetAddingApprovalFailedStateImpl>
    implements _$$AssetAddingApprovalFailedStateImplCopyWith<$Res> {
  __$$AssetAddingApprovalFailedStateImplCopyWithImpl(
      _$AssetAddingApprovalFailedStateImpl _value,
      $Res Function(_$AssetAddingApprovalFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AssetAddingApprovalFailedStateImpl
    implements AssetAddingApprovalFailedState {
  const _$AssetAddingApprovalFailedStateImpl();

  @override
  String toString() {
    return 'AssetAddingApprovalAndRjectBlocState.assetAddingApprovalFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetAddingApprovalFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AssetAddRespOutModel? response, bool isApproval)
        assetAddingApprvalState,
    required TResult Function() assetAddingApprovalFailedState,
    required TResult Function() assetAddingApprovalLoadingState,
  }) {
    return assetAddingApprovalFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AssetAddRespOutModel? response, bool isApproval)?
        assetAddingApprvalState,
    TResult? Function()? assetAddingApprovalFailedState,
    TResult? Function()? assetAddingApprovalLoadingState,
  }) {
    return assetAddingApprovalFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AssetAddRespOutModel? response, bool isApproval)?
        assetAddingApprvalState,
    TResult Function()? assetAddingApprovalFailedState,
    TResult Function()? assetAddingApprovalLoadingState,
    required TResult orElse(),
  }) {
    if (assetAddingApprovalFailedState != null) {
      return assetAddingApprovalFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AssetAddingApprovalStates value)
        assetAddingApprvalState,
    required TResult Function(AssetAddingApprovalFailedState value)
        assetAddingApprovalFailedState,
    required TResult Function(AssetAddingApprovalLoadingState value)
        assetAddingApprovalLoadingState,
  }) {
    return assetAddingApprovalFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AssetAddingApprovalStates value)? assetAddingApprvalState,
    TResult? Function(AssetAddingApprovalFailedState value)?
        assetAddingApprovalFailedState,
    TResult? Function(AssetAddingApprovalLoadingState value)?
        assetAddingApprovalLoadingState,
  }) {
    return assetAddingApprovalFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetAddingApprovalStates value)? assetAddingApprvalState,
    TResult Function(AssetAddingApprovalFailedState value)?
        assetAddingApprovalFailedState,
    TResult Function(AssetAddingApprovalLoadingState value)?
        assetAddingApprovalLoadingState,
    required TResult orElse(),
  }) {
    if (assetAddingApprovalFailedState != null) {
      return assetAddingApprovalFailedState(this);
    }
    return orElse();
  }
}

abstract class AssetAddingApprovalFailedState
    implements AssetAddingApprovalAndRjectBlocState {
  const factory AssetAddingApprovalFailedState() =
      _$AssetAddingApprovalFailedStateImpl;
}

/// @nodoc
abstract class _$$AssetAddingApprovalLoadingStateImplCopyWith<$Res> {
  factory _$$AssetAddingApprovalLoadingStateImplCopyWith(
          _$AssetAddingApprovalLoadingStateImpl value,
          $Res Function(_$AssetAddingApprovalLoadingStateImpl) then) =
      __$$AssetAddingApprovalLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AssetAddingApprovalLoadingStateImplCopyWithImpl<$Res>
    extends _$AssetAddingApprovalAndRjectBlocStateCopyWithImpl<$Res,
        _$AssetAddingApprovalLoadingStateImpl>
    implements _$$AssetAddingApprovalLoadingStateImplCopyWith<$Res> {
  __$$AssetAddingApprovalLoadingStateImplCopyWithImpl(
      _$AssetAddingApprovalLoadingStateImpl _value,
      $Res Function(_$AssetAddingApprovalLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AssetAddingApprovalLoadingStateImpl
    implements AssetAddingApprovalLoadingState {
  const _$AssetAddingApprovalLoadingStateImpl();

  @override
  String toString() {
    return 'AssetAddingApprovalAndRjectBlocState.assetAddingApprovalLoadingState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssetAddingApprovalLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AssetAddRespOutModel? response, bool isApproval)
        assetAddingApprvalState,
    required TResult Function() assetAddingApprovalFailedState,
    required TResult Function() assetAddingApprovalLoadingState,
  }) {
    return assetAddingApprovalLoadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AssetAddRespOutModel? response, bool isApproval)?
        assetAddingApprvalState,
    TResult? Function()? assetAddingApprovalFailedState,
    TResult? Function()? assetAddingApprovalLoadingState,
  }) {
    return assetAddingApprovalLoadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AssetAddRespOutModel? response, bool isApproval)?
        assetAddingApprvalState,
    TResult Function()? assetAddingApprovalFailedState,
    TResult Function()? assetAddingApprovalLoadingState,
    required TResult orElse(),
  }) {
    if (assetAddingApprovalLoadingState != null) {
      return assetAddingApprovalLoadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AssetAddingApprovalStates value)
        assetAddingApprvalState,
    required TResult Function(AssetAddingApprovalFailedState value)
        assetAddingApprovalFailedState,
    required TResult Function(AssetAddingApprovalLoadingState value)
        assetAddingApprovalLoadingState,
  }) {
    return assetAddingApprovalLoadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AssetAddingApprovalStates value)? assetAddingApprvalState,
    TResult? Function(AssetAddingApprovalFailedState value)?
        assetAddingApprovalFailedState,
    TResult? Function(AssetAddingApprovalLoadingState value)?
        assetAddingApprovalLoadingState,
  }) {
    return assetAddingApprovalLoadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AssetAddingApprovalStates value)? assetAddingApprvalState,
    TResult Function(AssetAddingApprovalFailedState value)?
        assetAddingApprovalFailedState,
    TResult Function(AssetAddingApprovalLoadingState value)?
        assetAddingApprovalLoadingState,
    required TResult orElse(),
  }) {
    if (assetAddingApprovalLoadingState != null) {
      return assetAddingApprovalLoadingState(this);
    }
    return orElse();
  }
}

abstract class AssetAddingApprovalLoadingState
    implements AssetAddingApprovalAndRjectBlocState {
  const factory AssetAddingApprovalLoadingState() =
      _$AssetAddingApprovalLoadingStateImpl;
}
