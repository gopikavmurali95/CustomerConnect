// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todays_delivery_header_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TodaysDeliveryHeaderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            TodaysDeliveryInParas todaysdelivery, String searchQuery)
        getTodaysDeliveryEvent,
    required TResult Function() todaysDeliveryFailedEvent,
    required TResult Function() clearTodaysDelivery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TodaysDeliveryInParas todaysdelivery, String searchQuery)?
        getTodaysDeliveryEvent,
    TResult? Function()? todaysDeliveryFailedEvent,
    TResult? Function()? clearTodaysDelivery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TodaysDeliveryInParas todaysdelivery, String searchQuery)?
        getTodaysDeliveryEvent,
    TResult Function()? todaysDeliveryFailedEvent,
    TResult Function()? clearTodaysDelivery,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTodaysDeliveryEvent value)
        getTodaysDeliveryEvent,
    required TResult Function(TodaysDeliveryFailedEvent value)
        todaysDeliveryFailedEvent,
    required TResult Function(ClearTodaysDelivery value) clearTodaysDelivery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTodaysDeliveryEvent value)? getTodaysDeliveryEvent,
    TResult? Function(TodaysDeliveryFailedEvent value)?
        todaysDeliveryFailedEvent,
    TResult? Function(ClearTodaysDelivery value)? clearTodaysDelivery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTodaysDeliveryEvent value)? getTodaysDeliveryEvent,
    TResult Function(TodaysDeliveryFailedEvent value)?
        todaysDeliveryFailedEvent,
    TResult Function(ClearTodaysDelivery value)? clearTodaysDelivery,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodaysDeliveryHeaderEventCopyWith<$Res> {
  factory $TodaysDeliveryHeaderEventCopyWith(TodaysDeliveryHeaderEvent value,
          $Res Function(TodaysDeliveryHeaderEvent) then) =
      _$TodaysDeliveryHeaderEventCopyWithImpl<$Res, TodaysDeliveryHeaderEvent>;
}

/// @nodoc
class _$TodaysDeliveryHeaderEventCopyWithImpl<$Res,
        $Val extends TodaysDeliveryHeaderEvent>
    implements $TodaysDeliveryHeaderEventCopyWith<$Res> {
  _$TodaysDeliveryHeaderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetTodaysDeliveryEventImplCopyWith<$Res> {
  factory _$$GetTodaysDeliveryEventImplCopyWith(
          _$GetTodaysDeliveryEventImpl value,
          $Res Function(_$GetTodaysDeliveryEventImpl) then) =
      __$$GetTodaysDeliveryEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TodaysDeliveryInParas todaysdelivery, String searchQuery});
}

