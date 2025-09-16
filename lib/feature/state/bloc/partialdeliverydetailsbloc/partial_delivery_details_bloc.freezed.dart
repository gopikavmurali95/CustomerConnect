// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'partial_delivery_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PartialDeliveryDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String reqID, String searchQuery)
        getPartialDeliveryDetailsEvent,
    required TResult Function() clearPartialDeliveryDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String reqID, String searchQuery)?
        getPartialDeliveryDetailsEvent,
    TResult? Function()? clearPartialDeliveryDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String reqID, String searchQuery)?
        getPartialDeliveryDetailsEvent,
    TResult Function()? clearPartialDeliveryDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPartialDeliveryDetailsEvent value)
        getPartialDeliveryDetailsEvent,
    required TResult Function(ClearPartialDeliveryDetails value)
        clearPartialDeliveryDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPartialDeliveryDetailsEvent value)?
        getPartialDeliveryDetailsEvent,
    TResult? Function(ClearPartialDeliveryDetails value)?
        clearPartialDeliveryDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPartialDeliveryDetailsEvent value)?
        getPartialDeliveryDetailsEvent,
    TResult Function(ClearPartialDeliveryDetails value)?
        clearPartialDeliveryDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartialDeliveryDetailsEventCopyWith<$Res> {
  factory $PartialDeliveryDetailsEventCopyWith(
          PartialDeliveryDetailsEvent value,
          $Res Function(PartialDeliveryDetailsEvent) then) =
      _$PartialDeliveryDetailsEventCopyWithImpl<$Res,
          PartialDeliveryDetailsEvent>;
}

/// @nodoc
class _$PartialDeliveryDetailsEventCopyWithImpl<$Res,
        $Val extends PartialDeliveryDetailsEvent>
    implements $PartialDeliveryDetailsEventCopyWith<$Res> {
  _$PartialDeliveryDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PartialDeliveryDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetPartialDeliveryDetailsEventImplCopyWith<$Res> {
  factory _$$GetPartialDeliveryDetailsEventImplCopyWith(
          _$GetPartialDeliveryDetailsEventImpl value,
          $Res Function(_$GetPartialDeliveryDetailsEventImpl) then) =
      __$$GetPartialDeliveryDetailsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String reqID, String searchQuery});
}

/// @nodoc
class __$$GetPartialDeliveryDetailsEventImplCopyWithImpl<$Res>
    extends _$PartialDeliveryDetailsEventCopyWithImpl<$Res,
        _$GetPartialDeliveryDetailsEventImpl>
    implements _$$GetPartialDeliveryDetailsEventImplCopyWith<$Res> {
  __$$GetPartialDeliveryDetailsEventImplCopyWithImpl(
      _$GetPartialDeliveryDetailsEventImpl _value,
      $Res Function(_$GetPartialDeliveryDetailsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartialDeliveryDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reqID = null,
    Object? searchQuery = null,
  }) {
    return _then(_$GetPartialDeliveryDetailsEventImpl(
      reqID: null == reqID
          ? _value.reqID
          : reqID // ignore: cast_nullable_to_non_nullable
              as String,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetPartialDeliveryDetailsEventImpl
    implements GetPartialDeliveryDetailsEvent {
  const _$GetPartialDeliveryDetailsEventImpl(
      {required this.reqID, required this.searchQuery});

  @override
  final String reqID;
  @override
  final String searchQuery;

  @override
  String toString() {
    return 'PartialDeliveryDetailsEvent.getPartialDeliveryDetailsEvent(reqID: $reqID, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPartialDeliveryDetailsEventImpl &&
            (identical(other.reqID, reqID) || other.reqID == reqID) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reqID, searchQuery);

  /// Create a copy of PartialDeliveryDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPartialDeliveryDetailsEventImplCopyWith<
          _$GetPartialDeliveryDetailsEventImpl>
      get copyWith => __$$GetPartialDeliveryDetailsEventImplCopyWithImpl<
          _$GetPartialDeliveryDetailsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String reqID, String searchQuery)
        getPartialDeliveryDetailsEvent,
    required TResult Function() clearPartialDeliveryDetails,
  }) {
    return getPartialDeliveryDetailsEvent(reqID, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String reqID, String searchQuery)?
        getPartialDeliveryDetailsEvent,
    TResult? Function()? clearPartialDeliveryDetails,
  }) {
    return getPartialDeliveryDetailsEvent?.call(reqID, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String reqID, String searchQuery)?
        getPartialDeliveryDetailsEvent,
    TResult Function()? clearPartialDeliveryDetails,
    required TResult orElse(),
  }) {
    if (getPartialDeliveryDetailsEvent != null) {
      return getPartialDeliveryDetailsEvent(reqID, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPartialDeliveryDetailsEvent value)
        getPartialDeliveryDetailsEvent,
    required TResult Function(ClearPartialDeliveryDetails value)
        clearPartialDeliveryDetails,
  }) {
    return getPartialDeliveryDetailsEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPartialDeliveryDetailsEvent value)?
        getPartialDeliveryDetailsEvent,
    TResult? Function(ClearPartialDeliveryDetails value)?
        clearPartialDeliveryDetails,
  }) {
    return getPartialDeliveryDetailsEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPartialDeliveryDetailsEvent value)?
        getPartialDeliveryDetailsEvent,
    TResult Function(ClearPartialDeliveryDetails value)?
        clearPartialDeliveryDetails,
    required TResult orElse(),
  }) {
    if (getPartialDeliveryDetailsEvent != null) {
      return getPartialDeliveryDetailsEvent(this);
    }
    return orElse();
  }
}

