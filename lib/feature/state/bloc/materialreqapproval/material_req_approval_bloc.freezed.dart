// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'material_req_approval_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MaterialReqApprovalEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MaterialReqApprovalInModel approvalInModel)
        materialReqApprovalSuccessEvent,
    required TResult Function() materialReqApprovalLoadingEvent,
    required TResult Function() materialReqApprovalClearEvent,
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MaterialReqApprovalInModel approvalInModel)?
        materialReqApprovalSuccessEvent,
    TResult? Function()? materialReqApprovalLoadingEvent,
    TResult? Function()? materialReqApprovalClearEvent,
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MaterialReqApprovalInModel approvalInModel)?
        materialReqApprovalSuccessEvent,
    TResult Function()? materialReqApprovalLoadingEvent,
    TResult Function()? materialReqApprovalClearEvent,
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MaterialReqApprovalSuccessEvent value)
        materialReqApprovalSuccessEvent,
    required TResult Function(MaterialReqApprovalLoadingEvent value)
        materialReqApprovalLoadingEvent,
    required TResult Function(MaterialReqApprovalClearEvent value)
        materialReqApprovalClearEvent,
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MaterialReqApprovalSuccessEvent value)?
        materialReqApprovalSuccessEvent,
    TResult? Function(MaterialReqApprovalLoadingEvent value)?
        materialReqApprovalLoadingEvent,
    TResult? Function(MaterialReqApprovalClearEvent value)?
        materialReqApprovalClearEvent,
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MaterialReqApprovalSuccessEvent value)?
        materialReqApprovalSuccessEvent,
    TResult Function(MaterialReqApprovalLoadingEvent value)?
        materialReqApprovalLoadingEvent,
    TResult Function(MaterialReqApprovalClearEvent value)?
        materialReqApprovalClearEvent,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaterialReqApprovalEventCopyWith<$Res> {
  factory $MaterialReqApprovalEventCopyWith(MaterialReqApprovalEvent value,
          $Res Function(MaterialReqApprovalEvent) then) =
      _$MaterialReqApprovalEventCopyWithImpl<$Res, MaterialReqApprovalEvent>;
}

/// @nodoc
class _$MaterialReqApprovalEventCopyWithImpl<$Res,
        $Val extends MaterialReqApprovalEvent>
    implements $MaterialReqApprovalEventCopyWith<$Res> {
  _$MaterialReqApprovalEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MaterialReqApprovalSuccessEventImplCopyWith<$Res> {
  factory _$$MaterialReqApprovalSuccessEventImplCopyWith(
          _$MaterialReqApprovalSuccessEventImpl value,
          $Res Function(_$MaterialReqApprovalSuccessEventImpl) then) =
      __$$MaterialReqApprovalSuccessEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MaterialReqApprovalInModel approvalInModel});
}

/// @nodoc
class __$$MaterialReqApprovalSuccessEventImplCopyWithImpl<$Res>
    extends _$MaterialReqApprovalEventCopyWithImpl<$Res,
        _$MaterialReqApprovalSuccessEventImpl>
    implements _$$MaterialReqApprovalSuccessEventImplCopyWith<$Res> {
  __$$MaterialReqApprovalSuccessEventImplCopyWithImpl(
      _$MaterialReqApprovalSuccessEventImpl _value,
      $Res Function(_$MaterialReqApprovalSuccessEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? approvalInModel = null,
  }) {
    return _then(_$MaterialReqApprovalSuccessEventImpl(
      approvalInModel: null == approvalInModel
          ? _value.approvalInModel
          : approvalInModel // ignore: cast_nullable_to_non_nullable
              as MaterialReqApprovalInModel,
    ));
  }
}

/// @nodoc

