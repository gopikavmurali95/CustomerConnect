// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'material_req_head_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MaterialReqHeadEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) materialHeadSuccessEvent,
    required TResult Function() materialReqHeadClearEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? materialHeadSuccessEvent,
    TResult? Function()? materialReqHeadClearEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? materialHeadSuccessEvent,
    TResult Function()? materialReqHeadClearEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MaterialHeadSuccessEvent value)
        materialHeadSuccessEvent,
    required TResult Function(MaterialReqHeadClearEvent value)
        materialReqHeadClearEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MaterialHeadSuccessEvent value)? materialHeadSuccessEvent,
    TResult? Function(MaterialReqHeadClearEvent value)?
        materialReqHeadClearEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MaterialHeadSuccessEvent value)? materialHeadSuccessEvent,
    TResult Function(MaterialReqHeadClearEvent value)?
        materialReqHeadClearEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaterialReqHeadEventCopyWith<$Res> {
  factory $MaterialReqHeadEventCopyWith(MaterialReqHeadEvent value,
          $Res Function(MaterialReqHeadEvent) then) =
      _$MaterialReqHeadEventCopyWithImpl<$Res, MaterialReqHeadEvent>;
}

/// @nodoc
class _$MaterialReqHeadEventCopyWithImpl<$Res,
        $Val extends MaterialReqHeadEvent>
    implements $MaterialReqHeadEventCopyWith<$Res> {
  _$MaterialReqHeadEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MaterialHeadSuccessEventImplCopyWith<$Res> {
  factory _$$MaterialHeadSuccessEventImplCopyWith(
          _$MaterialHeadSuccessEventImpl value,
          $Res Function(_$MaterialHeadSuccessEventImpl) then) =
      __$$MaterialHeadSuccessEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$MaterialHeadSuccessEventImplCopyWithImpl<$Res>
    extends _$MaterialReqHeadEventCopyWithImpl<$Res,
        _$MaterialHeadSuccessEventImpl>
    implements _$$MaterialHeadSuccessEventImplCopyWith<$Res> {
  __$$MaterialHeadSuccessEventImplCopyWithImpl(
      _$MaterialHeadSuccessEventImpl _value,
      $Res Function(_$MaterialHeadSuccessEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$MaterialHeadSuccessEventImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MaterialHeadSuccessEventImpl implements MaterialHeadSuccessEvent {
  const _$MaterialHeadSuccessEventImpl({required this.userId});

  @override
  final String userId;

  @override
  String toString() {
    return 'MaterialReqHeadEvent.materialHeadSuccessEvent(userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaterialHeadSuccessEventImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MaterialHeadSuccessEventImplCopyWith<_$MaterialHeadSuccessEventImpl>
      get copyWith => __$$MaterialHeadSuccessEventImplCopyWithImpl<
          _$MaterialHeadSuccessEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) materialHeadSuccessEvent,
    required TResult Function() materialReqHeadClearEvent,
  }) {
    return materialHeadSuccessEvent(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? materialHeadSuccessEvent,
    TResult? Function()? materialReqHeadClearEvent,
  }) {
    return materialHeadSuccessEvent?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? materialHeadSuccessEvent,
    TResult Function()? materialReqHeadClearEvent,
    required TResult orElse(),
  }) {
    if (materialHeadSuccessEvent != null) {
      return materialHeadSuccessEvent(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MaterialHeadSuccessEvent value)
        materialHeadSuccessEvent,
    required TResult Function(MaterialReqHeadClearEvent value)
        materialReqHeadClearEvent,
  }) {
    return materialHeadSuccessEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MaterialHeadSuccessEvent value)? materialHeadSuccessEvent,
    TResult? Function(MaterialReqHeadClearEvent value)?
        materialReqHeadClearEvent,
  }) {
    return materialHeadSuccessEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MaterialHeadSuccessEvent value)? materialHeadSuccessEvent,
    TResult Function(MaterialReqHeadClearEvent value)?
        materialReqHeadClearEvent,
    required TResult orElse(),
  }) {
    if (materialHeadSuccessEvent != null) {
      return materialHeadSuccessEvent(this);
    }
    return orElse();
  }
}

abstract class MaterialHeadSuccessEvent implements MaterialReqHeadEvent {
  const factory MaterialHeadSuccessEvent({required final String userId}) =
      _$MaterialHeadSuccessEventImpl;

