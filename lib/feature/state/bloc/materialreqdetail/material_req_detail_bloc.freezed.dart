// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'material_req_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MaterialReqDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String reqId) materialReqDetailSuccessEvent,
    required TResult Function() materialDetailClearEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String reqId)? materialReqDetailSuccessEvent,
    TResult? Function()? materialDetailClearEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String reqId)? materialReqDetailSuccessEvent,
    TResult Function()? materialDetailClearEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MaterialReqDetailSuccessEvent value)
        materialReqDetailSuccessEvent,
    required TResult Function(MaterialDetailClearEvent value)
        materialDetailClearEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MaterialReqDetailSuccessEvent value)?
        materialReqDetailSuccessEvent,
    TResult? Function(MaterialDetailClearEvent value)? materialDetailClearEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MaterialReqDetailSuccessEvent value)?
        materialReqDetailSuccessEvent,
    TResult Function(MaterialDetailClearEvent value)? materialDetailClearEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaterialReqDetailEventCopyWith<$Res> {
  factory $MaterialReqDetailEventCopyWith(MaterialReqDetailEvent value,
          $Res Function(MaterialReqDetailEvent) then) =
      _$MaterialReqDetailEventCopyWithImpl<$Res, MaterialReqDetailEvent>;
}

/// @nodoc
class _$MaterialReqDetailEventCopyWithImpl<$Res,
        $Val extends MaterialReqDetailEvent>
    implements $MaterialReqDetailEventCopyWith<$Res> {
  _$MaterialReqDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MaterialReqDetailSuccessEventImplCopyWith<$Res> {
  factory _$$MaterialReqDetailSuccessEventImplCopyWith(
          _$MaterialReqDetailSuccessEventImpl value,
          $Res Function(_$MaterialReqDetailSuccessEventImpl) then) =
      __$$MaterialReqDetailSuccessEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String reqId});
}

/// @nodoc
class __$$MaterialReqDetailSuccessEventImplCopyWithImpl<$Res>
    extends _$MaterialReqDetailEventCopyWithImpl<$Res,
        _$MaterialReqDetailSuccessEventImpl>
    implements _$$MaterialReqDetailSuccessEventImplCopyWith<$Res> {
  __$$MaterialReqDetailSuccessEventImplCopyWithImpl(
      _$MaterialReqDetailSuccessEventImpl _value,
      $Res Function(_$MaterialReqDetailSuccessEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reqId = null,
  }) {
    return _then(_$MaterialReqDetailSuccessEventImpl(
      reqId: null == reqId
          ? _value.reqId
          : reqId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MaterialReqDetailSuccessEventImpl
    implements MaterialReqDetailSuccessEvent {
  const _$MaterialReqDetailSuccessEventImpl({required this.reqId});

  @override
  final String reqId;

  @override
  String toString() {
    return 'MaterialReqDetailEvent.materialReqDetailSuccessEvent(reqId: $reqId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaterialReqDetailSuccessEventImpl &&
            (identical(other.reqId, reqId) || other.reqId == reqId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reqId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MaterialReqDetailSuccessEventImplCopyWith<
          _$MaterialReqDetailSuccessEventImpl>
      get copyWith => __$$MaterialReqDetailSuccessEventImplCopyWithImpl<
          _$MaterialReqDetailSuccessEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String reqId) materialReqDetailSuccessEvent,
    required TResult Function() materialDetailClearEvent,
  }) {
    return materialReqDetailSuccessEvent(reqId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String reqId)? materialReqDetailSuccessEvent,
    TResult? Function()? materialDetailClearEvent,
  }) {
    return materialReqDetailSuccessEvent?.call(reqId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String reqId)? materialReqDetailSuccessEvent,
    TResult Function()? materialDetailClearEvent,
    required TResult orElse(),
  }) {
    if (materialReqDetailSuccessEvent != null) {
      return materialReqDetailSuccessEvent(reqId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MaterialReqDetailSuccessEvent value)
        materialReqDetailSuccessEvent,
    required TResult Function(MaterialDetailClearEvent value)
        materialDetailClearEvent,
  }) {
    return materialReqDetailSuccessEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MaterialReqDetailSuccessEvent value)?
        materialReqDetailSuccessEvent,
    TResult? Function(MaterialDetailClearEvent value)? materialDetailClearEvent,
  }) {
    return materialReqDetailSuccessEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MaterialReqDetailSuccessEvent value)?
        materialReqDetailSuccessEvent,
    TResult Function(MaterialDetailClearEvent value)? materialDetailClearEvent,
    required TResult orElse(),
  }) {
    if (materialReqDetailSuccessEvent != null) {
      return materialReqDetailSuccessEvent(this);
    }
    return orElse();
  }
}

