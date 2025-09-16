// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'material_req_rejection_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MaterialReqRejectionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MaterialReqRejectionInModel approvalInModel)
        materialreqrejectionSuccessevent,
    required TResult Function() materialreqRejectionLoadingevent,
    required TResult Function() materialReqRejecetionClearevent,
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MaterialReqRejectionInModel approvalInModel)?
        materialreqrejectionSuccessevent,
    TResult? Function()? materialreqRejectionLoadingevent,
    TResult? Function()? materialReqRejecetionClearevent,
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MaterialReqRejectionInModel approvalInModel)?
        materialreqrejectionSuccessevent,
    TResult Function()? materialreqRejectionLoadingevent,
    TResult Function()? materialReqRejecetionClearevent,
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MaterialreqrejectionSuccessevent value)
        materialreqrejectionSuccessevent,
    required TResult Function(MaterialreqRejectionLoadingevent value)
        materialreqRejectionLoadingevent,
    required TResult Function(MaterialReqRejecetionClearevent value)
        materialReqRejecetionClearevent,
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MaterialreqrejectionSuccessevent value)?
        materialreqrejectionSuccessevent,
    TResult? Function(MaterialreqRejectionLoadingevent value)?
        materialreqRejectionLoadingevent,
    TResult? Function(MaterialReqRejecetionClearevent value)?
        materialReqRejecetionClearevent,
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MaterialreqrejectionSuccessevent value)?
        materialreqrejectionSuccessevent,
    TResult Function(MaterialreqRejectionLoadingevent value)?
        materialreqRejectionLoadingevent,
    TResult Function(MaterialReqRejecetionClearevent value)?
        materialReqRejecetionClearevent,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaterialReqRejectionEventCopyWith<$Res> {
  factory $MaterialReqRejectionEventCopyWith(MaterialReqRejectionEvent value,
          $Res Function(MaterialReqRejectionEvent) then) =
      _$MaterialReqRejectionEventCopyWithImpl<$Res, MaterialReqRejectionEvent>;
}

/// @nodoc
class _$MaterialReqRejectionEventCopyWithImpl<$Res,
        $Val extends MaterialReqRejectionEvent>
    implements $MaterialReqRejectionEventCopyWith<$Res> {
  _$MaterialReqRejectionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MaterialReqRejectionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$MaterialreqrejectionSuccesseventImplCopyWith<$Res> {
  factory _$$MaterialreqrejectionSuccesseventImplCopyWith(
          _$MaterialreqrejectionSuccesseventImpl value,
          $Res Function(_$MaterialreqrejectionSuccesseventImpl) then) =
      __$$MaterialreqrejectionSuccesseventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MaterialReqRejectionInModel approvalInModel});
}

/// @nodoc
class __$$MaterialreqrejectionSuccesseventImplCopyWithImpl<$Res>
    extends _$MaterialReqRejectionEventCopyWithImpl<$Res,
        _$MaterialreqrejectionSuccesseventImpl>
    implements _$$MaterialreqrejectionSuccesseventImplCopyWith<$Res> {
  __$$MaterialreqrejectionSuccesseventImplCopyWithImpl(
      _$MaterialreqrejectionSuccesseventImpl _value,
      $Res Function(_$MaterialreqrejectionSuccesseventImpl) _then)
      : super(_value, _then);

  /// Create a copy of MaterialReqRejectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? approvalInModel = null,
  }) {
    return _then(_$MaterialreqrejectionSuccesseventImpl(
      approvalInModel: null == approvalInModel
          ? _value.approvalInModel
          : approvalInModel // ignore: cast_nullable_to_non_nullable
              as MaterialReqRejectionInModel,
    ));
  }
}

/// @nodoc