class _$MaterialReqApprovalSuccessEventImpl
    implements MaterialReqApprovalSuccessEvent {
  const _$MaterialReqApprovalSuccessEventImpl({required this.approvalInModel});

  @override
  final MaterialReqApprovalInModel approvalInModel;

  @override
  String toString() {
    return 'MaterialReqApprovalEvent.materialReqApprovalSuccessEvent(approvalInModel: $approvalInModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaterialReqApprovalSuccessEventImpl &&
            (identical(other.approvalInModel, approvalInModel) ||
                other.approvalInModel == approvalInModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, approvalInModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MaterialReqApprovalSuccessEventImplCopyWith<
          _$MaterialReqApprovalSuccessEventImpl>
      get copyWith => __$$MaterialReqApprovalSuccessEventImplCopyWithImpl<
          _$MaterialReqApprovalSuccessEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MaterialReqApprovalInModel approvalInModel)
        materialReqApprovalSuccessEvent,
    required TResult Function() materialReqApprovalLoadingEvent,
    required TResult Function() materialReqApprovalClearEvent,
    required TResult Function() started,
  }) {
    return materialReqApprovalSuccessEvent(approvalInModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MaterialReqApprovalInModel approvalInModel)?
        materialReqApprovalSuccessEvent,
    TResult? Function()? materialReqApprovalLoadingEvent,
    TResult? Function()? materialReqApprovalClearEvent,
    TResult? Function()? started,
  }) {
    return materialReqApprovalSuccessEvent?.call(approvalInModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MaterialReqApprovalInModel approvalInModel)?
        materialReqApprovalSuccessEvent,
    TResult Function()? materialReqApprovalLoadingEvent,
    TResult Function()? materialReqApprovalClearEvent,
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (materialReqApprovalSuccessEvent != null) {
      return materialReqApprovalSuccessEvent(approvalInModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MaterialReqApprovalSuccessEvent value)
        materialReqApprovalSuccessEvent,
    required TResult Function(MaterialReqApprovalLoadingEvent value)
        materialReqApprovalLoadingEvent,
    required TResult Function(MaterialReqApprovalClearEvent value)
        materialReqApprovalClearEvent,
    required TResult Function(_Started value) started,
  }) {
    return materialReqApprovalSuccessEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MaterialReqApprovalSuccessEvent value)?
        materialReqApprovalSuccessEvent,
    TResult? Function(MaterialReqApprovalLoadingEvent value)?
        materialReqApprovalLoadingEvent,
    TResult? Function(MaterialReqApprovalClearEvent value)?
        materialReqApprovalClearEvent,
    TResult? Function(_Started value)? started,
  }) {
    return materialReqApprovalSuccessEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MaterialReqApprovalSuccessEvent value)?
        materialReqApprovalSuccessEvent,
    TResult Function(MaterialReqApprovalLoadingEvent value)?
        materialReqApprovalLoadingEvent,
    TResult Function(MaterialReqApprovalClearEvent value)?
        materialReqApprovalClearEvent,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (materialReqApprovalSuccessEvent != null) {
      return materialReqApprovalSuccessEvent(this);
    }
    return orElse();
  }
}

