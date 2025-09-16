// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'load_req_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoadReqDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String reqId, String searchQuery)
        getloadreqdetailEvent,
    required TResult Function() clearLodReqDetailEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String reqId, String searchQuery)? getloadreqdetailEvent,
    TResult? Function()? clearLodReqDetailEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String reqId, String searchQuery)? getloadreqdetailEvent,
    TResult Function()? clearLodReqDetailEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetloadreqdetailEvent value)
        getloadreqdetailEvent,
    required TResult Function(ClearLodReqDetailEvent value)
        clearLodReqDetailEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetloadreqdetailEvent value)? getloadreqdetailEvent,
    TResult? Function(ClearLodReqDetailEvent value)? clearLodReqDetailEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetloadreqdetailEvent value)? getloadreqdetailEvent,
    TResult Function(ClearLodReqDetailEvent value)? clearLodReqDetailEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadReqDetailEventCopyWith<$Res> {
  factory $LoadReqDetailEventCopyWith(
          LoadReqDetailEvent value, $Res Function(LoadReqDetailEvent) then) =
      _$LoadReqDetailEventCopyWithImpl<$Res, LoadReqDetailEvent>;
}

/// @nodoc
class _$LoadReqDetailEventCopyWithImpl<$Res, $Val extends LoadReqDetailEvent>
    implements $LoadReqDetailEventCopyWith<$Res> {
  _$LoadReqDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoadReqDetailEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetloadreqdetailEventImplCopyWith<$Res> {
  factory _$$GetloadreqdetailEventImplCopyWith(
          _$GetloadreqdetailEventImpl value,
          $Res Function(_$GetloadreqdetailEventImpl) then) =
      __$$GetloadreqdetailEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String reqId, String searchQuery});
}

/// @nodoc
class __$$GetloadreqdetailEventImplCopyWithImpl<$Res>
    extends _$LoadReqDetailEventCopyWithImpl<$Res, _$GetloadreqdetailEventImpl>
    implements _$$GetloadreqdetailEventImplCopyWith<$Res> {
  __$$GetloadreqdetailEventImplCopyWithImpl(_$GetloadreqdetailEventImpl _value,
      $Res Function(_$GetloadreqdetailEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoadReqDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reqId = null,
    Object? searchQuery = null,
  }) {
    return _then(_$GetloadreqdetailEventImpl(
      reqId: null == reqId
          ? _value.reqId
          : reqId // ignore: cast_nullable_to_non_nullable
              as String,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetloadreqdetailEventImpl implements GetloadreqdetailEvent {
  const _$GetloadreqdetailEventImpl(
      {required this.reqId, required this.searchQuery});

  @override
  final String reqId;
  @override
  final String searchQuery;

  @override
  String toString() {
    return 'LoadReqDetailEvent.getloadreqdetailEvent(reqId: $reqId, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetloadreqdetailEventImpl &&
            (identical(other.reqId, reqId) || other.reqId == reqId) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reqId, searchQuery);

  /// Create a copy of LoadReqDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetloadreqdetailEventImplCopyWith<_$GetloadreqdetailEventImpl>
      get copyWith => __$$GetloadreqdetailEventImplCopyWithImpl<
          _$GetloadreqdetailEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String reqId, String searchQuery)
        getloadreqdetailEvent,
    required TResult Function() clearLodReqDetailEvent,
  }) {
    return getloadreqdetailEvent(reqId, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String reqId, String searchQuery)? getloadreqdetailEvent,
    TResult? Function()? clearLodReqDetailEvent,
  }) {
    return getloadreqdetailEvent?.call(reqId, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String reqId, String searchQuery)? getloadreqdetailEvent,
    TResult Function()? clearLodReqDetailEvent,
    required TResult orElse(),
  }) {
    if (getloadreqdetailEvent != null) {
      return getloadreqdetailEvent(reqId, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetloadreqdetailEvent value)
        getloadreqdetailEvent,
    required TResult Function(ClearLodReqDetailEvent value)
        clearLodReqDetailEvent,
  }) {
    return getloadreqdetailEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetloadreqdetailEvent value)? getloadreqdetailEvent,
    TResult? Function(ClearLodReqDetailEvent value)? clearLodReqDetailEvent,
  }) {
    return getloadreqdetailEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetloadreqdetailEvent value)? getloadreqdetailEvent,
    TResult Function(ClearLodReqDetailEvent value)? clearLodReqDetailEvent,
    required TResult orElse(),
  }) {
    if (getloadreqdetailEvent != null) {
      return getloadreqdetailEvent(this);
    }
    return orElse();
  }
}

abstract class GetloadreqdetailEvent implements LoadReqDetailEvent {
  const factory GetloadreqdetailEvent(
      {required final String reqId,
      required final String searchQuery}) = _$GetloadreqdetailEventImpl;

  String get reqId;
  String get searchQuery;

