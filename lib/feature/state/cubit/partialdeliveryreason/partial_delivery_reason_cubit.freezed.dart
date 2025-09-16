// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'partial_delivery_reason_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PartialDeliveryReasonState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PartialDeliveryReasonModel>? reasons)
        getpartialDeliveryReasonsState,
    required TResult Function() partialDeliveryReasonsFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PartialDeliveryReasonModel>? reasons)?
        getpartialDeliveryReasonsState,
    TResult? Function()? partialDeliveryReasonsFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PartialDeliveryReasonModel>? reasons)?
        getpartialDeliveryReasonsState,
    TResult Function()? partialDeliveryReasonsFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetpartialDeliveryReasonsState value)
        getpartialDeliveryReasonsState,
    required TResult Function(PartialDeliveryReasonsFailedState value)
        partialDeliveryReasonsFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetpartialDeliveryReasonsState value)?
        getpartialDeliveryReasonsState,
    TResult? Function(PartialDeliveryReasonsFailedState value)?
        partialDeliveryReasonsFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetpartialDeliveryReasonsState value)?
        getpartialDeliveryReasonsState,
    TResult Function(PartialDeliveryReasonsFailedState value)?
        partialDeliveryReasonsFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartialDeliveryReasonStateCopyWith<$Res> {
  factory $PartialDeliveryReasonStateCopyWith(PartialDeliveryReasonState value,
          $Res Function(PartialDeliveryReasonState) then) =
      _$PartialDeliveryReasonStateCopyWithImpl<$Res,
          PartialDeliveryReasonState>;
}

/// @nodoc
class _$PartialDeliveryReasonStateCopyWithImpl<$Res,
        $Val extends PartialDeliveryReasonState>
    implements $PartialDeliveryReasonStateCopyWith<$Res> {
  _$PartialDeliveryReasonStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PartialDeliveryReasonState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetpartialDeliveryReasonsStateImplCopyWith<$Res> {
  factory _$$GetpartialDeliveryReasonsStateImplCopyWith(
          _$GetpartialDeliveryReasonsStateImpl value,
          $Res Function(_$GetpartialDeliveryReasonsStateImpl) then) =
      __$$GetpartialDeliveryReasonsStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PartialDeliveryReasonModel>? reasons});
}

/// @nodoc
class __$$GetpartialDeliveryReasonsStateImplCopyWithImpl<$Res>
    extends _$PartialDeliveryReasonStateCopyWithImpl<$Res,
        _$GetpartialDeliveryReasonsStateImpl>
    implements _$$GetpartialDeliveryReasonsStateImplCopyWith<$Res> {
  __$$GetpartialDeliveryReasonsStateImplCopyWithImpl(
      _$GetpartialDeliveryReasonsStateImpl _value,
      $Res Function(_$GetpartialDeliveryReasonsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartialDeliveryReasonState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reasons = freezed,
  }) {
    return _then(_$GetpartialDeliveryReasonsStateImpl(
      reasons: freezed == reasons
          ? _value._reasons
          : reasons // ignore: cast_nullable_to_non_nullable
              as List<PartialDeliveryReasonModel>?,
    ));
  }
}

/// @nodoc

class _$GetpartialDeliveryReasonsStateImpl
    implements GetpartialDeliveryReasonsState {
  const _$GetpartialDeliveryReasonsStateImpl(
      {required final List<PartialDeliveryReasonModel>? reasons})
      : _reasons = reasons;

  final List<PartialDeliveryReasonModel>? _reasons;
  @override
  List<PartialDeliveryReasonModel>? get reasons {
    final value = _reasons;
    if (value == null) return null;
    if (_reasons is EqualUnmodifiableListView) return _reasons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PartialDeliveryReasonState.getpartialDeliveryReasonsState(reasons: $reasons)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetpartialDeliveryReasonsStateImpl &&
            const DeepCollectionEquality().equals(other._reasons, _reasons));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_reasons));

  /// Create a copy of PartialDeliveryReasonState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetpartialDeliveryReasonsStateImplCopyWith<
          _$GetpartialDeliveryReasonsStateImpl>
      get copyWith => __$$GetpartialDeliveryReasonsStateImplCopyWithImpl<
          _$GetpartialDeliveryReasonsStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PartialDeliveryReasonModel>? reasons)
        getpartialDeliveryReasonsState,
    required TResult Function() partialDeliveryReasonsFailedState,
  }) {
    return getpartialDeliveryReasonsState(reasons);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PartialDeliveryReasonModel>? reasons)?
        getpartialDeliveryReasonsState,
    TResult? Function()? partialDeliveryReasonsFailedState,
  }) {
    return getpartialDeliveryReasonsState?.call(reasons);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PartialDeliveryReasonModel>? reasons)?
        getpartialDeliveryReasonsState,
    TResult Function()? partialDeliveryReasonsFailedState,
    required TResult orElse(),
  }) {
    if (getpartialDeliveryReasonsState != null) {
      return getpartialDeliveryReasonsState(reasons);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetpartialDeliveryReasonsState value)
        getpartialDeliveryReasonsState,
    required TResult Function(PartialDeliveryReasonsFailedState value)
        partialDeliveryReasonsFailedState,
  }) {
    return getpartialDeliveryReasonsState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetpartialDeliveryReasonsState value)?
        getpartialDeliveryReasonsState,
    TResult? Function(PartialDeliveryReasonsFailedState value)?
        partialDeliveryReasonsFailedState,
  }) {
    return getpartialDeliveryReasonsState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetpartialDeliveryReasonsState value)?
        getpartialDeliveryReasonsState,
    TResult Function(PartialDeliveryReasonsFailedState value)?
        partialDeliveryReasonsFailedState,
    required TResult orElse(),
  }) {
    if (getpartialDeliveryReasonsState != null) {
      return getpartialDeliveryReasonsState(this);
    }
    return orElse();
  }
}

