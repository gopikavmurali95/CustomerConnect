// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todays_delivery_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TodaysDeliveryDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String searchQuery)
        getTodaysDeliveryDetails,
    required TResult Function() clearTodasDeliveryDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String searchQuery)? getTodaysDeliveryDetails,
    TResult? Function()? clearTodasDeliveryDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String searchQuery)? getTodaysDeliveryDetails,
    TResult Function()? clearTodasDeliveryDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTodaysDeliveryDetailsEvent value)
        getTodaysDeliveryDetails,
    required TResult Function(ClearTodasDeliveryDetails value)
        clearTodasDeliveryDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTodaysDeliveryDetailsEvent value)?
        getTodaysDeliveryDetails,
    TResult? Function(ClearTodasDeliveryDetails value)?
        clearTodasDeliveryDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTodaysDeliveryDetailsEvent value)?
        getTodaysDeliveryDetails,
    TResult Function(ClearTodasDeliveryDetails value)?
        clearTodasDeliveryDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodaysDeliveryDetailsEventCopyWith<$Res> {
  factory $TodaysDeliveryDetailsEventCopyWith(TodaysDeliveryDetailsEvent value,
          $Res Function(TodaysDeliveryDetailsEvent) then) =
      _$TodaysDeliveryDetailsEventCopyWithImpl<$Res,
          TodaysDeliveryDetailsEvent>;
}

/// @nodoc
class _$TodaysDeliveryDetailsEventCopyWithImpl<$Res,
        $Val extends TodaysDeliveryDetailsEvent>
    implements $TodaysDeliveryDetailsEventCopyWith<$Res> {
  _$TodaysDeliveryDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TodaysDeliveryDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetTodaysDeliveryDetailsEventImplCopyWith<$Res> {
  factory _$$GetTodaysDeliveryDetailsEventImplCopyWith(
          _$GetTodaysDeliveryDetailsEventImpl value,
          $Res Function(_$GetTodaysDeliveryDetailsEventImpl) then) =
      __$$GetTodaysDeliveryDetailsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, String searchQuery});
}

/// @nodoc
class __$$GetTodaysDeliveryDetailsEventImplCopyWithImpl<$Res>
    extends _$TodaysDeliveryDetailsEventCopyWithImpl<$Res,
        _$GetTodaysDeliveryDetailsEventImpl>
    implements _$$GetTodaysDeliveryDetailsEventImplCopyWith<$Res> {
  __$$GetTodaysDeliveryDetailsEventImplCopyWithImpl(
      _$GetTodaysDeliveryDetailsEventImpl _value,
      $Res Function(_$GetTodaysDeliveryDetailsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TodaysDeliveryDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? searchQuery = null,
  }) {
    return _then(_$GetTodaysDeliveryDetailsEventImpl(
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

class _$GetTodaysDeliveryDetailsEventImpl
    implements GetTodaysDeliveryDetailsEvent {
  const _$GetTodaysDeliveryDetailsEventImpl(
      {required this.id, required this.searchQuery});

  @override
  final String id;
  @override
  final String searchQuery;

  @override
  String toString() {
    return 'TodaysDeliveryDetailsEvent.getTodaysDeliveryDetails(id: $id, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTodaysDeliveryDetailsEventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, searchQuery);

  /// Create a copy of TodaysDeliveryDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTodaysDeliveryDetailsEventImplCopyWith<
          _$GetTodaysDeliveryDetailsEventImpl>
      get copyWith => __$$GetTodaysDeliveryDetailsEventImplCopyWithImpl<
          _$GetTodaysDeliveryDetailsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String searchQuery)
        getTodaysDeliveryDetails,
    required TResult Function() clearTodasDeliveryDetails,
  }) {
    return getTodaysDeliveryDetails(id, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String searchQuery)? getTodaysDeliveryDetails,
    TResult? Function()? clearTodasDeliveryDetails,
  }) {
    return getTodaysDeliveryDetails?.call(id, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String searchQuery)? getTodaysDeliveryDetails,
    TResult Function()? clearTodasDeliveryDetails,
    required TResult orElse(),
  }) {
    if (getTodaysDeliveryDetails != null) {
      return getTodaysDeliveryDetails(id, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTodaysDeliveryDetailsEvent value)
        getTodaysDeliveryDetails,
    required TResult Function(ClearTodasDeliveryDetails value)
        clearTodasDeliveryDetails,
  }) {
    return getTodaysDeliveryDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTodaysDeliveryDetailsEvent value)?
        getTodaysDeliveryDetails,
    TResult? Function(ClearTodasDeliveryDetails value)?
        clearTodasDeliveryDetails,
  }) {
    return getTodaysDeliveryDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTodaysDeliveryDetailsEvent value)?
        getTodaysDeliveryDetails,
    TResult Function(ClearTodasDeliveryDetails value)?
        clearTodasDeliveryDetails,
    required TResult orElse(),
  }) {
    if (getTodaysDeliveryDetails != null) {
      return getTodaysDeliveryDetails(this);
    }
    return orElse();
  }
}

