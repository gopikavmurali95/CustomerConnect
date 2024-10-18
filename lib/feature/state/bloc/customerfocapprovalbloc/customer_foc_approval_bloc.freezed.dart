// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_foc_approval_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CustomerFocApprovalEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerFocApprovalInModel approveInpara)
        customerFocApprovalEvent,
    required TResult Function() clearCustomerFocApproval,
    required TResult Function() customerFocLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerFocApprovalInModel approveInpara)?
        customerFocApprovalEvent,
    TResult? Function()? clearCustomerFocApproval,
    TResult? Function()? customerFocLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerFocApprovalInModel approveInpara)?
        customerFocApprovalEvent,
    TResult Function()? clearCustomerFocApproval,
    TResult Function()? customerFocLoadingEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomerFocApprovingEvent value)
        customerFocApprovalEvent,
    required TResult Function(ClearCustomerFocApproval value)
        clearCustomerFocApproval,
    required TResult Function(CustomerFocLoadingEvent value)
        customerFocLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CustomerFocApprovingEvent value)?
        customerFocApprovalEvent,
    TResult? Function(ClearCustomerFocApproval value)? clearCustomerFocApproval,
    TResult? Function(CustomerFocLoadingEvent value)? customerFocLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomerFocApprovingEvent value)? customerFocApprovalEvent,
    TResult Function(ClearCustomerFocApproval value)? clearCustomerFocApproval,
    TResult Function(CustomerFocLoadingEvent value)? customerFocLoadingEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerFocApprovalEventCopyWith<$Res> {
  factory $CustomerFocApprovalEventCopyWith(CustomerFocApprovalEvent value,
          $Res Function(CustomerFocApprovalEvent) then) =
      _$CustomerFocApprovalEventCopyWithImpl<$Res, CustomerFocApprovalEvent>;
}

/// @nodoc
class _$CustomerFocApprovalEventCopyWithImpl<$Res,
        $Val extends CustomerFocApprovalEvent>
    implements $CustomerFocApprovalEventCopyWith<$Res> {
  _$CustomerFocApprovalEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CustomerFocApprovingEventImplCopyWith<$Res> {
  factory _$$CustomerFocApprovingEventImplCopyWith(
          _$CustomerFocApprovingEventImpl value,
          $Res Function(_$CustomerFocApprovingEventImpl) then) =
      __$$CustomerFocApprovingEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CustomerFocApprovalInModel approveInpara});
}

/// @nodoc
class __$$CustomerFocApprovingEventImplCopyWithImpl<$Res>
    extends _$CustomerFocApprovalEventCopyWithImpl<$Res,
        _$CustomerFocApprovingEventImpl>
    implements _$$CustomerFocApprovingEventImplCopyWith<$Res> {
  __$$CustomerFocApprovingEventImplCopyWithImpl(
      _$CustomerFocApprovingEventImpl _value,
      $Res Function(_$CustomerFocApprovingEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? approveInpara = null,
  }) {
    return _then(_$CustomerFocApprovingEventImpl(
      approveInpara: null == approveInpara
          ? _value.approveInpara
          : approveInpara // ignore: cast_nullable_to_non_nullable
              as CustomerFocApprovalInModel,
    ));
  }
}

/// @nodoc

class _$CustomerFocApprovingEventImpl implements CustomerFocApprovingEvent {
  const _$CustomerFocApprovingEventImpl({required this.approveInpara});

  @override
  final CustomerFocApprovalInModel approveInpara;

