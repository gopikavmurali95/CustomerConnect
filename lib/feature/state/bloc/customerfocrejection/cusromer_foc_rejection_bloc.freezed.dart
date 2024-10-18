// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cusromer_foc_rejection_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CusromerFocRejectionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerFocApprovalInModel rejectionIn)
        focRejectionEvent,
    required TResult Function() clearFocRejection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerFocApprovalInModel rejectionIn)?
        focRejectionEvent,
    TResult? Function()? clearFocRejection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerFocApprovalInModel rejectionIn)? focRejectionEvent,
    TResult Function()? clearFocRejection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FocRejectionEvent value) focRejectionEvent,
    required TResult Function(ClearFocRejection value) clearFocRejection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FocRejectionEvent value)? focRejectionEvent,
    TResult? Function(ClearFocRejection value)? clearFocRejection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FocRejectionEvent value)? focRejectionEvent,
    TResult Function(ClearFocRejection value)? clearFocRejection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CusromerFocRejectionEventCopyWith<$Res> {
  factory $CusromerFocRejectionEventCopyWith(CusromerFocRejectionEvent value,
          $Res Function(CusromerFocRejectionEvent) then) =
      _$CusromerFocRejectionEventCopyWithImpl<$Res, CusromerFocRejectionEvent>;
}

/// @nodoc
class _$CusromerFocRejectionEventCopyWithImpl<$Res,
        $Val extends CusromerFocRejectionEvent>
    implements $CusromerFocRejectionEventCopyWith<$Res> {
  _$CusromerFocRejectionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FocRejectionEventImplCopyWith<$Res> {
  factory _$$FocRejectionEventImplCopyWith(_$FocRejectionEventImpl value,
          $Res Function(_$FocRejectionEventImpl) then) =
      __$$FocRejectionEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CustomerFocApprovalInModel rejectionIn});
}

/// @nodoc
class __$$FocRejectionEventImplCopyWithImpl<$Res>
    extends _$CusromerFocRejectionEventCopyWithImpl<$Res,
        _$FocRejectionEventImpl>
    implements _$$FocRejectionEventImplCopyWith<$Res> {
  __$$FocRejectionEventImplCopyWithImpl(_$FocRejectionEventImpl _value,
      $Res Function(_$FocRejectionEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rejectionIn = null,
  }) {
    return _then(_$FocRejectionEventImpl(
      rejectionIn: null == rejectionIn
          ? _value.rejectionIn
          : rejectionIn // ignore: cast_nullable_to_non_nullable
              as CustomerFocApprovalInModel,
    ));
  }
}

/// @nodoc

class _$FocRejectionEventImpl implements FocRejectionEvent {
  const _$FocRejectionEventImpl({required this.rejectionIn});

  @override
  final CustomerFocApprovalInModel rejectionIn;

  @override
  String toString() {
    return 'CusromerFocRejectionEvent.focRejectionEvent(rejectionIn: $rejectionIn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FocRejectionEventImpl &&
            (identical(other.rejectionIn, rejectionIn) ||
                other.rejectionIn == rejectionIn));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rejectionIn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FocRejectionEventImplCopyWith<_$FocRejectionEventImpl> get copyWith =>
      __$$FocRejectionEventImplCopyWithImpl<_$FocRejectionEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerFocApprovalInModel rejectionIn)
        focRejectionEvent,
    required TResult Function() clearFocRejection,
  }) {
    return focRejectionEvent(rejectionIn);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerFocApprovalInModel rejectionIn)?
        focRejectionEvent,
    TResult? Function()? clearFocRejection,
  }) {
    return focRejectionEvent?.call(rejectionIn);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerFocApprovalInModel rejectionIn)? focRejectionEvent,
    TResult Function()? clearFocRejection,
    required TResult orElse(),
  }) {
    if (focRejectionEvent != null) {
      return focRejectionEvent(rejectionIn);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FocRejectionEvent value) focRejectionEvent,
    required TResult Function(ClearFocRejection value) clearFocRejection,
  }) {
    return focRejectionEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FocRejectionEvent value)? focRejectionEvent,
    TResult? Function(ClearFocRejection value)? clearFocRejection,
  }) {
    return focRejectionEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FocRejectionEvent value)? focRejectionEvent,
    TResult Function(ClearFocRejection value)? clearFocRejection,
    required TResult orElse(),
  }) {
    if (focRejectionEvent != null) {
      return focRejectionEvent(this);
    }
    return orElse();
  }
}

