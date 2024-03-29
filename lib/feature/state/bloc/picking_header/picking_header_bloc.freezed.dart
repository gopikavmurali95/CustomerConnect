// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'picking_header_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PickingHeaderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PickingInModel pickingHeadIn)
        getpickingHeaderEvent,
    required TResult Function() clearPickingevent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PickingInModel pickingHeadIn)? getpickingHeaderEvent,
    TResult? Function()? clearPickingevent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PickingInModel pickingHeadIn)? getpickingHeaderEvent,
    TResult Function()? clearPickingevent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetpickingHeaderEvent value)
        getpickingHeaderEvent,
    required TResult Function(ClearPickingevent value) clearPickingevent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetpickingHeaderEvent value)? getpickingHeaderEvent,
    TResult? Function(ClearPickingevent value)? clearPickingevent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetpickingHeaderEvent value)? getpickingHeaderEvent,
    TResult Function(ClearPickingevent value)? clearPickingevent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickingHeaderEventCopyWith<$Res> {
  factory $PickingHeaderEventCopyWith(
          PickingHeaderEvent value, $Res Function(PickingHeaderEvent) then) =
      _$PickingHeaderEventCopyWithImpl<$Res, PickingHeaderEvent>;
}

/// @nodoc
class _$PickingHeaderEventCopyWithImpl<$Res, $Val extends PickingHeaderEvent>
    implements $PickingHeaderEventCopyWith<$Res> {
  _$PickingHeaderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetpickingHeaderEventImplCopyWith<$Res> {
  factory _$$GetpickingHeaderEventImplCopyWith(
          _$GetpickingHeaderEventImpl value,
          $Res Function(_$GetpickingHeaderEventImpl) then) =
      __$$GetpickingHeaderEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PickingInModel pickingHeadIn});
}

/// @nodoc
class __$$GetpickingHeaderEventImplCopyWithImpl<$Res>
    extends _$PickingHeaderEventCopyWithImpl<$Res, _$GetpickingHeaderEventImpl>
    implements _$$GetpickingHeaderEventImplCopyWith<$Res> {
  __$$GetpickingHeaderEventImplCopyWithImpl(_$GetpickingHeaderEventImpl _value,
      $Res Function(_$GetpickingHeaderEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickingHeadIn = null,
  }) {
    return _then(_$GetpickingHeaderEventImpl(
      pickingHeadIn: null == pickingHeadIn
          ? _value.pickingHeadIn
          : pickingHeadIn // ignore: cast_nullable_to_non_nullable
              as PickingInModel,
    ));
  }
}

/// @nodoc

class _$GetpickingHeaderEventImpl implements GetpickingHeaderEvent {
  const _$GetpickingHeaderEventImpl({required this.pickingHeadIn});

  @override
  final PickingInModel pickingHeadIn;

  @override
  String toString() {
    return 'PickingHeaderEvent.getpickingHeaderEvent(pickingHeadIn: $pickingHeadIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetpickingHeaderEventImpl &&
            (identical(other.pickingHeadIn, pickingHeadIn) ||
                other.pickingHeadIn == pickingHeadIn));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pickingHeadIn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetpickingHeaderEventImplCopyWith<_$GetpickingHeaderEventImpl>
      get copyWith => __$$GetpickingHeaderEventImplCopyWithImpl<
          _$GetpickingHeaderEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PickingInModel pickingHeadIn)
        getpickingHeaderEvent,
    required TResult Function() clearPickingevent,
  }) {
    return getpickingHeaderEvent(pickingHeadIn);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PickingInModel pickingHeadIn)? getpickingHeaderEvent,
    TResult? Function()? clearPickingevent,
  }) {
    return getpickingHeaderEvent?.call(pickingHeadIn);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PickingInModel pickingHeadIn)? getpickingHeaderEvent,
    TResult Function()? clearPickingevent,
    required TResult orElse(),
  }) {
    if (getpickingHeaderEvent != null) {
      return getpickingHeaderEvent(pickingHeadIn);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetpickingHeaderEvent value)
        getpickingHeaderEvent,
    required TResult Function(ClearPickingevent value) clearPickingevent,
  }) {
    return getpickingHeaderEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetpickingHeaderEvent value)? getpickingHeaderEvent,
    TResult? Function(ClearPickingevent value)? clearPickingevent,
  }) {
    return getpickingHeaderEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetpickingHeaderEvent value)? getpickingHeaderEvent,
    TResult Function(ClearPickingevent value)? clearPickingevent,
    required TResult orElse(),
  }) {
    if (getpickingHeaderEvent != null) {
      return getpickingHeaderEvent(this);
    }
    return orElse();
  }
}

abstract class GetpickingHeaderEvent implements PickingHeaderEvent {
  const factory GetpickingHeaderEvent(
          {required final PickingInModel pickingHeadIn}) =
      _$GetpickingHeaderEventImpl;