abstract class MaterialReqApprovalSuccessEvent
    implements MaterialReqApprovalEvent {
  const factory MaterialReqApprovalSuccessEvent(
          {required final MaterialReqApprovalInModel approvalInModel}) =
      _$MaterialReqApprovalSuccessEventImpl;

  MaterialReqApprovalInModel get approvalInModel;
  @JsonKey(ignore: true)
  _$$MaterialReqApprovalSuccessEventImplCopyWith<
          _$MaterialReqApprovalSuccessEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MaterialReqApprovalLoadingEventImplCopyWith<$Res> {
  factory _$$MaterialReqApprovalLoadingEventImplCopyWith(
          _$MaterialReqApprovalLoadingEventImpl value,
          $Res Function(_$MaterialReqApprovalLoadingEventImpl) then) =
      __$$MaterialReqApprovalLoadingEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MaterialReqApprovalLoadingEventImplCopyWithImpl<$Res>
    extends _$MaterialReqApprovalEventCopyWithImpl<$Res,
        _$MaterialReqApprovalLoadingEventImpl>
    implements _$$MaterialReqApprovalLoadingEventImplCopyWith<$Res> {
  __$$MaterialReqApprovalLoadingEventImplCopyWithImpl(
      _$MaterialReqApprovalLoadingEventImpl _value,
      $Res Function(_$MaterialReqApprovalLoadingEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MaterialReqApprovalLoadingEventImpl
    implements MaterialReqApprovalLoadingEvent {
  const _$MaterialReqApprovalLoadingEventImpl();

  @override
  String toString() {
    return 'MaterialReqApprovalEvent.materialReqApprovalLoadingEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaterialReqApprovalLoadingEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MaterialReqApprovalInModel approvalInModel)
        materialReqApprovalSuccessEvent,
    required TResult Function() materialReqApprovalLoadingEvent,
    required TResult Function() materialReqApprovalClearEvent,
    required TResult Function() started,
  }) {
    return materialReqApprovalLoadingEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MaterialReqApprovalInModel approvalInModel)?
        materialReqApprovalSuccessEvent,
    TResult? Function()? materialReqApprovalLoadingEvent,
    TResult? Function()? materialReqApprovalClearEvent,
    TResult? Function()? started,
  }) {
    return materialReqApprovalLoadingEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MaterialReqApprovalInModel approvalInModel)?
        materialReqApprovalSuccessEvent,
    TResult Function()? materialReqApprovalLoadingEvent,
    TResult Function()? materialReqApprovalClearEvent,
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (materialReqApprovalLoadingEvent != null) {
      return materialReqApprovalLoadingEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MaterialReqApprovalSuccessEvent value)
        materialReqApprovalSuccessEvent,
    required TResult Function(MaterialReqApprovalLoadingEvent value)
        materialReqApprovalLoadingEvent,
    required TResult Function(MaterialReqApprovalClearEvent value)
        materialReqApprovalClearEvent,
    required TResult Function(_Started value) started,
  }) {
    return materialReqApprovalLoadingEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MaterialReqApprovalSuccessEvent value)?
        materialReqApprovalSuccessEvent,
    TResult? Function(MaterialReqApprovalLoadingEvent value)?
        materialReqApprovalLoadingEvent,
    TResult? Function(MaterialReqApprovalClearEvent value)?
        materialReqApprovalClearEvent,
    TResult? Function(_Started value)? started,
  }) {
    return materialReqApprovalLoadingEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MaterialReqApprovalSuccessEvent value)?
        materialReqApprovalSuccessEvent,
    TResult Function(MaterialReqApprovalLoadingEvent value)?
        materialReqApprovalLoadingEvent,
    TResult Function(MaterialReqApprovalClearEvent value)?
        materialReqApprovalClearEvent,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (materialReqApprovalLoadingEvent != null) {
      return materialReqApprovalLoadingEvent(this);
    }
    return orElse();
  }
}

abstract class MaterialReqApprovalLoadingEvent
    implements MaterialReqApprovalEvent {
  const factory MaterialReqApprovalLoadingEvent() =
      _$MaterialReqApprovalLoadingEventImpl;
}

