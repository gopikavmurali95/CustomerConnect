// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InvoiceDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String searchQuery)
        getInvoiceDetailsEvent,
    required TResult Function() getInvoiceDetailsFailedEvent,
    required TResult Function() clearInvoiceDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String searchQuery)? getInvoiceDetailsEvent,
    TResult? Function()? getInvoiceDetailsFailedEvent,
    TResult? Function()? clearInvoiceDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String searchQuery)? getInvoiceDetailsEvent,
    TResult Function()? getInvoiceDetailsFailedEvent,
    TResult Function()? clearInvoiceDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetInvoiceDetailsEvent value)
        getInvoiceDetailsEvent,
    required TResult Function(GetInvoiceDetailsFailedEvent value)
        getInvoiceDetailsFailedEvent,
    required TResult Function(ClearInvoiceDetails value) clearInvoiceDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetInvoiceDetailsEvent value)? getInvoiceDetailsEvent,
    TResult? Function(GetInvoiceDetailsFailedEvent value)?
        getInvoiceDetailsFailedEvent,
    TResult? Function(ClearInvoiceDetails value)? clearInvoiceDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetInvoiceDetailsEvent value)? getInvoiceDetailsEvent,
    TResult Function(GetInvoiceDetailsFailedEvent value)?
        getInvoiceDetailsFailedEvent,
    TResult Function(ClearInvoiceDetails value)? clearInvoiceDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceDetailsEventCopyWith<$Res> {
  factory $InvoiceDetailsEventCopyWith(
          InvoiceDetailsEvent value, $Res Function(InvoiceDetailsEvent) then) =
      _$InvoiceDetailsEventCopyWithImpl<$Res, InvoiceDetailsEvent>;
}

/// @nodoc
class _$InvoiceDetailsEventCopyWithImpl<$Res, $Val extends InvoiceDetailsEvent>
    implements $InvoiceDetailsEventCopyWith<$Res> {
  _$InvoiceDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvoiceDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetInvoiceDetailsEventImplCopyWith<$Res> {
  factory _$$GetInvoiceDetailsEventImplCopyWith(
          _$GetInvoiceDetailsEventImpl value,
          $Res Function(_$GetInvoiceDetailsEventImpl) then) =
      __$$GetInvoiceDetailsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, String searchQuery});
}

/// @nodoc
class __$$GetInvoiceDetailsEventImplCopyWithImpl<$Res>
    extends _$InvoiceDetailsEventCopyWithImpl<$Res,
        _$GetInvoiceDetailsEventImpl>
    implements _$$GetInvoiceDetailsEventImplCopyWith<$Res> {
  __$$GetInvoiceDetailsEventImplCopyWithImpl(
      _$GetInvoiceDetailsEventImpl _value,
      $Res Function(_$GetInvoiceDetailsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvoiceDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? searchQuery = null,
  }) {
    return _then(_$GetInvoiceDetailsEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetInvoiceDetailsEventImpl implements GetInvoiceDetailsEvent {
  const _$GetInvoiceDetailsEventImpl(
      {required this.id, required this.searchQuery});

  @override
  final String id;
  @override
  final String searchQuery;

  @override
  String toString() {
    return 'InvoiceDetailsEvent.getInvoiceDetailsEvent(id: $id, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetInvoiceDetailsEventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, searchQuery);

  /// Create a copy of InvoiceDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetInvoiceDetailsEventImplCopyWith<_$GetInvoiceDetailsEventImpl>
      get copyWith => __$$GetInvoiceDetailsEventImplCopyWithImpl<
          _$GetInvoiceDetailsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String searchQuery)
        getInvoiceDetailsEvent,
    required TResult Function() getInvoiceDetailsFailedEvent,
    required TResult Function() clearInvoiceDetails,
  }) {
    return getInvoiceDetailsEvent(id, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String searchQuery)? getInvoiceDetailsEvent,
    TResult? Function()? getInvoiceDetailsFailedEvent,
    TResult? Function()? clearInvoiceDetails,
  }) {
    return getInvoiceDetailsEvent?.call(id, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String searchQuery)? getInvoiceDetailsEvent,
    TResult Function()? getInvoiceDetailsFailedEvent,
    TResult Function()? clearInvoiceDetails,
    required TResult orElse(),
  }) {
    if (getInvoiceDetailsEvent != null) {
      return getInvoiceDetailsEvent(id, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetInvoiceDetailsEvent value)
        getInvoiceDetailsEvent,
    required TResult Function(GetInvoiceDetailsFailedEvent value)
        getInvoiceDetailsFailedEvent,
    required TResult Function(ClearInvoiceDetails value) clearInvoiceDetails,
  }) {
    return getInvoiceDetailsEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetInvoiceDetailsEvent value)? getInvoiceDetailsEvent,
    TResult? Function(GetInvoiceDetailsFailedEvent value)?
        getInvoiceDetailsFailedEvent,
    TResult? Function(ClearInvoiceDetails value)? clearInvoiceDetails,
  }) {
    return getInvoiceDetailsEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetInvoiceDetailsEvent value)? getInvoiceDetailsEvent,
    TResult Function(GetInvoiceDetailsFailedEvent value)?
        getInvoiceDetailsFailedEvent,
    TResult Function(ClearInvoiceDetails value)? clearInvoiceDetails,
    required TResult orElse(),
  }) {
    if (getInvoiceDetailsEvent != null) {
      return getInvoiceDetailsEvent(this);
    }
    return orElse();
  }
}