  @override
  String toString() {
    return 'CustomerFocApprovalEvent.customerFocApprovalEvent(approveInpara: $approveInpara)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerFocApprovingEventImpl &&
            (identical(other.approveInpara, approveInpara) ||
                other.approveInpara == approveInpara));
  }

  @override
  int get hashCode => Object.hash(runtimeType, approveInpara);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerFocApprovingEventImplCopyWith<_$CustomerFocApprovingEventImpl>
      get copyWith => __$$CustomerFocApprovingEventImplCopyWithImpl<
          _$CustomerFocApprovingEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerFocApprovalInModel approveInpara)
        customerFocApprovalEvent,
    required TResult Function() clearCustomerFocApproval,
    required TResult Function() customerFocLoadingEvent,
  }) {
    return customerFocApprovalEvent(approveInpara);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerFocApprovalInModel approveInpara)?
        customerFocApprovalEvent,
    TResult? Function()? clearCustomerFocApproval,
    TResult? Function()? customerFocLoadingEvent,
  }) {
    return customerFocApprovalEvent?.call(approveInpara);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerFocApprovalInModel approveInpara)?
        customerFocApprovalEvent,
    TResult Function()? clearCustomerFocApproval,
    TResult Function()? customerFocLoadingEvent,
    required TResult orElse(),
  }) {
    if (customerFocApprovalEvent != null) {
      return customerFocApprovalEvent(approveInpara);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomerFocApprovingEvent value)
        customerFocApprovalEvent,
    required TResult Function(ClearCustomerFocApproval value)
        clearCustomerFocApproval,
    required TResult Function(CustomerFocLoadingEvent value)
        customerFocLoadingEvent,
  }) {
    return customerFocApprovalEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CustomerFocApprovingEvent value)?
        customerFocApprovalEvent,
    TResult? Function(ClearCustomerFocApproval value)? clearCustomerFocApproval,
    TResult? Function(CustomerFocLoadingEvent value)? customerFocLoadingEvent,
  }) {
    return customerFocApprovalEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomerFocApprovingEvent value)? customerFocApprovalEvent,
    TResult Function(ClearCustomerFocApproval value)? clearCustomerFocApproval,
    TResult Function(CustomerFocLoadingEvent value)? customerFocLoadingEvent,
    required TResult orElse(),
  }) {
    if (customerFocApprovalEvent != null) {
      return customerFocApprovalEvent(this);
    }
    return orElse();
  }
}

abstract class CustomerFocApprovingEvent implements CustomerFocApprovalEvent {
  const factory CustomerFocApprovingEvent(
          {required final CustomerFocApprovalInModel approveInpara}) =
      _$CustomerFocApprovingEventImpl;

  CustomerFocApprovalInModel get approveInpara;
  @JsonKey(ignore: true)
  _$$CustomerFocApprovingEventImplCopyWith<_$CustomerFocApprovingEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearCustomerFocApprovalImplCopyWith<$Res> {
  factory _$$ClearCustomerFocApprovalImplCopyWith(
          _$ClearCustomerFocApprovalImpl value,
          $Res Function(_$ClearCustomerFocApprovalImpl) then) =
      __$$ClearCustomerFocApprovalImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearCustomerFocApprovalImplCopyWithImpl<$Res>
    extends _$CustomerFocApprovalEventCopyWithImpl<$Res,
        _$ClearCustomerFocApprovalImpl>
    implements _$$ClearCustomerFocApprovalImplCopyWith<$Res> {
  __$$ClearCustomerFocApprovalImplCopyWithImpl(
      _$ClearCustomerFocApprovalImpl _value,
      $Res Function(_$ClearCustomerFocApprovalImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearCustomerFocApprovalImpl implements ClearCustomerFocApproval {
  const _$ClearCustomerFocApprovalImpl();

  @override
  String toString() {
    return 'CustomerFocApprovalEvent.clearCustomerFocApproval()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearCustomerFocApprovalImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerFocApprovalInModel approveInpara)
        customerFocApprovalEvent,
    required TResult Function() clearCustomerFocApproval,
    required TResult Function() customerFocLoadingEvent,
  }) {
    return clearCustomerFocApproval();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerFocApprovalInModel approveInpara)?
        customerFocApprovalEvent,
    TResult? Function()? clearCustomerFocApproval,
    TResult? Function()? customerFocLoadingEvent,
  }) {
    return clearCustomerFocApproval?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerFocApprovalInModel approveInpara)?
        customerFocApprovalEvent,
    TResult Function()? clearCustomerFocApproval,
    TResult Function()? customerFocLoadingEvent,
    required TResult orElse(),
  }) {
    if (clearCustomerFocApproval != null) {
      return clearCustomerFocApproval();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomerFocApprovingEvent value)
        customerFocApprovalEvent,
    required TResult Function(ClearCustomerFocApproval value)
        clearCustomerFocApproval,
    required TResult Function(CustomerFocLoadingEvent value)
        customerFocLoadingEvent,
  }) {
    return clearCustomerFocApproval(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CustomerFocApprovingEvent value)?
        customerFocApprovalEvent,
    TResult? Function(ClearCustomerFocApproval value)? clearCustomerFocApproval,
    TResult? Function(CustomerFocLoadingEvent value)? customerFocLoadingEvent,
  }) {
    return clearCustomerFocApproval?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomerFocApprovingEvent value)? customerFocApprovalEvent,
    TResult Function(ClearCustomerFocApproval value)? clearCustomerFocApproval,
    TResult Function(CustomerFocLoadingEvent value)? customerFocLoadingEvent,
    required TResult orElse(),
  }) {
    if (clearCustomerFocApproval != null) {
      return clearCustomerFocApproval(this);
    }
    return orElse();
  }
}