  /// Create a copy of LoadReqDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetloadreqdetailEventImplCopyWith<_$GetloadreqdetailEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearLodReqDetailEventImplCopyWith<$Res> {
  factory _$$ClearLodReqDetailEventImplCopyWith(
          _$ClearLodReqDetailEventImpl value,
          $Res Function(_$ClearLodReqDetailEventImpl) then) =
      __$$ClearLodReqDetailEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearLodReqDetailEventImplCopyWithImpl<$Res>
    extends _$LoadReqDetailEventCopyWithImpl<$Res, _$ClearLodReqDetailEventImpl>
    implements _$$ClearLodReqDetailEventImplCopyWith<$Res> {
  __$$ClearLodReqDetailEventImplCopyWithImpl(
      _$ClearLodReqDetailEventImpl _value,
      $Res Function(_$ClearLodReqDetailEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoadReqDetailEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearLodReqDetailEventImpl implements ClearLodReqDetailEvent {
  const _$ClearLodReqDetailEventImpl();

  @override
  String toString() {
    return 'LoadReqDetailEvent.clearLodReqDetailEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearLodReqDetailEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String reqId, String searchQuery)
        getloadreqdetailEvent,
    required TResult Function() clearLodReqDetailEvent,
  }) {
    return clearLodReqDetailEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String reqId, String searchQuery)? getloadreqdetailEvent,
    TResult? Function()? clearLodReqDetailEvent,
  }) {
    return clearLodReqDetailEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String reqId, String searchQuery)? getloadreqdetailEvent,
    TResult Function()? clearLodReqDetailEvent,
    required TResult orElse(),
  }) {
    if (clearLodReqDetailEvent != null) {
      return clearLodReqDetailEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetloadreqdetailEvent value)
        getloadreqdetailEvent,
    required TResult Function(ClearLodReqDetailEvent value)
        clearLodReqDetailEvent,
  }) {
    return clearLodReqDetailEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetloadreqdetailEvent value)? getloadreqdetailEvent,
    TResult? Function(ClearLodReqDetailEvent value)? clearLodReqDetailEvent,
  }) {
    return clearLodReqDetailEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetloadreqdetailEvent value)? getloadreqdetailEvent,
    TResult Function(ClearLodReqDetailEvent value)? clearLodReqDetailEvent,
    required TResult orElse(),
  }) {
    if (clearLodReqDetailEvent != null) {
      return clearLodReqDetailEvent(this);
    }
    return orElse();
  }
}

abstract class ClearLodReqDetailEvent implements LoadReqDetailEvent {
  const factory ClearLodReqDetailEvent() = _$ClearLodReqDetailEventImpl;
}

/// @nodoc
mixin _$LoadReqDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<LoadReqDetailModel>? details)
        loadreqDetailSuccessState,
    required TResult Function() loadreqDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<LoadReqDetailModel>? details)?
        loadreqDetailSuccessState,
    TResult? Function()? loadreqDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<LoadReqDetailModel>? details)?
        loadreqDetailSuccessState,
    TResult Function()? loadreqDetailFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadreqDetailSuccessState value)
        loadreqDetailSuccessState,
    required TResult Function(LoadreqDetailFailedState value)
        loadreqDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadreqDetailSuccessState value)?
        loadreqDetailSuccessState,
    TResult? Function(LoadreqDetailFailedState value)? loadreqDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadreqDetailSuccessState value)?
        loadreqDetailSuccessState,
    TResult Function(LoadreqDetailFailedState value)? loadreqDetailFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadReqDetailStateCopyWith<$Res> {
  factory $LoadReqDetailStateCopyWith(
          LoadReqDetailState value, $Res Function(LoadReqDetailState) then) =
      _$LoadReqDetailStateCopyWithImpl<$Res, LoadReqDetailState>;
}

/// @nodoc
class _$LoadReqDetailStateCopyWithImpl<$Res, $Val extends LoadReqDetailState>
    implements $LoadReqDetailStateCopyWith<$Res> {
  _$LoadReqDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoadReqDetailState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadreqDetailSuccessStateImplCopyWith<$Res> {
  factory _$$LoadreqDetailSuccessStateImplCopyWith(
          _$LoadreqDetailSuccessStateImpl value,
          $Res Function(_$LoadreqDetailSuccessStateImpl) then) =
      __$$LoadreqDetailSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<LoadReqDetailModel>? details});
}

/// @nodoc
class __$$LoadreqDetailSuccessStateImplCopyWithImpl<$Res>
    extends _$LoadReqDetailStateCopyWithImpl<$Res,
        _$LoadreqDetailSuccessStateImpl>
    implements _$$LoadreqDetailSuccessStateImplCopyWith<$Res> {
  __$$LoadreqDetailSuccessStateImplCopyWithImpl(
      _$LoadreqDetailSuccessStateImpl _value,
      $Res Function(_$LoadreqDetailSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoadReqDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? details = freezed,
  }) {
    return _then(_$LoadreqDetailSuccessStateImpl(
      details: freezed == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<LoadReqDetailModel>?,
    ));
  }
}

/// @nodoc

class _$LoadreqDetailSuccessStateImpl implements LoadreqDetailSuccessState {
  const _$LoadreqDetailSuccessStateImpl(
      {required final List<LoadReqDetailModel>? details})
      : _details = details;

