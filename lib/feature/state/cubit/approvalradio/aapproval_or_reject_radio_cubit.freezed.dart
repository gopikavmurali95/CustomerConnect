// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'aapproval_or_reject_radio_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AapprovalOrRejectRadioState {
  bool get isApproved => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isApproved) approvalStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isApproved)? approvalStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isApproved)? approvalStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApprovalStatusState value) approvalStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApprovalStatusState value)? approvalStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApprovalStatusState value)? approvalStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of AapprovalOrRejectRadioState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AapprovalOrRejectRadioStateCopyWith<AapprovalOrRejectRadioState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AapprovalOrRejectRadioStateCopyWith<$Res> {
  factory $AapprovalOrRejectRadioStateCopyWith(
          AapprovalOrRejectRadioState value,
          $Res Function(AapprovalOrRejectRadioState) then) =
      _$AapprovalOrRejectRadioStateCopyWithImpl<$Res,
          AapprovalOrRejectRadioState>;
  @useResult
  $Res call({bool isApproved});
}

/// @nodoc
class _$AapprovalOrRejectRadioStateCopyWithImpl<$Res,
        $Val extends AapprovalOrRejectRadioState>
    implements $AapprovalOrRejectRadioStateCopyWith<$Res> {
  _$AapprovalOrRejectRadioStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AapprovalOrRejectRadioState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isApproved = null,
  }) {
    return _then(_value.copyWith(
      isApproved: null == isApproved
          ? _value.isApproved
          : isApproved // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApprovalStatusStateImplCopyWith<$Res>
    implements $AapprovalOrRejectRadioStateCopyWith<$Res> {
  factory _$$ApprovalStatusStateImplCopyWith(_$ApprovalStatusStateImpl value,
          $Res Function(_$ApprovalStatusStateImpl) then) =
      __$$ApprovalStatusStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isApproved});
}

/// @nodoc
class __$$ApprovalStatusStateImplCopyWithImpl<$Res>
    extends _$AapprovalOrRejectRadioStateCopyWithImpl<$Res,
        _$ApprovalStatusStateImpl>
    implements _$$ApprovalStatusStateImplCopyWith<$Res> {
  __$$ApprovalStatusStateImplCopyWithImpl(_$ApprovalStatusStateImpl _value,
      $Res Function(_$ApprovalStatusStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AapprovalOrRejectRadioState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isApproved = null,
  }) {
    return _then(_$ApprovalStatusStateImpl(
      isApproved: null == isApproved
          ? _value.isApproved
          : isApproved // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ApprovalStatusStateImpl implements ApprovalStatusState {
  const _$ApprovalStatusStateImpl({required this.isApproved});

  @override
  final bool isApproved;

  @override
  String toString() {
    return 'AapprovalOrRejectRadioState.approvalStatus(isApproved: $isApproved)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApprovalStatusStateImpl &&
            (identical(other.isApproved, isApproved) ||
                other.isApproved == isApproved));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isApproved);

  /// Create a copy of AapprovalOrRejectRadioState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApprovalStatusStateImplCopyWith<_$ApprovalStatusStateImpl> get copyWith =>
      __$$ApprovalStatusStateImplCopyWithImpl<_$ApprovalStatusStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isApproved) approvalStatus,
  }) {
    return approvalStatus(isApproved);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isApproved)? approvalStatus,
  }) {
    return approvalStatus?.call(isApproved);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isApproved)? approvalStatus,
    required TResult orElse(),
  }) {
    if (approvalStatus != null) {
      return approvalStatus(isApproved);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApprovalStatusState value) approvalStatus,
  }) {
    return approvalStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApprovalStatusState value)? approvalStatus,
  }) {
    return approvalStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApprovalStatusState value)? approvalStatus,
    required TResult orElse(),
  }) {
    if (approvalStatus != null) {
      return approvalStatus(this);
    }
    return orElse();
  }
}

abstract class ApprovalStatusState implements AapprovalOrRejectRadioState {
  const factory ApprovalStatusState({required final bool isApproved}) =
      _$ApprovalStatusStateImpl;

  @override
  bool get isApproved;

  /// Create a copy of AapprovalOrRejectRadioState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApprovalStatusStateImplCopyWith<_$ApprovalStatusStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