  PickingInModel get pickingHeadIn;
  @JsonKey(ignore: true)
  _$$GetpickingHeaderEventImplCopyWith<_$GetpickingHeaderEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearPickingeventImplCopyWith<$Res> {
  factory _$$ClearPickingeventImplCopyWith(_$ClearPickingeventImpl value,
          $Res Function(_$ClearPickingeventImpl) then) =
      __$$ClearPickingeventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearPickingeventImplCopyWithImpl<$Res>
    extends _$PickingHeaderEventCopyWithImpl<$Res, _$ClearPickingeventImpl>
    implements _$$ClearPickingeventImplCopyWith<$Res> {
  __$$ClearPickingeventImplCopyWithImpl(_$ClearPickingeventImpl _value,
      $Res Function(_$ClearPickingeventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearPickingeventImpl implements ClearPickingevent {
  const _$ClearPickingeventImpl();

  @override
  String toString() {
    return 'PickingHeaderEvent.clearPickingevent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearPickingeventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PickingInModel pickingHeadIn)
        getpickingHeaderEvent,
    required TResult Function() clearPickingevent,
  }) {
    return clearPickingevent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PickingInModel pickingHeadIn)? getpickingHeaderEvent,
    TResult? Function()? clearPickingevent,
  }) {
    return clearPickingevent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PickingInModel pickingHeadIn)? getpickingHeaderEvent,
    TResult Function()? clearPickingevent,
    required TResult orElse(),
  }) {
    if (clearPickingevent != null) {
      return clearPickingevent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetpickingHeaderEvent value)
        getpickingHeaderEvent,
    required TResult Function(ClearPickingevent value) clearPickingevent,
  }) {
    return clearPickingevent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetpickingHeaderEvent value)? getpickingHeaderEvent,
    TResult? Function(ClearPickingevent value)? clearPickingevent,
  }) {
    return clearPickingevent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetpickingHeaderEvent value)? getpickingHeaderEvent,
    TResult Function(ClearPickingevent value)? clearPickingevent,
    required TResult orElse(),
  }) {
    if (clearPickingevent != null) {
      return clearPickingevent(this);
    }
    return orElse();
  }
}

abstract class ClearPickingevent implements PickingHeaderEvent {
  const factory ClearPickingevent() = _$ClearPickingeventImpl;
}

/// @nodoc
mixin _$PickingHeaderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PickingOutModel>? pickingOut)
        getPickingHeaderState,
    required TResult Function() pickingheaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PickingOutModel>? pickingOut)? getPickingHeaderState,
    TResult? Function()? pickingheaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PickingOutModel>? pickingOut)? getPickingHeaderState,
    TResult Function()? pickingheaderFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPickingHeaderState value)
        getPickingHeaderState,
    required TResult Function(PickingheaderFailedState value)
        pickingheaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPickingHeaderState value)? getPickingHeaderState,
    TResult? Function(PickingheaderFailedState value)? pickingheaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPickingHeaderState value)? getPickingHeaderState,
    TResult Function(PickingheaderFailedState value)? pickingheaderFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickingHeaderStateCopyWith<$Res> {
  factory $PickingHeaderStateCopyWith(
          PickingHeaderState value, $Res Function(PickingHeaderState) then) =
      _$PickingHeaderStateCopyWithImpl<$Res, PickingHeaderState>;
}

/// @nodoc
class _$PickingHeaderStateCopyWithImpl<$Res, $Val extends PickingHeaderState>
    implements $PickingHeaderStateCopyWith<$Res> {
  _$PickingHeaderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetPickingHeaderStateImplCopyWith<$Res> {
  factory _$$GetPickingHeaderStateImplCopyWith(
          _$GetPickingHeaderStateImpl value,
          $Res Function(_$GetPickingHeaderStateImpl) then) =
      __$$GetPickingHeaderStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PickingOutModel>? pickingOut});
}

/// @nodoc
class __$$GetPickingHeaderStateImplCopyWithImpl<$Res>
    extends _$PickingHeaderStateCopyWithImpl<$Res, _$GetPickingHeaderStateImpl>
    implements _$$GetPickingHeaderStateImplCopyWith<$Res> {
  __$$GetPickingHeaderStateImplCopyWithImpl(_$GetPickingHeaderStateImpl _value,
      $Res Function(_$GetPickingHeaderStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickingOut = freezed,
  }) {
    return _then(_$GetPickingHeaderStateImpl(
      pickingOut: freezed == pickingOut
          ? _value._pickingOut
          : pickingOut // ignore: cast_nullable_to_non_nullable
              as List<PickingOutModel>?,
    ));
  }
}

/// @nodoc

