// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_foc_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CustomerFocDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String headerId, String searchQuery)
        getCustomerFocDetailEvent,
    required TResult Function() clearCustomerFocDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String headerId, String searchQuery)?
        getCustomerFocDetailEvent,
    TResult? Function()? clearCustomerFocDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String headerId, String searchQuery)?
        getCustomerFocDetailEvent,
    TResult Function()? clearCustomerFocDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCustomerFocDetailEvent value)
        getCustomerFocDetailEvent,
    required TResult Function(ClearCustomerFocDetails value)
        clearCustomerFocDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCustomerFocDetailEvent value)?
        getCustomerFocDetailEvent,
    TResult? Function(ClearCustomerFocDetails value)? clearCustomerFocDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCustomerFocDetailEvent value)?
        getCustomerFocDetailEvent,
    TResult Function(ClearCustomerFocDetails value)? clearCustomerFocDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerFocDetailEventCopyWith<$Res> {
  factory $CustomerFocDetailEventCopyWith(CustomerFocDetailEvent value,
          $Res Function(CustomerFocDetailEvent) then) =
      _$CustomerFocDetailEventCopyWithImpl<$Res, CustomerFocDetailEvent>;
}

/// @nodoc
class _$CustomerFocDetailEventCopyWithImpl<$Res,
        $Val extends CustomerFocDetailEvent>
    implements $CustomerFocDetailEventCopyWith<$Res> {
  _$CustomerFocDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomerFocDetailEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetCustomerFocDetailEventImplCopyWith<$Res> {
  factory _$$GetCustomerFocDetailEventImplCopyWith(
          _$GetCustomerFocDetailEventImpl value,
          $Res Function(_$GetCustomerFocDetailEventImpl) then) =
      __$$GetCustomerFocDetailEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String headerId, String searchQuery});
}

/// @nodoc
class __$$GetCustomerFocDetailEventImplCopyWithImpl<$Res>
    extends _$CustomerFocDetailEventCopyWithImpl<$Res,
        _$GetCustomerFocDetailEventImpl>
    implements _$$GetCustomerFocDetailEventImplCopyWith<$Res> {
  __$$GetCustomerFocDetailEventImplCopyWithImpl(
      _$GetCustomerFocDetailEventImpl _value,
      $Res Function(_$GetCustomerFocDetailEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomerFocDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headerId = null,
    Object? searchQuery = null,
  }) {
    return _then(_$GetCustomerFocDetailEventImpl(
      headerId: null == headerId
          ? _value.headerId
          : headerId // ignore: cast_nullable_to_non_nullable
              as String,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCustomerFocDetailEventImpl implements GetCustomerFocDetailEvent {
  const _$GetCustomerFocDetailEventImpl(
      {required this.headerId, required this.searchQuery});

  @override
  final String headerId;
  @override
  final String searchQuery;

  @override
  String toString() {
    return 'CustomerFocDetailEvent.getCustomerFocDetailEvent(headerId: $headerId, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCustomerFocDetailEventImpl &&
            (identical(other.headerId, headerId) ||
                other.headerId == headerId) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, headerId, searchQuery);

  /// Create a copy of CustomerFocDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCustomerFocDetailEventImplCopyWith<_$GetCustomerFocDetailEventImpl>
      get copyWith => __$$GetCustomerFocDetailEventImplCopyWithImpl<
          _$GetCustomerFocDetailEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String headerId, String searchQuery)
        getCustomerFocDetailEvent,
    required TResult Function() clearCustomerFocDetails,
  }) {
    return getCustomerFocDetailEvent(headerId, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String headerId, String searchQuery)?
        getCustomerFocDetailEvent,
    TResult? Function()? clearCustomerFocDetails,
  }) {
    return getCustomerFocDetailEvent?.call(headerId, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String headerId, String searchQuery)?
        getCustomerFocDetailEvent,
    TResult Function()? clearCustomerFocDetails,
    required TResult orElse(),
  }) {
    if (getCustomerFocDetailEvent != null) {
      return getCustomerFocDetailEvent(headerId, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCustomerFocDetailEvent value)
        getCustomerFocDetailEvent,
    required TResult Function(ClearCustomerFocDetails value)
        clearCustomerFocDetails,
  }) {
    return getCustomerFocDetailEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCustomerFocDetailEvent value)?
        getCustomerFocDetailEvent,
    TResult? Function(ClearCustomerFocDetails value)? clearCustomerFocDetails,
  }) {
    return getCustomerFocDetailEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCustomerFocDetailEvent value)?
        getCustomerFocDetailEvent,
    TResult Function(ClearCustomerFocDetails value)? clearCustomerFocDetails,
    required TResult orElse(),
  }) {
    if (getCustomerFocDetailEvent != null) {
      return getCustomerFocDetailEvent(this);
    }
    return orElse();
  }
}

