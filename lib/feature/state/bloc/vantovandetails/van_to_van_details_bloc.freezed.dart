// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'van_to_van_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VanToVanDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String reqID, String searchQuery)
        getVanToVanDetailEvent,
    required TResult Function() clearVanToVanDetailEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String reqID, String searchQuery)? getVanToVanDetailEvent,
    TResult? Function()? clearVanToVanDetailEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String reqID, String searchQuery)? getVanToVanDetailEvent,
    TResult Function()? clearVanToVanDetailEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetVanToVanDetailEvent value)
        getVanToVanDetailEvent,
    required TResult Function(clearVanToVanDetailEvent value)
        clearVanToVanDetailEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetVanToVanDetailEvent value)? getVanToVanDetailEvent,
    TResult? Function(clearVanToVanDetailEvent value)? clearVanToVanDetailEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetVanToVanDetailEvent value)? getVanToVanDetailEvent,
    TResult Function(clearVanToVanDetailEvent value)? clearVanToVanDetailEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VanToVanDetailsEventCopyWith<$Res> {
  factory $VanToVanDetailsEventCopyWith(VanToVanDetailsEvent value,
          $Res Function(VanToVanDetailsEvent) then) =
      _$VanToVanDetailsEventCopyWithImpl<$Res, VanToVanDetailsEvent>;
}

/// @nodoc
class _$VanToVanDetailsEventCopyWithImpl<$Res,
        $Val extends VanToVanDetailsEvent>
    implements $VanToVanDetailsEventCopyWith<$Res> {
  _$VanToVanDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VanToVanDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetVanToVanDetailEventImplCopyWith<$Res> {
  factory _$$GetVanToVanDetailEventImplCopyWith(
          _$GetVanToVanDetailEventImpl value,
          $Res Function(_$GetVanToVanDetailEventImpl) then) =
      __$$GetVanToVanDetailEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String reqID, String searchQuery});
}

/// @nodoc
class __$$GetVanToVanDetailEventImplCopyWithImpl<$Res>
    extends _$VanToVanDetailsEventCopyWithImpl<$Res,
        _$GetVanToVanDetailEventImpl>
    implements _$$GetVanToVanDetailEventImplCopyWith<$Res> {
  __$$GetVanToVanDetailEventImplCopyWithImpl(
      _$GetVanToVanDetailEventImpl _value,
      $Res Function(_$GetVanToVanDetailEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of VanToVanDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reqID = null,
    Object? searchQuery = null,
  }) {
    return _then(_$GetVanToVanDetailEventImpl(
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

class _$GetVanToVanDetailEventImpl implements GetVanToVanDetailEvent {
  const _$GetVanToVanDetailEventImpl(
      {required this.reqID, required this.searchQuery});

  @override
  final String reqID;
  @override
  final String searchQuery;

  @override
  String toString() {
    return 'VanToVanDetailsEvent.getVanToVanDetailEvent(reqID: $reqID, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetVanToVanDetailEventImpl &&
            (identical(other.reqID, reqID) || other.reqID == reqID) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reqID, searchQuery);

  /// Create a copy of VanToVanDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetVanToVanDetailEventImplCopyWith<_$GetVanToVanDetailEventImpl>
      get copyWith => __$$GetVanToVanDetailEventImplCopyWithImpl<
          _$GetVanToVanDetailEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String reqID, String searchQuery)
        getVanToVanDetailEvent,
    required TResult Function() clearVanToVanDetailEvent,
  }) {
    return getVanToVanDetailEvent(reqID, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String reqID, String searchQuery)? getVanToVanDetailEvent,
    TResult? Function()? clearVanToVanDetailEvent,
  }) {
    return getVanToVanDetailEvent?.call(reqID, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String reqID, String searchQuery)? getVanToVanDetailEvent,
    TResult Function()? clearVanToVanDetailEvent,
    required TResult orElse(),
  }) {
    if (getVanToVanDetailEvent != null) {
      return getVanToVanDetailEvent(reqID, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetVanToVanDetailEvent value)
        getVanToVanDetailEvent,
    required TResult Function(clearVanToVanDetailEvent value)
        clearVanToVanDetailEvent,
  }) {
    return getVanToVanDetailEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetVanToVanDetailEvent value)? getVanToVanDetailEvent,
    TResult? Function(clearVanToVanDetailEvent value)? clearVanToVanDetailEvent,
  }) {
    return getVanToVanDetailEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetVanToVanDetailEvent value)? getVanToVanDetailEvent,
    TResult Function(clearVanToVanDetailEvent value)? clearVanToVanDetailEvent,
    required TResult orElse(),
  }) {
    if (getVanToVanDetailEvent != null) {
      return getVanToVanDetailEvent(this);
    }
    return orElse();
  }
}