/// @nodoc
class __$$GetTodaysDeliveryEventImplCopyWithImpl<$Res>
    extends _$TodaysDeliveryHeaderEventCopyWithImpl<$Res,
        _$GetTodaysDeliveryEventImpl>
    implements _$$GetTodaysDeliveryEventImplCopyWith<$Res> {
  __$$GetTodaysDeliveryEventImplCopyWithImpl(
      _$GetTodaysDeliveryEventImpl _value,
      $Res Function(_$GetTodaysDeliveryEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todaysdelivery = null,
    Object? searchQuery = null,
  }) {
    return _then(_$GetTodaysDeliveryEventImpl(
      todaysdelivery: null == todaysdelivery
          ? _value.todaysdelivery
          : todaysdelivery // ignore: cast_nullable_to_non_nullable
              as TodaysDeliveryInParas,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetTodaysDeliveryEventImpl implements GetTodaysDeliveryEvent {
  const _$GetTodaysDeliveryEventImpl(
      {required this.todaysdelivery, required this.searchQuery});

  @override
  final TodaysDeliveryInParas todaysdelivery;
  @override
  final String searchQuery;

  @override
  String toString() {
    return 'TodaysDeliveryHeaderEvent.getTodaysDeliveryEvent(todaysdelivery: $todaysdelivery, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTodaysDeliveryEventImpl &&
            (identical(other.todaysdelivery, todaysdelivery) ||
                other.todaysdelivery == todaysdelivery) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, todaysdelivery, searchQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTodaysDeliveryEventImplCopyWith<_$GetTodaysDeliveryEventImpl>
      get copyWith => __$$GetTodaysDeliveryEventImplCopyWithImpl<
          _$GetTodaysDeliveryEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            TodaysDeliveryInParas todaysdelivery, String searchQuery)
        getTodaysDeliveryEvent,
    required TResult Function() todaysDeliveryFailedEvent,
    required TResult Function() clearTodaysDelivery,
  }) {
    return getTodaysDeliveryEvent(todaysdelivery, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TodaysDeliveryInParas todaysdelivery, String searchQuery)?
        getTodaysDeliveryEvent,
    TResult? Function()? todaysDeliveryFailedEvent,
    TResult? Function()? clearTodaysDelivery,
  }) {
    return getTodaysDeliveryEvent?.call(todaysdelivery, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TodaysDeliveryInParas todaysdelivery, String searchQuery)?
        getTodaysDeliveryEvent,
    TResult Function()? todaysDeliveryFailedEvent,
    TResult Function()? clearTodaysDelivery,
    required TResult orElse(),
  }) {
    if (getTodaysDeliveryEvent != null) {
      return getTodaysDeliveryEvent(todaysdelivery, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTodaysDeliveryEvent value)
        getTodaysDeliveryEvent,
    required TResult Function(TodaysDeliveryFailedEvent value)
        todaysDeliveryFailedEvent,
    required TResult Function(ClearTodaysDelivery value) clearTodaysDelivery,
  }) {
    return getTodaysDeliveryEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTodaysDeliveryEvent value)? getTodaysDeliveryEvent,
    TResult? Function(TodaysDeliveryFailedEvent value)?
        todaysDeliveryFailedEvent,
    TResult? Function(ClearTodaysDelivery value)? clearTodaysDelivery,
  }) {
    return getTodaysDeliveryEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTodaysDeliveryEvent value)? getTodaysDeliveryEvent,
    TResult Function(TodaysDeliveryFailedEvent value)?
        todaysDeliveryFailedEvent,
    TResult Function(ClearTodaysDelivery value)? clearTodaysDelivery,
    required TResult orElse(),
  }) {
    if (getTodaysDeliveryEvent != null) {
      return getTodaysDeliveryEvent(this);
    }
    return orElse();
  }
}

abstract class GetTodaysDeliveryEvent implements TodaysDeliveryHeaderEvent {
  const factory GetTodaysDeliveryEvent(
      {required final TodaysDeliveryInParas todaysdelivery,
      required final String searchQuery}) = _$GetTodaysDeliveryEventImpl;

  TodaysDeliveryInParas get todaysdelivery;
  String get searchQuery;
  @JsonKey(ignore: true)
  _$$GetTodaysDeliveryEventImplCopyWith<_$GetTodaysDeliveryEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TodaysDeliveryFailedEventImplCopyWith<$Res> {
  factory _$$TodaysDeliveryFailedEventImplCopyWith(
          _$TodaysDeliveryFailedEventImpl value,
          $Res Function(_$TodaysDeliveryFailedEventImpl) then) =
      __$$TodaysDeliveryFailedEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TodaysDeliveryFailedEventImplCopyWithImpl<$Res>
    extends _$TodaysDeliveryHeaderEventCopyWithImpl<$Res,
        _$TodaysDeliveryFailedEventImpl>
    implements _$$TodaysDeliveryFailedEventImplCopyWith<$Res> {
  __$$TodaysDeliveryFailedEventImplCopyWithImpl(
      _$TodaysDeliveryFailedEventImpl _value,
      $Res Function(_$TodaysDeliveryFailedEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TodaysDeliveryFailedEventImpl implements TodaysDeliveryFailedEvent {
  const _$TodaysDeliveryFailedEventImpl();

  @override
  String toString() {
    return 'TodaysDeliveryHeaderEvent.todaysDeliveryFailedEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodaysDeliveryFailedEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            TodaysDeliveryInParas todaysdelivery, String searchQuery)
        getTodaysDeliveryEvent,
    required TResult Function() todaysDeliveryFailedEvent,
    required TResult Function() clearTodaysDelivery,
  }) {
    return todaysDeliveryFailedEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TodaysDeliveryInParas todaysdelivery, String searchQuery)?
        getTodaysDeliveryEvent,
    TResult? Function()? todaysDeliveryFailedEvent,
    TResult? Function()? clearTodaysDelivery,
  }) {
    return todaysDeliveryFailedEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TodaysDeliveryInParas todaysdelivery, String searchQuery)?
        getTodaysDeliveryEvent,
    TResult Function()? todaysDeliveryFailedEvent,
    TResult Function()? clearTodaysDelivery,
    required TResult orElse(),
  }) {
    if (todaysDeliveryFailedEvent != null) {
      return todaysDeliveryFailedEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTodaysDeliveryEvent value)
        getTodaysDeliveryEvent,
    required TResult Function(TodaysDeliveryFailedEvent value)
        todaysDeliveryFailedEvent,
    required TResult Function(ClearTodaysDelivery value) clearTodaysDelivery,
  }) {
    return todaysDeliveryFailedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTodaysDeliveryEvent value)? getTodaysDeliveryEvent,
    TResult? Function(TodaysDeliveryFailedEvent value)?
        todaysDeliveryFailedEvent,
    TResult? Function(ClearTodaysDelivery value)? clearTodaysDelivery,
  }) {
    return todaysDeliveryFailedEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTodaysDeliveryEvent value)? getTodaysDeliveryEvent,
    TResult Function(TodaysDeliveryFailedEvent value)?
        todaysDeliveryFailedEvent,
    TResult Function(ClearTodaysDelivery value)? clearTodaysDelivery,
    required TResult orElse(),
  }) {
    if (todaysDeliveryFailedEvent != null) {
      return todaysDeliveryFailedEvent(this);
    }
    return orElse();
  }
}

