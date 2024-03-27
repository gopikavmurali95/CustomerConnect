// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'total_orders_header_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TotalOrdersHeaderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TotalOrdersInparas ordersin) getTotalOrdersEvent,
    required TResult Function() totalOrdersFailedEvent,
    required TResult Function() totalOrdersClearEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TotalOrdersInparas ordersin)? getTotalOrdersEvent,
    TResult? Function()? totalOrdersFailedEvent,
    TResult? Function()? totalOrdersClearEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TotalOrdersInparas ordersin)? getTotalOrdersEvent,
    TResult Function()? totalOrdersFailedEvent,
    TResult Function()? totalOrdersClearEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTotalOrdersEvent value) getTotalOrdersEvent,
    required TResult Function(TotalOrdersFailedEvent value)
        totalOrdersFailedEvent,
    required TResult Function(TotalOrdersClearEvent value)
        totalOrdersClearEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTotalOrdersEvent value)? getTotalOrdersEvent,
    TResult? Function(TotalOrdersFailedEvent value)? totalOrdersFailedEvent,
    TResult? Function(TotalOrdersClearEvent value)? totalOrdersClearEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTotalOrdersEvent value)? getTotalOrdersEvent,
    TResult Function(TotalOrdersFailedEvent value)? totalOrdersFailedEvent,
    TResult Function(TotalOrdersClearEvent value)? totalOrdersClearEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TotalOrdersHeaderEventCopyWith<$Res> {
  factory $TotalOrdersHeaderEventCopyWith(TotalOrdersHeaderEvent value,
          $Res Function(TotalOrdersHeaderEvent) then) =
      _$TotalOrdersHeaderEventCopyWithImpl<$Res, TotalOrdersHeaderEvent>;
}

/// @nodoc
class _$TotalOrdersHeaderEventCopyWithImpl<$Res,
        $Val extends TotalOrdersHeaderEvent>
    implements $TotalOrdersHeaderEventCopyWith<$Res> {
  _$TotalOrdersHeaderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetTotalOrdersEventImplCopyWith<$Res> {
  factory _$$GetTotalOrdersEventImplCopyWith(_$GetTotalOrdersEventImpl value,
          $Res Function(_$GetTotalOrdersEventImpl) then) =
      __$$GetTotalOrdersEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TotalOrdersInparas ordersin});
}

/// @nodoc
class __$$GetTotalOrdersEventImplCopyWithImpl<$Res>
    extends _$TotalOrdersHeaderEventCopyWithImpl<$Res,
        _$GetTotalOrdersEventImpl>
    implements _$$GetTotalOrdersEventImplCopyWith<$Res> {
  __$$GetTotalOrdersEventImplCopyWithImpl(_$GetTotalOrdersEventImpl _value,
      $Res Function(_$GetTotalOrdersEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ordersin = null,
  }) {
    return _then(_$GetTotalOrdersEventImpl(
      ordersin: null == ordersin
          ? _value.ordersin
          : ordersin // ignore: cast_nullable_to_non_nullable
              as TotalOrdersInparas,
    ));
  }
}

/// @nodoc

class _$GetTotalOrdersEventImpl implements GetTotalOrdersEvent {
  const _$GetTotalOrdersEventImpl({required this.ordersin});

  @override
  final TotalOrdersInparas ordersin;

  @override
  String toString() {
    return 'TotalOrdersHeaderEvent.getTotalOrdersEvent(ordersin: $ordersin)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTotalOrdersEventImpl &&
            (identical(other.ordersin, ordersin) ||
                other.ordersin == ordersin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ordersin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTotalOrdersEventImplCopyWith<_$GetTotalOrdersEventImpl> get copyWith =>
      __$$GetTotalOrdersEventImplCopyWithImpl<_$GetTotalOrdersEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TotalOrdersInparas ordersin) getTotalOrdersEvent,
    required TResult Function() totalOrdersFailedEvent,
    required TResult Function() totalOrdersClearEvent,
  }) {
    return getTotalOrdersEvent(ordersin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TotalOrdersInparas ordersin)? getTotalOrdersEvent,
    TResult? Function()? totalOrdersFailedEvent,
    TResult? Function()? totalOrdersClearEvent,
  }) {
    return getTotalOrdersEvent?.call(ordersin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TotalOrdersInparas ordersin)? getTotalOrdersEvent,
    TResult Function()? totalOrdersFailedEvent,
    TResult Function()? totalOrdersClearEvent,
    required TResult orElse(),
  }) {
    if (getTotalOrdersEvent != null) {
      return getTotalOrdersEvent(ordersin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTotalOrdersEvent value) getTotalOrdersEvent,
    required TResult Function(TotalOrdersFailedEvent value)
        totalOrdersFailedEvent,
    required TResult Function(TotalOrdersClearEvent value)
        totalOrdersClearEvent,
  }) {
    return getTotalOrdersEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTotalOrdersEvent value)? getTotalOrdersEvent,
    TResult? Function(TotalOrdersFailedEvent value)? totalOrdersFailedEvent,
    TResult? Function(TotalOrdersClearEvent value)? totalOrdersClearEvent,
  }) {
    return getTotalOrdersEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTotalOrdersEvent value)? getTotalOrdersEvent,
    TResult Function(TotalOrdersFailedEvent value)? totalOrdersFailedEvent,
    TResult Function(TotalOrdersClearEvent value)? totalOrdersClearEvent,
    required TResult orElse(),
  }) {
    if (getTotalOrdersEvent != null) {
      return getTotalOrdersEvent(this);
    }
    return orElse();
  }
}

