// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_foc_header_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CustomerFocHeaderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String statusValue, String searchQuery)
        getCustomerFocHeaderEvent,
    required TResult Function() clearCustomerFocHeader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String statusValue, String searchQuery)?
        getCustomerFocHeaderEvent,
    TResult? Function()? clearCustomerFocHeader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String statusValue, String searchQuery)?
        getCustomerFocHeaderEvent,
    TResult Function()? clearCustomerFocHeader,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCustomerFocHeaderEvent value)
        getCustomerFocHeaderEvent,
    required TResult Function(ClearCustomerFocHeader value)
        clearCustomerFocHeader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCustomerFocHeaderEvent value)?
        getCustomerFocHeaderEvent,
    TResult? Function(ClearCustomerFocHeader value)? clearCustomerFocHeader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCustomerFocHeaderEvent value)?
        getCustomerFocHeaderEvent,
    TResult Function(ClearCustomerFocHeader value)? clearCustomerFocHeader,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerFocHeaderEventCopyWith<$Res> {
  factory $CustomerFocHeaderEventCopyWith(CustomerFocHeaderEvent value,
          $Res Function(CustomerFocHeaderEvent) then) =
      _$CustomerFocHeaderEventCopyWithImpl<$Res, CustomerFocHeaderEvent>;
}

/// @nodoc
class _$CustomerFocHeaderEventCopyWithImpl<$Res,
        $Val extends CustomerFocHeaderEvent>
    implements $CustomerFocHeaderEventCopyWith<$Res> {
  _$CustomerFocHeaderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCustomerFocHeaderEventImplCopyWith<$Res> {
  factory _$$GetCustomerFocHeaderEventImplCopyWith(
          _$GetCustomerFocHeaderEventImpl value,
          $Res Function(_$GetCustomerFocHeaderEventImpl) then) =
      __$$GetCustomerFocHeaderEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String statusValue, String searchQuery});
}

/// @nodoc
class __$$GetCustomerFocHeaderEventImplCopyWithImpl<$Res>
    extends _$CustomerFocHeaderEventCopyWithImpl<$Res,
        _$GetCustomerFocHeaderEventImpl>
    implements _$$GetCustomerFocHeaderEventImplCopyWith<$Res> {
  __$$GetCustomerFocHeaderEventImplCopyWithImpl(
      _$GetCustomerFocHeaderEventImpl _value,
      $Res Function(_$GetCustomerFocHeaderEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusValue = null,
    Object? searchQuery = null,
  }) {
    return _then(_$GetCustomerFocHeaderEventImpl(
      statusValue: null == statusValue
          ? _value.statusValue
          : statusValue // ignore: cast_nullable_to_non_nullable
              as String,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCustomerFocHeaderEventImpl implements GetCustomerFocHeaderEvent {
  const _$GetCustomerFocHeaderEventImpl(
      {required this.statusValue, required this.searchQuery});

  @override
  final String statusValue;
  @override
  final String searchQuery;

  @override
  String toString() {
    return 'CustomerFocHeaderEvent.getCustomerFocHeaderEvent(statusValue: $statusValue, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCustomerFocHeaderEventImpl &&
            (identical(other.statusValue, statusValue) ||
                other.statusValue == statusValue) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, statusValue, searchQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCustomerFocHeaderEventImplCopyWith<_$GetCustomerFocHeaderEventImpl>
      get copyWith => __$$GetCustomerFocHeaderEventImplCopyWithImpl<
          _$GetCustomerFocHeaderEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String statusValue, String searchQuery)
        getCustomerFocHeaderEvent,
    required TResult Function() clearCustomerFocHeader,
  }) {
    return getCustomerFocHeaderEvent(statusValue, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String statusValue, String searchQuery)?
        getCustomerFocHeaderEvent,
    TResult? Function()? clearCustomerFocHeader,
  }) {
    return getCustomerFocHeaderEvent?.call(statusValue, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String statusValue, String searchQuery)?
        getCustomerFocHeaderEvent,
    TResult Function()? clearCustomerFocHeader,
    required TResult orElse(),
  }) {
    if (getCustomerFocHeaderEvent != null) {
      return getCustomerFocHeaderEvent(statusValue, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCustomerFocHeaderEvent value)
        getCustomerFocHeaderEvent,
    required TResult Function(ClearCustomerFocHeader value)
        clearCustomerFocHeader,
  }) {
    return getCustomerFocHeaderEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCustomerFocHeaderEvent value)?
        getCustomerFocHeaderEvent,
    TResult? Function(ClearCustomerFocHeader value)? clearCustomerFocHeader,
  }) {
    return getCustomerFocHeaderEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCustomerFocHeaderEvent value)?
        getCustomerFocHeaderEvent,
    TResult Function(ClearCustomerFocHeader value)? clearCustomerFocHeader,
    required TResult orElse(),
  }) {
    if (getCustomerFocHeaderEvent != null) {
      return getCustomerFocHeaderEvent(this);
    }
    return orElse();
  }
}