abstract class TodaysDeliveryFailedEvent implements TodaysDeliveryHeaderEvent {
  const factory TodaysDeliveryFailedEvent() = _$TodaysDeliveryFailedEventImpl;
}

/// @nodoc
abstract class _$$ClearTodaysDeliveryImplCopyWith<$Res> {
  factory _$$ClearTodaysDeliveryImplCopyWith(_$ClearTodaysDeliveryImpl value,
          $Res Function(_$ClearTodaysDeliveryImpl) then) =
      __$$ClearTodaysDeliveryImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearTodaysDeliveryImplCopyWithImpl<$Res>
    extends _$TodaysDeliveryHeaderEventCopyWithImpl<$Res,
        _$ClearTodaysDeliveryImpl>
    implements _$$ClearTodaysDeliveryImplCopyWith<$Res> {
  __$$ClearTodaysDeliveryImplCopyWithImpl(_$ClearTodaysDeliveryImpl _value,
      $Res Function(_$ClearTodaysDeliveryImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearTodaysDeliveryImpl implements ClearTodaysDelivery {
  const _$ClearTodaysDeliveryImpl();

  @override
  String toString() {
    return 'TodaysDeliveryHeaderEvent.clearTodaysDelivery()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearTodaysDeliveryImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            TodaysDeliveryInParas todaysdelivery, String searchQuery)
        getTodaysDeliveryEvent,
    required TResult Function() todaysDeliveryFailedEvent,
    required TResult Function() clearTodaysDelivery,
  }) {
    return clearTodaysDelivery();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TodaysDeliveryInParas todaysdelivery, String searchQuery)?
        getTodaysDeliveryEvent,
    TResult? Function()? todaysDeliveryFailedEvent,
    TResult? Function()? clearTodaysDelivery,
  }) {
    return clearTodaysDelivery?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TodaysDeliveryInParas todaysdelivery, String searchQuery)?
        getTodaysDeliveryEvent,
    TResult Function()? todaysDeliveryFailedEvent,
    TResult Function()? clearTodaysDelivery,
    required TResult orElse(),
  }) {
    if (clearTodaysDelivery != null) {
      return clearTodaysDelivery();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTodaysDeliveryEvent value)
        getTodaysDeliveryEvent,
    required TResult Function(TodaysDeliveryFailedEvent value)
        todaysDeliveryFailedEvent,
    required TResult Function(ClearTodaysDelivery value) clearTodaysDelivery,
  }) {
    return clearTodaysDelivery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTodaysDeliveryEvent value)? getTodaysDeliveryEvent,
    TResult? Function(TodaysDeliveryFailedEvent value)?
        todaysDeliveryFailedEvent,
    TResult? Function(ClearTodaysDelivery value)? clearTodaysDelivery,
  }) {
    return clearTodaysDelivery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTodaysDeliveryEvent value)? getTodaysDeliveryEvent,
    TResult Function(TodaysDeliveryFailedEvent value)?
        todaysDeliveryFailedEvent,
    TResult Function(ClearTodaysDelivery value)? clearTodaysDelivery,
    required TResult orElse(),
  }) {
    if (clearTodaysDelivery != null) {
      return clearTodaysDelivery(this);
    }
    return orElse();
  }
}