abstract class ClearCustomerFocApproval implements CustomerFocApprovalEvent {
  const factory ClearCustomerFocApproval() = _$ClearCustomerFocApprovalImpl;
}

/// @nodoc
abstract class _$$CustomerFocLoadingEventImplCopyWith<$Res> {
  factory _$$CustomerFocLoadingEventImplCopyWith(
          _$CustomerFocLoadingEventImpl value,
          $Res Function(_$CustomerFocLoadingEventImpl) then) =
      __$$CustomerFocLoadingEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CustomerFocLoadingEventImplCopyWithImpl<$Res>
    extends _$CustomerFocApprovalEventCopyWithImpl<$Res,
        _$CustomerFocLoadingEventImpl>
    implements _$$CustomerFocLoadingEventImplCopyWith<$Res> {
  __$$CustomerFocLoadingEventImplCopyWithImpl(
      _$CustomerFocLoadingEventImpl _value,
      $Res Function(_$CustomerFocLoadingEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CustomerFocLoadingEventImpl implements CustomerFocLoadingEvent {
  const _$CustomerFocLoadingEventImpl();

  @override
  String toString() {
    return 'CustomerFocApprovalEvent.customerFocLoadingEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerFocLoadingEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerFocApprovalInModel approveInpara)
        customerFocApprovalEvent,
    required TResult Function() clearCustomerFocApproval,
    required TResult Function() customerFocLoadingEvent,
  }) {
    return customerFocLoadingEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerFocApprovalInModel approveInpara)?
        customerFocApprovalEvent,
    TResult? Function()? clearCustomerFocApproval,
    TResult? Function()? customerFocLoadingEvent,
  }) {
    return customerFocLoadingEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerFocApprovalInModel approveInpara)?
        customerFocApprovalEvent,
    TResult Function()? clearCustomerFocApproval,
    TResult Function()? customerFocLoadingEvent,
    required TResult orElse(),
  }) {
    if (customerFocLoadingEvent != null) {
      return customerFocLoadingEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomerFocApprovingEvent value)
        customerFocApprovalEvent,
    required TResult Function(ClearCustomerFocApproval value)
        clearCustomerFocApproval,
    required TResult Function(CustomerFocLoadingEvent value)
        customerFocLoadingEvent,
  }) {
    return customerFocLoadingEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CustomerFocApprovingEvent value)?
        customerFocApprovalEvent,
    TResult? Function(ClearCustomerFocApproval value)? clearCustomerFocApproval,
    TResult? Function(CustomerFocLoadingEvent value)? customerFocLoadingEvent,
  }) {
    return customerFocLoadingEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomerFocApprovingEvent value)? customerFocApprovalEvent,
    TResult Function(ClearCustomerFocApproval value)? clearCustomerFocApproval,
    TResult Function(CustomerFocLoadingEvent value)? customerFocLoadingEvent,
    required TResult orElse(),
  }) {
    if (customerFocLoadingEvent != null) {
      return customerFocLoadingEvent(this);
    }
    return orElse();
  }
}