abstract class FocRejectionEvent implements CusromerFocRejectionEvent {
  const factory FocRejectionEvent(
          {required final CustomerFocApprovalInModel rejectionIn}) =
      _$FocRejectionEventImpl;

  CustomerFocApprovalInModel get rejectionIn;
  @JsonKey(ignore: true)
  _$$FocRejectionEventImplCopyWith<_$FocRejectionEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearFocRejectionImplCopyWith<$Res> {
  factory _$$ClearFocRejectionImplCopyWith(_$ClearFocRejectionImpl value,
          $Res Function(_$ClearFocRejectionImpl) then) =
      __$$ClearFocRejectionImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearFocRejectionImplCopyWithImpl<$Res>
    extends _$CusromerFocRejectionEventCopyWithImpl<$Res,
        _$ClearFocRejectionImpl>
    implements _$$ClearFocRejectionImplCopyWith<$Res> {
  __$$ClearFocRejectionImplCopyWithImpl(_$ClearFocRejectionImpl _value,
      $Res Function(_$ClearFocRejectionImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearFocRejectionImpl implements ClearFocRejection {
  const _$ClearFocRejectionImpl();

  @override
  String toString() {
    return 'CusromerFocRejectionEvent.clearFocRejection()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearFocRejectionImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerFocApprovalInModel rejectionIn)
        focRejectionEvent,
    required TResult Function() clearFocRejection,
  }) {
    return clearFocRejection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerFocApprovalInModel rejectionIn)?
        focRejectionEvent,
    TResult? Function()? clearFocRejection,
  }) {
    return clearFocRejection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerFocApprovalInModel rejectionIn)? focRejectionEvent,
    TResult Function()? clearFocRejection,
    required TResult orElse(),
  }) {
    if (clearFocRejection != null) {
      return clearFocRejection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FocRejectionEvent value) focRejectionEvent,
    required TResult Function(ClearFocRejection value) clearFocRejection,
  }) {
    return clearFocRejection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FocRejectionEvent value)? focRejectionEvent,
    TResult? Function(ClearFocRejection value)? clearFocRejection,
  }) {
    return clearFocRejection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FocRejectionEvent value)? focRejectionEvent,
    TResult Function(ClearFocRejection value)? clearFocRejection,
    required TResult orElse(),
  }) {
    if (clearFocRejection != null) {
      return clearFocRejection(this);
    }
    return orElse();
  }
}

abstract class ClearFocRejection implements CusromerFocRejectionEvent {
  const factory ClearFocRejection() = _$ClearFocRejectionImpl;
}

/// @nodoc
mixin _$CusromerFocRejectionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerFocApproveAndRejectModel? reject)
        focRejectionState,
    required TResult Function() focFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerFocApproveAndRejectModel? reject)?
        focRejectionState,
    TResult? Function()? focFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerFocApproveAndRejectModel? reject)?
        focRejectionState,
    TResult Function()? focFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FocRejectionState value) focRejectionState,
    required TResult Function(FocRejectionFailedState value) focFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FocRejectionState value)? focRejectionState,
    TResult? Function(FocRejectionFailedState value)? focFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FocRejectionState value)? focRejectionState,
    TResult Function(FocRejectionFailedState value)? focFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CusromerFocRejectionStateCopyWith<$Res> {
  factory $CusromerFocRejectionStateCopyWith(CusromerFocRejectionState value,
          $Res Function(CusromerFocRejectionState) then) =
      _$CusromerFocRejectionStateCopyWithImpl<$Res, CusromerFocRejectionState>;
}

/// @nodoc
class _$CusromerFocRejectionStateCopyWithImpl<$Res,
        $Val extends CusromerFocRejectionState>
    implements $CusromerFocRejectionStateCopyWith<$Res> {
  _$CusromerFocRejectionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FocRejectionStateImplCopyWith<$Res> {
  factory _$$FocRejectionStateImplCopyWith(_$FocRejectionStateImpl value,
          $Res Function(_$FocRejectionStateImpl) then) =
      __$$FocRejectionStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CustomerFocApproveAndRejectModel? reject});
}

/// @nodoc
class __$$FocRejectionStateImplCopyWithImpl<$Res>
    extends _$CusromerFocRejectionStateCopyWithImpl<$Res,
        _$FocRejectionStateImpl>
    implements _$$FocRejectionStateImplCopyWith<$Res> {
  __$$FocRejectionStateImplCopyWithImpl(_$FocRejectionStateImpl _value,
      $Res Function(_$FocRejectionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reject = freezed,
  }) {
    return _then(_$FocRejectionStateImpl(
      reject: freezed == reject
          ? _value.reject
          : reject // ignore: cast_nullable_to_non_nullable
              as CustomerFocApproveAndRejectModel?,
    ));
  }
}

