// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'outstanding_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OutstandingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OutStandingHeaderModel outIn, String searchQuery)
        getOutstandingDataEvent,
    required TResult Function() clearOutStandingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OutStandingHeaderModel outIn, String searchQuery)?
        getOutstandingDataEvent,
    TResult? Function()? clearOutStandingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OutStandingHeaderModel outIn, String searchQuery)?
        getOutstandingDataEvent,
    TResult Function()? clearOutStandingEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOutstandingDataEvent value)
        getOutstandingDataEvent,
    required TResult Function(ClearOutStandingEvent value)
        clearOutStandingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOutstandingDataEvent value)? getOutstandingDataEvent,
    TResult? Function(ClearOutStandingEvent value)? clearOutStandingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOutstandingDataEvent value)? getOutstandingDataEvent,
    TResult Function(ClearOutStandingEvent value)? clearOutStandingEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutstandingEventCopyWith<$Res> {
  factory $OutstandingEventCopyWith(
          OutstandingEvent value, $Res Function(OutstandingEvent) then) =
      _$OutstandingEventCopyWithImpl<$Res, OutstandingEvent>;
}

/// @nodoc
class _$OutstandingEventCopyWithImpl<$Res, $Val extends OutstandingEvent>
    implements $OutstandingEventCopyWith<$Res> {
  _$OutstandingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OutstandingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetOutstandingDataEventImplCopyWith<$Res> {
  factory _$$GetOutstandingDataEventImplCopyWith(
          _$GetOutstandingDataEventImpl value,
          $Res Function(_$GetOutstandingDataEventImpl) then) =
      __$$GetOutstandingDataEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OutStandingHeaderModel outIn, String searchQuery});
}

/// @nodoc
class __$$GetOutstandingDataEventImplCopyWithImpl<$Res>
    extends _$OutstandingEventCopyWithImpl<$Res, _$GetOutstandingDataEventImpl>
    implements _$$GetOutstandingDataEventImplCopyWith<$Res> {
  __$$GetOutstandingDataEventImplCopyWithImpl(
      _$GetOutstandingDataEventImpl _value,
      $Res Function(_$GetOutstandingDataEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of OutstandingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? outIn = null,
    Object? searchQuery = null,
  }) {
    return _then(_$GetOutstandingDataEventImpl(
      outIn: null == outIn
          ? _value.outIn
          : outIn // ignore: cast_nullable_to_non_nullable
              as OutStandingHeaderModel,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetOutstandingDataEventImpl implements GetOutstandingDataEvent {
  const _$GetOutstandingDataEventImpl(
      {required this.outIn, required this.searchQuery});

  @override
  final OutStandingHeaderModel outIn;
  @override
  final String searchQuery;

  @override
  String toString() {
    return 'OutstandingEvent.getOutstandingDataEvent(outIn: $outIn, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOutstandingDataEventImpl &&
            (identical(other.outIn, outIn) || other.outIn == outIn) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, outIn, searchQuery);

  /// Create a copy of OutstandingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOutstandingDataEventImplCopyWith<_$GetOutstandingDataEventImpl>
      get copyWith => __$$GetOutstandingDataEventImplCopyWithImpl<
          _$GetOutstandingDataEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OutStandingHeaderModel outIn, String searchQuery)
        getOutstandingDataEvent,
    required TResult Function() clearOutStandingEvent,
  }) {
    return getOutstandingDataEvent(outIn, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OutStandingHeaderModel outIn, String searchQuery)?
        getOutstandingDataEvent,
    TResult? Function()? clearOutStandingEvent,
  }) {
    return getOutstandingDataEvent?.call(outIn, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OutStandingHeaderModel outIn, String searchQuery)?
        getOutstandingDataEvent,
    TResult Function()? clearOutStandingEvent,
    required TResult orElse(),
  }) {
    if (getOutstandingDataEvent != null) {
      return getOutstandingDataEvent(outIn, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOutstandingDataEvent value)
        getOutstandingDataEvent,
    required TResult Function(ClearOutStandingEvent value)
        clearOutStandingEvent,
  }) {
    return getOutstandingDataEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOutstandingDataEvent value)? getOutstandingDataEvent,
    TResult? Function(ClearOutStandingEvent value)? clearOutStandingEvent,
  }) {
    return getOutstandingDataEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOutstandingDataEvent value)? getOutstandingDataEvent,
    TResult Function(ClearOutStandingEvent value)? clearOutStandingEvent,
    required TResult orElse(),
  }) {
    if (getOutstandingDataEvent != null) {
      return getOutstandingDataEvent(this);
    }
    return orElse();
  }
}