class _$MaterialreqrejectionSuccesseventImpl
    implements MaterialreqrejectionSuccessevent {
  const _$MaterialreqrejectionSuccesseventImpl({required this.approvalInModel});

  @override
  final MaterialReqRejectionInModel approvalInModel;

  @override
  String toString() {
    return 'MaterialReqRejectionEvent.materialreqrejectionSuccessevent(approvalInModel: $approvalInModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaterialreqrejectionSuccesseventImpl &&
            (identical(other.approvalInModel, approvalInModel) ||
                other.approvalInModel == approvalInModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, approvalInModel);

  /// Create a copy of MaterialReqRejectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MaterialreqrejectionSuccesseventImplCopyWith<
          _$MaterialreqrejectionSuccesseventImpl>
      get copyWith => __$$MaterialreqrejectionSuccesseventImplCopyWithImpl<
          _$MaterialreqrejectionSuccesseventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MaterialReqRejectionInModel approvalInModel)
        materialreqrejectionSuccessevent,
    required TResult Function() materialreqRejectionLoadingevent,
    required TResult Function() materialReqRejecetionClearevent,
    required TResult Function() started,
  }) {
    return materialreqrejectionSuccessevent(approvalInModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MaterialReqRejectionInModel approvalInModel)?
        materialreqrejectionSuccessevent,
    TResult? Function()? materialreqRejectionLoadingevent,
    TResult? Function()? materialReqRejecetionClearevent,
    TResult? Function()? started,
  }) {
    return materialreqrejectionSuccessevent?.call(approvalInModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MaterialReqRejectionInModel approvalInModel)?
        materialreqrejectionSuccessevent,
    TResult Function()? materialreqRejectionLoadingevent,
    TResult Function()? materialReqRejecetionClearevent,
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (materialreqrejectionSuccessevent != null) {
      return materialreqrejectionSuccessevent(approvalInModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MaterialreqrejectionSuccessevent value)
        materialreqrejectionSuccessevent,
    required TResult Function(MaterialreqRejectionLoadingevent value)
        materialreqRejectionLoadingevent,
    required TResult Function(MaterialReqRejecetionClearevent value)
        materialReqRejecetionClearevent,
    required TResult Function(_Started value) started,
  }) {
    return materialreqrejectionSuccessevent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MaterialreqrejectionSuccessevent value)?
        materialreqrejectionSuccessevent,
    TResult? Function(MaterialreqRejectionLoadingevent value)?
        materialreqRejectionLoadingevent,
    TResult? Function(MaterialReqRejecetionClearevent value)?
        materialReqRejecetionClearevent,
    TResult? Function(_Started value)? started,
  }) {
    return materialreqrejectionSuccessevent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MaterialreqrejectionSuccessevent value)?
        materialreqrejectionSuccessevent,
    TResult Function(MaterialreqRejectionLoadingevent value)?
        materialreqRejectionLoadingevent,
    TResult Function(MaterialReqRejecetionClearevent value)?
        materialReqRejecetionClearevent,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (materialreqrejectionSuccessevent != null) {
      return materialreqrejectionSuccessevent(this);
    }
    return orElse();
  }
}