abstract class GetCustomerFocHeaderEvent implements CustomerFocHeaderEvent {
  const factory GetCustomerFocHeaderEvent(
      {required final String statusValue,
      required final String searchQuery}) = _$GetCustomerFocHeaderEventImpl;

  String get statusValue;
  String get searchQuery;
  @JsonKey(ignore: true)
  _$$GetCustomerFocHeaderEventImplCopyWith<_$GetCustomerFocHeaderEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearCustomerFocHeaderImplCopyWith<$Res> {
  factory _$$ClearCustomerFocHeaderImplCopyWith(
          _$ClearCustomerFocHeaderImpl value,
          $Res Function(_$ClearCustomerFocHeaderImpl) then) =
      __$$ClearCustomerFocHeaderImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearCustomerFocHeaderImplCopyWithImpl<$Res>
    extends _$CustomerFocHeaderEventCopyWithImpl<$Res,
        _$ClearCustomerFocHeaderImpl>
    implements _$$ClearCustomerFocHeaderImplCopyWith<$Res> {
  __$$ClearCustomerFocHeaderImplCopyWithImpl(
      _$ClearCustomerFocHeaderImpl _value,
      $Res Function(_$ClearCustomerFocHeaderImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearCustomerFocHeaderImpl implements ClearCustomerFocHeader {
  const _$ClearCustomerFocHeaderImpl();

  @override
  String toString() {
    return 'CustomerFocHeaderEvent.clearCustomerFocHeader()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearCustomerFocHeaderImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String statusValue, String searchQuery)
        getCustomerFocHeaderEvent,
    required TResult Function() clearCustomerFocHeader,
  }) {
    return clearCustomerFocHeader();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String statusValue, String searchQuery)?
        getCustomerFocHeaderEvent,
    TResult? Function()? clearCustomerFocHeader,
  }) {
    return clearCustomerFocHeader?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String statusValue, String searchQuery)?
        getCustomerFocHeaderEvent,
    TResult Function()? clearCustomerFocHeader,
    required TResult orElse(),
  }) {
    if (clearCustomerFocHeader != null) {
      return clearCustomerFocHeader();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCustomerFocHeaderEvent value)
        getCustomerFocHeaderEvent,
    required TResult Function(ClearCustomerFocHeader value)
        clearCustomerFocHeader,
  }) {
    return clearCustomerFocHeader(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCustomerFocHeaderEvent value)?
        getCustomerFocHeaderEvent,
    TResult? Function(ClearCustomerFocHeader value)? clearCustomerFocHeader,
  }) {
    return clearCustomerFocHeader?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCustomerFocHeaderEvent value)?
        getCustomerFocHeaderEvent,
    TResult Function(ClearCustomerFocHeader value)? clearCustomerFocHeader,
    required TResult orElse(),
  }) {
    if (clearCustomerFocHeader != null) {
      return clearCustomerFocHeader(this);
    }
    return orElse();
  }
}

abstract class ClearCustomerFocHeader implements CustomerFocHeaderEvent {
  const factory ClearCustomerFocHeader() = _$ClearCustomerFocHeaderImpl;
}