class _$GetPickingHeaderStateImpl implements GetPickingHeaderState {
  const _$GetPickingHeaderStateImpl(
      {required final List<PickingOutModel>? pickingOut})
      : _pickingOut = pickingOut;

  final List<PickingOutModel>? _pickingOut;
  @override
  List<PickingOutModel>? get pickingOut {
    final value = _pickingOut;
    if (value == null) return null;
    if (_pickingOut is EqualUnmodifiableListView) return _pickingOut;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PickingHeaderState.getPickingHeaderState(pickingOut: $pickingOut)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPickingHeaderStateImpl &&
            const DeepCollectionEquality()
                .equals(other._pickingOut, _pickingOut));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_pickingOut));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPickingHeaderStateImplCopyWith<_$GetPickingHeaderStateImpl>
      get copyWith => __$$GetPickingHeaderStateImplCopyWithImpl<
          _$GetPickingHeaderStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PickingOutModel>? pickingOut)
        getPickingHeaderState,
    required TResult Function() pickingheaderFailedState,
  }) {
    return getPickingHeaderState(pickingOut);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PickingOutModel>? pickingOut)? getPickingHeaderState,
    TResult? Function()? pickingheaderFailedState,
  }) {
    return getPickingHeaderState?.call(pickingOut);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PickingOutModel>? pickingOut)? getPickingHeaderState,
    TResult Function()? pickingheaderFailedState,
    required TResult orElse(),
  }) {
    if (getPickingHeaderState != null) {
      return getPickingHeaderState(pickingOut);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPickingHeaderState value)
        getPickingHeaderState,
    required TResult Function(PickingheaderFailedState value)
        pickingheaderFailedState,
  }) {
    return getPickingHeaderState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPickingHeaderState value)? getPickingHeaderState,
    TResult? Function(PickingheaderFailedState value)? pickingheaderFailedState,
  }) {
    return getPickingHeaderState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPickingHeaderState value)? getPickingHeaderState,
    TResult Function(PickingheaderFailedState value)? pickingheaderFailedState,
    required TResult orElse(),
  }) {
    if (getPickingHeaderState != null) {
      return getPickingHeaderState(this);
    }
    return orElse();
  }
}

abstract class GetPickingHeaderState implements PickingHeaderState {
  const factory GetPickingHeaderState(
          {required final List<PickingOutModel>? pickingOut}) =
      _$GetPickingHeaderStateImpl;

  List<PickingOutModel>? get pickingOut;
  @JsonKey(ignore: true)
  _$$GetPickingHeaderStateImplCopyWith<_$GetPickingHeaderStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PickingheaderFailedStateImplCopyWith<$Res> {
  factory _$$PickingheaderFailedStateImplCopyWith(
          _$PickingheaderFailedStateImpl value,
          $Res Function(_$PickingheaderFailedStateImpl) then) =
      __$$PickingheaderFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PickingheaderFailedStateImplCopyWithImpl<$Res>
    extends _$PickingHeaderStateCopyWithImpl<$Res,
        _$PickingheaderFailedStateImpl>
    implements _$$PickingheaderFailedStateImplCopyWith<$Res> {
  __$$PickingheaderFailedStateImplCopyWithImpl(
      _$PickingheaderFailedStateImpl _value,
      $Res Function(_$PickingheaderFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PickingheaderFailedStateImpl implements PickingheaderFailedState {
  const _$PickingheaderFailedStateImpl();

  @override
  String toString() {
    return 'PickingHeaderState.pickingheaderFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickingheaderFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PickingOutModel>? pickingOut)
        getPickingHeaderState,
    required TResult Function() pickingheaderFailedState,
  }) {
    return pickingheaderFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PickingOutModel>? pickingOut)? getPickingHeaderState,
    TResult? Function()? pickingheaderFailedState,
  }) {
    return pickingheaderFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PickingOutModel>? pickingOut)? getPickingHeaderState,
    TResult Function()? pickingheaderFailedState,
    required TResult orElse(),
  }) {
    if (pickingheaderFailedState != null) {
      return pickingheaderFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPickingHeaderState value)
        getPickingHeaderState,
    required TResult Function(PickingheaderFailedState value)
        pickingheaderFailedState,
  }) {
    return pickingheaderFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPickingHeaderState value)? getPickingHeaderState,
    TResult? Function(PickingheaderFailedState value)? pickingheaderFailedState,
  }) {
    return pickingheaderFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPickingHeaderState value)? getPickingHeaderState,
    TResult Function(PickingheaderFailedState value)? pickingheaderFailedState,
    required TResult orElse(),
  }) {
    if (pickingheaderFailedState != null) {
      return pickingheaderFailedState(this);
    }
    return orElse();
  }
}

abstract class PickingheaderFailedState implements PickingHeaderState {
  const factory PickingheaderFailedState() = _$PickingheaderFailedStateImpl;
}