abstract class MaterialReqDetailSuccessEvent implements MaterialReqDetailEvent {
  const factory MaterialReqDetailSuccessEvent({required final String reqId}) =
      _$MaterialReqDetailSuccessEventImpl;

  String get reqId;
  @JsonKey(ignore: true)
  _$$MaterialReqDetailSuccessEventImplCopyWith<
          _$MaterialReqDetailSuccessEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MaterialDetailClearEventImplCopyWith<$Res> {
  factory _$$MaterialDetailClearEventImplCopyWith(
          _$MaterialDetailClearEventImpl value,
          $Res Function(_$MaterialDetailClearEventImpl) then) =
      __$$MaterialDetailClearEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MaterialDetailClearEventImplCopyWithImpl<$Res>
    extends _$MaterialReqDetailEventCopyWithImpl<$Res,
        _$MaterialDetailClearEventImpl>
    implements _$$MaterialDetailClearEventImplCopyWith<$Res> {
  __$$MaterialDetailClearEventImplCopyWithImpl(
      _$MaterialDetailClearEventImpl _value,
      $Res Function(_$MaterialDetailClearEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MaterialDetailClearEventImpl implements MaterialDetailClearEvent {
  const _$MaterialDetailClearEventImpl();

  @override
  String toString() {
    return 'MaterialReqDetailEvent.materialDetailClearEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaterialDetailClearEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String reqId) materialReqDetailSuccessEvent,
    required TResult Function() materialDetailClearEvent,
  }) {
    return materialDetailClearEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String reqId)? materialReqDetailSuccessEvent,
    TResult? Function()? materialDetailClearEvent,
  }) {
    return materialDetailClearEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String reqId)? materialReqDetailSuccessEvent,
    TResult Function()? materialDetailClearEvent,
    required TResult orElse(),
  }) {
    if (materialDetailClearEvent != null) {
      return materialDetailClearEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MaterialReqDetailSuccessEvent value)
        materialReqDetailSuccessEvent,
    required TResult Function(MaterialDetailClearEvent value)
        materialDetailClearEvent,
  }) {
    return materialDetailClearEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MaterialReqDetailSuccessEvent value)?
        materialReqDetailSuccessEvent,
    TResult? Function(MaterialDetailClearEvent value)? materialDetailClearEvent,
  }) {
    return materialDetailClearEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MaterialReqDetailSuccessEvent value)?
        materialReqDetailSuccessEvent,
    TResult Function(MaterialDetailClearEvent value)? materialDetailClearEvent,
    required TResult orElse(),
  }) {
    if (materialDetailClearEvent != null) {
      return materialDetailClearEvent(this);
    }
    return orElse();
  }
}

abstract class MaterialDetailClearEvent implements MaterialReqDetailEvent {
  const factory MaterialDetailClearEvent() = _$MaterialDetailClearEventImpl;
}