abstract class GetPartialDeliveryDetailsEvent
    implements PartialDeliveryDetailsEvent {
  const factory GetPartialDeliveryDetailsEvent(
          {required final String reqID, required final String searchQuery}) =
      _$GetPartialDeliveryDetailsEventImpl;

  String get reqID;
  String get searchQuery;

  /// Create a copy of PartialDeliveryDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetPartialDeliveryDetailsEventImplCopyWith<
          _$GetPartialDeliveryDetailsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearPartialDeliveryDetailsImplCopyWith<$Res> {
  factory _$$ClearPartialDeliveryDetailsImplCopyWith(
          _$ClearPartialDeliveryDetailsImpl value,
          $Res Function(_$ClearPartialDeliveryDetailsImpl) then) =
      __$$ClearPartialDeliveryDetailsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearPartialDeliveryDetailsImplCopyWithImpl<$Res>
    extends _$PartialDeliveryDetailsEventCopyWithImpl<$Res,
        _$ClearPartialDeliveryDetailsImpl>
    implements _$$ClearPartialDeliveryDetailsImplCopyWith<$Res> {
  __$$ClearPartialDeliveryDetailsImplCopyWithImpl(
      _$ClearPartialDeliveryDetailsImpl _value,
      $Res Function(_$ClearPartialDeliveryDetailsImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartialDeliveryDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearPartialDeliveryDetailsImpl implements ClearPartialDeliveryDetails {
  const _$ClearPartialDeliveryDetailsImpl();

  @override
  String toString() {
    return 'PartialDeliveryDetailsEvent.clearPartialDeliveryDetails()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearPartialDeliveryDetailsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String reqID, String searchQuery)
        getPartialDeliveryDetailsEvent,
    required TResult Function() clearPartialDeliveryDetails,
  }) {
    return clearPartialDeliveryDetails();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String reqID, String searchQuery)?
        getPartialDeliveryDetailsEvent,
    TResult? Function()? clearPartialDeliveryDetails,
  }) {
    return clearPartialDeliveryDetails?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String reqID, String searchQuery)?
        getPartialDeliveryDetailsEvent,
    TResult Function()? clearPartialDeliveryDetails,
    required TResult orElse(),
  }) {
    if (clearPartialDeliveryDetails != null) {
      return clearPartialDeliveryDetails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPartialDeliveryDetailsEvent value)
        getPartialDeliveryDetailsEvent,
    required TResult Function(ClearPartialDeliveryDetails value)
        clearPartialDeliveryDetails,
  }) {
    return clearPartialDeliveryDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPartialDeliveryDetailsEvent value)?
        getPartialDeliveryDetailsEvent,
    TResult? Function(ClearPartialDeliveryDetails value)?
        clearPartialDeliveryDetails,
  }) {
    return clearPartialDeliveryDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPartialDeliveryDetailsEvent value)?
        getPartialDeliveryDetailsEvent,
    TResult Function(ClearPartialDeliveryDetails value)?
        clearPartialDeliveryDetails,
    required TResult orElse(),
  }) {
    if (clearPartialDeliveryDetails != null) {
      return clearPartialDeliveryDetails(this);
    }
    return orElse();
  }
}