abstract class GetInvoiceDetailsEvent implements InvoiceDetailsEvent {
  const factory GetInvoiceDetailsEvent(
      {required final String id,
      required final String searchQuery}) = _$GetInvoiceDetailsEventImpl;

  String get id;
  String get searchQuery;

  /// Create a copy of InvoiceDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetInvoiceDetailsEventImplCopyWith<_$GetInvoiceDetailsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetInvoiceDetailsFailedEventImplCopyWith<$Res> {
  factory _$$GetInvoiceDetailsFailedEventImplCopyWith(
          _$GetInvoiceDetailsFailedEventImpl value,
          $Res Function(_$GetInvoiceDetailsFailedEventImpl) then) =
      __$$GetInvoiceDetailsFailedEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetInvoiceDetailsFailedEventImplCopyWithImpl<$Res>
    extends _$InvoiceDetailsEventCopyWithImpl<$Res,
        _$GetInvoiceDetailsFailedEventImpl>
    implements _$$GetInvoiceDetailsFailedEventImplCopyWith<$Res> {
  __$$GetInvoiceDetailsFailedEventImplCopyWithImpl(
      _$GetInvoiceDetailsFailedEventImpl _value,
      $Res Function(_$GetInvoiceDetailsFailedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvoiceDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetInvoiceDetailsFailedEventImpl
    implements GetInvoiceDetailsFailedEvent {
  const _$GetInvoiceDetailsFailedEventImpl();

  @override
  String toString() {
    return 'InvoiceDetailsEvent.getInvoiceDetailsFailedEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetInvoiceDetailsFailedEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String searchQuery)
        getInvoiceDetailsEvent,
    required TResult Function() getInvoiceDetailsFailedEvent,
    required TResult Function() clearInvoiceDetails,
  }) {
    return getInvoiceDetailsFailedEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String searchQuery)? getInvoiceDetailsEvent,
    TResult? Function()? getInvoiceDetailsFailedEvent,
    TResult? Function()? clearInvoiceDetails,
  }) {
    return getInvoiceDetailsFailedEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String searchQuery)? getInvoiceDetailsEvent,
    TResult Function()? getInvoiceDetailsFailedEvent,
    TResult Function()? clearInvoiceDetails,
    required TResult orElse(),
  }) {
    if (getInvoiceDetailsFailedEvent != null) {
      return getInvoiceDetailsFailedEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetInvoiceDetailsEvent value)
        getInvoiceDetailsEvent,
    required TResult Function(GetInvoiceDetailsFailedEvent value)
        getInvoiceDetailsFailedEvent,
    required TResult Function(ClearInvoiceDetails value) clearInvoiceDetails,
  }) {
    return getInvoiceDetailsFailedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetInvoiceDetailsEvent value)? getInvoiceDetailsEvent,
    TResult? Function(GetInvoiceDetailsFailedEvent value)?
        getInvoiceDetailsFailedEvent,
    TResult? Function(ClearInvoiceDetails value)? clearInvoiceDetails,
  }) {
    return getInvoiceDetailsFailedEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetInvoiceDetailsEvent value)? getInvoiceDetailsEvent,
    TResult Function(GetInvoiceDetailsFailedEvent value)?
        getInvoiceDetailsFailedEvent,
    TResult Function(ClearInvoiceDetails value)? clearInvoiceDetails,
    required TResult orElse(),
  }) {
    if (getInvoiceDetailsFailedEvent != null) {
      return getInvoiceDetailsFailedEvent(this);
    }
    return orElse();
  }
}