/// @nodoc
mixin _$MaterialReqDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MaterialReqDetailModel>? materialdetail)
        materialreqdetailsuccess,
    required TResult Function() materialreqdetailFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MaterialReqDetailModel>? materialdetail)?
        materialreqdetailsuccess,
    TResult? Function()? materialreqdetailFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MaterialReqDetailModel>? materialdetail)?
        materialreqdetailsuccess,
    TResult Function()? materialreqdetailFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Materialreqdetailsuccess value)
        materialreqdetailsuccess,
    required TResult Function(MaterialreqdetailFailed value)
        materialreqdetailFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Materialreqdetailsuccess value)? materialreqdetailsuccess,
    TResult? Function(MaterialreqdetailFailed value)? materialreqdetailFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Materialreqdetailsuccess value)? materialreqdetailsuccess,
    TResult Function(MaterialreqdetailFailed value)? materialreqdetailFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MaterialReqDetailStateCopyWith<$Res> {
  factory $MaterialReqDetailStateCopyWith(MaterialReqDetailState value,
          $Res Function(MaterialReqDetailState) then) =
      _$MaterialReqDetailStateCopyWithImpl<$Res, MaterialReqDetailState>;
}

/// @nodoc
class _$MaterialReqDetailStateCopyWithImpl<$Res,
        $Val extends MaterialReqDetailState>
    implements $MaterialReqDetailStateCopyWith<$Res> {
  _$MaterialReqDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MaterialreqdetailsuccessImplCopyWith<$Res> {
  factory _$$MaterialreqdetailsuccessImplCopyWith(
          _$MaterialreqdetailsuccessImpl value,
          $Res Function(_$MaterialreqdetailsuccessImpl) then) =
      __$$MaterialreqdetailsuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MaterialReqDetailModel>? materialdetail});
}

/// @nodoc
class __$$MaterialreqdetailsuccessImplCopyWithImpl<$Res>
    extends _$MaterialReqDetailStateCopyWithImpl<$Res,
        _$MaterialreqdetailsuccessImpl>
    implements _$$MaterialreqdetailsuccessImplCopyWith<$Res> {
  __$$MaterialreqdetailsuccessImplCopyWithImpl(
      _$MaterialreqdetailsuccessImpl _value,
      $Res Function(_$MaterialreqdetailsuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? materialdetail = freezed,
  }) {
    return _then(_$MaterialreqdetailsuccessImpl(
      materialdetail: freezed == materialdetail
          ? _value._materialdetail
          : materialdetail // ignore: cast_nullable_to_non_nullable
              as List<MaterialReqDetailModel>?,
    ));
  }
}

/// @nodoc

class _$MaterialreqdetailsuccessImpl implements Materialreqdetailsuccess {
  const _$MaterialreqdetailsuccessImpl(
      {required final List<MaterialReqDetailModel>? materialdetail})
      : _materialdetail = materialdetail;

  final List<MaterialReqDetailModel>? _materialdetail;
  @override
  List<MaterialReqDetailModel>? get materialdetail {
    final value = _materialdetail;
    if (value == null) return null;
    if (_materialdetail is EqualUnmodifiableListView) return _materialdetail;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MaterialReqDetailState.materialreqdetailsuccess(materialdetail: $materialdetail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaterialreqdetailsuccessImpl &&
            const DeepCollectionEquality()
                .equals(other._materialdetail, _materialdetail));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_materialdetail));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MaterialreqdetailsuccessImplCopyWith<_$MaterialreqdetailsuccessImpl>
      get copyWith => __$$MaterialreqdetailsuccessImplCopyWithImpl<
          _$MaterialreqdetailsuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MaterialReqDetailModel>? materialdetail)
        materialreqdetailsuccess,
    required TResult Function() materialreqdetailFailed,
  }) {
    return materialreqdetailsuccess(materialdetail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MaterialReqDetailModel>? materialdetail)?
        materialreqdetailsuccess,
    TResult? Function()? materialreqdetailFailed,
  }) {
    return materialreqdetailsuccess?.call(materialdetail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MaterialReqDetailModel>? materialdetail)?
        materialreqdetailsuccess,
    TResult Function()? materialreqdetailFailed,
    required TResult orElse(),
  }) {
    if (materialreqdetailsuccess != null) {
      return materialreqdetailsuccess(materialdetail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Materialreqdetailsuccess value)
        materialreqdetailsuccess,
    required TResult Function(MaterialreqdetailFailed value)
        materialreqdetailFailed,
  }) {
    return materialreqdetailsuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Materialreqdetailsuccess value)? materialreqdetailsuccess,
    TResult? Function(MaterialreqdetailFailed value)? materialreqdetailFailed,
  }) {
    return materialreqdetailsuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Materialreqdetailsuccess value)? materialreqdetailsuccess,
    TResult Function(MaterialreqdetailFailed value)? materialreqdetailFailed,
    required TResult orElse(),
  }) {
    if (materialreqdetailsuccess != null) {
      return materialreqdetailsuccess(this);
    }
    return orElse();
  }
}