abstract class GetCustomerFocDetailEvent implements CustomerFocDetailEvent {
  const factory GetCustomerFocDetailEvent(
      {required final String headerId,
      required final String searchQuery}) = _$GetCustomerFocDetailEventImpl;

  String get headerId;
  String get searchQuery;

  /// Create a copy of CustomerFocDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetCustomerFocDetailEventImplCopyWith<_$GetCustomerFocDetailEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearCustomerFocDetailsImplCopyWith<$Res> {
  factory _$$ClearCustomerFocDetailsImplCopyWith(
          _$ClearCustomerFocDetailsImpl value,
          $Res Function(_$ClearCustomerFocDetailsImpl) then) =
      __$$ClearCustomerFocDetailsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearCustomerFocDetailsImplCopyWithImpl<$Res>
    extends _$CustomerFocDetailEventCopyWithImpl<$Res,
        _$ClearCustomerFocDetailsImpl>
    implements _$$ClearCustomerFocDetailsImplCopyWith<$Res> {
  __$$ClearCustomerFocDetailsImplCopyWithImpl(
      _$ClearCustomerFocDetailsImpl _value,
      $Res Function(_$ClearCustomerFocDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomerFocDetailEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearCustomerFocDetailsImpl implements ClearCustomerFocDetails {
  const _$ClearCustomerFocDetailsImpl();

  @override
  String toString() {
    return 'CustomerFocDetailEvent.clearCustomerFocDetails()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearCustomerFocDetailsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String headerId, String searchQuery)
        getCustomerFocDetailEvent,
    required TResult Function() clearCustomerFocDetails,
  }) {
    return clearCustomerFocDetails();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String headerId, String searchQuery)?
        getCustomerFocDetailEvent,
    TResult? Function()? clearCustomerFocDetails,
  }) {
    return clearCustomerFocDetails?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String headerId, String searchQuery)?
        getCustomerFocDetailEvent,
    TResult Function()? clearCustomerFocDetails,
    required TResult orElse(),
  }) {
    if (clearCustomerFocDetails != null) {
      return clearCustomerFocDetails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCustomerFocDetailEvent value)
        getCustomerFocDetailEvent,
    required TResult Function(ClearCustomerFocDetails value)
        clearCustomerFocDetails,
  }) {
    return clearCustomerFocDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCustomerFocDetailEvent value)?
        getCustomerFocDetailEvent,
    TResult? Function(ClearCustomerFocDetails value)? clearCustomerFocDetails,
  }) {
    return clearCustomerFocDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCustomerFocDetailEvent value)?
        getCustomerFocDetailEvent,
    TResult Function(ClearCustomerFocDetails value)? clearCustomerFocDetails,
    required TResult orElse(),
  }) {
    if (clearCustomerFocDetails != null) {
      return clearCustomerFocDetails(this);
    }
    return orElse();
  }
}

abstract class ClearCustomerFocDetails implements CustomerFocDetailEvent {
  const factory ClearCustomerFocDetails() = _$ClearCustomerFocDetailsImpl;
}

