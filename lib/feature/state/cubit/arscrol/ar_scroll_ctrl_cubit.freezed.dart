// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ar_scroll_ctrl_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ArScrollCtrlState {
  bool get isOnTop => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isOnTop) scrollPositionState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isOnTop)? scrollPositionState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isOnTop)? scrollPositionState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScrollPositionState value) scrollPositionState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScrollPositionState value)? scrollPositionState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScrollPositionState value)? scrollPositionState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ArScrollCtrlState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArScrollCtrlStateCopyWith<ArScrollCtrlState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArScrollCtrlStateCopyWith<$Res> {
  factory $ArScrollCtrlStateCopyWith(
          ArScrollCtrlState value, $Res Function(ArScrollCtrlState) then) =
      _$ArScrollCtrlStateCopyWithImpl<$Res, ArScrollCtrlState>;
  @useResult
  $Res call({bool isOnTop});
}

/// @nodoc
class _$ArScrollCtrlStateCopyWithImpl<$Res, $Val extends ArScrollCtrlState>
    implements $ArScrollCtrlStateCopyWith<$Res> {
  _$ArScrollCtrlStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArScrollCtrlState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOnTop = null,
  }) {
    return _then(_value.copyWith(
      isOnTop: null == isOnTop
          ? _value.isOnTop
          : isOnTop // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScrollPositionStateImplCopyWith<$Res>
    implements $ArScrollCtrlStateCopyWith<$Res> {
  factory _$$ScrollPositionStateImplCopyWith(_$ScrollPositionStateImpl value,
          $Res Function(_$ScrollPositionStateImpl) then) =
      __$$ScrollPositionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isOnTop});
}

/// @nodoc
class __$$ScrollPositionStateImplCopyWithImpl<$Res>
    extends _$ArScrollCtrlStateCopyWithImpl<$Res, _$ScrollPositionStateImpl>
    implements _$$ScrollPositionStateImplCopyWith<$Res> {
  __$$ScrollPositionStateImplCopyWithImpl(_$ScrollPositionStateImpl _value,
      $Res Function(_$ScrollPositionStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ArScrollCtrlState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isOnTop = null,
  }) {
    return _then(_$ScrollPositionStateImpl(
      isOnTop: null == isOnTop
          ? _value.isOnTop
          : isOnTop // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ScrollPositionStateImpl implements ScrollPositionState {
  const _$ScrollPositionStateImpl({required this.isOnTop});

  @override
  final bool isOnTop;

  @override
  String toString() {
    return 'ArScrollCtrlState.scrollPositionState(isOnTop: $isOnTop)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScrollPositionStateImpl &&
            (identical(other.isOnTop, isOnTop) || other.isOnTop == isOnTop));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isOnTop);

  /// Create a copy of ArScrollCtrlState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ScrollPositionStateImplCopyWith<_$ScrollPositionStateImpl> get copyWith =>
      __$$ScrollPositionStateImplCopyWithImpl<_$ScrollPositionStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isOnTop) scrollPositionState,
  }) {
    return scrollPositionState(isOnTop);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isOnTop)? scrollPositionState,
  }) {
    return scrollPositionState?.call(isOnTop);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isOnTop)? scrollPositionState,
    required TResult orElse(),
  }) {
    if (scrollPositionState != null) {
      return scrollPositionState(isOnTop);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ScrollPositionState value) scrollPositionState,
  }) {
    return scrollPositionState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ScrollPositionState value)? scrollPositionState,
  }) {
    return scrollPositionState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ScrollPositionState value)? scrollPositionState,
    required TResult orElse(),
  }) {
    if (scrollPositionState != null) {
      return scrollPositionState(this);
    }
    return orElse();
  }
}

abstract class ScrollPositionState implements ArScrollCtrlState {
  const factory ScrollPositionState({required final bool isOnTop}) =
      _$ScrollPositionStateImpl;

  @override
  bool get isOnTop;

  /// Create a copy of ArScrollCtrlState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ScrollPositionStateImplCopyWith<_$ScrollPositionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