abstract class GetTotalOrdersEvent implements TotalOrdersHeaderEvent {
  const factory GetTotalOrdersEvent(
      {required final TotalOrdersInparas ordersin}) = _$GetTotalOrdersEventImpl;

  TotalOrdersInparas get ordersin;
  @JsonKey(ignore: true)
  _$$GetTotalOrdersEventImplCopyWith<_$GetTotalOrdersEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TotalOrdersFailedEventImplCopyWith<$Res> {
  factory _$$TotalOrdersFailedEventImplCopyWith(
          _$TotalOrdersFailedEventImpl value,
          $Res Function(_$TotalOrdersFailedEventImpl) then) =
      __$$TotalOrdersFailedEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TotalOrdersFailedEventImplCopyWithImpl<$Res>
    extends _$TotalOrdersHeaderEventCopyWithImpl<$Res,
        _$TotalOrdersFailedEventImpl>
    implements _$$TotalOrdersFailedEventImplCopyWith<$Res> {
  __$$TotalOrdersFailedEventImplCopyWithImpl(
      _$TotalOrdersFailedEventImpl _value,
      $Res Function(_$TotalOrdersFailedEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TotalOrdersFailedEventImpl implements TotalOrdersFailedEvent {
  const _$TotalOrdersFailedEventImpl();

  @override
  String toString() {
    return 'TotalOrdersHeaderEvent.totalOrdersFailedEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TotalOrdersFailedEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TotalOrdersInparas ordersin) getTotalOrdersEvent,
    required TResult Function() totalOrdersFailedEvent,
    required TResult Function() totalOrdersClearEvent,
  }) {
    return totalOrdersFailedEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TotalOrdersInparas ordersin)? getTotalOrdersEvent,
    TResult? Function()? totalOrdersFailedEvent,
    TResult? Function()? totalOrdersClearEvent,
  }) {
    return totalOrdersFailedEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TotalOrdersInparas ordersin)? getTotalOrdersEvent,
    TResult Function()? totalOrdersFailedEvent,
    TResult Function()? totalOrdersClearEvent,
    required TResult orElse(),
  }) {
    if (totalOrdersFailedEvent != null) {
      return totalOrdersFailedEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTotalOrdersEvent value) getTotalOrdersEvent,
    required TResult Function(TotalOrdersFailedEvent value)
        totalOrdersFailedEvent,
    required TResult Function(TotalOrdersClearEvent value)
        totalOrdersClearEvent,
  }) {
    return totalOrdersFailedEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTotalOrdersEvent value)? getTotalOrdersEvent,
    TResult? Function(TotalOrdersFailedEvent value)? totalOrdersFailedEvent,
    TResult? Function(TotalOrdersClearEvent value)? totalOrdersClearEvent,
  }) {
    return totalOrdersFailedEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTotalOrdersEvent value)? getTotalOrdersEvent,
    TResult Function(TotalOrdersFailedEvent value)? totalOrdersFailedEvent,
    TResult Function(TotalOrdersClearEvent value)? totalOrdersClearEvent,
    required TResult orElse(),
  }) {
    if (totalOrdersFailedEvent != null) {
      return totalOrdersFailedEvent(this);
    }
    return orElse();
  }
}

abstract class TotalOrdersFailedEvent implements TotalOrdersHeaderEvent {
  const factory TotalOrdersFailedEvent() = _$TotalOrdersFailedEventImpl;
}