abstract class GetTodaysDeliveryDetailsEvent
    implements TodaysDeliveryDetailsEvent {
  const factory GetTodaysDeliveryDetailsEvent(
      {required final String id,
      required final String searchQuery}) = _$GetTodaysDeliveryDetailsEventImpl;

  String get id;
  String get searchQuery;

  /// Create a copy of TodaysDeliveryDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetTodaysDeliveryDetailsEventImplCopyWith<
          _$GetTodaysDeliveryDetailsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearTodasDeliveryDetailsImplCopyWith<$Res> {
  factory _$$ClearTodasDeliveryDetailsImplCopyWith(
          _$ClearTodasDeliveryDetailsImpl value,
          $Res Function(_$ClearTodasDeliveryDetailsImpl) then) =
      __$$ClearTodasDeliveryDetailsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearTodasDeliveryDetailsImplCopyWithImpl<$Res>
    extends _$TodaysDeliveryDetailsEventCopyWithImpl<$Res,
        _$ClearTodasDeliveryDetailsImpl>
    implements _$$ClearTodasDeliveryDetailsImplCopyWith<$Res> {
  __$$ClearTodasDeliveryDetailsImplCopyWithImpl(
      _$ClearTodasDeliveryDetailsImpl _value,
      $Res Function(_$ClearTodasDeliveryDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of TodaysDeliveryDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearTodasDeliveryDetailsImpl implements ClearTodasDeliveryDetails {
  const _$ClearTodasDeliveryDetailsImpl();

  @override
  String toString() {
    return 'TodaysDeliveryDetailsEvent.clearTodasDeliveryDetails()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearTodasDeliveryDetailsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String searchQuery)
        getTodaysDeliveryDetails,
    required TResult Function() clearTodasDeliveryDetails,
  }) {
    return clearTodasDeliveryDetails();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String searchQuery)? getTodaysDeliveryDetails,
    TResult? Function()? clearTodasDeliveryDetails,
  }) {
    return clearTodasDeliveryDetails?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String searchQuery)? getTodaysDeliveryDetails,
    TResult Function()? clearTodasDeliveryDetails,
    required TResult orElse(),
  }) {
    if (clearTodasDeliveryDetails != null) {
      return clearTodasDeliveryDetails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTodaysDeliveryDetailsEvent value)
        getTodaysDeliveryDetails,
    required TResult Function(ClearTodasDeliveryDetails value)
        clearTodasDeliveryDetails,
  }) {
    return clearTodasDeliveryDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTodaysDeliveryDetailsEvent value)?
        getTodaysDeliveryDetails,
    TResult? Function(ClearTodasDeliveryDetails value)?
        clearTodasDeliveryDetails,
  }) {
    return clearTodasDeliveryDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTodaysDeliveryDetailsEvent value)?
        getTodaysDeliveryDetails,
    TResult Function(ClearTodasDeliveryDetails value)?
        clearTodasDeliveryDetails,
    required TResult orElse(),
  }) {
    if (clearTodasDeliveryDetails != null) {
      return clearTodasDeliveryDetails(this);
    }
    return orElse();
  }
}

abstract class ClearTodasDeliveryDetails implements TodaysDeliveryDetailsEvent {
  const factory ClearTodasDeliveryDetails() = _$ClearTodasDeliveryDetailsImpl;
}