abstract class GetInvoiceDetailsFailedEvent implements InvoiceDetailsEvent {
  const factory GetInvoiceDetailsFailedEvent() =
      _$GetInvoiceDetailsFailedEventImpl;
}

/// @nodoc
abstract class _$$ClearInvoiceDetailsImplCopyWith<$Res> {
  factory _$$ClearInvoiceDetailsImplCopyWith(_$ClearInvoiceDetailsImpl value,
          $Res Function(_$ClearInvoiceDetailsImpl) then) =
      __$$ClearInvoiceDetailsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearInvoiceDetailsImplCopyWithImpl<$Res>
    extends _$InvoiceDetailsEventCopyWithImpl<$Res, _$ClearInvoiceDetailsImpl>
    implements _$$ClearInvoiceDetailsImplCopyWith<$Res> {
  __$$ClearInvoiceDetailsImplCopyWithImpl(_$ClearInvoiceDetailsImpl _value,
      $Res Function(_$ClearInvoiceDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvoiceDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearInvoiceDetailsImpl implements ClearInvoiceDetails {
  const _$ClearInvoiceDetailsImpl();

  @override
  String toString() {
    return 'InvoiceDetailsEvent.clearInvoiceDetails()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearInvoiceDetailsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String searchQuery)
        getInvoiceDetailsEvent,
    required TResult Function() getInvoiceDetailsFailedEvent,
    required TResult Function() clearInvoiceDetails,
  }) {
    return clearInvoiceDetails();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String searchQuery)? getInvoiceDetailsEvent,
    TResult? Function()? getInvoiceDetailsFailedEvent,
    TResult? Function()? clearInvoiceDetails,
  }) {
    return clearInvoiceDetails?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String searchQuery)? getInvoiceDetailsEvent,
    TResult Function()? getInvoiceDetailsFailedEvent,
    TResult Function()? clearInvoiceDetails,
    required TResult orElse(),
  }) {
    if (clearInvoiceDetails != null) {
      return clearInvoiceDetails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetInvoiceDetailsEvent value)
        getInvoiceDetailsEvent,
    required TResult Function(GetInvoiceDetailsFailedEvent value)
        getInvoiceDetailsFailedEvent,
    required TResult Function(ClearInvoiceDetails value) clearInvoiceDetails,
  }) {
    return clearInvoiceDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetInvoiceDetailsEvent value)? getInvoiceDetailsEvent,
    TResult? Function(GetInvoiceDetailsFailedEvent value)?
        getInvoiceDetailsFailedEvent,
    TResult? Function(ClearInvoiceDetails value)? clearInvoiceDetails,
  }) {
    return clearInvoiceDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetInvoiceDetailsEvent value)? getInvoiceDetailsEvent,
    TResult Function(GetInvoiceDetailsFailedEvent value)?
        getInvoiceDetailsFailedEvent,
    TResult Function(ClearInvoiceDetails value)? clearInvoiceDetails,
    required TResult orElse(),
  }) {
    if (clearInvoiceDetails != null) {
      return clearInvoiceDetails(this);
    }
    return orElse();
  }
}

abstract class ClearInvoiceDetails implements InvoiceDetailsEvent {
  const factory ClearInvoiceDetails() = _$ClearInvoiceDetailsImpl;
}