/// @nodoc
abstract class _$$MaterialReqApprovalClearEventImplCopyWith<$Res> {
  factory _$$MaterialReqApprovalClearEventImplCopyWith(
          _$MaterialReqApprovalClearEventImpl value,
          $Res Function(_$MaterialReqApprovalClearEventImpl) then) =
      __$$MaterialReqApprovalClearEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MaterialReqApprovalClearEventImplCopyWithImpl<$Res>
    extends _$MaterialReqApprovalEventCopyWithImpl<$Res,
        _$MaterialReqApprovalClearEventImpl>
    implements _$$MaterialReqApprovalClearEventImplCopyWith<$Res> {
  __$$MaterialReqApprovalClearEventImplCopyWithImpl(
      _$MaterialReqApprovalClearEventImpl _value,
      $Res Function(_$MaterialReqApprovalClearEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MaterialReqApprovalClearEventImpl
    implements MaterialReqApprovalClearEvent {
  const _$MaterialReqApprovalClearEventImpl();

  @override
  String toString() {
    return 'MaterialReqApprovalEvent.materialReqApprovalClearEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaterialReqApprovalClearEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MaterialReqApprovalInModel approvalInModel)
        materialReqApprovalSuccessEvent,
    required TResult Function() materialReqApprovalLoadingEvent,
    required TResult Function() materialReqApprovalClearEvent,
    required TResult Function() started,
  }) {
    return materialReqApprovalClearEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MaterialReqApprovalInModel approvalInModel)?
        materialReqApprovalSuccessEvent,
    TResult? Function()? materialReqApprovalLoadingEvent,
    TResult? Function()? materialReqApprovalClearEvent,
    TResult? Function()? started,
  }) {
    return materialReqApprovalClearEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MaterialReqApprovalInModel approvalInModel)?
        materialReqApprovalSuccessEvent,
    TResult Function()? materialReqApprovalLoadingEvent,
    TResult Function()? materialReqApprovalClearEvent,
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (materialReqApprovalClearEvent != null) {
      return materialReqApprovalClearEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MaterialReqApprovalSuccessEvent value)
        materialReqApprovalSuccessEvent,
    required TResult Function(MaterialReqApprovalLoadingEvent value)
        materialReqApprovalLoadingEvent,
    required TResult Function(MaterialReqApprovalClearEvent value)
        materialReqApprovalClearEvent,
    required TResult Function(_Started value) started,
  }) {
    return materialReqApprovalClearEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MaterialReqApprovalSuccessEvent value)?
        materialReqApprovalSuccessEvent,
    TResult? Function(MaterialReqApprovalLoadingEvent value)?
        materialReqApprovalLoadingEvent,
    TResult? Function(MaterialReqApprovalClearEvent value)?
        materialReqApprovalClearEvent,
    TResult? Function(_Started value)? started,
  }) {
    return materialReqApprovalClearEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MaterialReqApprovalSuccessEvent value)?
        materialReqApprovalSuccessEvent,
    TResult Function(MaterialReqApprovalLoadingEvent value)?
        materialReqApprovalLoadingEvent,
    TResult Function(MaterialReqApprovalClearEvent value)?
        materialReqApprovalClearEvent,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (materialReqApprovalClearEvent != null) {
      return materialReqApprovalClearEvent(this);
    }
    return orElse();
  }
}

abstract class MaterialReqApprovalClearEvent
    implements MaterialReqApprovalEvent {
  const factory MaterialReqApprovalClearEvent() =
      _$MaterialReqApprovalClearEventImpl;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$MaterialReqApprovalEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'MaterialReqApprovalEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MaterialReqApprovalInModel approvalInModel)
        materialReqApprovalSuccessEvent,
    required TResult Function() materialReqApprovalLoadingEvent,
    required TResult Function() materialReqApprovalClearEvent,
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MaterialReqApprovalInModel approvalInModel)?
        materialReqApprovalSuccessEvent,
    TResult? Function()? materialReqApprovalLoadingEvent,
    TResult? Function()? materialReqApprovalClearEvent,
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MaterialReqApprovalInModel approvalInModel)?
        materialReqApprovalSuccessEvent,
    TResult Function()? materialReqApprovalLoadingEvent,
    TResult Function()? materialReqApprovalClearEvent,
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MaterialReqApprovalSuccessEvent value)
        materialReqApprovalSuccessEvent,
    required TResult Function(MaterialReqApprovalLoadingEvent value)
        materialReqApprovalLoadingEvent,
    required TResult Function(MaterialReqApprovalClearEvent value)
        materialReqApprovalClearEvent,
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MaterialReqApprovalSuccessEvent value)?
        materialReqApprovalSuccessEvent,
    TResult? Function(MaterialReqApprovalLoadingEvent value)?
        materialReqApprovalLoadingEvent,
    TResult? Function(MaterialReqApprovalClearEvent value)?
        materialReqApprovalClearEvent,
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MaterialReqApprovalSuccessEvent value)?
        materialReqApprovalSuccessEvent,
    TResult Function(MaterialReqApprovalLoadingEvent value)?
        materialReqApprovalLoadingEvent,
    TResult Function(MaterialReqApprovalClearEvent value)?
        materialReqApprovalClearEvent,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements MaterialReqApprovalEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