abstract class GetVanToVanDetailEvent implements VanToVanDetailsEvent {
  const factory GetVanToVanDetailEvent(
      {required final String reqID,
      required final String searchQuery}) = _$GetVanToVanDetailEventImpl;

  String get reqID;
  String get searchQuery;

  /// Create a copy of VanToVanDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetVanToVanDetailEventImplCopyWith<_$GetVanToVanDetailEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$clearVanToVanDetailEventImplCopyWith<$Res> {
  factory _$$clearVanToVanDetailEventImplCopyWith(
          _$clearVanToVanDetailEventImpl value,
          $Res Function(_$clearVanToVanDetailEventImpl) then) =
      __$$clearVanToVanDetailEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$clearVanToVanDetailEventImplCopyWithImpl<$Res>
    extends _$VanToVanDetailsEventCopyWithImpl<$Res,
        _$clearVanToVanDetailEventImpl>
    implements _$$clearVanToVanDetailEventImplCopyWith<$Res> {
  __$$clearVanToVanDetailEventImplCopyWithImpl(
      _$clearVanToVanDetailEventImpl _value,
      $Res Function(_$clearVanToVanDetailEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of VanToVanDetailsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$clearVanToVanDetailEventImpl implements clearVanToVanDetailEvent {
  const _$clearVanToVanDetailEventImpl();

  @override
  String toString() {
    return 'VanToVanDetailsEvent.clearVanToVanDetailEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$clearVanToVanDetailEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String reqID, String searchQuery)
        getVanToVanDetailEvent,
    required TResult Function() clearVanToVanDetailEvent,
  }) {
    return clearVanToVanDetailEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String reqID, String searchQuery)? getVanToVanDetailEvent,
    TResult? Function()? clearVanToVanDetailEvent,
  }) {
    return clearVanToVanDetailEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String reqID, String searchQuery)? getVanToVanDetailEvent,
    TResult Function()? clearVanToVanDetailEvent,
    required TResult orElse(),
  }) {
    if (clearVanToVanDetailEvent != null) {
      return clearVanToVanDetailEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetVanToVanDetailEvent value)
        getVanToVanDetailEvent,
    required TResult Function(clearVanToVanDetailEvent value)
        clearVanToVanDetailEvent,
  }) {
    return clearVanToVanDetailEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetVanToVanDetailEvent value)? getVanToVanDetailEvent,
    TResult? Function(clearVanToVanDetailEvent value)? clearVanToVanDetailEvent,
  }) {
    return clearVanToVanDetailEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetVanToVanDetailEvent value)? getVanToVanDetailEvent,
    TResult Function(clearVanToVanDetailEvent value)? clearVanToVanDetailEvent,
    required TResult orElse(),
  }) {
    if (clearVanToVanDetailEvent != null) {
      return clearVanToVanDetailEvent(this);
    }
    return orElse();
  }
}

abstract class clearVanToVanDetailEvent implements VanToVanDetailsEvent {
  const factory clearVanToVanDetailEvent() = _$clearVanToVanDetailEventImpl;
}