abstract class MaterialreqrejectionSuccessevent
    implements MaterialReqRejectionEvent {
  const factory MaterialreqrejectionSuccessevent(
          {required final MaterialReqRejectionInModel approvalInModel}) =
      _$MaterialreqrejectionSuccesseventImpl;

  MaterialReqRejectionInModel get approvalInModel;

  /// Create a copy of MaterialReqRejectionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MaterialreqrejectionSuccesseventImplCopyWith<
          _$MaterialreqrejectionSuccesseventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MaterialreqRejectionLoadingeventImplCopyWith<$Res> {
  factory _$$MaterialreqRejectionLoadingeventImplCopyWith(
          _$MaterialreqRejectionLoadingeventImpl value,
          $Res Function(_$MaterialreqRejectionLoadingeventImpl) then) =
      __$$MaterialreqRejectionLoadingeventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MaterialreqRejectionLoadingeventImplCopyWithImpl<$Res>
    extends _$MaterialReqRejectionEventCopyWithImpl<$Res,
        _$MaterialreqRejectionLoadingeventImpl>
    implements _$$MaterialreqRejectionLoadingeventImplCopyWith<$Res> {
  __$$MaterialreqRejectionLoadingeventImplCopyWithImpl(
      _$MaterialreqRejectionLoadingeventImpl _value,
      $Res Function(_$MaterialreqRejectionLoadingeventImpl) _then)
      : super(_value, _then);

  /// Create a copy of MaterialReqRejectionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MaterialreqRejectionLoadingeventImpl
    implements MaterialreqRejectionLoadingevent {
  const _$MaterialreqRejectionLoadingeventImpl();

  @override
  String toString() {
    return 'MaterialReqRejectionEvent.materialreqRejectionLoadingevent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaterialreqRejectionLoadingeventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MaterialReqRejectionInModel approvalInModel)
        materialreqrejectionSuccessevent,
    required TResult Function() materialreqRejectionLoadingevent,
    required TResult Function() materialReqRejecetionClearevent,
    required TResult Function() started,
  }) {
    return materialreqRejectionLoadingevent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MaterialReqRejectionInModel approvalInModel)?
        materialreqrejectionSuccessevent,
    TResult? Function()? materialreqRejectionLoadingevent,
    TResult? Function()? materialReqRejecetionClearevent,
    TResult? Function()? started,
  }) {
    return materialreqRejectionLoadingevent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MaterialReqRejectionInModel approvalInModel)?
        materialreqrejectionSuccessevent,
    TResult Function()? materialreqRejectionLoadingevent,
    TResult Function()? materialReqRejecetionClearevent,
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (materialreqRejectionLoadingevent != null) {
      return materialreqRejectionLoadingevent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MaterialreqrejectionSuccessevent value)
        materialreqrejectionSuccessevent,
    required TResult Function(MaterialreqRejectionLoadingevent value)
        materialreqRejectionLoadingevent,
    required TResult Function(MaterialReqRejecetionClearevent value)
        materialReqRejecetionClearevent,
    required TResult Function(_Started value) started,
  }) {
    return materialreqRejectionLoadingevent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MaterialreqrejectionSuccessevent value)?
        materialreqrejectionSuccessevent,
    TResult? Function(MaterialreqRejectionLoadingevent value)?
        materialreqRejectionLoadingevent,
    TResult? Function(MaterialReqRejecetionClearevent value)?
        materialReqRejecetionClearevent,
    TResult? Function(_Started value)? started,
  }) {
    return materialreqRejectionLoadingevent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MaterialreqrejectionSuccessevent value)?
        materialreqrejectionSuccessevent,
    TResult Function(MaterialreqRejectionLoadingevent value)?
        materialreqRejectionLoadingevent,
    TResult Function(MaterialReqRejecetionClearevent value)?
        materialReqRejecetionClearevent,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (materialreqRejectionLoadingevent != null) {
      return materialreqRejectionLoadingevent(this);
    }
    return orElse();
  }
}

abstract class MaterialreqRejectionLoadingevent
    implements MaterialReqRejectionEvent {
  const factory MaterialreqRejectionLoadingevent() =
      _$MaterialreqRejectionLoadingeventImpl;
}