mixin _$MaterialReqApprovalState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MaterialReqApprovalOutModel? response)
        materialReqApprovalSuccessState,
    required TResult Function() materialReqApprovalFailedState,
    required TResult Function() materialReqApprovalLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MaterialReqApprovalOutModel? response)?
        materialReqApprovalSuccessState,
    TResult? Function()? materialReqApprovalFailedState,
    TResult? Function()? materialReqApprovalLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MaterialReqApprovalOutModel? response)?
        materialReqApprovalSuccessState,
    TResult Function()? materialReqApprovalFailedState,
    TResult Function()? materialReqApprovalLoadingState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MaterialReqApprovalSuccessState value)
        materialReqApprovalSuccessState,
    required TResult Function(MaterialReqApprovalFailedState value)
        materialReqApprovalFailedState,
    required TResult Function(MaterialReqApprovalLoadingState value)
        materialReqApprovalLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MaterialReqApprovalSuccessState value)?
        materialReqApprovalSuccessState,
    TResult? Function(MaterialReqApprovalFailedState value)?
        materialReqApprovalFailedState,
    TResult? Function(MaterialReqApprovalLoadingState value)?
        materialReqApprovalLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MaterialReqApprovalSuccessState value)?
        materialReqApprovalSuccessState,
    TResult Function(MaterialReqApprovalFailedState value)?
        materialReqApprovalFailedState,
    TResult Function(MaterialReqApprovalLoadingState value)?
        materialReqApprovalLoadingState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaterialReqApprovalStateCopyWith<$Res> {
  factory $MaterialReqApprovalStateCopyWith(MaterialReqApprovalState value,
          $Res Function(MaterialReqApprovalState) then) =
      _$MaterialReqApprovalStateCopyWithImpl<$Res, MaterialReqApprovalState>;
}

/// @nodoc
class _$MaterialReqApprovalStateCopyWithImpl<$Res,
        $Val extends MaterialReqApprovalState>
    implements $MaterialReqApprovalStateCopyWith<$Res> {
  _$MaterialReqApprovalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MaterialReqApprovalSuccessStateImplCopyWith<$Res> {
  factory _$$MaterialReqApprovalSuccessStateImplCopyWith(
          _$MaterialReqApprovalSuccessStateImpl value,
          $Res Function(_$MaterialReqApprovalSuccessStateImpl) then) =
      __$$MaterialReqApprovalSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MaterialReqApprovalOutModel? response});
}

/// @nodoc
class __$$MaterialReqApprovalSuccessStateImplCopyWithImpl<$Res>
    extends _$MaterialReqApprovalStateCopyWithImpl<$Res,
        _$MaterialReqApprovalSuccessStateImpl>
    implements _$$MaterialReqApprovalSuccessStateImplCopyWith<$Res> {
  __$$MaterialReqApprovalSuccessStateImplCopyWithImpl(
      _$MaterialReqApprovalSuccessStateImpl _value,
      $Res Function(_$MaterialReqApprovalSuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_$MaterialReqApprovalSuccessStateImpl(
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as MaterialReqApprovalOutModel?,
    ));
  }
}

/// @nodoc

class _$MaterialReqApprovalSuccessStateImpl
    implements MaterialReqApprovalSuccessState {
  const _$MaterialReqApprovalSuccessStateImpl({required this.response});

  @override
  final MaterialReqApprovalOutModel? response;

  @override
  String toString() {
    return 'MaterialReqApprovalState.materialReqApprovalSuccessState(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaterialReqApprovalSuccessStateImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MaterialReqApprovalSuccessStateImplCopyWith<
          _$MaterialReqApprovalSuccessStateImpl>
      get copyWith => __$$MaterialReqApprovalSuccessStateImplCopyWithImpl<
          _$MaterialReqApprovalSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MaterialReqApprovalOutModel? response)
        materialReqApprovalSuccessState,
    required TResult Function() materialReqApprovalFailedState,
    required TResult Function() materialReqApprovalLoadingState,
  }) {
    return materialReqApprovalSuccessState(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MaterialReqApprovalOutModel? response)?
        materialReqApprovalSuccessState,
    TResult? Function()? materialReqApprovalFailedState,
    TResult? Function()? materialReqApprovalLoadingState,
  }) {
    return materialReqApprovalSuccessState?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MaterialReqApprovalOutModel? response)?
        materialReqApprovalSuccessState,
    TResult Function()? materialReqApprovalFailedState,
    TResult Function()? materialReqApprovalLoadingState,
    required TResult orElse(),
  }) {
    if (materialReqApprovalSuccessState != null) {
      return materialReqApprovalSuccessState(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MaterialReqApprovalSuccessState value)
        materialReqApprovalSuccessState,
    required TResult Function(MaterialReqApprovalFailedState value)
        materialReqApprovalFailedState,
    required TResult Function(MaterialReqApprovalLoadingState value)
        materialReqApprovalLoadingState,
  }) {
    return materialReqApprovalSuccessState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MaterialReqApprovalSuccessState value)?
        materialReqApprovalSuccessState,
    TResult? Function(MaterialReqApprovalFailedState value)?
        materialReqApprovalFailedState,
    TResult? Function(MaterialReqApprovalLoadingState value)?
        materialReqApprovalLoadingState,
  }) {
    return materialReqApprovalSuccessState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MaterialReqApprovalSuccessState value)?
        materialReqApprovalSuccessState,
    TResult Function(MaterialReqApprovalFailedState value)?
        materialReqApprovalFailedState,
    TResult Function(MaterialReqApprovalLoadingState value)?
        materialReqApprovalLoadingState,
    required TResult orElse(),
  }) {
    if (materialReqApprovalSuccessState != null) {
      return materialReqApprovalSuccessState(this);
    }
    return orElse();
  }
}