abstract class ClearPartialDeliveryDetails
    implements PartialDeliveryDetailsEvent {
  const factory ClearPartialDeliveryDetails() =
      _$ClearPartialDeliveryDetailsImpl;
}

/// @nodoc
mixin _$PartialDeliveryDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PartialDeliveryDetailsModel>? details)
        getAllPartialDetliveryState,
    required TResult Function() partialDeliveryDetailsFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PartialDeliveryDetailsModel>? details)?
        getAllPartialDetliveryState,
    TResult? Function()? partialDeliveryDetailsFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PartialDeliveryDetailsModel>? details)?
        getAllPartialDetliveryState,
    TResult Function()? partialDeliveryDetailsFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllPartialDetliveryState value)
        getAllPartialDetliveryState,
    required TResult Function(PartialDeliveryDetailsFailedState value)
        partialDeliveryDetailsFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllPartialDetliveryState value)?
        getAllPartialDetliveryState,
    TResult? Function(PartialDeliveryDetailsFailedState value)?
        partialDeliveryDetailsFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllPartialDetliveryState value)?
        getAllPartialDetliveryState,
    TResult Function(PartialDeliveryDetailsFailedState value)?
        partialDeliveryDetailsFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartialDeliveryDetailsStateCopyWith<$Res> {
  factory $PartialDeliveryDetailsStateCopyWith(
          PartialDeliveryDetailsState value,
          $Res Function(PartialDeliveryDetailsState) then) =
      _$PartialDeliveryDetailsStateCopyWithImpl<$Res,
          PartialDeliveryDetailsState>;
}

/// @nodoc
class _$PartialDeliveryDetailsStateCopyWithImpl<$Res,
        $Val extends PartialDeliveryDetailsState>
    implements $PartialDeliveryDetailsStateCopyWith<$Res> {
  _$PartialDeliveryDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PartialDeliveryDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetAllPartialDetliveryStateImplCopyWith<$Res> {
  factory _$$GetAllPartialDetliveryStateImplCopyWith(
          _$GetAllPartialDetliveryStateImpl value,
          $Res Function(_$GetAllPartialDetliveryStateImpl) then) =
      __$$GetAllPartialDetliveryStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PartialDeliveryDetailsModel>? details});
}

/// @nodoc
class __$$GetAllPartialDetliveryStateImplCopyWithImpl<$Res>
    extends _$PartialDeliveryDetailsStateCopyWithImpl<$Res,
        _$GetAllPartialDetliveryStateImpl>
    implements _$$GetAllPartialDetliveryStateImplCopyWith<$Res> {
  __$$GetAllPartialDetliveryStateImplCopyWithImpl(
      _$GetAllPartialDetliveryStateImpl _value,
      $Res Function(_$GetAllPartialDetliveryStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartialDeliveryDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? details = freezed,
  }) {
    return _then(_$GetAllPartialDetliveryStateImpl(
      details: freezed == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<PartialDeliveryDetailsModel>?,
    ));
  }
}

/// @nodoc

class _$GetAllPartialDetliveryStateImpl implements GetAllPartialDetliveryState {
  const _$GetAllPartialDetliveryStateImpl(
      {required final List<PartialDeliveryDetailsModel>? details})
      : _details = details;

  final List<PartialDeliveryDetailsModel>? _details;
  @override
  List<PartialDeliveryDetailsModel>? get details {
    final value = _details;
    if (value == null) return null;
    if (_details is EqualUnmodifiableListView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PartialDeliveryDetailsState.getAllPartialDetliveryState(details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllPartialDetliveryStateImpl &&
            const DeepCollectionEquality().equals(other._details, _details));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_details));