/// @nodoc
mixin _$InvoiceDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<InvoiceDetailsModel>? invdetails)
        getInvoiceDetailsState,
    required TResult Function() getInvoiceDetailsFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<InvoiceDetailsModel>? invdetails)?
        getInvoiceDetailsState,
    TResult? Function()? getInvoiceDetailsFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<InvoiceDetailsModel>? invdetails)?
        getInvoiceDetailsState,
    TResult Function()? getInvoiceDetailsFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetInvoiceDetailsState value)
        getInvoiceDetailsState,
    required TResult Function(GetInvoiceDetailsFailedState value)
        getInvoiceDetailsFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetInvoiceDetailsState value)? getInvoiceDetailsState,
    TResult? Function(GetInvoiceDetailsFailedState value)?
        getInvoiceDetailsFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetInvoiceDetailsState value)? getInvoiceDetailsState,
    TResult Function(GetInvoiceDetailsFailedState value)?
        getInvoiceDetailsFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceDetailsStateCopyWith<$Res> {
  factory $InvoiceDetailsStateCopyWith(
          InvoiceDetailsState value, $Res Function(InvoiceDetailsState) then) =
      _$InvoiceDetailsStateCopyWithImpl<$Res, InvoiceDetailsState>;
}

/// @nodoc
class _$InvoiceDetailsStateCopyWithImpl<$Res, $Val extends InvoiceDetailsState>
    implements $InvoiceDetailsStateCopyWith<$Res> {
  _$InvoiceDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InvoiceDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetInvoiceDetailsStateImplCopyWith<$Res> {
  factory _$$GetInvoiceDetailsStateImplCopyWith(
          _$GetInvoiceDetailsStateImpl value,
          $Res Function(_$GetInvoiceDetailsStateImpl) then) =
      __$$GetInvoiceDetailsStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<InvoiceDetailsModel>? invdetails});
}

/// @nodoc
class __$$GetInvoiceDetailsStateImplCopyWithImpl<$Res>
    extends _$InvoiceDetailsStateCopyWithImpl<$Res,
        _$GetInvoiceDetailsStateImpl>
    implements _$$GetInvoiceDetailsStateImplCopyWith<$Res> {
  __$$GetInvoiceDetailsStateImplCopyWithImpl(
      _$GetInvoiceDetailsStateImpl _value,
      $Res Function(_$GetInvoiceDetailsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvoiceDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? invdetails = freezed,
  }) {
    return _then(_$GetInvoiceDetailsStateImpl(
      invdetails: freezed == invdetails
          ? _value._invdetails
          : invdetails // ignore: cast_nullable_to_non_nullable
              as List<InvoiceDetailsModel>?,
    ));
  }
}

/// @nodoc

class _$GetInvoiceDetailsStateImpl implements GetInvoiceDetailsState {
  const _$GetInvoiceDetailsStateImpl(
      {required final List<InvoiceDetailsModel>? invdetails})
      : _invdetails = invdetails;

  final List<InvoiceDetailsModel>? _invdetails;
  @override
  List<InvoiceDetailsModel>? get invdetails {
    final value = _invdetails;
    if (value == null) return null;
    if (_invdetails is EqualUnmodifiableListView) return _invdetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'InvoiceDetailsState.getInvoiceDetailsState(invdetails: $invdetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetInvoiceDetailsStateImpl &&
            const DeepCollectionEquality()
                .equals(other._invdetails, _invdetails));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_invdetails));

  /// Create a copy of InvoiceDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetInvoiceDetailsStateImplCopyWith<_$GetInvoiceDetailsStateImpl>
      get copyWith => __$$GetInvoiceDetailsStateImplCopyWithImpl<
          _$GetInvoiceDetailsStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<InvoiceDetailsModel>? invdetails)
        getInvoiceDetailsState,
    required TResult Function() getInvoiceDetailsFailedState,
  }) {
    return getInvoiceDetailsState(invdetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<InvoiceDetailsModel>? invdetails)?
        getInvoiceDetailsState,
    TResult? Function()? getInvoiceDetailsFailedState,
  }) {
    return getInvoiceDetailsState?.call(invdetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<InvoiceDetailsModel>? invdetails)?
        getInvoiceDetailsState,
    TResult Function()? getInvoiceDetailsFailedState,
    required TResult orElse(),
  }) {
    if (getInvoiceDetailsState != null) {
      return getInvoiceDetailsState(invdetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetInvoiceDetailsState value)
        getInvoiceDetailsState,
    required TResult Function(GetInvoiceDetailsFailedState value)
        getInvoiceDetailsFailedState,
  }) {
    return getInvoiceDetailsState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetInvoiceDetailsState value)? getInvoiceDetailsState,
    TResult? Function(GetInvoiceDetailsFailedState value)?
        getInvoiceDetailsFailedState,
  }) {
    return getInvoiceDetailsState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetInvoiceDetailsState value)? getInvoiceDetailsState,
    TResult Function(GetInvoiceDetailsFailedState value)?
        getInvoiceDetailsFailedState,
    required TResult orElse(),
  }) {
    if (getInvoiceDetailsState != null) {
      return getInvoiceDetailsState(this);
    }
    return orElse();
  }
}