abstract class MaterialReqApprovalSuccessState
    implements MaterialReqApprovalState {
  const factory MaterialReqApprovalSuccessState(
          {required final MaterialReqApprovalOutModel? response}) =
      _$MaterialReqApprovalSuccessStateImpl;

  MaterialReqApprovalOutModel? get response;
  @JsonKey(ignore: true)
  _$$MaterialReqApprovalSuccessStateImplCopyWith<
          _$MaterialReqApprovalSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MaterialReqApprovalFailedStateImplCopyWith<$Res> {
  factory _$$MaterialReqApprovalFailedStateImplCopyWith(
          _$MaterialReqApprovalFailedStateImpl value,
          $Res Function(_$MaterialReqApprovalFailedStateImpl) then) =
      __$$MaterialReqApprovalFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MaterialReqApprovalFailedStateImplCopyWithImpl<$Res>
    extends _$MaterialReqApprovalStateCopyWithImpl<$Res,
        _$MaterialReqApprovalFailedStateImpl>
    implements _$$MaterialReqApprovalFailedStateImplCopyWith<$Res> {
  __$$MaterialReqApprovalFailedStateImplCopyWithImpl(
      _$MaterialReqApprovalFailedStateImpl _value,
      $Res Function(_$MaterialReqApprovalFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MaterialReqApprovalFailedStateImpl
    implements MaterialReqApprovalFailedState {
  const _$MaterialReqApprovalFailedStateImpl();

  @override
  String toString() {
    return 'MaterialReqApprovalState.materialReqApprovalFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaterialReqApprovalFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MaterialReqApprovalOutModel? response)
        materialReqApprovalSuccessState,
    required TResult Function() materialReqApprovalFailedState,
    required TResult Function() materialReqApprovalLoadingState,
  }) {
    return materialReqApprovalFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MaterialReqApprovalOutModel? response)?
        materialReqApprovalSuccessState,
    TResult? Function()? materialReqApprovalFailedState,
    TResult? Function()? materialReqApprovalLoadingState,
  }) {
    return materialReqApprovalFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MaterialReqApprovalOutModel? response)?
        materialReqApprovalSuccessState,
    TResult Function()? materialReqApprovalFailedState,
    TResult Function()? materialReqApprovalLoadingState,
    required TResult orElse(),
  }) {
    if (materialReqApprovalFailedState != null) {
      return materialReqApprovalFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MaterialReqApprovalSuccessState value)
        materialReqApprovalSuccessState,
    required TResult Function(MaterialReqApprovalFailedState value)
        materialReqApprovalFailedState,
    required TResult Function(MaterialReqApprovalLoadingState value)
        materialReqApprovalLoadingState,
  }) {
    return materialReqApprovalFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MaterialReqApprovalSuccessState value)?
        materialReqApprovalSuccessState,
    TResult? Function(MaterialReqApprovalFailedState value)?
        materialReqApprovalFailedState,
    TResult? Function(MaterialReqApprovalLoadingState value)?
        materialReqApprovalLoadingState,
  }) {
    return materialReqApprovalFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MaterialReqApprovalSuccessState value)?
        materialReqApprovalSuccessState,
    TResult Function(MaterialReqApprovalFailedState value)?
        materialReqApprovalFailedState,
    TResult Function(MaterialReqApprovalLoadingState value)?
        materialReqApprovalLoadingState,
    required TResult orElse(),
  }) {
    if (materialReqApprovalFailedState != null) {
      return materialReqApprovalFailedState(this);
    }
    return orElse();
  }
}