/// @nodoc
mixin _$VanToVanDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<VanToVanDetailsModel>? details)
        getVanToVanDetailsState,
    required TResult Function() vanToVanDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<VanToVanDetailsModel>? details)?
        getVanToVanDetailsState,
    TResult? Function()? vanToVanDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<VanToVanDetailsModel>? details)?
        getVanToVanDetailsState,
    TResult Function()? vanToVanDetailFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(getVanToVanDetailsState value)
        getVanToVanDetailsState,
    required TResult Function(vanToVanDetailFailedState value)
        vanToVanDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(getVanToVanDetailsState value)? getVanToVanDetailsState,
    TResult? Function(vanToVanDetailFailedState value)?
        vanToVanDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(getVanToVanDetailsState value)? getVanToVanDetailsState,
    TResult Function(vanToVanDetailFailedState value)?
        vanToVanDetailFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VanToVanDetailsStateCopyWith<$Res> {
  factory $VanToVanDetailsStateCopyWith(VanToVanDetailsState value,
          $Res Function(VanToVanDetailsState) then) =
      _$VanToVanDetailsStateCopyWithImpl<$Res, VanToVanDetailsState>;
}

/// @nodoc
class _$VanToVanDetailsStateCopyWithImpl<$Res,
        $Val extends VanToVanDetailsState>
    implements $VanToVanDetailsStateCopyWith<$Res> {
  _$VanToVanDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VanToVanDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$getVanToVanDetailsStateImplCopyWith<$Res> {
  factory _$$getVanToVanDetailsStateImplCopyWith(
          _$getVanToVanDetailsStateImpl value,
          $Res Function(_$getVanToVanDetailsStateImpl) then) =
      __$$getVanToVanDetailsStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<VanToVanDetailsModel>? details});
}

/// @nodoc
class __$$getVanToVanDetailsStateImplCopyWithImpl<$Res>
    extends _$VanToVanDetailsStateCopyWithImpl<$Res,
        _$getVanToVanDetailsStateImpl>
    implements _$$getVanToVanDetailsStateImplCopyWith<$Res> {
  __$$getVanToVanDetailsStateImplCopyWithImpl(
      _$getVanToVanDetailsStateImpl _value,
      $Res Function(_$getVanToVanDetailsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of VanToVanDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? details = freezed,
  }) {
    return _then(_$getVanToVanDetailsStateImpl(
      details: freezed == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<VanToVanDetailsModel>?,
    ));
  }
}

/// @nodoc

class _$getVanToVanDetailsStateImpl implements getVanToVanDetailsState {
  const _$getVanToVanDetailsStateImpl(
      {required final List<VanToVanDetailsModel>? details})
      : _details = details;

  final List<VanToVanDetailsModel>? _details;
  @override
  List<VanToVanDetailsModel>? get details {
    final value = _details;
    if (value == null) return null;
    if (_details is EqualUnmodifiableListView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'VanToVanDetailsState.getVanToVanDetailsState(details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getVanToVanDetailsStateImpl &&
            const DeepCollectionEquality().equals(other._details, _details));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_details));

  /// Create a copy of VanToVanDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$getVanToVanDetailsStateImplCopyWith<_$getVanToVanDetailsStateImpl>
      get copyWith => __$$getVanToVanDetailsStateImplCopyWithImpl<
          _$getVanToVanDetailsStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<VanToVanDetailsModel>? details)
        getVanToVanDetailsState,
    required TResult Function() vanToVanDetailFailedState,
  }) {
    return getVanToVanDetailsState(details);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<VanToVanDetailsModel>? details)?
        getVanToVanDetailsState,
    TResult? Function()? vanToVanDetailFailedState,
  }) {
    return getVanToVanDetailsState?.call(details);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<VanToVanDetailsModel>? details)?
        getVanToVanDetailsState,
    TResult Function()? vanToVanDetailFailedState,
    required TResult orElse(),
  }) {
    if (getVanToVanDetailsState != null) {
      return getVanToVanDetailsState(details);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(getVanToVanDetailsState value)
        getVanToVanDetailsState,
    required TResult Function(vanToVanDetailFailedState value)
        vanToVanDetailFailedState,
  }) {
    return getVanToVanDetailsState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(getVanToVanDetailsState value)? getVanToVanDetailsState,
    TResult? Function(vanToVanDetailFailedState value)?
        vanToVanDetailFailedState,
  }) {
    return getVanToVanDetailsState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(getVanToVanDetailsState value)? getVanToVanDetailsState,
    TResult Function(vanToVanDetailFailedState value)?
        vanToVanDetailFailedState,
    required TResult orElse(),
  }) {
    if (getVanToVanDetailsState != null) {
      return getVanToVanDetailsState(this);
    }
    return orElse();
  }
}