abstract class GetOutstandingDataEvent implements OutstandingEvent {
  const factory GetOutstandingDataEvent(
      {required final OutStandingHeaderModel outIn,
      required final String searchQuery}) = _$GetOutstandingDataEventImpl;

  OutStandingHeaderModel get outIn;
  String get searchQuery;

  /// Create a copy of OutstandingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetOutstandingDataEventImplCopyWith<_$GetOutstandingDataEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearOutStandingEventImplCopyWith<$Res> {
  factory _$$ClearOutStandingEventImplCopyWith(
          _$ClearOutStandingEventImpl value,
          $Res Function(_$ClearOutStandingEventImpl) then) =
      __$$ClearOutStandingEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearOutStandingEventImplCopyWithImpl<$Res>
    extends _$OutstandingEventCopyWithImpl<$Res, _$ClearOutStandingEventImpl>
    implements _$$ClearOutStandingEventImplCopyWith<$Res> {
  __$$ClearOutStandingEventImplCopyWithImpl(_$ClearOutStandingEventImpl _value,
      $Res Function(_$ClearOutStandingEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of OutstandingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearOutStandingEventImpl implements ClearOutStandingEvent {
  const _$ClearOutStandingEventImpl();

  @override
  String toString() {
    return 'OutstandingEvent.clearOutStandingEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearOutStandingEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OutStandingHeaderModel outIn, String searchQuery)
        getOutstandingDataEvent,
    required TResult Function() clearOutStandingEvent,
  }) {
    return clearOutStandingEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OutStandingHeaderModel outIn, String searchQuery)?
        getOutstandingDataEvent,
    TResult? Function()? clearOutStandingEvent,
  }) {
    return clearOutStandingEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OutStandingHeaderModel outIn, String searchQuery)?
        getOutstandingDataEvent,
    TResult Function()? clearOutStandingEvent,
    required TResult orElse(),
  }) {
    if (clearOutStandingEvent != null) {
      return clearOutStandingEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOutstandingDataEvent value)
        getOutstandingDataEvent,
    required TResult Function(ClearOutStandingEvent value)
        clearOutStandingEvent,
  }) {
    return clearOutStandingEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOutstandingDataEvent value)? getOutstandingDataEvent,
    TResult? Function(ClearOutStandingEvent value)? clearOutStandingEvent,
  }) {
    return clearOutStandingEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOutstandingDataEvent value)? getOutstandingDataEvent,
    TResult Function(ClearOutStandingEvent value)? clearOutStandingEvent,
    required TResult orElse(),
  }) {
    if (clearOutStandingEvent != null) {
      return clearOutStandingEvent(this);
    }
    return orElse();
  }
}

abstract class ClearOutStandingEvent implements OutstandingEvent {
  const factory ClearOutStandingEvent() = _$ClearOutStandingEventImpl;
}

/// @nodoc
mixin _$OutstandingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OutstandingCountModel? counts)
        getOutstandingDataState,
    required TResult Function() outstandingFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OutstandingCountModel? counts)? getOutstandingDataState,
    TResult? Function()? outstandingFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OutstandingCountModel? counts)? getOutstandingDataState,
    TResult Function()? outstandingFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOutstandingDataState value)
        getOutstandingDataState,
    required TResult Function(OutstandingFailedState value)
        outstandingFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOutstandingDataState value)? getOutstandingDataState,
    TResult? Function(OutstandingFailedState value)? outstandingFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOutstandingDataState value)? getOutstandingDataState,
    TResult Function(OutstandingFailedState value)? outstandingFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutstandingStateCopyWith<$Res> {
  factory $OutstandingStateCopyWith(
          OutstandingState value, $Res Function(OutstandingState) then) =
      _$OutstandingStateCopyWithImpl<$Res, OutstandingState>;
}