abstract class MaterialReqApprovalFailedState
    implements MaterialReqApprovalState {
  const factory MaterialReqApprovalFailedState() =
      _$MaterialReqApprovalFailedStateImpl;
}

/// @nodoc
abstract class _$$MaterialReqApprovalLoadingStateImplCopyWith<$Res> {
  factory _$$MaterialReqApprovalLoadingStateImplCopyWith(
          _$MaterialReqApprovalLoadingStateImpl value,
          $Res Function(_$MaterialReqApprovalLoadingStateImpl) then) =
      __$$MaterialReqApprovalLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MaterialReqApprovalLoadingStateImplCopyWithImpl<$Res>
    extends _$MaterialReqApprovalStateCopyWithImpl<$Res,
        _$MaterialReqApprovalLoadingStateImpl>
    implements _$$MaterialReqApprovalLoadingStateImplCopyWith<$Res> {
  __$$MaterialReqApprovalLoadingStateImplCopyWithImpl(
      _$MaterialReqApprovalLoadingStateImpl _value,
      $Res Function(_$MaterialReqApprovalLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MaterialReqApprovalLoadingStateImpl
    implements MaterialReqApprovalLoadingState {
  const _$MaterialReqApprovalLoadingStateImpl();

  @override
  String toString() {
    return 'MaterialReqApprovalState.materialReqApprovalLoadingState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaterialReqApprovalLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MaterialReqApprovalOutModel? response)
        materialReqApprovalSuccessState,
    required TResult Function() materialReqApprovalFailedState,
    required TResult Function() materialReqApprovalLoadingState,
  }) {
    return materialReqApprovalLoadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MaterialReqApprovalOutModel? response)?
        materialReqApprovalSuccessState,
    TResult? Function()? materialReqApprovalFailedState,
    TResult? Function()? materialReqApprovalLoadingState,
  }) {
    return materialReqApprovalLoadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MaterialReqApprovalOutModel? response)?
        materialReqApprovalSuccessState,
    TResult Function()? materialReqApprovalFailedState,
    TResult Function()? materialReqApprovalLoadingState,
    required TResult orElse(),
  }) {
    if (materialReqApprovalLoadingState != null) {
      return materialReqApprovalLoadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MaterialReqApprovalSuccessState value)
        materialReqApprovalSuccessState,
    required TResult Function(MaterialReqApprovalFailedState value)
        materialReqApprovalFailedState,
    required TResult Function(MaterialReqApprovalLoadingState value)
        materialReqApprovalLoadingState,
  }) {
    return materialReqApprovalLoadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MaterialReqApprovalSuccessState value)?
        materialReqApprovalSuccessState,
    TResult? Function(MaterialReqApprovalFailedState value)?
        materialReqApprovalFailedState,
    TResult? Function(MaterialReqApprovalLoadingState value)?
        materialReqApprovalLoadingState,
  }) {
    return materialReqApprovalLoadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MaterialReqApprovalSuccessState value)?
        materialReqApprovalSuccessState,
    TResult Function(MaterialReqApprovalFailedState value)?
        materialReqApprovalFailedState,
    TResult Function(MaterialReqApprovalLoadingState value)?
        materialReqApprovalLoadingState,
    required TResult orElse(),
  }) {
    if (materialReqApprovalLoadingState != null) {
      return materialReqApprovalLoadingState(this);
    }
    return orElse();
  }
}

abstract class MaterialReqApprovalLoadingState
    implements MaterialReqApprovalState {
  const factory MaterialReqApprovalLoadingState() =
      _$MaterialReqApprovalLoadingStateImpl;
}