/// @nodoc
mixin _$CustomerFocDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CustomerFocDetailModel>? details)
        getCustomerFocDetailsState,
    required TResult Function() customerFocDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CustomerFocDetailModel>? details)?
        getCustomerFocDetailsState,
    TResult? Function()? customerFocDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CustomerFocDetailModel>? details)?
        getCustomerFocDetailsState,
    TResult Function()? customerFocDetailFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCustomerFocDetailsState value)
        getCustomerFocDetailsState,
    required TResult Function(CustomerFocDetailFailedState value)
        customerFocDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCustomerFocDetailsState value)?
        getCustomerFocDetailsState,
    TResult? Function(CustomerFocDetailFailedState value)?
        customerFocDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCustomerFocDetailsState value)?
        getCustomerFocDetailsState,
    TResult Function(CustomerFocDetailFailedState value)?
        customerFocDetailFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerFocDetailStateCopyWith<$Res> {
  factory $CustomerFocDetailStateCopyWith(CustomerFocDetailState value,
          $Res Function(CustomerFocDetailState) then) =
      _$CustomerFocDetailStateCopyWithImpl<$Res, CustomerFocDetailState>;
}

/// @nodoc
class _$CustomerFocDetailStateCopyWithImpl<$Res,
        $Val extends CustomerFocDetailState>
    implements $CustomerFocDetailStateCopyWith<$Res> {
  _$CustomerFocDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomerFocDetailState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetCustomerFocDetailsStateImplCopyWith<$Res> {
  factory _$$GetCustomerFocDetailsStateImplCopyWith(
          _$GetCustomerFocDetailsStateImpl value,
          $Res Function(_$GetCustomerFocDetailsStateImpl) then) =
      __$$GetCustomerFocDetailsStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CustomerFocDetailModel>? details});
}

/// @nodoc
class __$$GetCustomerFocDetailsStateImplCopyWithImpl<$Res>
    extends _$CustomerFocDetailStateCopyWithImpl<$Res,
        _$GetCustomerFocDetailsStateImpl>
    implements _$$GetCustomerFocDetailsStateImplCopyWith<$Res> {
  __$$GetCustomerFocDetailsStateImplCopyWithImpl(
      _$GetCustomerFocDetailsStateImpl _value,
      $Res Function(_$GetCustomerFocDetailsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomerFocDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? details = freezed,
  }) {
    return _then(_$GetCustomerFocDetailsStateImpl(
      details: freezed == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<CustomerFocDetailModel>?,
    ));
  }
}

/// @nodoc

class _$GetCustomerFocDetailsStateImpl implements GetCustomerFocDetailsState {
  const _$GetCustomerFocDetailsStateImpl(
      {required final List<CustomerFocDetailModel>? details})
      : _details = details;

  final List<CustomerFocDetailModel>? _details;
  @override
  List<CustomerFocDetailModel>? get details {
    final value = _details;
    if (value == null) return null;
    if (_details is EqualUnmodifiableListView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CustomerFocDetailState.getCustomerFocDetailsState(details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCustomerFocDetailsStateImpl &&
            const DeepCollectionEquality().equals(other._details, _details));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_details));