/// @nodoc

class _$FocRejectionStateImpl implements FocRejectionState {
  const _$FocRejectionStateImpl({required this.reject});

  @override
  final CustomerFocApproveAndRejectModel? reject;

  @override
  String toString() {
    return 'CusromerFocRejectionState.focRejectionState(reject: $reject)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FocRejectionStateImpl &&
            (identical(other.reject, reject) || other.reject == reject));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reject);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FocRejectionStateImplCopyWith<_$FocRejectionStateImpl> get copyWith =>
      __$$FocRejectionStateImplCopyWithImpl<_$FocRejectionStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerFocApproveAndRejectModel? reject)
        focRejectionState,
    required TResult Function() focFailedState,
  }) {
    return focRejectionState(reject);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerFocApproveAndRejectModel? reject)?
        focRejectionState,
    TResult? Function()? focFailedState,
  }) {
    return focRejectionState?.call(reject);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerFocApproveAndRejectModel? reject)?
        focRejectionState,
    TResult Function()? focFailedState,
    required TResult orElse(),
  }) {
    if (focRejectionState != null) {
      return focRejectionState(reject);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FocRejectionState value) focRejectionState,
    required TResult Function(FocRejectionFailedState value) focFailedState,
  }) {
    return focRejectionState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FocRejectionState value)? focRejectionState,
    TResult? Function(FocRejectionFailedState value)? focFailedState,
  }) {
    return focRejectionState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FocRejectionState value)? focRejectionState,
    TResult Function(FocRejectionFailedState value)? focFailedState,
    required TResult orElse(),
  }) {
    if (focRejectionState != null) {
      return focRejectionState(this);
    }
    return orElse();
  }
}

abstract class FocRejectionState implements CusromerFocRejectionState {
  const factory FocRejectionState(
          {required final CustomerFocApproveAndRejectModel? reject}) =
      _$FocRejectionStateImpl;

  CustomerFocApproveAndRejectModel? get reject;
  @JsonKey(ignore: true)
  _$$FocRejectionStateImplCopyWith<_$FocRejectionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FocRejectionFailedStateImplCopyWith<$Res> {
  factory _$$FocRejectionFailedStateImplCopyWith(
          _$FocRejectionFailedStateImpl value,
          $Res Function(_$FocRejectionFailedStateImpl) then) =
      __$$FocRejectionFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FocRejectionFailedStateImplCopyWithImpl<$Res>
    extends _$CusromerFocRejectionStateCopyWithImpl<$Res,
        _$FocRejectionFailedStateImpl>
    implements _$$FocRejectionFailedStateImplCopyWith<$Res> {
  __$$FocRejectionFailedStateImplCopyWithImpl(
      _$FocRejectionFailedStateImpl _value,
      $Res Function(_$FocRejectionFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FocRejectionFailedStateImpl implements FocRejectionFailedState {
  const _$FocRejectionFailedStateImpl();

  @override
  String toString() {
    return 'CusromerFocRejectionState.focFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FocRejectionFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerFocApproveAndRejectModel? reject)
        focRejectionState,
    required TResult Function() focFailedState,
  }) {
    return focFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerFocApproveAndRejectModel? reject)?
        focRejectionState,
    TResult? Function()? focFailedState,
  }) {
    return focFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerFocApproveAndRejectModel? reject)?
        focRejectionState,
    TResult Function()? focFailedState,
    required TResult orElse(),
  }) {
    if (focFailedState != null) {
      return focFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FocRejectionState value) focRejectionState,
    required TResult Function(FocRejectionFailedState value) focFailedState,
  }) {
    return focFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FocRejectionState value)? focRejectionState,
    TResult? Function(FocRejectionFailedState value)? focFailedState,
  }) {
    return focFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FocRejectionState value)? focRejectionState,
    TResult Function(FocRejectionFailedState value)? focFailedState,
    required TResult orElse(),
  }) {
    if (focFailedState != null) {
      return focFailedState(this);
    }
    return orElse();
  }
}

abstract class FocRejectionFailedState implements CusromerFocRejectionState {
  const factory FocRejectionFailedState() = _$FocRejectionFailedStateImpl;
}