abstract class Materialreqdetailsuccess implements MaterialReqDetailState {
  const factory Materialreqdetailsuccess(
          {required final List<MaterialReqDetailModel>? materialdetail}) =
      _$MaterialreqdetailsuccessImpl;

  List<MaterialReqDetailModel>? get materialdetail;
  @JsonKey(ignore: true)
  _$$MaterialreqdetailsuccessImplCopyWith<_$MaterialreqdetailsuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MaterialreqdetailFailedImplCopyWith<$Res> {
  factory _$$MaterialreqdetailFailedImplCopyWith(
          _$MaterialreqdetailFailedImpl value,
          $Res Function(_$MaterialreqdetailFailedImpl) then) =
      __$$MaterialreqdetailFailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MaterialreqdetailFailedImplCopyWithImpl<$Res>
    extends _$MaterialReqDetailStateCopyWithImpl<$Res,
        _$MaterialreqdetailFailedImpl>
    implements _$$MaterialreqdetailFailedImplCopyWith<$Res> {
  __$$MaterialreqdetailFailedImplCopyWithImpl(
      _$MaterialreqdetailFailedImpl _value,
      $Res Function(_$MaterialreqdetailFailedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MaterialreqdetailFailedImpl implements MaterialreqdetailFailed {
  const _$MaterialreqdetailFailedImpl();

  @override
  String toString() {
    return 'MaterialReqDetailState.materialreqdetailFailed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MaterialreqdetailFailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MaterialReqDetailModel>? materialdetail)
        materialreqdetailsuccess,
    required TResult Function() materialreqdetailFailed,
  }) {
    return materialreqdetailFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MaterialReqDetailModel>? materialdetail)?
        materialreqdetailsuccess,
    TResult? Function()? materialreqdetailFailed,
  }) {
    return materialreqdetailFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MaterialReqDetailModel>? materialdetail)?
        materialreqdetailsuccess,
    TResult Function()? materialreqdetailFailed,
    required TResult orElse(),
  }) {
    if (materialreqdetailFailed != null) {
      return materialreqdetailFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Materialreqdetailsuccess value)
        materialreqdetailsuccess,
    required TResult Function(MaterialreqdetailFailed value)
        materialreqdetailFailed,
  }) {
    return materialreqdetailFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Materialreqdetailsuccess value)? materialreqdetailsuccess,
    TResult? Function(MaterialreqdetailFailed value)? materialreqdetailFailed,
  }) {
    return materialreqdetailFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Materialreqdetailsuccess value)? materialreqdetailsuccess,
    TResult Function(MaterialreqdetailFailed value)? materialreqdetailFailed,
    required TResult orElse(),
  }) {
    if (materialreqdetailFailed != null) {
      return materialreqdetailFailed(this);
    }
    return orElse();
  }
}

abstract class MaterialreqdetailFailed implements MaterialReqDetailState {
  const factory MaterialreqdetailFailed() = _$MaterialreqdetailFailedImpl;
}