/// @nodoc
mixin _$TodaysDeliveryDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TodaysDeliveryDetailsModel>? deliverydet)
        getTodaysDeliveryDetails,
    required TResult Function() todaysDeliveryFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TodaysDeliveryDetailsModel>? deliverydet)?
        getTodaysDeliveryDetails,
    TResult? Function()? todaysDeliveryFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TodaysDeliveryDetailsModel>? deliverydet)?
        getTodaysDeliveryDetails,
    TResult Function()? todaysDeliveryFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTodaysDeliveryDetailsState value)
        getTodaysDeliveryDetails,
    required TResult Function(TodaysDeliveryFailedState value)
        todaysDeliveryFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTodaysDeliveryDetailsState value)?
        getTodaysDeliveryDetails,
    TResult? Function(TodaysDeliveryFailedState value)? todaysDeliveryFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTodaysDeliveryDetailsState value)?
        getTodaysDeliveryDetails,
    TResult Function(TodaysDeliveryFailedState value)? todaysDeliveryFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodaysDeliveryDetailsStateCopyWith<$Res> {
  factory $TodaysDeliveryDetailsStateCopyWith(TodaysDeliveryDetailsState value,
          $Res Function(TodaysDeliveryDetailsState) then) =
      _$TodaysDeliveryDetailsStateCopyWithImpl<$Res,
          TodaysDeliveryDetailsState>;
}

/// @nodoc
class _$TodaysDeliveryDetailsStateCopyWithImpl<$Res,
        $Val extends TodaysDeliveryDetailsState>
    implements $TodaysDeliveryDetailsStateCopyWith<$Res> {
  _$TodaysDeliveryDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TodaysDeliveryDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetTodaysDeliveryDetailsStateImplCopyWith<$Res> {
  factory _$$GetTodaysDeliveryDetailsStateImplCopyWith(
          _$GetTodaysDeliveryDetailsStateImpl value,
          $Res Function(_$GetTodaysDeliveryDetailsStateImpl) then) =
      __$$GetTodaysDeliveryDetailsStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TodaysDeliveryDetailsModel>? deliverydet});
}

/// @nodoc
class __$$GetTodaysDeliveryDetailsStateImplCopyWithImpl<$Res>
    extends _$TodaysDeliveryDetailsStateCopyWithImpl<$Res,
        _$GetTodaysDeliveryDetailsStateImpl>
    implements _$$GetTodaysDeliveryDetailsStateImplCopyWith<$Res> {
  __$$GetTodaysDeliveryDetailsStateImplCopyWithImpl(
      _$GetTodaysDeliveryDetailsStateImpl _value,
      $Res Function(_$GetTodaysDeliveryDetailsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TodaysDeliveryDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deliverydet = freezed,
  }) {
    return _then(_$GetTodaysDeliveryDetailsStateImpl(
      deliverydet: freezed == deliverydet
          ? _value._deliverydet
          : deliverydet // ignore: cast_nullable_to_non_nullable
              as List<TodaysDeliveryDetailsModel>?,
    ));
  }
}

/// @nodoc

class _$GetTodaysDeliveryDetailsStateImpl
    implements GetTodaysDeliveryDetailsState {
  const _$GetTodaysDeliveryDetailsStateImpl(
      {required final List<TodaysDeliveryDetailsModel>? deliverydet})
      : _deliverydet = deliverydet;

  final List<TodaysDeliveryDetailsModel>? _deliverydet;
  @override
  List<TodaysDeliveryDetailsModel>? get deliverydet {
    final value = _deliverydet;
    if (value == null) return null;
    if (_deliverydet is EqualUnmodifiableListView) return _deliverydet;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TodaysDeliveryDetailsState.getTodaysDeliveryDetails(deliverydet: $deliverydet)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTodaysDeliveryDetailsStateImpl &&
            const DeepCollectionEquality()
                .equals(other._deliverydet, _deliverydet));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_deliverydet));

  /// Create a copy of TodaysDeliveryDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTodaysDeliveryDetailsStateImplCopyWith<
          _$GetTodaysDeliveryDetailsStateImpl>
      get copyWith => __$$GetTodaysDeliveryDetailsStateImplCopyWithImpl<
          _$GetTodaysDeliveryDetailsStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TodaysDeliveryDetailsModel>? deliverydet)
        getTodaysDeliveryDetails,
    required TResult Function() todaysDeliveryFailed,
  }) {
    return getTodaysDeliveryDetails(deliverydet);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TodaysDeliveryDetailsModel>? deliverydet)?
        getTodaysDeliveryDetails,
    TResult? Function()? todaysDeliveryFailed,
  }) {
    return getTodaysDeliveryDetails?.call(deliverydet);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TodaysDeliveryDetailsModel>? deliverydet)?
        getTodaysDeliveryDetails,
    TResult Function()? todaysDeliveryFailed,
    required TResult orElse(),
  }) {
    if (getTodaysDeliveryDetails != null) {
      return getTodaysDeliveryDetails(deliverydet);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTodaysDeliveryDetailsState value)
        getTodaysDeliveryDetails,
    required TResult Function(TodaysDeliveryFailedState value)
        todaysDeliveryFailed,
  }) {
    return getTodaysDeliveryDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTodaysDeliveryDetailsState value)?
        getTodaysDeliveryDetails,
    TResult? Function(TodaysDeliveryFailedState value)? todaysDeliveryFailed,
  }) {
    return getTodaysDeliveryDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTodaysDeliveryDetailsState value)?
        getTodaysDeliveryDetails,
    TResult Function(TodaysDeliveryFailedState value)? todaysDeliveryFailed,
    required TResult orElse(),
  }) {
    if (getTodaysDeliveryDetails != null) {
      return getTodaysDeliveryDetails(this);
    }
    return orElse();
  }
}