/// @nodoc
abstract class _$$MaterialReqRejecetionCleareventImplCopyWith<$Res> {
  factory _$$MaterialReqRejecetionCleareventImplCopyWith(
          _$MaterialReqRejecetionCleareventImpl value,
          $Res Function(_$MaterialReqRejecetionCleareventImpl) then) =
      __$$MaterialReqRejecetionCleareventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MaterialReqRejecetionCleareventImplCopyWithImpl<$Res>
    extends _$MaterialReqRejectionEventCopyWithImpl<$Res,
        _$MaterialReqRejecetionCleareventImpl>
    implements _$$MaterialReqRejecetionCleareventImplCopyWith<$Res> {
  __$$MaterialReqRejecetionCleareventImplCopyWithImpl(
      _$MaterialReqRejecetionCleareventImpl _value,
      $Res Function(_$MaterialReqRejecetionCleareventImpl) _then)
      : super(_value, _then);

  /// Create a copy of MaterialReqRejectionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MaterialReqRejecetionCleareventImpl
    implements MaterialReqRejecetionClearevent {
  const _$MaterialReqRejecetionCleareventImpl();

  @override
  String toString() {
    return 'MaterialReqRejectionEvent.materialReqRejecetionClearevent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaterialReqRejecetionCleareventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MaterialReqRejectionInModel approvalInModel)
        materialreqrejectionSuccessevent,
    required TResult Function() materialreqRejectionLoadingevent,
    required TResult Function() materialReqRejecetionClearevent,
    required TResult Function() started,
  }) {
    return materialReqRejecetionClearevent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MaterialReqRejectionInModel approvalInModel)?
        materialreqrejectionSuccessevent,
    TResult? Function()? materialreqRejectionLoadingevent,
    TResult? Function()? materialReqRejecetionClearevent,
    TResult? Function()? started,
  }) {
    return materialReqRejecetionClearevent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MaterialReqRejectionInModel approvalInModel)?
        materialreqrejectionSuccessevent,
    TResult Function()? materialreqRejectionLoadingevent,
    TResult Function()? materialReqRejecetionClearevent,
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (materialReqRejecetionClearevent != null) {
      return materialReqRejecetionClearevent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MaterialreqrejectionSuccessevent value)
        materialreqrejectionSuccessevent,
    required TResult Function(MaterialreqRejectionLoadingevent value)
        materialreqRejectionLoadingevent,
    required TResult Function(MaterialReqRejecetionClearevent value)
        materialReqRejecetionClearevent,
    required TResult Function(_Started value) started,
  }) {
    return materialReqRejecetionClearevent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MaterialreqrejectionSuccessevent value)?
        materialreqrejectionSuccessevent,
    TResult? Function(MaterialreqRejectionLoadingevent value)?
        materialreqRejectionLoadingevent,
    TResult? Function(MaterialReqRejecetionClearevent value)?
        materialReqRejecetionClearevent,
    TResult? Function(_Started value)? started,
  }) {
    return materialReqRejecetionClearevent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MaterialreqrejectionSuccessevent value)?
        materialreqrejectionSuccessevent,
    TResult Function(MaterialreqRejectionLoadingevent value)?
        materialreqRejectionLoadingevent,
    TResult Function(MaterialReqRejecetionClearevent value)?
        materialReqRejecetionClearevent,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (materialReqRejecetionClearevent != null) {
      return materialReqRejecetionClearevent(this);
    }
    return orElse();
  }
}

abstract class MaterialReqRejecetionClearevent
    implements MaterialReqRejectionEvent {
  const factory MaterialReqRejecetionClearevent() =
      _$MaterialReqRejecetionCleareventImpl;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$MaterialReqRejectionEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of MaterialReqRejectionEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'MaterialReqRejectionEvent.started()';
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
    required TResult Function(MaterialReqRejectionInModel approvalInModel)
        materialreqrejectionSuccessevent,
    required TResult Function() materialreqRejectionLoadingevent,
    required TResult Function() materialReqRejecetionClearevent,
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MaterialReqRejectionInModel approvalInModel)?
        materialreqrejectionSuccessevent,
    TResult? Function()? materialreqRejectionLoadingevent,
    TResult? Function()? materialReqRejecetionClearevent,
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MaterialReqRejectionInModel approvalInModel)?
        materialreqrejectionSuccessevent,
    TResult Function()? materialreqRejectionLoadingevent,
    TResult Function()? materialReqRejecetionClearevent,
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
    required TResult Function(MaterialreqrejectionSuccessevent value)
        materialreqrejectionSuccessevent,
    required TResult Function(MaterialreqRejectionLoadingevent value)
        materialreqRejectionLoadingevent,
    required TResult Function(MaterialReqRejecetionClearevent value)
        materialReqRejecetionClearevent,
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MaterialreqrejectionSuccessevent value)?
        materialreqrejectionSuccessevent,
    TResult? Function(MaterialreqRejectionLoadingevent value)?
        materialreqRejectionLoadingevent,
    TResult? Function(MaterialReqRejecetionClearevent value)?
        materialReqRejecetionClearevent,
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MaterialreqrejectionSuccessevent value)?
        materialreqrejectionSuccessevent,
    TResult Function(MaterialreqRejectionLoadingevent value)?
        materialreqRejectionLoadingevent,
    TResult Function(MaterialReqRejecetionClearevent value)?
        materialReqRejecetionClearevent,
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements MaterialReqRejectionEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
mixin _$MaterialReqRejectionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MaterialReqrejectionOutModel? response)
        materialReqRejectSuccessState,
    required TResult Function() materialReqRejectFailedState,
    required TResult Function() materialReqLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MaterialReqrejectionOutModel? response)?
        materialReqRejectSuccessState,
    TResult? Function()? materialReqRejectFailedState,
    TResult? Function()? materialReqLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MaterialReqrejectionOutModel? response)?
        materialReqRejectSuccessState,
    TResult Function()? materialReqRejectFailedState,
    TResult Function()? materialReqLoadingState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MaterialReqRejectSuccessState value)
        materialReqRejectSuccessState,
    required TResult Function(MaterialReqRejectFailedState value)
        materialReqRejectFailedState,
    required TResult Function(MaterialReqLoadingState value)
        materialReqLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MaterialReqRejectSuccessState value)?
        materialReqRejectSuccessState,
    TResult? Function(MaterialReqRejectFailedState value)?
        materialReqRejectFailedState,
    TResult? Function(MaterialReqLoadingState value)? materialReqLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MaterialReqRejectSuccessState value)?
        materialReqRejectSuccessState,
    TResult Function(MaterialReqRejectFailedState value)?
        materialReqRejectFailedState,
    TResult Function(MaterialReqLoadingState value)? materialReqLoadingState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaterialReqRejectionStateCopyWith<$Res> {
  factory $MaterialReqRejectionStateCopyWith(MaterialReqRejectionState value,
          $Res Function(MaterialReqRejectionState) then) =
      _$MaterialReqRejectionStateCopyWithImpl<$Res, MaterialReqRejectionState>;
}