abstract class ClearTodaysDelivery implements TodaysDeliveryHeaderEvent {
  const factory ClearTodaysDelivery() = _$ClearTodaysDeliveryImpl;
}

/// @nodoc
mixin _$TodaysDeliveryHeaderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TodaysDeliveryHeaderModel>? todaysdelivery)
        getTodaysDeliveryState,
    required TResult Function() todaysDeliveryFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TodaysDeliveryHeaderModel>? todaysdelivery)?
        getTodaysDeliveryState,
    TResult? Function()? todaysDeliveryFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TodaysDeliveryHeaderModel>? todaysdelivery)?
        getTodaysDeliveryState,
    TResult Function()? todaysDeliveryFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTodaysDeliveryState value)
        getTodaysDeliveryState,
    required TResult Function(TodaysDeliveryFailedState value)
        todaysDeliveryFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTodaysDeliveryState value)? getTodaysDeliveryState,
    TResult? Function(TodaysDeliveryFailedState value)?
        todaysDeliveryFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTodaysDeliveryState value)? getTodaysDeliveryState,
    TResult Function(TodaysDeliveryFailedState value)?
        todaysDeliveryFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodaysDeliveryHeaderStateCopyWith<$Res> {
  factory $TodaysDeliveryHeaderStateCopyWith(TodaysDeliveryHeaderState value,
          $Res Function(TodaysDeliveryHeaderState) then) =
      _$TodaysDeliveryHeaderStateCopyWithImpl<$Res, TodaysDeliveryHeaderState>;
}

/// @nodoc
class _$TodaysDeliveryHeaderStateCopyWithImpl<$Res,
        $Val extends TodaysDeliveryHeaderState>
    implements $TodaysDeliveryHeaderStateCopyWith<$Res> {
  _$TodaysDeliveryHeaderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetTodaysDeliveryStateImplCopyWith<$Res> {
  factory _$$GetTodaysDeliveryStateImplCopyWith(
          _$GetTodaysDeliveryStateImpl value,
          $Res Function(_$GetTodaysDeliveryStateImpl) then) =
      __$$GetTodaysDeliveryStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TodaysDeliveryHeaderModel>? todaysdelivery});
}

/// @nodoc
class __$$GetTodaysDeliveryStateImplCopyWithImpl<$Res>
    extends _$TodaysDeliveryHeaderStateCopyWithImpl<$Res,
        _$GetTodaysDeliveryStateImpl>
    implements _$$GetTodaysDeliveryStateImplCopyWith<$Res> {
  __$$GetTodaysDeliveryStateImplCopyWithImpl(
      _$GetTodaysDeliveryStateImpl _value,
      $Res Function(_$GetTodaysDeliveryStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todaysdelivery = freezed,
  }) {
    return _then(_$GetTodaysDeliveryStateImpl(
      todaysdelivery: freezed == todaysdelivery
          ? _value._todaysdelivery
          : todaysdelivery // ignore: cast_nullable_to_non_nullable
              as List<TodaysDeliveryHeaderModel>?,
    ));
  }
}

/// @nodoc

class _$GetTodaysDeliveryStateImpl implements GetTodaysDeliveryState {
  const _$GetTodaysDeliveryStateImpl(
      {required final List<TodaysDeliveryHeaderModel>? todaysdelivery})
      : _todaysdelivery = todaysdelivery;