abstract class GetTodaysDeliveryDetailsState
    implements TodaysDeliveryDetailsState {
  const factory GetTodaysDeliveryDetailsState(
          {required final List<TodaysDeliveryDetailsModel>? deliverydet}) =
      _$GetTodaysDeliveryDetailsStateImpl;

  List<TodaysDeliveryDetailsModel>? get deliverydet;

  /// Create a copy of TodaysDeliveryDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetTodaysDeliveryDetailsStateImplCopyWith<
          _$GetTodaysDeliveryDetailsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TodaysDeliveryFailedStateImplCopyWith<$Res> {
  factory _$$TodaysDeliveryFailedStateImplCopyWith(
          _$TodaysDeliveryFailedStateImpl value,
          $Res Function(_$TodaysDeliveryFailedStateImpl) then) =
      __$$TodaysDeliveryFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TodaysDeliveryFailedStateImplCopyWithImpl<$Res>
    extends _$TodaysDeliveryDetailsStateCopyWithImpl<$Res,
        _$TodaysDeliveryFailedStateImpl>
    implements _$$TodaysDeliveryFailedStateImplCopyWith<$Res> {
  __$$TodaysDeliveryFailedStateImplCopyWithImpl(
      _$TodaysDeliveryFailedStateImpl _value,
      $Res Function(_$TodaysDeliveryFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TodaysDeliveryDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TodaysDeliveryFailedStateImpl implements TodaysDeliveryFailedState {
  const _$TodaysDeliveryFailedStateImpl();

  @override
  String toString() {
    return 'TodaysDeliveryDetailsState.todaysDeliveryFailed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodaysDeliveryFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TodaysDeliveryDetailsModel>? deliverydet)
        getTodaysDeliveryDetails,
    required TResult Function() todaysDeliveryFailed,
  }) {
    return todaysDeliveryFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TodaysDeliveryDetailsModel>? deliverydet)?
        getTodaysDeliveryDetails,
    TResult? Function()? todaysDeliveryFailed,
  }) {
    return todaysDeliveryFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TodaysDeliveryDetailsModel>? deliverydet)?
        getTodaysDeliveryDetails,
    TResult Function()? todaysDeliveryFailed,
    required TResult orElse(),
  }) {
    if (todaysDeliveryFailed != null) {
      return todaysDeliveryFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTodaysDeliveryDetailsState value)
        getTodaysDeliveryDetails,
    required TResult Function(TodaysDeliveryFailedState value)
        todaysDeliveryFailed,
  }) {
    return todaysDeliveryFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTodaysDeliveryDetailsState value)?
        getTodaysDeliveryDetails,
    TResult? Function(TodaysDeliveryFailedState value)? todaysDeliveryFailed,
  }) {
    return todaysDeliveryFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTodaysDeliveryDetailsState value)?
        getTodaysDeliveryDetails,
    TResult Function(TodaysDeliveryFailedState value)? todaysDeliveryFailed,
    required TResult orElse(),
  }) {
    if (todaysDeliveryFailed != null) {
      return todaysDeliveryFailed(this);
    }
    return orElse();
  }
}

abstract class TodaysDeliveryFailedState implements TodaysDeliveryDetailsState {
  const factory TodaysDeliveryFailedState() = _$TodaysDeliveryFailedStateImpl;
}
