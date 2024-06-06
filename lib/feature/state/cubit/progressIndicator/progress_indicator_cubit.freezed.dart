// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'progress_indicator_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProgressIndicatorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) showProgresIndicatorState,
    required TResult Function() removeProgressIndicatorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? showProgresIndicatorState,
    TResult? Function()? removeProgressIndicatorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? showProgresIndicatorState,
    TResult Function()? removeProgressIndicatorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowProgresIndicatorState value)
        showProgresIndicatorState,
    required TResult Function(RemoveProgressIndicatorState value)
        removeProgressIndicatorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowProgresIndicatorState value)?
        showProgresIndicatorState,
    TResult? Function(RemoveProgressIndicatorState value)?
        removeProgressIndicatorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowProgresIndicatorState value)?
        showProgresIndicatorState,
    TResult Function(RemoveProgressIndicatorState value)?
        removeProgressIndicatorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgressIndicatorStateCopyWith<$Res> {
  factory $ProgressIndicatorStateCopyWith(ProgressIndicatorState value,
          $Res Function(ProgressIndicatorState) then) =
      _$ProgressIndicatorStateCopyWithImpl<$Res, ProgressIndicatorState>;
}

/// @nodoc
class _$ProgressIndicatorStateCopyWithImpl<$Res,
        $Val extends ProgressIndicatorState>
    implements $ProgressIndicatorStateCopyWith<$Res> {
  _$ProgressIndicatorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ShowProgresIndicatorStateImplCopyWith<$Res> {
  factory _$$ShowProgresIndicatorStateImplCopyWith(
          _$ShowProgresIndicatorStateImpl value,
          $Res Function(_$ShowProgresIndicatorStateImpl) then) =
      __$$ShowProgresIndicatorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isLoading});
}

/// @nodoc
class __$$ShowProgresIndicatorStateImplCopyWithImpl<$Res>
    extends _$ProgressIndicatorStateCopyWithImpl<$Res,
        _$ShowProgresIndicatorStateImpl>
    implements _$$ShowProgresIndicatorStateImplCopyWith<$Res> {
  __$$ShowProgresIndicatorStateImplCopyWithImpl(
      _$ShowProgresIndicatorStateImpl _value,
      $Res Function(_$ShowProgresIndicatorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
  }) {
    return _then(_$ShowProgresIndicatorStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ShowProgresIndicatorStateImpl implements ShowProgresIndicatorState {
  const _$ShowProgresIndicatorStateImpl({required this.isLoading});

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'ProgressIndicatorState.showProgresIndicatorState(isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowProgresIndicatorStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowProgresIndicatorStateImplCopyWith<_$ShowProgresIndicatorStateImpl>
      get copyWith => __$$ShowProgresIndicatorStateImplCopyWithImpl<
          _$ShowProgresIndicatorStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) showProgresIndicatorState,
    required TResult Function() removeProgressIndicatorState,
  }) {
    return showProgresIndicatorState(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? showProgresIndicatorState,
    TResult? Function()? removeProgressIndicatorState,
  }) {
    return showProgresIndicatorState?.call(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? showProgresIndicatorState,
    TResult Function()? removeProgressIndicatorState,
    required TResult orElse(),
  }) {
    if (showProgresIndicatorState != null) {
      return showProgresIndicatorState(isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowProgresIndicatorState value)
        showProgresIndicatorState,
    required TResult Function(RemoveProgressIndicatorState value)
        removeProgressIndicatorState,
  }) {
    return showProgresIndicatorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowProgresIndicatorState value)?
        showProgresIndicatorState,
    TResult? Function(RemoveProgressIndicatorState value)?
        removeProgressIndicatorState,
  }) {
    return showProgresIndicatorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowProgresIndicatorState value)?
        showProgresIndicatorState,
    TResult Function(RemoveProgressIndicatorState value)?
        removeProgressIndicatorState,
    required TResult orElse(),
  }) {
    if (showProgresIndicatorState != null) {
      return showProgresIndicatorState(this);
    }
    return orElse();
  }
}

abstract class ShowProgresIndicatorState implements ProgressIndicatorState {
  const factory ShowProgresIndicatorState({required final bool isLoading}) =
      _$ShowProgresIndicatorStateImpl;

  bool get isLoading;
  @JsonKey(ignore: true)
  _$$ShowProgresIndicatorStateImplCopyWith<_$ShowProgresIndicatorStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveProgressIndicatorStateImplCopyWith<$Res> {
  factory _$$RemoveProgressIndicatorStateImplCopyWith(
          _$RemoveProgressIndicatorStateImpl value,
          $Res Function(_$RemoveProgressIndicatorStateImpl) then) =
      __$$RemoveProgressIndicatorStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoveProgressIndicatorStateImplCopyWithImpl<$Res>
    extends _$ProgressIndicatorStateCopyWithImpl<$Res,
        _$RemoveProgressIndicatorStateImpl>
    implements _$$RemoveProgressIndicatorStateImplCopyWith<$Res> {
  __$$RemoveProgressIndicatorStateImplCopyWithImpl(
      _$RemoveProgressIndicatorStateImpl _value,
      $Res Function(_$RemoveProgressIndicatorStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RemoveProgressIndicatorStateImpl
    implements RemoveProgressIndicatorState {
  const _$RemoveProgressIndicatorStateImpl();

  @override
  String toString() {
    return 'ProgressIndicatorState.removeProgressIndicatorState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveProgressIndicatorStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) showProgresIndicatorState,
    required TResult Function() removeProgressIndicatorState,
  }) {
    return removeProgressIndicatorState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading)? showProgresIndicatorState,
    TResult? Function()? removeProgressIndicatorState,
  }) {
    return removeProgressIndicatorState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? showProgresIndicatorState,
    TResult Function()? removeProgressIndicatorState,
    required TResult orElse(),
  }) {
    if (removeProgressIndicatorState != null) {
      return removeProgressIndicatorState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShowProgresIndicatorState value)
        showProgresIndicatorState,
    required TResult Function(RemoveProgressIndicatorState value)
        removeProgressIndicatorState,
  }) {
    return removeProgressIndicatorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShowProgresIndicatorState value)?
        showProgresIndicatorState,
    TResult? Function(RemoveProgressIndicatorState value)?
        removeProgressIndicatorState,
  }) {
    return removeProgressIndicatorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShowProgresIndicatorState value)?
        showProgresIndicatorState,
    TResult Function(RemoveProgressIndicatorState value)?
        removeProgressIndicatorState,
    required TResult orElse(),
  }) {
    if (removeProgressIndicatorState != null) {
      return removeProgressIndicatorState(this);
    }
    return orElse();
  }
}

abstract class RemoveProgressIndicatorState implements ProgressIndicatorState {
  const factory RemoveProgressIndicatorState() =
      _$RemoveProgressIndicatorStateImpl;
}