/// @nodoc
class _$OutstandingStateCopyWithImpl<$Res, $Val extends OutstandingState>
    implements $OutstandingStateCopyWith<$Res> {
  _$OutstandingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OutstandingState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetOutstandingDataStateImplCopyWith<$Res> {
  factory _$$GetOutstandingDataStateImplCopyWith(
          _$GetOutstandingDataStateImpl value,
          $Res Function(_$GetOutstandingDataStateImpl) then) =
      __$$GetOutstandingDataStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({OutstandingCountModel? counts});
}

/// @nodoc
class __$$GetOutstandingDataStateImplCopyWithImpl<$Res>
    extends _$OutstandingStateCopyWithImpl<$Res, _$GetOutstandingDataStateImpl>
    implements _$$GetOutstandingDataStateImplCopyWith<$Res> {
  __$$GetOutstandingDataStateImplCopyWithImpl(
      _$GetOutstandingDataStateImpl _value,
      $Res Function(_$GetOutstandingDataStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of OutstandingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counts = freezed,
  }) {
    return _then(_$GetOutstandingDataStateImpl(
      counts: freezed == counts
          ? _value.counts
          : counts // ignore: cast_nullable_to_non_nullable
              as OutstandingCountModel?,
    ));
  }
}

/// @nodoc

class _$GetOutstandingDataStateImpl implements GetOutstandingDataState {
  const _$GetOutstandingDataStateImpl({required this.counts});

  @override
  final OutstandingCountModel? counts;

  @override
  String toString() {
    return 'OutstandingState.getOutstandingDataState(counts: $counts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOutstandingDataStateImpl &&
            (identical(other.counts, counts) || other.counts == counts));
  }

  @override
  int get hashCode => Object.hash(runtimeType, counts);

  /// Create a copy of OutstandingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOutstandingDataStateImplCopyWith<_$GetOutstandingDataStateImpl>
      get copyWith => __$$GetOutstandingDataStateImplCopyWithImpl<
          _$GetOutstandingDataStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OutstandingCountModel? counts)
        getOutstandingDataState,
    required TResult Function() outstandingFailedState,
  }) {
    return getOutstandingDataState(counts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OutstandingCountModel? counts)? getOutstandingDataState,
    TResult? Function()? outstandingFailedState,
  }) {
    return getOutstandingDataState?.call(counts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OutstandingCountModel? counts)? getOutstandingDataState,
    TResult Function()? outstandingFailedState,
    required TResult orElse(),
  }) {
    if (getOutstandingDataState != null) {
      return getOutstandingDataState(counts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOutstandingDataState value)
        getOutstandingDataState,
    required TResult Function(OutstandingFailedState value)
        outstandingFailedState,
  }) {
    return getOutstandingDataState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOutstandingDataState value)? getOutstandingDataState,
    TResult? Function(OutstandingFailedState value)? outstandingFailedState,
  }) {
    return getOutstandingDataState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOutstandingDataState value)? getOutstandingDataState,
    TResult Function(OutstandingFailedState value)? outstandingFailedState,
    required TResult orElse(),
  }) {
    if (getOutstandingDataState != null) {
      return getOutstandingDataState(this);
    }
    return orElse();
  }
}

abstract class GetOutstandingDataState implements OutstandingState {
  const factory GetOutstandingDataState(
          {required final OutstandingCountModel? counts}) =
      _$GetOutstandingDataStateImpl;

  OutstandingCountModel? get counts;

  /// Create a copy of OutstandingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetOutstandingDataStateImplCopyWith<_$GetOutstandingDataStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OutstandingFailedStateImplCopyWith<$Res> {
  factory _$$OutstandingFailedStateImplCopyWith(
          _$OutstandingFailedStateImpl value,
          $Res Function(_$OutstandingFailedStateImpl) then) =
      __$$OutstandingFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OutstandingFailedStateImplCopyWithImpl<$Res>
    extends _$OutstandingStateCopyWithImpl<$Res, _$OutstandingFailedStateImpl>
    implements _$$OutstandingFailedStateImplCopyWith<$Res> {
  __$$OutstandingFailedStateImplCopyWithImpl(
      _$OutstandingFailedStateImpl _value,
      $Res Function(_$OutstandingFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of OutstandingState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$OutstandingFailedStateImpl implements OutstandingFailedState {
  const _$OutstandingFailedStateImpl();

  @override
  String toString() {
    return 'OutstandingState.outstandingFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OutstandingFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(OutstandingCountModel? counts)
        getOutstandingDataState,
    required TResult Function() outstandingFailedState,
  }) {
    return outstandingFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(OutstandingCountModel? counts)? getOutstandingDataState,
    TResult? Function()? outstandingFailedState,
  }) {
    return outstandingFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(OutstandingCountModel? counts)? getOutstandingDataState,
    TResult Function()? outstandingFailedState,
    required TResult orElse(),
  }) {
    if (outstandingFailedState != null) {
      return outstandingFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOutstandingDataState value)
        getOutstandingDataState,
    required TResult Function(OutstandingFailedState value)
        outstandingFailedState,
  }) {
    return outstandingFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOutstandingDataState value)? getOutstandingDataState,
    TResult? Function(OutstandingFailedState value)? outstandingFailedState,
  }) {
    return outstandingFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOutstandingDataState value)? getOutstandingDataState,
    TResult Function(OutstandingFailedState value)? outstandingFailedState,
    required TResult orElse(),
  }) {
    if (outstandingFailedState != null) {
      return outstandingFailedState(this);
    }
    return orElse();
  }
}

abstract class OutstandingFailedState implements OutstandingState {
  const factory OutstandingFailedState() = _$OutstandingFailedStateImpl;
}