/// @nodoc
class _$MaterialReqRejectionStateCopyWithImpl<$Res,
        $Val extends MaterialReqRejectionState>
    implements $MaterialReqRejectionStateCopyWith<$Res> {
  _$MaterialReqRejectionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MaterialReqRejectionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$MaterialReqRejectSuccessStateImplCopyWith<$Res> {
  factory _$$MaterialReqRejectSuccessStateImplCopyWith(
          _$MaterialReqRejectSuccessStateImpl value,
          $Res Function(_$MaterialReqRejectSuccessStateImpl) then) =
      __$$MaterialReqRejectSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({MaterialReqrejectionOutModel? response});
}

/// @nodoc
class __$$MaterialReqRejectSuccessStateImplCopyWithImpl<$Res>
    extends _$MaterialReqRejectionStateCopyWithImpl<$Res,
        _$MaterialReqRejectSuccessStateImpl>
    implements _$$MaterialReqRejectSuccessStateImplCopyWith<$Res> {
  __$$MaterialReqRejectSuccessStateImplCopyWithImpl(
      _$MaterialReqRejectSuccessStateImpl _value,
      $Res Function(_$MaterialReqRejectSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MaterialReqRejectionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = freezed,
  }) {
    return _then(_$MaterialReqRejectSuccessStateImpl(
      response: freezed == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as MaterialReqrejectionOutModel?,
    ));
  }
}

/// @nodoc

class _$MaterialReqRejectSuccessStateImpl
    implements MaterialReqRejectSuccessState {
  const _$MaterialReqRejectSuccessStateImpl({required this.response});

  @override
  final MaterialReqrejectionOutModel? response;

  @override
  String toString() {
    return 'MaterialReqRejectionState.materialReqRejectSuccessState(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaterialReqRejectSuccessStateImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response);

  /// Create a copy of MaterialReqRejectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MaterialReqRejectSuccessStateImplCopyWith<
          _$MaterialReqRejectSuccessStateImpl>
      get copyWith => __$$MaterialReqRejectSuccessStateImplCopyWithImpl<
          _$MaterialReqRejectSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MaterialReqrejectionOutModel? response)
        materialReqRejectSuccessState,
    required TResult Function() materialReqRejectFailedState,
    required TResult Function() materialReqLoadingState,
  }) {
    return materialReqRejectSuccessState(response);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MaterialReqrejectionOutModel? response)?
        materialReqRejectSuccessState,
    TResult? Function()? materialReqRejectFailedState,
    TResult? Function()? materialReqLoadingState,
  }) {
    return materialReqRejectSuccessState?.call(response);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MaterialReqrejectionOutModel? response)?
        materialReqRejectSuccessState,
    TResult Function()? materialReqRejectFailedState,
    TResult Function()? materialReqLoadingState,
    required TResult orElse(),
  }) {
    if (materialReqRejectSuccessState != null) {
      return materialReqRejectSuccessState(response);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MaterialReqRejectSuccessState value)
        materialReqRejectSuccessState,
    required TResult Function(MaterialReqRejectFailedState value)
        materialReqRejectFailedState,
    required TResult Function(MaterialReqLoadingState value)
        materialReqLoadingState,
  }) {
    return materialReqRejectSuccessState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MaterialReqRejectSuccessState value)?
        materialReqRejectSuccessState,
    TResult? Function(MaterialReqRejectFailedState value)?
        materialReqRejectFailedState,
    TResult? Function(MaterialReqLoadingState value)? materialReqLoadingState,
  }) {
    return materialReqRejectSuccessState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MaterialReqRejectSuccessState value)?
        materialReqRejectSuccessState,
    TResult Function(MaterialReqRejectFailedState value)?
        materialReqRejectFailedState,
    TResult Function(MaterialReqLoadingState value)? materialReqLoadingState,
    required TResult orElse(),
  }) {
    if (materialReqRejectSuccessState != null) {
      return materialReqRejectSuccessState(this);
    }
    return orElse();
  }
}