  String get userId;
  @JsonKey(ignore: true)
  _$$MaterialHeadSuccessEventImplCopyWith<_$MaterialHeadSuccessEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MaterialReqHeadClearEventImplCopyWith<$Res> {
  factory _$$MaterialReqHeadClearEventImplCopyWith(
          _$MaterialReqHeadClearEventImpl value,
          $Res Function(_$MaterialReqHeadClearEventImpl) then) =
      __$$MaterialReqHeadClearEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MaterialReqHeadClearEventImplCopyWithImpl<$Res>
    extends _$MaterialReqHeadEventCopyWithImpl<$Res,
        _$MaterialReqHeadClearEventImpl>
    implements _$$MaterialReqHeadClearEventImplCopyWith<$Res> {
  __$$MaterialReqHeadClearEventImplCopyWithImpl(
      _$MaterialReqHeadClearEventImpl _value,
      $Res Function(_$MaterialReqHeadClearEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MaterialReqHeadClearEventImpl implements MaterialReqHeadClearEvent {
  const _$MaterialReqHeadClearEventImpl();

  @override
  String toString() {
    return 'MaterialReqHeadEvent.materialReqHeadClearEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaterialReqHeadClearEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId) materialHeadSuccessEvent,
    required TResult Function() materialReqHeadClearEvent,
  }) {
    return materialReqHeadClearEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId)? materialHeadSuccessEvent,
    TResult? Function()? materialReqHeadClearEvent,
  }) {
    return materialReqHeadClearEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId)? materialHeadSuccessEvent,
    TResult Function()? materialReqHeadClearEvent,
    required TResult orElse(),
  }) {
    if (materialReqHeadClearEvent != null) {
      return materialReqHeadClearEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MaterialHeadSuccessEvent value)
        materialHeadSuccessEvent,
    required TResult Function(MaterialReqHeadClearEvent value)
        materialReqHeadClearEvent,
  }) {
    return materialReqHeadClearEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MaterialHeadSuccessEvent value)? materialHeadSuccessEvent,
    TResult? Function(MaterialReqHeadClearEvent value)?
        materialReqHeadClearEvent,
  }) {
    return materialReqHeadClearEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MaterialHeadSuccessEvent value)? materialHeadSuccessEvent,
    TResult Function(MaterialReqHeadClearEvent value)?
        materialReqHeadClearEvent,
    required TResult orElse(),
  }) {
    if (materialReqHeadClearEvent != null) {
      return materialReqHeadClearEvent(this);
    }
    return orElse();
  }
}

abstract class MaterialReqHeadClearEvent implements MaterialReqHeadEvent {
  const factory MaterialReqHeadClearEvent() = _$MaterialReqHeadClearEventImpl;
}

/// @nodoc
mixin _$MaterialReqHeadState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MaterialReqHeaderModel>? materialheader)
        materialreqheadsuccess,
    required TResult Function() materialreqheadFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MaterialReqHeaderModel>? materialheader)?
        materialreqheadsuccess,
    TResult? Function()? materialreqheadFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MaterialReqHeaderModel>? materialheader)?
        materialreqheadsuccess,
    TResult Function()? materialreqheadFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Materialreqheadsuccess value)
        materialreqheadsuccess,
    required TResult Function(MaterialreqheadFailed value)
        materialreqheadFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Materialreqheadsuccess value)? materialreqheadsuccess,
    TResult? Function(MaterialreqheadFailed value)? materialreqheadFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Materialreqheadsuccess value)? materialreqheadsuccess,
    TResult Function(MaterialreqheadFailed value)? materialreqheadFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaterialReqHeadStateCopyWith<$Res> {
  factory $MaterialReqHeadStateCopyWith(MaterialReqHeadState value,
          $Res Function(MaterialReqHeadState) then) =
      _$MaterialReqHeadStateCopyWithImpl<$Res, MaterialReqHeadState>;
}

/// @nodoc
class _$MaterialReqHeadStateCopyWithImpl<$Res,
        $Val extends MaterialReqHeadState>
    implements $MaterialReqHeadStateCopyWith<$Res> {
  _$MaterialReqHeadStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MaterialreqheadsuccessImplCopyWith<$Res> {
  factory _$$MaterialreqheadsuccessImplCopyWith(
          _$MaterialreqheadsuccessImpl value,
          $Res Function(_$MaterialreqheadsuccessImpl) then) =
      __$$MaterialreqheadsuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MaterialReqHeaderModel>? materialheader});
}

/// @nodoc
class __$$MaterialreqheadsuccessImplCopyWithImpl<$Res>
    extends _$MaterialReqHeadStateCopyWithImpl<$Res,
        _$MaterialreqheadsuccessImpl>
    implements _$$MaterialreqheadsuccessImplCopyWith<$Res> {
  __$$MaterialreqheadsuccessImplCopyWithImpl(
      _$MaterialreqheadsuccessImpl _value,
      $Res Function(_$MaterialreqheadsuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? materialheader = freezed,
  }) {
    return _then(_$MaterialreqheadsuccessImpl(
      materialheader: freezed == materialheader
          ? _value._materialheader
          : materialheader // ignore: cast_nullable_to_non_nullable
              as List<MaterialReqHeaderModel>?,
    ));
  }
}

/// @nodoc

class _$MaterialreqheadsuccessImpl implements Materialreqheadsuccess {
  const _$MaterialreqheadsuccessImpl(
      {required final List<MaterialReqHeaderModel>? materialheader})
      : _materialheader = materialheader;