/// @nodoc
abstract class _$$TotalOrdersClearEventImplCopyWith<$Res> {
  factory _$$TotalOrdersClearEventImplCopyWith(
          _$TotalOrdersClearEventImpl value,
          $Res Function(_$TotalOrdersClearEventImpl) then) =
      __$$TotalOrdersClearEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TotalOrdersClearEventImplCopyWithImpl<$Res>
    extends _$TotalOrdersHeaderEventCopyWithImpl<$Res,
        _$TotalOrdersClearEventImpl>
    implements _$$TotalOrdersClearEventImplCopyWith<$Res> {
  __$$TotalOrdersClearEventImplCopyWithImpl(_$TotalOrdersClearEventImpl _value,
      $Res Function(_$TotalOrdersClearEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TotalOrdersClearEventImpl implements TotalOrdersClearEvent {
  const _$TotalOrdersClearEventImpl();

  @override
  String toString() {
    return 'TotalOrdersHeaderEvent.totalOrdersClearEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TotalOrdersClearEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TotalOrdersInparas ordersin) getTotalOrdersEvent,
    required TResult Function() totalOrdersFailedEvent,
    required TResult Function() totalOrdersClearEvent,
  }) {
    return totalOrdersClearEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TotalOrdersInparas ordersin)? getTotalOrdersEvent,
    TResult? Function()? totalOrdersFailedEvent,
    TResult? Function()? totalOrdersClearEvent,
  }) {
    return totalOrdersClearEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TotalOrdersInparas ordersin)? getTotalOrdersEvent,
    TResult Function()? totalOrdersFailedEvent,
    TResult Function()? totalOrdersClearEvent,
    required TResult orElse(),
  }) {
    if (totalOrdersClearEvent != null) {
      return totalOrdersClearEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTotalOrdersEvent value) getTotalOrdersEvent,
    required TResult Function(TotalOrdersFailedEvent value)
        totalOrdersFailedEvent,
    required TResult Function(TotalOrdersClearEvent value)
        totalOrdersClearEvent,
  }) {
    return totalOrdersClearEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTotalOrdersEvent value)? getTotalOrdersEvent,
    TResult? Function(TotalOrdersFailedEvent value)? totalOrdersFailedEvent,
    TResult? Function(TotalOrdersClearEvent value)? totalOrdersClearEvent,
  }) {
    return totalOrdersClearEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTotalOrdersEvent value)? getTotalOrdersEvent,
    TResult Function(TotalOrdersFailedEvent value)? totalOrdersFailedEvent,
    TResult Function(TotalOrdersClearEvent value)? totalOrdersClearEvent,
    required TResult orElse(),
  }) {
    if (totalOrdersClearEvent != null) {
      return totalOrdersClearEvent(this);
    }
    return orElse();
  }
}

abstract class TotalOrdersClearEvent implements TotalOrdersHeaderEvent {
  const factory TotalOrdersClearEvent() = _$TotalOrdersClearEventImpl;
}

/// @nodoc
mixin _$TotalOrdersHeaderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TotalOrdersModel>? totalorders)
        getTotalOrderState,
    required TResult Function() totalOrdersFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TotalOrdersModel>? totalorders)? getTotalOrderState,
    TResult? Function()? totalOrdersFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TotalOrdersModel>? totalorders)? getTotalOrderState,
    TResult Function()? totalOrdersFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTotalOrderState value) getTotalOrderState,
    required TResult Function(TotalOrdersFailedState value)
        totalOrdersFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTotalOrderState value)? getTotalOrderState,
    TResult? Function(TotalOrdersFailedState value)? totalOrdersFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTotalOrderState value)? getTotalOrderState,
    TResult Function(TotalOrdersFailedState value)? totalOrdersFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TotalOrdersHeaderStateCopyWith<$Res> {
  factory $TotalOrdersHeaderStateCopyWith(TotalOrdersHeaderState value,
          $Res Function(TotalOrdersHeaderState) then) =
      _$TotalOrdersHeaderStateCopyWithImpl<$Res, TotalOrdersHeaderState>;
}

/// @nodoc
class _$TotalOrdersHeaderStateCopyWithImpl<$Res,
        $Val extends TotalOrdersHeaderState>
    implements $TotalOrdersHeaderStateCopyWith<$Res> {
  _$TotalOrdersHeaderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetTotalOrderStateImplCopyWith<$Res> {
  factory _$$GetTotalOrderStateImplCopyWith(_$GetTotalOrderStateImpl value,
          $Res Function(_$GetTotalOrderStateImpl) then) =
      __$$GetTotalOrderStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TotalOrdersModel>? totalorders});
}

/// @nodoc
class __$$GetTotalOrderStateImplCopyWithImpl<$Res>
    extends _$TotalOrdersHeaderStateCopyWithImpl<$Res, _$GetTotalOrderStateImpl>
    implements _$$GetTotalOrderStateImplCopyWith<$Res> {
  __$$GetTotalOrderStateImplCopyWithImpl(_$GetTotalOrderStateImpl _value,
      $Res Function(_$GetTotalOrderStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalorders = freezed,
  }) {
    return _then(_$GetTotalOrderStateImpl(
      totalorders: freezed == totalorders
          ? _value._totalorders
          : totalorders // ignore: cast_nullable_to_non_nullable
              as List<TotalOrdersModel>?,
    ));
  }
}

/// @nodoc