abstract class CustomerFocLoadingEvent implements CustomerFocApprovalEvent {
  const factory CustomerFocLoadingEvent() = _$CustomerFocLoadingEventImpl;
}

/// @nodoc
mixin _$CustomerFocApprovalState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerFocApproveAndRejectModel? approve)
        customerFocApproval,
    required TResult Function() customerFocApprovalFailed,
    required TResult Function() customerFocApprovalLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerFocApproveAndRejectModel? approve)?
        customerFocApproval,
    TResult? Function()? customerFocApprovalFailed,
    TResult? Function()? customerFocApprovalLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerFocApproveAndRejectModel? approve)?
        customerFocApproval,
    TResult Function()? customerFocApprovalFailed,
    TResult Function()? customerFocApprovalLoadingState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomerFocApproval value) customerFocApproval,
    required TResult Function(CustomerFocApprovalFailed value)
        customerFocApprovalFailed,
    required TResult Function(CustomerFocApprovalLoadingState value)
        customerFocApprovalLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CustomerFocApproval value)? customerFocApproval,
    TResult? Function(CustomerFocApprovalFailed value)?
        customerFocApprovalFailed,
    TResult? Function(CustomerFocApprovalLoadingState value)?
        customerFocApprovalLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomerFocApproval value)? customerFocApproval,
    TResult Function(CustomerFocApprovalFailed value)?
        customerFocApprovalFailed,
    TResult Function(CustomerFocApprovalLoadingState value)?
        customerFocApprovalLoadingState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerFocApprovalStateCopyWith<$Res> {
  factory $CustomerFocApprovalStateCopyWith(CustomerFocApprovalState value,
          $Res Function(CustomerFocApprovalState) then) =
      _$CustomerFocApprovalStateCopyWithImpl<$Res, CustomerFocApprovalState>;
}

/// @nodoc
class _$CustomerFocApprovalStateCopyWithImpl<$Res,
        $Val extends CustomerFocApprovalState>
    implements $CustomerFocApprovalStateCopyWith<$Res> {
  _$CustomerFocApprovalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CustomerFocApprovalImplCopyWith<$Res> {
  factory _$$CustomerFocApprovalImplCopyWith(_$CustomerFocApprovalImpl value,
          $Res Function(_$CustomerFocApprovalImpl) then) =
      __$$CustomerFocApprovalImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CustomerFocApproveAndRejectModel? approve});
}

/// @nodoc
class __$$CustomerFocApprovalImplCopyWithImpl<$Res>
    extends _$CustomerFocApprovalStateCopyWithImpl<$Res,
        _$CustomerFocApprovalImpl>
    implements _$$CustomerFocApprovalImplCopyWith<$Res> {
  __$$CustomerFocApprovalImplCopyWithImpl(_$CustomerFocApprovalImpl _value,
      $Res Function(_$CustomerFocApprovalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? approve = freezed,
  }) {
    return _then(_$CustomerFocApprovalImpl(
      approve: freezed == approve
          ? _value.approve
          : approve // ignore: cast_nullable_to_non_nullable
              as CustomerFocApproveAndRejectModel?,
    ));
  }
}

/// @nodoc

class _$CustomerFocApprovalImpl implements CustomerFocApproval {
  const _$CustomerFocApprovalImpl({required this.approve});

  @override
  final CustomerFocApproveAndRejectModel? approve;