  final List<LoadReqDetailModel>? _details;
  @override
  List<LoadReqDetailModel>? get details {
    final value = _details;
    if (value == null) return null;
    if (_details is EqualUnmodifiableListView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LoadReqDetailState.loadreqDetailSuccessState(details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadreqDetailSuccessStateImpl &&
            const DeepCollectionEquality().equals(other._details, _details));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_details));

  /// Create a copy of LoadReqDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadreqDetailSuccessStateImplCopyWith<_$LoadreqDetailSuccessStateImpl>
      get copyWith => __$$LoadreqDetailSuccessStateImplCopyWithImpl<
          _$LoadreqDetailSuccessStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<LoadReqDetailModel>? details)
        loadreqDetailSuccessState,
    required TResult Function() loadreqDetailFailedState,
  }) {
    return loadreqDetailSuccessState(details);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<LoadReqDetailModel>? details)?
        loadreqDetailSuccessState,
    TResult? Function()? loadreqDetailFailedState,
  }) {
    return loadreqDetailSuccessState?.call(details);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<LoadReqDetailModel>? details)?
        loadreqDetailSuccessState,
    TResult Function()? loadreqDetailFailedState,
    required TResult orElse(),
  }) {
    if (loadreqDetailSuccessState != null) {
      return loadreqDetailSuccessState(details);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadreqDetailSuccessState value)
        loadreqDetailSuccessState,
    required TResult Function(LoadreqDetailFailedState value)
        loadreqDetailFailedState,
  }) {
    return loadreqDetailSuccessState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadreqDetailSuccessState value)?
        loadreqDetailSuccessState,
    TResult? Function(LoadreqDetailFailedState value)? loadreqDetailFailedState,
  }) {
    return loadreqDetailSuccessState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadreqDetailSuccessState value)?
        loadreqDetailSuccessState,
    TResult Function(LoadreqDetailFailedState value)? loadreqDetailFailedState,
    required TResult orElse(),
  }) {
    if (loadreqDetailSuccessState != null) {
      return loadreqDetailSuccessState(this);
    }
    return orElse();
  }
}

abstract class LoadreqDetailSuccessState implements LoadReqDetailState {
  const factory LoadreqDetailSuccessState(
          {required final List<LoadReqDetailModel>? details}) =
      _$LoadreqDetailSuccessStateImpl;

  List<LoadReqDetailModel>? get details;

  /// Create a copy of LoadReqDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadreqDetailSuccessStateImplCopyWith<_$LoadreqDetailSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadreqDetailFailedStateImplCopyWith<$Res> {
  factory _$$LoadreqDetailFailedStateImplCopyWith(
          _$LoadreqDetailFailedStateImpl value,
          $Res Function(_$LoadreqDetailFailedStateImpl) then) =
      __$$LoadreqDetailFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadreqDetailFailedStateImplCopyWithImpl<$Res>
    extends _$LoadReqDetailStateCopyWithImpl<$Res,
        _$LoadreqDetailFailedStateImpl>
    implements _$$LoadreqDetailFailedStateImplCopyWith<$Res> {
  __$$LoadreqDetailFailedStateImplCopyWithImpl(
      _$LoadreqDetailFailedStateImpl _value,
      $Res Function(_$LoadreqDetailFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoadReqDetailState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadreqDetailFailedStateImpl implements LoadreqDetailFailedState {
  const _$LoadreqDetailFailedStateImpl();

  @override
  String toString() {
    return 'LoadReqDetailState.loadreqDetailFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadreqDetailFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<LoadReqDetailModel>? details)
        loadreqDetailSuccessState,
    required TResult Function() loadreqDetailFailedState,
  }) {
    return loadreqDetailFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<LoadReqDetailModel>? details)?
        loadreqDetailSuccessState,
    TResult? Function()? loadreqDetailFailedState,
  }) {
    return loadreqDetailFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<LoadReqDetailModel>? details)?
        loadreqDetailSuccessState,
    TResult Function()? loadreqDetailFailedState,
    required TResult orElse(),
  }) {
    if (loadreqDetailFailedState != null) {
      return loadreqDetailFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadreqDetailSuccessState value)
        loadreqDetailSuccessState,
    required TResult Function(LoadreqDetailFailedState value)
        loadreqDetailFailedState,
  }) {
    return loadreqDetailFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadreqDetailSuccessState value)?
        loadreqDetailSuccessState,
    TResult? Function(LoadreqDetailFailedState value)? loadreqDetailFailedState,
  }) {
    return loadreqDetailFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadreqDetailSuccessState value)?
        loadreqDetailSuccessState,
    TResult Function(LoadreqDetailFailedState value)? loadreqDetailFailedState,
    required TResult orElse(),
  }) {
    if (loadreqDetailFailedState != null) {
      return loadreqDetailFailedState(this);
    }
    return orElse();
  }
}

abstract class LoadreqDetailFailedState implements LoadReqDetailState {
  const factory LoadreqDetailFailedState() = _$LoadreqDetailFailedStateImpl;
}