class _$GetTotalOrderStateImpl implements GetTotalOrderState {
  const _$GetTotalOrderStateImpl(
      {required final List<TotalOrdersModel>? totalorders})
      : _totalorders = totalorders;

  final List<TotalOrdersModel>? _totalorders;
  @override
  List<TotalOrdersModel>? get totalorders {
    final value = _totalorders;
    if (value == null) return null;
    if (_totalorders is EqualUnmodifiableListView) return _totalorders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TotalOrdersHeaderState.getTotalOrderState(totalorders: $totalorders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTotalOrderStateImpl &&
            const DeepCollectionEquality()
                .equals(other._totalorders, _totalorders));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_totalorders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTotalOrderStateImplCopyWith<_$GetTotalOrderStateImpl> get copyWith =>
      __$$GetTotalOrderStateImplCopyWithImpl<_$GetTotalOrderStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TotalOrdersModel>? totalorders)
        getTotalOrderState,
    required TResult Function() totalOrdersFailedState,
  }) {
    return getTotalOrderState(totalorders);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TotalOrdersModel>? totalorders)? getTotalOrderState,
    TResult? Function()? totalOrdersFailedState,
  }) {
    return getTotalOrderState?.call(totalorders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TotalOrdersModel>? totalorders)? getTotalOrderState,
    TResult Function()? totalOrdersFailedState,
    required TResult orElse(),
  }) {
    if (getTotalOrderState != null) {
      return getTotalOrderState(totalorders);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTotalOrderState value) getTotalOrderState,
    required TResult Function(TotalOrdersFailedState value)
        totalOrdersFailedState,
  }) {
    return getTotalOrderState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTotalOrderState value)? getTotalOrderState,
    TResult? Function(TotalOrdersFailedState value)? totalOrdersFailedState,
  }) {
    return getTotalOrderState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTotalOrderState value)? getTotalOrderState,
    TResult Function(TotalOrdersFailedState value)? totalOrdersFailedState,
    required TResult orElse(),
  }) {
    if (getTotalOrderState != null) {
      return getTotalOrderState(this);
    }
    return orElse();
  }
}

abstract class GetTotalOrderState implements TotalOrdersHeaderState {
  const factory GetTotalOrderState(
          {required final List<TotalOrdersModel>? totalorders}) =
      _$GetTotalOrderStateImpl;

  List<TotalOrdersModel>? get totalorders;
  @JsonKey(ignore: true)
  _$$GetTotalOrderStateImplCopyWith<_$GetTotalOrderStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TotalOrdersFailedStateImplCopyWith<$Res> {
  factory _$$TotalOrdersFailedStateImplCopyWith(
          _$TotalOrdersFailedStateImpl value,
          $Res Function(_$TotalOrdersFailedStateImpl) then) =
      __$$TotalOrdersFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TotalOrdersFailedStateImplCopyWithImpl<$Res>
    extends _$TotalOrdersHeaderStateCopyWithImpl<$Res,
        _$TotalOrdersFailedStateImpl>
    implements _$$TotalOrdersFailedStateImplCopyWith<$Res> {
  __$$TotalOrdersFailedStateImplCopyWithImpl(
      _$TotalOrdersFailedStateImpl _value,
      $Res Function(_$TotalOrdersFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TotalOrdersFailedStateImpl implements TotalOrdersFailedState {
  const _$TotalOrdersFailedStateImpl();

  @override
  String toString() {
    return 'TotalOrdersHeaderState.totalOrdersFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TotalOrdersFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TotalOrdersModel>? totalorders)
        getTotalOrderState,
    required TResult Function() totalOrdersFailedState,
  }) {
    return totalOrdersFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TotalOrdersModel>? totalorders)? getTotalOrderState,
    TResult? Function()? totalOrdersFailedState,
  }) {
    return totalOrdersFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TotalOrdersModel>? totalorders)? getTotalOrderState,
    TResult Function()? totalOrdersFailedState,
    required TResult orElse(),
  }) {
    if (totalOrdersFailedState != null) {
      return totalOrdersFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTotalOrderState value) getTotalOrderState,
    required TResult Function(TotalOrdersFailedState value)
        totalOrdersFailedState,
  }) {
    return totalOrdersFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTotalOrderState value)? getTotalOrderState,
    TResult? Function(TotalOrdersFailedState value)? totalOrdersFailedState,
  }) {
    return totalOrdersFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTotalOrderState value)? getTotalOrderState,
    TResult Function(TotalOrdersFailedState value)? totalOrdersFailedState,
    required TResult orElse(),
  }) {
    if (totalOrdersFailedState != null) {
      return totalOrdersFailedState(this);
    }
    return orElse();
  }
}

abstract class TotalOrdersFailedState implements TotalOrdersHeaderState {
  const factory TotalOrdersFailedState() = _$TotalOrdersFailedStateImpl;
}