/// @nodoc
mixin _$CustomerFocHeaderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CustomerFocHeaderModel>? header)
        getCustomerFocHeaderState,
    required TResult Function() customerFocHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CustomerFocHeaderModel>? header)?
        getCustomerFocHeaderState,
    TResult? Function()? customerFocHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CustomerFocHeaderModel>? header)?
        getCustomerFocHeaderState,
    TResult Function()? customerFocHeaderFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCustomerFocHeaderState value)
        getCustomerFocHeaderState,
    required TResult Function(CustomerFocHeaderFailedState value)
        customerFocHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCustomerFocHeaderState value)?
        getCustomerFocHeaderState,
    TResult? Function(CustomerFocHeaderFailedState value)?
        customerFocHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCustomerFocHeaderState value)?
        getCustomerFocHeaderState,
    TResult Function(CustomerFocHeaderFailedState value)?
        customerFocHeaderFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerFocHeaderStateCopyWith<$Res> {
  factory $CustomerFocHeaderStateCopyWith(CustomerFocHeaderState value,
          $Res Function(CustomerFocHeaderState) then) =
      _$CustomerFocHeaderStateCopyWithImpl<$Res, CustomerFocHeaderState>;
}

/// @nodoc
class _$CustomerFocHeaderStateCopyWithImpl<$Res,
        $Val extends CustomerFocHeaderState>
    implements $CustomerFocHeaderStateCopyWith<$Res> {
  _$CustomerFocHeaderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCustomerFocHeaderStateImplCopyWith<$Res> {
  factory _$$GetCustomerFocHeaderStateImplCopyWith(
          _$GetCustomerFocHeaderStateImpl value,
          $Res Function(_$GetCustomerFocHeaderStateImpl) then) =
      __$$GetCustomerFocHeaderStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CustomerFocHeaderModel>? header});
}

/// @nodoc
class __$$GetCustomerFocHeaderStateImplCopyWithImpl<$Res>
    extends _$CustomerFocHeaderStateCopyWithImpl<$Res,
        _$GetCustomerFocHeaderStateImpl>
    implements _$$GetCustomerFocHeaderStateImplCopyWith<$Res> {
  __$$GetCustomerFocHeaderStateImplCopyWithImpl(
      _$GetCustomerFocHeaderStateImpl _value,
      $Res Function(_$GetCustomerFocHeaderStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = freezed,
  }) {
    return _then(_$GetCustomerFocHeaderStateImpl(
      header: freezed == header
          ? _value._header
          : header // ignore: cast_nullable_to_non_nullable
              as List<CustomerFocHeaderModel>?,
    ));
  }
}

/// @nodoc

class _$GetCustomerFocHeaderStateImpl implements GetCustomerFocHeaderState {
  const _$GetCustomerFocHeaderStateImpl(
      {required final List<CustomerFocHeaderModel>? header})
      : _header = header;

  final List<CustomerFocHeaderModel>? _header;
  @override
  List<CustomerFocHeaderModel>? get header {
    final value = _header;
    if (value == null) return null;
    if (_header is EqualUnmodifiableListView) return _header;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CustomerFocHeaderState.getCustomerFocHeaderState(header: $header)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCustomerFocHeaderStateImpl &&
            const DeepCollectionEquality().equals(other._header, _header));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_header));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCustomerFocHeaderStateImplCopyWith<_$GetCustomerFocHeaderStateImpl>
      get copyWith => __$$GetCustomerFocHeaderStateImplCopyWithImpl<
          _$GetCustomerFocHeaderStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CustomerFocHeaderModel>? header)
        getCustomerFocHeaderState,
    required TResult Function() customerFocHeaderFailedState,
  }) {
    return getCustomerFocHeaderState(header);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CustomerFocHeaderModel>? header)?
        getCustomerFocHeaderState,
    TResult? Function()? customerFocHeaderFailedState,
  }) {
    return getCustomerFocHeaderState?.call(header);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CustomerFocHeaderModel>? header)?
        getCustomerFocHeaderState,
    TResult Function()? customerFocHeaderFailedState,
    required TResult orElse(),
  }) {
    if (getCustomerFocHeaderState != null) {
      return getCustomerFocHeaderState(header);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCustomerFocHeaderState value)
        getCustomerFocHeaderState,
    required TResult Function(CustomerFocHeaderFailedState value)
        customerFocHeaderFailedState,
  }) {
    return getCustomerFocHeaderState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCustomerFocHeaderState value)?
        getCustomerFocHeaderState,
    TResult? Function(CustomerFocHeaderFailedState value)?
        customerFocHeaderFailedState,
  }) {
    return getCustomerFocHeaderState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCustomerFocHeaderState value)?
        getCustomerFocHeaderState,
    TResult Function(CustomerFocHeaderFailedState value)?
        customerFocHeaderFailedState,
    required TResult orElse(),
  }) {
    if (getCustomerFocHeaderState != null) {
      return getCustomerFocHeaderState(this);
    }
    return orElse();
  }
}