abstract class GetpartialDeliveryReasonsState
    implements PartialDeliveryReasonState {
  const factory GetpartialDeliveryReasonsState(
          {required final List<PartialDeliveryReasonModel>? reasons}) =
      _$GetpartialDeliveryReasonsStateImpl;

  List<PartialDeliveryReasonModel>? get reasons;

  /// Create a copy of PartialDeliveryReasonState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetpartialDeliveryReasonsStateImplCopyWith<
          _$GetpartialDeliveryReasonsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PartialDeliveryReasonsFailedStateImplCopyWith<$Res> {
  factory _$$PartialDeliveryReasonsFailedStateImplCopyWith(
          _$PartialDeliveryReasonsFailedStateImpl value,
          $Res Function(_$PartialDeliveryReasonsFailedStateImpl) then) =
      __$$PartialDeliveryReasonsFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PartialDeliveryReasonsFailedStateImplCopyWithImpl<$Res>
    extends _$PartialDeliveryReasonStateCopyWithImpl<$Res,
        _$PartialDeliveryReasonsFailedStateImpl>
    implements _$$PartialDeliveryReasonsFailedStateImplCopyWith<$Res> {
  __$$PartialDeliveryReasonsFailedStateImplCopyWithImpl(
      _$PartialDeliveryReasonsFailedStateImpl _value,
      $Res Function(_$PartialDeliveryReasonsFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartialDeliveryReasonState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PartialDeliveryReasonsFailedStateImpl
    implements PartialDeliveryReasonsFailedState {
  const _$PartialDeliveryReasonsFailedStateImpl();

  @override
  String toString() {
    return 'PartialDeliveryReasonState.partialDeliveryReasonsFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PartialDeliveryReasonsFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PartialDeliveryReasonModel>? reasons)
        getpartialDeliveryReasonsState,
    required TResult Function() partialDeliveryReasonsFailedState,
  }) {
    return partialDeliveryReasonsFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PartialDeliveryReasonModel>? reasons)?
        getpartialDeliveryReasonsState,
    TResult? Function()? partialDeliveryReasonsFailedState,
  }) {
    return partialDeliveryReasonsFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PartialDeliveryReasonModel>? reasons)?
        getpartialDeliveryReasonsState,
    TResult Function()? partialDeliveryReasonsFailedState,
    required TResult orElse(),
  }) {
    if (partialDeliveryReasonsFailedState != null) {
      return partialDeliveryReasonsFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetpartialDeliveryReasonsState value)
        getpartialDeliveryReasonsState,
    required TResult Function(PartialDeliveryReasonsFailedState value)
        partialDeliveryReasonsFailedState,
  }) {
    return partialDeliveryReasonsFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetpartialDeliveryReasonsState value)?
        getpartialDeliveryReasonsState,
    TResult? Function(PartialDeliveryReasonsFailedState value)?
        partialDeliveryReasonsFailedState,
  }) {
    return partialDeliveryReasonsFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetpartialDeliveryReasonsState value)?
        getpartialDeliveryReasonsState,
    TResult Function(PartialDeliveryReasonsFailedState value)?
        partialDeliveryReasonsFailedState,
    required TResult orElse(),
  }) {
    if (partialDeliveryReasonsFailedState != null) {
      return partialDeliveryReasonsFailedState(this);
    }
    return orElse();
  }
}

abstract class PartialDeliveryReasonsFailedState
    implements PartialDeliveryReasonState {
  const factory PartialDeliveryReasonsFailedState() =
      _$PartialDeliveryReasonsFailedStateImpl;
}