  /// Create a copy of CustomerFocDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCustomerFocDetailsStateImplCopyWith<_$GetCustomerFocDetailsStateImpl>
      get copyWith => __$$GetCustomerFocDetailsStateImplCopyWithImpl<
          _$GetCustomerFocDetailsStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CustomerFocDetailModel>? details)
        getCustomerFocDetailsState,
    required TResult Function() customerFocDetailFailedState,
  }) {
    return getCustomerFocDetailsState(details);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CustomerFocDetailModel>? details)?
        getCustomerFocDetailsState,
    TResult? Function()? customerFocDetailFailedState,
  }) {
    return getCustomerFocDetailsState?.call(details);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CustomerFocDetailModel>? details)?
        getCustomerFocDetailsState,
    TResult Function()? customerFocDetailFailedState,
    required TResult orElse(),
  }) {
    if (getCustomerFocDetailsState != null) {
      return getCustomerFocDetailsState(details);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCustomerFocDetailsState value)
        getCustomerFocDetailsState,
    required TResult Function(CustomerFocDetailFailedState value)
        customerFocDetailFailedState,
  }) {
    return getCustomerFocDetailsState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCustomerFocDetailsState value)?
        getCustomerFocDetailsState,
    TResult? Function(CustomerFocDetailFailedState value)?
        customerFocDetailFailedState,
  }) {
    return getCustomerFocDetailsState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCustomerFocDetailsState value)?
        getCustomerFocDetailsState,
    TResult Function(CustomerFocDetailFailedState value)?
        customerFocDetailFailedState,
    required TResult orElse(),
  }) {
    if (getCustomerFocDetailsState != null) {
      return getCustomerFocDetailsState(this);
    }
    return orElse();
  }
}

abstract class GetCustomerFocDetailsState implements CustomerFocDetailState {
  const factory GetCustomerFocDetailsState(
          {required final List<CustomerFocDetailModel>? details}) =
      _$GetCustomerFocDetailsStateImpl;

  List<CustomerFocDetailModel>? get details;

  /// Create a copy of CustomerFocDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetCustomerFocDetailsStateImplCopyWith<_$GetCustomerFocDetailsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CustomerFocDetailFailedStateImplCopyWith<$Res> {
  factory _$$CustomerFocDetailFailedStateImplCopyWith(
          _$CustomerFocDetailFailedStateImpl value,
          $Res Function(_$CustomerFocDetailFailedStateImpl) then) =
      __$$CustomerFocDetailFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CustomerFocDetailFailedStateImplCopyWithImpl<$Res>
    extends _$CustomerFocDetailStateCopyWithImpl<$Res,
        _$CustomerFocDetailFailedStateImpl>
    implements _$$CustomerFocDetailFailedStateImplCopyWith<$Res> {
  __$$CustomerFocDetailFailedStateImplCopyWithImpl(
      _$CustomerFocDetailFailedStateImpl _value,
      $Res Function(_$CustomerFocDetailFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomerFocDetailState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CustomerFocDetailFailedStateImpl
    implements CustomerFocDetailFailedState {
  const _$CustomerFocDetailFailedStateImpl();

  @override
  String toString() {
    return 'CustomerFocDetailState.customerFocDetailFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerFocDetailFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CustomerFocDetailModel>? details)
        getCustomerFocDetailsState,
    required TResult Function() customerFocDetailFailedState,
  }) {
    return customerFocDetailFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CustomerFocDetailModel>? details)?
        getCustomerFocDetailsState,
    TResult? Function()? customerFocDetailFailedState,
  }) {
    return customerFocDetailFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CustomerFocDetailModel>? details)?
        getCustomerFocDetailsState,
    TResult Function()? customerFocDetailFailedState,
    required TResult orElse(),
  }) {
    if (customerFocDetailFailedState != null) {
      return customerFocDetailFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCustomerFocDetailsState value)
        getCustomerFocDetailsState,
    required TResult Function(CustomerFocDetailFailedState value)
        customerFocDetailFailedState,
  }) {
    return customerFocDetailFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCustomerFocDetailsState value)?
        getCustomerFocDetailsState,
    TResult? Function(CustomerFocDetailFailedState value)?
        customerFocDetailFailedState,
  }) {
    return customerFocDetailFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCustomerFocDetailsState value)?
        getCustomerFocDetailsState,
    TResult Function(CustomerFocDetailFailedState value)?
        customerFocDetailFailedState,
    required TResult orElse(),
  }) {
    if (customerFocDetailFailedState != null) {
      return customerFocDetailFailedState(this);
    }
    return orElse();
  }
}

abstract class CustomerFocDetailFailedState implements CustomerFocDetailState {
  const factory CustomerFocDetailFailedState() =
      _$CustomerFocDetailFailedStateImpl;
}