abstract class GetCustomerFocHeaderState implements CustomerFocHeaderState {
  const factory GetCustomerFocHeaderState(
          {required final List<CustomerFocHeaderModel>? header}) =
      _$GetCustomerFocHeaderStateImpl;

  List<CustomerFocHeaderModel>? get header;
  @JsonKey(ignore: true)
  _$$GetCustomerFocHeaderStateImplCopyWith<_$GetCustomerFocHeaderStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CustomerFocHeaderFailedStateImplCopyWith<$Res> {
  factory _$$CustomerFocHeaderFailedStateImplCopyWith(
          _$CustomerFocHeaderFailedStateImpl value,
          $Res Function(_$CustomerFocHeaderFailedStateImpl) then) =
      __$$CustomerFocHeaderFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CustomerFocHeaderFailedStateImplCopyWithImpl<$Res>
    extends _$CustomerFocHeaderStateCopyWithImpl<$Res,
        _$CustomerFocHeaderFailedStateImpl>
    implements _$$CustomerFocHeaderFailedStateImplCopyWith<$Res> {
  __$$CustomerFocHeaderFailedStateImplCopyWithImpl(
      _$CustomerFocHeaderFailedStateImpl _value,
      $Res Function(_$CustomerFocHeaderFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CustomerFocHeaderFailedStateImpl
    implements CustomerFocHeaderFailedState {
  const _$CustomerFocHeaderFailedStateImpl();

  @override
  String toString() {
    return 'CustomerFocHeaderState.customerFocHeaderFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerFocHeaderFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CustomerFocHeaderModel>? header)
        getCustomerFocHeaderState,
    required TResult Function() customerFocHeaderFailedState,
  }) {
    return customerFocHeaderFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CustomerFocHeaderModel>? header)?
        getCustomerFocHeaderState,
    TResult? Function()? customerFocHeaderFailedState,
  }) {
    return customerFocHeaderFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CustomerFocHeaderModel>? header)?
        getCustomerFocHeaderState,
    TResult Function()? customerFocHeaderFailedState,
    required TResult orElse(),
  }) {
    if (customerFocHeaderFailedState != null) {
      return customerFocHeaderFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCustomerFocHeaderState value)
        getCustomerFocHeaderState,
    required TResult Function(CustomerFocHeaderFailedState value)
        customerFocHeaderFailedState,
  }) {
    return customerFocHeaderFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCustomerFocHeaderState value)?
        getCustomerFocHeaderState,
    TResult? Function(CustomerFocHeaderFailedState value)?
        customerFocHeaderFailedState,
  }) {
    return customerFocHeaderFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCustomerFocHeaderState value)?
        getCustomerFocHeaderState,
    TResult Function(CustomerFocHeaderFailedState value)?
        customerFocHeaderFailedState,
    required TResult orElse(),
  }) {
    if (customerFocHeaderFailedState != null) {
      return customerFocHeaderFailedState(this);
    }
    return orElse();
  }
}

abstract class CustomerFocHeaderFailedState implements CustomerFocHeaderState {
  const factory CustomerFocHeaderFailedState() =
      _$CustomerFocHeaderFailedStateImpl;
}