  @override
  String toString() {
    return 'CustomerFocApprovalState.customerFocApproval(approve: $approve)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerFocApprovalImpl &&
            (identical(other.approve, approve) || other.approve == approve));
  }

  @override
  int get hashCode => Object.hash(runtimeType, approve);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerFocApprovalImplCopyWith<_$CustomerFocApprovalImpl> get copyWith =>
      __$$CustomerFocApprovalImplCopyWithImpl<_$CustomerFocApprovalImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerFocApproveAndRejectModel? approve)
        customerFocApproval,
    required TResult Function() customerFocApprovalFailed,
    required TResult Function() customerFocApprovalLoadingState,
  }) {
    return customerFocApproval(approve);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerFocApproveAndRejectModel? approve)?
        customerFocApproval,
    TResult? Function()? customerFocApprovalFailed,
    TResult? Function()? customerFocApprovalLoadingState,
  }) {
    return customerFocApproval?.call(approve);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerFocApproveAndRejectModel? approve)?
        customerFocApproval,
    TResult Function()? customerFocApprovalFailed,
    TResult Function()? customerFocApprovalLoadingState,
    required TResult orElse(),
  }) {
    if (customerFocApproval != null) {
      return customerFocApproval(approve);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomerFocApproval value) customerFocApproval,
    required TResult Function(CustomerFocApprovalFailed value)
        customerFocApprovalFailed,
    required TResult Function(CustomerFocApprovalLoadingState value)
        customerFocApprovalLoadingState,
  }) {
    return customerFocApproval(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CustomerFocApproval value)? customerFocApproval,
    TResult? Function(CustomerFocApprovalFailed value)?
        customerFocApprovalFailed,
    TResult? Function(CustomerFocApprovalLoadingState value)?
        customerFocApprovalLoadingState,
  }) {
    return customerFocApproval?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomerFocApproval value)? customerFocApproval,
    TResult Function(CustomerFocApprovalFailed value)?
        customerFocApprovalFailed,
    TResult Function(CustomerFocApprovalLoadingState value)?
        customerFocApprovalLoadingState,
    required TResult orElse(),
  }) {
    if (customerFocApproval != null) {
      return customerFocApproval(this);
    }
    return orElse();
  }
}

abstract class CustomerFocApproval implements CustomerFocApprovalState {
  const factory CustomerFocApproval(
          {required final CustomerFocApproveAndRejectModel? approve}) =
      _$CustomerFocApprovalImpl;

  CustomerFocApproveAndRejectModel? get approve;
  @JsonKey(ignore: true)
  _$$CustomerFocApprovalImplCopyWith<_$CustomerFocApprovalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CustomerFocApprovalFailedImplCopyWith<$Res> {
  factory _$$CustomerFocApprovalFailedImplCopyWith(
          _$CustomerFocApprovalFailedImpl value,
          $Res Function(_$CustomerFocApprovalFailedImpl) then) =
      __$$CustomerFocApprovalFailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CustomerFocApprovalFailedImplCopyWithImpl<$Res>
    extends _$CustomerFocApprovalStateCopyWithImpl<$Res,
        _$CustomerFocApprovalFailedImpl>
    implements _$$CustomerFocApprovalFailedImplCopyWith<$Res> {
  __$$CustomerFocApprovalFailedImplCopyWithImpl(
      _$CustomerFocApprovalFailedImpl _value,
      $Res Function(_$CustomerFocApprovalFailedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CustomerFocApprovalFailedImpl implements CustomerFocApprovalFailed {
  const _$CustomerFocApprovalFailedImpl();

  @override
  String toString() {
    return 'CustomerFocApprovalState.customerFocApprovalFailed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerFocApprovalFailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerFocApproveAndRejectModel? approve)
        customerFocApproval,
    required TResult Function() customerFocApprovalFailed,
    required TResult Function() customerFocApprovalLoadingState,
  }) {
    return customerFocApprovalFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerFocApproveAndRejectModel? approve)?
        customerFocApproval,
    TResult? Function()? customerFocApprovalFailed,
    TResult? Function()? customerFocApprovalLoadingState,
  }) {
    return customerFocApprovalFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerFocApproveAndRejectModel? approve)?
        customerFocApproval,
    TResult Function()? customerFocApprovalFailed,
    TResult Function()? customerFocApprovalLoadingState,
    required TResult orElse(),
  }) {
    if (customerFocApprovalFailed != null) {
      return customerFocApprovalFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomerFocApproval value) customerFocApproval,
    required TResult Function(CustomerFocApprovalFailed value)
        customerFocApprovalFailed,
    required TResult Function(CustomerFocApprovalLoadingState value)
        customerFocApprovalLoadingState,
  }) {
    return customerFocApprovalFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CustomerFocApproval value)? customerFocApproval,
    TResult? Function(CustomerFocApprovalFailed value)?
        customerFocApprovalFailed,
    TResult? Function(CustomerFocApprovalLoadingState value)?
        customerFocApprovalLoadingState,
  }) {
    return customerFocApprovalFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomerFocApproval value)? customerFocApproval,
    TResult Function(CustomerFocApprovalFailed value)?
        customerFocApprovalFailed,
    TResult Function(CustomerFocApprovalLoadingState value)?
        customerFocApprovalLoadingState,
    required TResult orElse(),
  }) {
    if (customerFocApprovalFailed != null) {
      return customerFocApprovalFailed(this);
    }
    return orElse();
  }
}

