// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_download_percentage_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UpdateDownloadPercentageState {
  int get percentage => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int percentage) downloadPercentageState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int percentage)? downloadPercentageState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int percentage)? downloadPercentageState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DownloadPercentageState value)
        downloadPercentageState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DownloadPercentageState value)? downloadPercentageState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DownloadPercentageState value)? downloadPercentageState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of UpdateDownloadPercentageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UpdateDownloadPercentageStateCopyWith<UpdateDownloadPercentageState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateDownloadPercentageStateCopyWith<$Res> {
  factory $UpdateDownloadPercentageStateCopyWith(
          UpdateDownloadPercentageState value,
          $Res Function(UpdateDownloadPercentageState) then) =
      _$UpdateDownloadPercentageStateCopyWithImpl<$Res,
          UpdateDownloadPercentageState>;
  @useResult
  $Res call({int percentage});
}

/// @nodoc
class _$UpdateDownloadPercentageStateCopyWithImpl<$Res,
        $Val extends UpdateDownloadPercentageState>
    implements $UpdateDownloadPercentageStateCopyWith<$Res> {
  _$UpdateDownloadPercentageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UpdateDownloadPercentageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? percentage = null,
  }) {
    return _then(_value.copyWith(
      percentage: null == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DownloadPercentageStateImplCopyWith<$Res>
    implements $UpdateDownloadPercentageStateCopyWith<$Res> {
  factory _$$DownloadPercentageStateImplCopyWith(
          _$DownloadPercentageStateImpl value,
          $Res Function(_$DownloadPercentageStateImpl) then) =
      __$$DownloadPercentageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int percentage});
}

/// @nodoc
class __$$DownloadPercentageStateImplCopyWithImpl<$Res>
    extends _$UpdateDownloadPercentageStateCopyWithImpl<$Res,
        _$DownloadPercentageStateImpl>
    implements _$$DownloadPercentageStateImplCopyWith<$Res> {
  __$$DownloadPercentageStateImplCopyWithImpl(
      _$DownloadPercentageStateImpl _value,
      $Res Function(_$DownloadPercentageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UpdateDownloadPercentageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? percentage = null,
  }) {
    return _then(_$DownloadPercentageStateImpl(
      percentage: null == percentage
          ? _value.percentage
          : percentage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DownloadPercentageStateImpl implements DownloadPercentageState {
  const _$DownloadPercentageStateImpl({required this.percentage});

  @override
  final int percentage;

  @override
  String toString() {
    return 'UpdateDownloadPercentageState.downloadPercentageState(percentage: $percentage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadPercentageStateImpl &&
            (identical(other.percentage, percentage) ||
                other.percentage == percentage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, percentage);

  /// Create a copy of UpdateDownloadPercentageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadPercentageStateImplCopyWith<_$DownloadPercentageStateImpl>
      get copyWith => __$$DownloadPercentageStateImplCopyWithImpl<
          _$DownloadPercentageStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int percentage) downloadPercentageState,
  }) {
    return downloadPercentageState(percentage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int percentage)? downloadPercentageState,
  }) {
    return downloadPercentageState?.call(percentage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int percentage)? downloadPercentageState,
    required TResult orElse(),
  }) {
    if (downloadPercentageState != null) {
      return downloadPercentageState(percentage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DownloadPercentageState value)
        downloadPercentageState,
  }) {
    return downloadPercentageState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DownloadPercentageState value)? downloadPercentageState,
  }) {
    return downloadPercentageState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DownloadPercentageState value)? downloadPercentageState,
    required TResult orElse(),
  }) {
    if (downloadPercentageState != null) {
      return downloadPercentageState(this);
    }
    return orElse();
  }
}

abstract class DownloadPercentageState
    implements UpdateDownloadPercentageState {
  const factory DownloadPercentageState({required final int percentage}) =
      _$DownloadPercentageStateImpl;

  @override
  int get percentage;

  /// Create a copy of UpdateDownloadPercentageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DownloadPercentageStateImplCopyWith<_$DownloadPercentageStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