abstract class MaterialReqRejectSuccessState
    implements MaterialReqRejectionState {
  const factory MaterialReqRejectSuccessState(
          {required final MaterialReqrejectionOutModel? response}) =
      _$MaterialReqRejectSuccessStateImpl;

  MaterialReqrejectionOutModel? get response;

  /// Create a copy of MaterialReqRejectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MaterialReqRejectSuccessStateImplCopyWith<
          _$MaterialReqRejectSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MaterialReqRejectFailedStateImplCopyWith<$Res> {
  factory _$$MaterialReqRejectFailedStateImplCopyWith(
          _$MaterialReqRejectFailedStateImpl value,
          $Res Function(_$MaterialReqRejectFailedStateImpl) then) =
      __$$MaterialReqRejectFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MaterialReqRejectFailedStateImplCopyWithImpl<$Res>
    extends _$MaterialReqRejectionStateCopyWithImpl<$Res,
        _$MaterialReqRejectFailedStateImpl>
    implements _$$MaterialReqRejectFailedStateImplCopyWith<$Res> {
  __$$MaterialReqRejectFailedStateImplCopyWithImpl(
      _$MaterialReqRejectFailedStateImpl _value,
      $Res Function(_$MaterialReqRejectFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MaterialReqRejectionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MaterialReqRejectFailedStateImpl
    implements MaterialReqRejectFailedState {
  const _$MaterialReqRejectFailedStateImpl();

  @override
  String toString() {
    return 'MaterialReqRejectionState.materialReqRejectFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaterialReqRejectFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MaterialReqrejectionOutModel? response)
        materialReqRejectSuccessState,
    required TResult Function() materialReqRejectFailedState,
    required TResult Function() materialReqLoadingState,
  }) {
    return materialReqRejectFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MaterialReqrejectionOutModel? response)?
        materialReqRejectSuccessState,
    TResult? Function()? materialReqRejectFailedState,
    TResult? Function()? materialReqLoadingState,
  }) {
    return materialReqRejectFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MaterialReqrejectionOutModel? response)?
        materialReqRejectSuccessState,
    TResult Function()? materialReqRejectFailedState,
    TResult Function()? materialReqLoadingState,
    required TResult orElse(),
  }) {
    if (materialReqRejectFailedState != null) {
      return materialReqRejectFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MaterialReqRejectSuccessState value)
        materialReqRejectSuccessState,
    required TResult Function(MaterialReqRejectFailedState value)
        materialReqRejectFailedState,
    required TResult Function(MaterialReqLoadingState value)
        materialReqLoadingState,
  }) {
    return materialReqRejectFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MaterialReqRejectSuccessState value)?
        materialReqRejectSuccessState,
    TResult? Function(MaterialReqRejectFailedState value)?
        materialReqRejectFailedState,
    TResult? Function(MaterialReqLoadingState value)? materialReqLoadingState,
  }) {
    return materialReqRejectFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MaterialReqRejectSuccessState value)?
        materialReqRejectSuccessState,
    TResult Function(MaterialReqRejectFailedState value)?
        materialReqRejectFailedState,
    TResult Function(MaterialReqLoadingState value)? materialReqLoadingState,
    required TResult orElse(),
  }) {
    if (materialReqRejectFailedState != null) {
      return materialReqRejectFailedState(this);
    }
    return orElse();
  }
}