abstract class GetInvoiceDetailsState implements InvoiceDetailsState {
  const factory GetInvoiceDetailsState(
          {required final List<InvoiceDetailsModel>? invdetails}) =
      _$GetInvoiceDetailsStateImpl;

  List<InvoiceDetailsModel>? get invdetails;

  /// Create a copy of InvoiceDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetInvoiceDetailsStateImplCopyWith<_$GetInvoiceDetailsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetInvoiceDetailsFailedStateImplCopyWith<$Res> {
  factory _$$GetInvoiceDetailsFailedStateImplCopyWith(
          _$GetInvoiceDetailsFailedStateImpl value,
          $Res Function(_$GetInvoiceDetailsFailedStateImpl) then) =
      __$$GetInvoiceDetailsFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetInvoiceDetailsFailedStateImplCopyWithImpl<$Res>
    extends _$InvoiceDetailsStateCopyWithImpl<$Res,
        _$GetInvoiceDetailsFailedStateImpl>
    implements _$$GetInvoiceDetailsFailedStateImplCopyWith<$Res> {
  __$$GetInvoiceDetailsFailedStateImplCopyWithImpl(
      _$GetInvoiceDetailsFailedStateImpl _value,
      $Res Function(_$GetInvoiceDetailsFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of InvoiceDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetInvoiceDetailsFailedStateImpl
    implements GetInvoiceDetailsFailedState {
  const _$GetInvoiceDetailsFailedStateImpl();

  @override
  String toString() {
    return 'InvoiceDetailsState.getInvoiceDetailsFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetInvoiceDetailsFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<InvoiceDetailsModel>? invdetails)
        getInvoiceDetailsState,
    required TResult Function() getInvoiceDetailsFailedState,
  }) {
    return getInvoiceDetailsFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<InvoiceDetailsModel>? invdetails)?
        getInvoiceDetailsState,
    TResult? Function()? getInvoiceDetailsFailedState,
  }) {
    return getInvoiceDetailsFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<InvoiceDetailsModel>? invdetails)?
        getInvoiceDetailsState,
    TResult Function()? getInvoiceDetailsFailedState,
    required TResult orElse(),
  }) {
    if (getInvoiceDetailsFailedState != null) {
      return getInvoiceDetailsFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetInvoiceDetailsState value)
        getInvoiceDetailsState,
    required TResult Function(GetInvoiceDetailsFailedState value)
        getInvoiceDetailsFailedState,
  }) {
    return getInvoiceDetailsFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetInvoiceDetailsState value)? getInvoiceDetailsState,
    TResult? Function(GetInvoiceDetailsFailedState value)?
        getInvoiceDetailsFailedState,
  }) {
    return getInvoiceDetailsFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetInvoiceDetailsState value)? getInvoiceDetailsState,
    TResult Function(GetInvoiceDetailsFailedState value)?
        getInvoiceDetailsFailedState,
    required TResult orElse(),
  }) {
    if (getInvoiceDetailsFailedState != null) {
      return getInvoiceDetailsFailedState(this);
    }
    return orElse();
  }
}

abstract class GetInvoiceDetailsFailedState implements InvoiceDetailsState {
  const factory GetInvoiceDetailsFailedState() =
      _$GetInvoiceDetailsFailedStateImpl;
}