abstract class CustomerFocApprovalFailed implements CustomerFocApprovalState {
  const factory CustomerFocApprovalFailed() = _$CustomerFocApprovalFailedImpl;
}

/// @nodoc
abstract class _$$CustomerFocApprovalLoadingStateImplCopyWith<$Res> {
  factory _$$CustomerFocApprovalLoadingStateImplCopyWith(
          _$CustomerFocApprovalLoadingStateImpl value,
          $Res Function(_$CustomerFocApprovalLoadingStateImpl) then) =
      __$$CustomerFocApprovalLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CustomerFocApprovalLoadingStateImplCopyWithImpl<$Res>
    extends _$CustomerFocApprovalStateCopyWithImpl<$Res,
        _$CustomerFocApprovalLoadingStateImpl>
    implements _$$CustomerFocApprovalLoadingStateImplCopyWith<$Res> {
  __$$CustomerFocApprovalLoadingStateImplCopyWithImpl(
      _$CustomerFocApprovalLoadingStateImpl _value,
      $Res Function(_$CustomerFocApprovalLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CustomerFocApprovalLoadingStateImpl
    implements CustomerFocApprovalLoadingState {
  const _$CustomerFocApprovalLoadingStateImpl();

  @override
  String toString() {
    return 'CustomerFocApprovalState.customerFocApprovalLoadingState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerFocApprovalLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerFocApproveAndRejectModel? approve)
        customerFocApproval,
    required TResult Function() customerFocApprovalFailed,
    required TResult Function() customerFocApprovalLoadingState,
  }) {
    return customerFocApprovalLoadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerFocApproveAndRejectModel? approve)?
        customerFocApproval,
    TResult? Function()? customerFocApprovalFailed,
    TResult? Function()? customerFocApprovalLoadingState,
  }) {
    return customerFocApprovalLoadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerFocApproveAndRejectModel? approve)?
        customerFocApproval,
    TResult Function()? customerFocApprovalFailed,
    TResult Function()? customerFocApprovalLoadingState,
    required TResult orElse(),
  }) {
    if (customerFocApprovalLoadingState != null) {
      return customerFocApprovalLoadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomerFocApproval value) customerFocApproval,
    required TResult Function(CustomerFocApprovalFailed value)
        customerFocApprovalFailed,
    required TResult Function(CustomerFocApprovalLoadingState value)
        customerFocApprovalLoadingState,
  }) {
    return customerFocApprovalLoadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CustomerFocApproval value)? customerFocApproval,
    TResult? Function(CustomerFocApprovalFailed value)?
        customerFocApprovalFailed,
    TResult? Function(CustomerFocApprovalLoadingState value)?
        customerFocApprovalLoadingState,
  }) {
    return customerFocApprovalLoadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomerFocApproval value)? customerFocApproval,
    TResult Function(CustomerFocApprovalFailed value)?
        customerFocApprovalFailed,
    TResult Function(CustomerFocApprovalLoadingState value)?
        customerFocApprovalLoadingState,
    required TResult orElse(),
  }) {
    if (customerFocApprovalLoadingState != null) {
      return customerFocApprovalLoadingState(this);
    }
    return orElse();
  }
}

abstract class CustomerFocApprovalLoadingState
    implements CustomerFocApprovalState {
  const factory CustomerFocApprovalLoadingState() =
      _$CustomerFocApprovalLoadingStateImpl;
}