  final List<TodaysDeliveryHeaderModel>? _todaysdelivery;
  @override
  List<TodaysDeliveryHeaderModel>? get todaysdelivery {
    final value = _todaysdelivery;
    if (value == null) return null;
    if (_todaysdelivery is EqualUnmodifiableListView) return _todaysdelivery;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TodaysDeliveryHeaderState.getTodaysDeliveryState(todaysdelivery: $todaysdelivery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTodaysDeliveryStateImpl &&
            const DeepCollectionEquality()
                .equals(other._todaysdelivery, _todaysdelivery));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_todaysdelivery));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTodaysDeliveryStateImplCopyWith<_$GetTodaysDeliveryStateImpl>
      get copyWith => __$$GetTodaysDeliveryStateImplCopyWithImpl<
          _$GetTodaysDeliveryStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TodaysDeliveryHeaderModel>? todaysdelivery)
        getTodaysDeliveryState,
    required TResult Function() todaysDeliveryFailedState,
  }) {
    return getTodaysDeliveryState(todaysdelivery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TodaysDeliveryHeaderModel>? todaysdelivery)?
        getTodaysDeliveryState,
    TResult? Function()? todaysDeliveryFailedState,
  }) {
    return getTodaysDeliveryState?.call(todaysdelivery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TodaysDeliveryHeaderModel>? todaysdelivery)?
        getTodaysDeliveryState,
    TResult Function()? todaysDeliveryFailedState,
    required TResult orElse(),
  }) {
    if (getTodaysDeliveryState != null) {
      return getTodaysDeliveryState(todaysdelivery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTodaysDeliveryState value)
        getTodaysDeliveryState,
    required TResult Function(TodaysDeliveryFailedState value)
        todaysDeliveryFailedState,
  }) {
    return getTodaysDeliveryState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTodaysDeliveryState value)? getTodaysDeliveryState,
    TResult? Function(TodaysDeliveryFailedState value)?
        todaysDeliveryFailedState,
  }) {
    return getTodaysDeliveryState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTodaysDeliveryState value)? getTodaysDeliveryState,
    TResult Function(TodaysDeliveryFailedState value)?
        todaysDeliveryFailedState,
    required TResult orElse(),
  }) {
    if (getTodaysDeliveryState != null) {
      return getTodaysDeliveryState(this);
    }
    return orElse();
  }
}

abstract class GetTodaysDeliveryState implements TodaysDeliveryHeaderState {
  const factory GetTodaysDeliveryState(
          {required final List<TodaysDeliveryHeaderModel>? todaysdelivery}) =
      _$GetTodaysDeliveryStateImpl;

  List<TodaysDeliveryHeaderModel>? get todaysdelivery;
  @JsonKey(ignore: true)
  _$$GetTodaysDeliveryStateImplCopyWith<_$GetTodaysDeliveryStateImpl>
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
    extends _$TodaysDeliveryHeaderStateCopyWithImpl<$Res,
        _$TodaysDeliveryFailedStateImpl>
    implements _$$TodaysDeliveryFailedStateImplCopyWith<$Res> {
  __$$TodaysDeliveryFailedStateImplCopyWithImpl(
      _$TodaysDeliveryFailedStateImpl _value,
      $Res Function(_$TodaysDeliveryFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TodaysDeliveryFailedStateImpl implements TodaysDeliveryFailedState {
  const _$TodaysDeliveryFailedStateImpl();

  @override
  String toString() {
    return 'TodaysDeliveryHeaderState.todaysDeliveryFailedState()';
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
    required TResult Function(List<TodaysDeliveryHeaderModel>? todaysdelivery)
        getTodaysDeliveryState,
    required TResult Function() todaysDeliveryFailedState,
  }) {
    return todaysDeliveryFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TodaysDeliveryHeaderModel>? todaysdelivery)?
        getTodaysDeliveryState,
    TResult? Function()? todaysDeliveryFailedState,
  }) {
    return todaysDeliveryFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TodaysDeliveryHeaderModel>? todaysdelivery)?
        getTodaysDeliveryState,
    TResult Function()? todaysDeliveryFailedState,
    required TResult orElse(),
  }) {
    if (todaysDeliveryFailedState != null) {
      return todaysDeliveryFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTodaysDeliveryState value)
        getTodaysDeliveryState,
    required TResult Function(TodaysDeliveryFailedState value)
        todaysDeliveryFailedState,
  }) {
    return todaysDeliveryFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTodaysDeliveryState value)? getTodaysDeliveryState,
    TResult? Function(TodaysDeliveryFailedState value)?
        todaysDeliveryFailedState,
  }) {
    return todaysDeliveryFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTodaysDeliveryState value)? getTodaysDeliveryState,
    TResult Function(TodaysDeliveryFailedState value)?
        todaysDeliveryFailedState,
    required TResult orElse(),
  }) {
    if (todaysDeliveryFailedState != null) {
      return todaysDeliveryFailedState(this);
    }
    return orElse();
  }
}

abstract class TodaysDeliveryFailedState implements TodaysDeliveryHeaderState {
  const factory TodaysDeliveryFailedState() = _$TodaysDeliveryFailedStateImpl;
}