abstract class getVanToVanDetailsState implements VanToVanDetailsState {
  const factory getVanToVanDetailsState(
          {required final List<VanToVanDetailsModel>? details}) =
      _$getVanToVanDetailsStateImpl;

  List<VanToVanDetailsModel>? get details;

  /// Create a copy of VanToVanDetailsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$getVanToVanDetailsStateImplCopyWith<_$getVanToVanDetailsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$vanToVanDetailFailedStateImplCopyWith<$Res> {
  factory _$$vanToVanDetailFailedStateImplCopyWith(
          _$vanToVanDetailFailedStateImpl value,
          $Res Function(_$vanToVanDetailFailedStateImpl) then) =
      __$$vanToVanDetailFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$vanToVanDetailFailedStateImplCopyWithImpl<$Res>
    extends _$VanToVanDetailsStateCopyWithImpl<$Res,
        _$vanToVanDetailFailedStateImpl>
    implements _$$vanToVanDetailFailedStateImplCopyWith<$Res> {
  __$$vanToVanDetailFailedStateImplCopyWithImpl(
      _$vanToVanDetailFailedStateImpl _value,
      $Res Function(_$vanToVanDetailFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of VanToVanDetailsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$vanToVanDetailFailedStateImpl implements vanToVanDetailFailedState {
  const _$vanToVanDetailFailedStateImpl();

  @override
  String toString() {
    return 'VanToVanDetailsState.vanToVanDetailFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$vanToVanDetailFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<VanToVanDetailsModel>? details)
        getVanToVanDetailsState,
    required TResult Function() vanToVanDetailFailedState,
  }) {
    return vanToVanDetailFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<VanToVanDetailsModel>? details)?
        getVanToVanDetailsState,
    TResult? Function()? vanToVanDetailFailedState,
  }) {
    return vanToVanDetailFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<VanToVanDetailsModel>? details)?
        getVanToVanDetailsState,
    TResult Function()? vanToVanDetailFailedState,
    required TResult orElse(),
  }) {
    if (vanToVanDetailFailedState != null) {
      return vanToVanDetailFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(getVanToVanDetailsState value)
        getVanToVanDetailsState,
    required TResult Function(vanToVanDetailFailedState value)
        vanToVanDetailFailedState,
  }) {
    return vanToVanDetailFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(getVanToVanDetailsState value)? getVanToVanDetailsState,
    TResult? Function(vanToVanDetailFailedState value)?
        vanToVanDetailFailedState,
  }) {
    return vanToVanDetailFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(getVanToVanDetailsState value)? getVanToVanDetailsState,
    TResult Function(vanToVanDetailFailedState value)?
        vanToVanDetailFailedState,
    required TResult orElse(),
  }) {
    if (vanToVanDetailFailedState != null) {
      return vanToVanDetailFailedState(this);
    }
    return orElse();
  }
}

abstract class vanToVanDetailFailedState implements VanToVanDetailsState {
  const factory vanToVanDetailFailedState() = _$vanToVanDetailFailedStateImpl;
}