  final List<MaterialReqHeaderModel>? _materialheader;
  @override
  List<MaterialReqHeaderModel>? get materialheader {
    final value = _materialheader;
    if (value == null) return null;
    if (_materialheader is EqualUnmodifiableListView) return _materialheader;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MaterialReqHeadState.materialreqheadsuccess(materialheader: $materialheader)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaterialreqheadsuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._materialheader, _materialheader));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_materialheader));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MaterialreqheadsuccessImplCopyWith<_$MaterialreqheadsuccessImpl>
      get copyWith => __$$MaterialreqheadsuccessImplCopyWithImpl<
          _$MaterialreqheadsuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MaterialReqHeaderModel>? materialheader)
        materialreqheadsuccess,
    required TResult Function() materialreqheadFailed,
  }) {
    return materialreqheadsuccess(materialheader);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MaterialReqHeaderModel>? materialheader)?
        materialreqheadsuccess,
    TResult? Function()? materialreqheadFailed,
  }) {
    return materialreqheadsuccess?.call(materialheader);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MaterialReqHeaderModel>? materialheader)?
        materialreqheadsuccess,
    TResult Function()? materialreqheadFailed,
    required TResult orElse(),
  }) {
    if (materialreqheadsuccess != null) {
      return materialreqheadsuccess(materialheader);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Materialreqheadsuccess value)
        materialreqheadsuccess,
    required TResult Function(MaterialreqheadFailed value)
        materialreqheadFailed,
  }) {
    return materialreqheadsuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Materialreqheadsuccess value)? materialreqheadsuccess,
    TResult? Function(MaterialreqheadFailed value)? materialreqheadFailed,
  }) {
    return materialreqheadsuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Materialreqheadsuccess value)? materialreqheadsuccess,
    TResult Function(MaterialreqheadFailed value)? materialreqheadFailed,
    required TResult orElse(),
  }) {
    if (materialreqheadsuccess != null) {
      return materialreqheadsuccess(this);
    }
    return orElse();
  }
}

abstract class Materialreqheadsuccess implements MaterialReqHeadState {
  const factory Materialreqheadsuccess(
          {required final List<MaterialReqHeaderModel>? materialheader}) =
      _$MaterialreqheadsuccessImpl;

  List<MaterialReqHeaderModel>? get materialheader;
  @JsonKey(ignore: true)
  _$$MaterialreqheadsuccessImplCopyWith<_$MaterialreqheadsuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MaterialreqheadFailedImplCopyWith<$Res> {
  factory _$$MaterialreqheadFailedImplCopyWith(
          _$MaterialreqheadFailedImpl value,
          $Res Function(_$MaterialreqheadFailedImpl) then) =
      __$$MaterialreqheadFailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MaterialreqheadFailedImplCopyWithImpl<$Res>
    extends _$MaterialReqHeadStateCopyWithImpl<$Res,
        _$MaterialreqheadFailedImpl>
    implements _$$MaterialreqheadFailedImplCopyWith<$Res> {
  __$$MaterialreqheadFailedImplCopyWithImpl(_$MaterialreqheadFailedImpl _value,
      $Res Function(_$MaterialreqheadFailedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MaterialreqheadFailedImpl implements MaterialreqheadFailed {
  const _$MaterialreqheadFailedImpl();

  @override
  String toString() {
    return 'MaterialReqHeadState.materialreqheadFailed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaterialreqheadFailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MaterialReqHeaderModel>? materialheader)
        materialreqheadsuccess,
    required TResult Function() materialreqheadFailed,
  }) {
    return materialreqheadFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MaterialReqHeaderModel>? materialheader)?
        materialreqheadsuccess,
    TResult? Function()? materialreqheadFailed,
  }) {
    return materialreqheadFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MaterialReqHeaderModel>? materialheader)?
        materialreqheadsuccess,
    TResult Function()? materialreqheadFailed,
    required TResult orElse(),
  }) {
    if (materialreqheadFailed != null) {
      return materialreqheadFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Materialreqheadsuccess value)
        materialreqheadsuccess,
    required TResult Function(MaterialreqheadFailed value)
        materialreqheadFailed,
  }) {
    return materialreqheadFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Materialreqheadsuccess value)? materialreqheadsuccess,
    TResult? Function(MaterialreqheadFailed value)? materialreqheadFailed,
  }) {
    return materialreqheadFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Materialreqheadsuccess value)? materialreqheadsuccess,
    TResult Function(MaterialreqheadFailed value)? materialreqheadFailed,
    required TResult orElse(),
  }) {
    if (materialreqheadFailed != null) {
      return materialreqheadFailed(this);
    }
    return orElse();
  }
}

abstract class MaterialreqheadFailed implements MaterialReqHeadState {
  const factory MaterialreqheadFailed() = _$MaterialreqheadFailedImpl;
}