  /// Create a copy of PartialDeliveryDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllPartialDetliveryStateImplCopyWith<_$GetAllPartialDetliveryStateImpl>
      get copyWith => __$$GetAllPartialDetliveryStateImplCopyWithImpl<
          _$GetAllPartialDetliveryStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PartialDeliveryDetailsModel>? details)
        getAllPartialDetliveryState,
    required TResult Function() partialDeliveryDetailsFailedState,
  }) {
    return getAllPartialDetliveryState(details);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PartialDeliveryDetailsModel>? details)?
        getAllPartialDetliveryState,
    TResult? Function()? partialDeliveryDetailsFailedState,
  }) {
    return getAllPartialDetliveryState?.call(details);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PartialDeliveryDetailsModel>? details)?
        getAllPartialDetliveryState,
    TResult Function()? partialDeliveryDetailsFailedState,
    required TResult orElse(),
  }) {
    if (getAllPartialDetliveryState != null) {
      return getAllPartialDetliveryState(details);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllPartialDetliveryState value)
        getAllPartialDetliveryState,
    required TResult Function(PartialDeliveryDetailsFailedState value)
        partialDeliveryDetailsFailedState,
  }) {
    return getAllPartialDetliveryState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllPartialDetliveryState value)?
        getAllPartialDetliveryState,
    TResult? Function(PartialDeliveryDetailsFailedState value)?
        partialDeliveryDetailsFailedState,
  }) {
    return getAllPartialDetliveryState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllPartialDetliveryState value)?
        getAllPartialDetliveryState,
    TResult Function(PartialDeliveryDetailsFailedState value)?
        partialDeliveryDetailsFailedState,
    required TResult orElse(),
  }) {
    if (getAllPartialDetliveryState != null) {
      return getAllPartialDetliveryState(this);
    }
    return orElse();
  }
}

abstract class GetAllPartialDetliveryState
    implements PartialDeliveryDetailsState {
  const factory GetAllPartialDetliveryState(
          {required final List<PartialDeliveryDetailsModel>? details}) =
      _$GetAllPartialDetliveryStateImpl;

  List<PartialDeliveryDetailsModel>? get details;

  /// Create a copy of PartialDeliveryDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAllPartialDetliveryStateImplCopyWith<_$GetAllPartialDetliveryStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PartialDeliveryDetailsFailedStateImplCopyWith<$Res> {
  factory _$$PartialDeliveryDetailsFailedStateImplCopyWith(
          _$PartialDeliveryDetailsFailedStateImpl value,
          $Res Function(_$PartialDeliveryDetailsFailedStateImpl) then) =
      __$$PartialDeliveryDetailsFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PartialDeliveryDetailsFailedStateImplCopyWithImpl<$Res>
    extends _$PartialDeliveryDetailsStateCopyWithImpl<$Res,
        _$PartialDeliveryDetailsFailedStateImpl>
    implements _$$PartialDeliveryDetailsFailedStateImplCopyWith<$Res> {
  __$$PartialDeliveryDetailsFailedStateImplCopyWithImpl(
      _$PartialDeliveryDetailsFailedStateImpl _value,
      $Res Function(_$PartialDeliveryDetailsFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PartialDeliveryDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PartialDeliveryDetailsFailedStateImpl
    implements PartialDeliveryDetailsFailedState {
  const _$PartialDeliveryDetailsFailedStateImpl();

  @override
  String toString() {
    return 'PartialDeliveryDetailsState.partialDeliveryDetailsFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PartialDeliveryDetailsFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PartialDeliveryDetailsModel>? details)
        getAllPartialDetliveryState,
    required TResult Function() partialDeliveryDetailsFailedState,
  }) {
    return partialDeliveryDetailsFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PartialDeliveryDetailsModel>? details)?
        getAllPartialDetliveryState,
    TResult? Function()? partialDeliveryDetailsFailedState,
  }) {
    return partialDeliveryDetailsFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PartialDeliveryDetailsModel>? details)?
        getAllPartialDetliveryState,
    TResult Function()? partialDeliveryDetailsFailedState,
    required TResult orElse(),
  }) {
    if (partialDeliveryDetailsFailedState != null) {
      return partialDeliveryDetailsFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllPartialDetliveryState value)
        getAllPartialDetliveryState,
    required TResult Function(PartialDeliveryDetailsFailedState value)
        partialDeliveryDetailsFailedState,
  }) {
    return partialDeliveryDetailsFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllPartialDetliveryState value)?
        getAllPartialDetliveryState,
    TResult? Function(PartialDeliveryDetailsFailedState value)?
        partialDeliveryDetailsFailedState,
  }) {
    return partialDeliveryDetailsFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllPartialDetliveryState value)?
        getAllPartialDetliveryState,
    TResult Function(PartialDeliveryDetailsFailedState value)?
        partialDeliveryDetailsFailedState,
    required TResult orElse(),
  }) {
    if (partialDeliveryDetailsFailedState != null) {
      return partialDeliveryDetailsFailedState(this);
    }
    return orElse();
  }
}

abstract class PartialDeliveryDetailsFailedState
    implements PartialDeliveryDetailsState {
  const factory PartialDeliveryDetailsFailedState() =
      _$PartialDeliveryDetailsFailedStateImpl;
}