abstract class MaterialReqRejectFailedState
    implements MaterialReqRejectionState {
  const factory MaterialReqRejectFailedState() =
      _$MaterialReqRejectFailedStateImpl;
}

/// @nodoc
abstract class _$$MaterialReqLoadingStateImplCopyWith<$Res> {
  factory _$$MaterialReqLoadingStateImplCopyWith(
          _$MaterialReqLoadingStateImpl value,
          $Res Function(_$MaterialReqLoadingStateImpl) then) =
      __$$MaterialReqLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MaterialReqLoadingStateImplCopyWithImpl<$Res>
    extends _$MaterialReqRejectionStateCopyWithImpl<$Res,
        _$MaterialReqLoadingStateImpl>
    implements _$$MaterialReqLoadingStateImplCopyWith<$Res> {
  __$$MaterialReqLoadingStateImplCopyWithImpl(
      _$MaterialReqLoadingStateImpl _value,
      $Res Function(_$MaterialReqLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MaterialReqRejectionState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MaterialReqLoadingStateImpl implements MaterialReqLoadingState {
  const _$MaterialReqLoadingStateImpl();

  @override
  String toString() {
    return 'MaterialReqRejectionState.materialReqLoadingState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaterialReqLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MaterialReqrejectionOutModel? response)
        materialReqRejectSuccessState,
    required TResult Function() materialReqRejectFailedState,
    required TResult Function() materialReqLoadingState,
  }) {
    return materialReqLoadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MaterialReqrejectionOutModel? response)?
        materialReqRejectSuccessState,
    TResult? Function()? materialReqRejectFailedState,
    TResult? Function()? materialReqLoadingState,
  }) {
    return materialReqLoadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MaterialReqrejectionOutModel? response)?
        materialReqRejectSuccessState,
    TResult Function()? materialReqRejectFailedState,
    TResult Function()? materialReqLoadingState,
    required TResult orElse(),
  }) {
    if (materialReqLoadingState != null) {
      return materialReqLoadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MaterialReqRejectSuccessState value)
        materialReqRejectSuccessState,
    required TResult Function(MaterialReqRejectFailedState value)
        materialReqRejectFailedState,
    required TResult Function(MaterialReqLoadingState value)
        materialReqLoadingState,
  }) {
    return materialReqLoadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MaterialReqRejectSuccessState value)?
        materialReqRejectSuccessState,
    TResult? Function(MaterialReqRejectFailedState value)?
        materialReqRejectFailedState,
    TResult? Function(MaterialReqLoadingState value)? materialReqLoadingState,
  }) {
    return materialReqLoadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MaterialReqRejectSuccessState value)?
        materialReqRejectSuccessState,
    TResult Function(MaterialReqRejectFailedState value)?
        materialReqRejectFailedState,
    TResult Function(MaterialReqLoadingState value)? materialReqLoadingState,
    required TResult orElse(),
  }) {
    if (materialReqLoadingState != null) {
      return materialReqLoadingState(this);
    }
    return orElse();
  }
}

abstract class MaterialReqLoadingState implements MaterialReqRejectionState {
  const factory MaterialReqLoadingState() = _$MaterialReqLoadingStateImpl;
}
