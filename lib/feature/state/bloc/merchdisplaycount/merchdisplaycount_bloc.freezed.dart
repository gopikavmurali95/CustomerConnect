// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'merchdisplaycount_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MerchdisplaycountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fromDate, String toDate)
        getDisplayCountEvent,
    required TResult Function() displayCountClearEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fromDate, String toDate)? getDisplayCountEvent,
    TResult? Function()? displayCountClearEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fromDate, String toDate)? getDisplayCountEvent,
    TResult Function()? displayCountClearEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDisplayCountEvent value) getDisplayCountEvent,
    required TResult Function(DisplayCountClearEvent value)
        displayCountClearEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDisplayCountEvent value)? getDisplayCountEvent,
    TResult? Function(DisplayCountClearEvent value)? displayCountClearEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDisplayCountEvent value)? getDisplayCountEvent,
    TResult Function(DisplayCountClearEvent value)? displayCountClearEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerchdisplaycountEventCopyWith<$Res> {
  factory $MerchdisplaycountEventCopyWith(MerchdisplaycountEvent value,
          $Res Function(MerchdisplaycountEvent) then) =
      _$MerchdisplaycountEventCopyWithImpl<$Res, MerchdisplaycountEvent>;
}

/// @nodoc
class _$MerchdisplaycountEventCopyWithImpl<$Res,
        $Val extends MerchdisplaycountEvent>
    implements $MerchdisplaycountEventCopyWith<$Res> {
  _$MerchdisplaycountEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MerchdisplaycountEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetDisplayCountEventImplCopyWith<$Res> {
  factory _$$GetDisplayCountEventImplCopyWith(_$GetDisplayCountEventImpl value,
          $Res Function(_$GetDisplayCountEventImpl) then) =
      __$$GetDisplayCountEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String fromDate, String toDate});
}

/// @nodoc
class __$$GetDisplayCountEventImplCopyWithImpl<$Res>
    extends _$MerchdisplaycountEventCopyWithImpl<$Res,
        _$GetDisplayCountEventImpl>
    implements _$$GetDisplayCountEventImplCopyWith<$Res> {
  __$$GetDisplayCountEventImplCopyWithImpl(_$GetDisplayCountEventImpl _value,
      $Res Function(_$GetDisplayCountEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of MerchdisplaycountEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromDate = null,
    Object? toDate = null,
  }) {
    return _then(_$GetDisplayCountEventImpl(
      fromDate: null == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as String,
      toDate: null == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetDisplayCountEventImpl implements GetDisplayCountEvent {
  const _$GetDisplayCountEventImpl(
      {required this.fromDate, required this.toDate});

  @override
  final String fromDate;
  @override
  final String toDate;

  @override
  String toString() {
    return 'MerchdisplaycountEvent.getDisplayCountEvent(fromDate: $fromDate, toDate: $toDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDisplayCountEventImpl &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fromDate, toDate);

  /// Create a copy of MerchdisplaycountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDisplayCountEventImplCopyWith<_$GetDisplayCountEventImpl>
      get copyWith =>
          __$$GetDisplayCountEventImplCopyWithImpl<_$GetDisplayCountEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fromDate, String toDate)
        getDisplayCountEvent,
    required TResult Function() displayCountClearEvent,
  }) {
    return getDisplayCountEvent(fromDate, toDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fromDate, String toDate)? getDisplayCountEvent,
    TResult? Function()? displayCountClearEvent,
  }) {
    return getDisplayCountEvent?.call(fromDate, toDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fromDate, String toDate)? getDisplayCountEvent,
    TResult Function()? displayCountClearEvent,
    required TResult orElse(),
  }) {
    if (getDisplayCountEvent != null) {
      return getDisplayCountEvent(fromDate, toDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDisplayCountEvent value) getDisplayCountEvent,
    required TResult Function(DisplayCountClearEvent value)
        displayCountClearEvent,
  }) {
    return getDisplayCountEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDisplayCountEvent value)? getDisplayCountEvent,
    TResult? Function(DisplayCountClearEvent value)? displayCountClearEvent,
  }) {
    return getDisplayCountEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDisplayCountEvent value)? getDisplayCountEvent,
    TResult Function(DisplayCountClearEvent value)? displayCountClearEvent,
    required TResult orElse(),
  }) {
    if (getDisplayCountEvent != null) {
      return getDisplayCountEvent(this);
    }
    return orElse();
  }
}

abstract class GetDisplayCountEvent implements MerchdisplaycountEvent {
  const factory GetDisplayCountEvent(
      {required final String fromDate,
      required final String toDate}) = _$GetDisplayCountEventImpl;

  String get fromDate;
  String get toDate;

  /// Create a copy of MerchdisplaycountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetDisplayCountEventImplCopyWith<_$GetDisplayCountEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DisplayCountClearEventImplCopyWith<$Res> {
  factory _$$DisplayCountClearEventImplCopyWith(
          _$DisplayCountClearEventImpl value,
          $Res Function(_$DisplayCountClearEventImpl) then) =
      __$$DisplayCountClearEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DisplayCountClearEventImplCopyWithImpl<$Res>
    extends _$MerchdisplaycountEventCopyWithImpl<$Res,
        _$DisplayCountClearEventImpl>
    implements _$$DisplayCountClearEventImplCopyWith<$Res> {
  __$$DisplayCountClearEventImplCopyWithImpl(
      _$DisplayCountClearEventImpl _value,
      $Res Function(_$DisplayCountClearEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of MerchdisplaycountEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DisplayCountClearEventImpl implements DisplayCountClearEvent {
  const _$DisplayCountClearEventImpl();

  @override
  String toString() {
    return 'MerchdisplaycountEvent.displayCountClearEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisplayCountClearEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fromDate, String toDate)
        getDisplayCountEvent,
    required TResult Function() displayCountClearEvent,
  }) {
    return displayCountClearEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fromDate, String toDate)? getDisplayCountEvent,
    TResult? Function()? displayCountClearEvent,
  }) {
    return displayCountClearEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fromDate, String toDate)? getDisplayCountEvent,
    TResult Function()? displayCountClearEvent,
    required TResult orElse(),
  }) {
    if (displayCountClearEvent != null) {
      return displayCountClearEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDisplayCountEvent value) getDisplayCountEvent,
    required TResult Function(DisplayCountClearEvent value)
        displayCountClearEvent,
  }) {
    return displayCountClearEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDisplayCountEvent value)? getDisplayCountEvent,
    TResult? Function(DisplayCountClearEvent value)? displayCountClearEvent,
  }) {
    return displayCountClearEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDisplayCountEvent value)? getDisplayCountEvent,
    TResult Function(DisplayCountClearEvent value)? displayCountClearEvent,
    required TResult orElse(),
  }) {
    if (displayCountClearEvent != null) {
      return displayCountClearEvent(this);
    }
    return orElse();
  }
}

abstract class DisplayCountClearEvent implements MerchdisplaycountEvent {
  const factory DisplayCountClearEvent() = _$DisplayCountClearEventImpl;
}

/// @nodoc
mixin _$MerchdisplaycountState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetDisplayCountModel? discount)
        getDisplayCountState,
    required TResult Function() dispalyCountFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetDisplayCountModel? discount)? getDisplayCountState,
    TResult? Function()? dispalyCountFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetDisplayCountModel? discount)? getDisplayCountState,
    TResult Function()? dispalyCountFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDisplayCountState value) getDisplayCountState,
    required TResult Function(DispalyCountFailedState value)
        dispalyCountFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDisplayCountState value)? getDisplayCountState,
    TResult? Function(DispalyCountFailedState value)? dispalyCountFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDisplayCountState value)? getDisplayCountState,
    TResult Function(DispalyCountFailedState value)? dispalyCountFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerchdisplaycountStateCopyWith<$Res> {
  factory $MerchdisplaycountStateCopyWith(MerchdisplaycountState value,
          $Res Function(MerchdisplaycountState) then) =
      _$MerchdisplaycountStateCopyWithImpl<$Res, MerchdisplaycountState>;
}

/// @nodoc
class _$MerchdisplaycountStateCopyWithImpl<$Res,
        $Val extends MerchdisplaycountState>
    implements $MerchdisplaycountStateCopyWith<$Res> {
  _$MerchdisplaycountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MerchdisplaycountState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetDisplayCountStateImplCopyWith<$Res> {
  factory _$$GetDisplayCountStateImplCopyWith(_$GetDisplayCountStateImpl value,
          $Res Function(_$GetDisplayCountStateImpl) then) =
      __$$GetDisplayCountStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetDisplayCountModel? discount});
}

/// @nodoc
class __$$GetDisplayCountStateImplCopyWithImpl<$Res>
    extends _$MerchdisplaycountStateCopyWithImpl<$Res,
        _$GetDisplayCountStateImpl>
    implements _$$GetDisplayCountStateImplCopyWith<$Res> {
  __$$GetDisplayCountStateImplCopyWithImpl(_$GetDisplayCountStateImpl _value,
      $Res Function(_$GetDisplayCountStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MerchdisplaycountState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? discount = freezed,
  }) {
    return _then(_$GetDisplayCountStateImpl(
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as GetDisplayCountModel?,
    ));
  }
}

/// @nodoc

class _$GetDisplayCountStateImpl implements GetDisplayCountState {
  const _$GetDisplayCountStateImpl({required this.discount});

  @override
  final GetDisplayCountModel? discount;

  @override
  String toString() {
    return 'MerchdisplaycountState.getDisplayCountState(discount: $discount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDisplayCountStateImpl &&
            (identical(other.discount, discount) ||
                other.discount == discount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, discount);

  /// Create a copy of MerchdisplaycountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDisplayCountStateImplCopyWith<_$GetDisplayCountStateImpl>
      get copyWith =>
          __$$GetDisplayCountStateImplCopyWithImpl<_$GetDisplayCountStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetDisplayCountModel? discount)
        getDisplayCountState,
    required TResult Function() dispalyCountFailedState,
  }) {
    return getDisplayCountState(discount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetDisplayCountModel? discount)? getDisplayCountState,
    TResult? Function()? dispalyCountFailedState,
  }) {
    return getDisplayCountState?.call(discount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetDisplayCountModel? discount)? getDisplayCountState,
    TResult Function()? dispalyCountFailedState,
    required TResult orElse(),
  }) {
    if (getDisplayCountState != null) {
      return getDisplayCountState(discount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDisplayCountState value) getDisplayCountState,
    required TResult Function(DispalyCountFailedState value)
        dispalyCountFailedState,
  }) {
    return getDisplayCountState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDisplayCountState value)? getDisplayCountState,
    TResult? Function(DispalyCountFailedState value)? dispalyCountFailedState,
  }) {
    return getDisplayCountState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDisplayCountState value)? getDisplayCountState,
    TResult Function(DispalyCountFailedState value)? dispalyCountFailedState,
    required TResult orElse(),
  }) {
    if (getDisplayCountState != null) {
      return getDisplayCountState(this);
    }
    return orElse();
  }
}

abstract class GetDisplayCountState implements MerchdisplaycountState {
  const factory GetDisplayCountState(
          {required final GetDisplayCountModel? discount}) =
      _$GetDisplayCountStateImpl;

  GetDisplayCountModel? get discount;

  /// Create a copy of MerchdisplaycountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetDisplayCountStateImplCopyWith<_$GetDisplayCountStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DispalyCountFailedStateImplCopyWith<$Res> {
  factory _$$DispalyCountFailedStateImplCopyWith(
          _$DispalyCountFailedStateImpl value,
          $Res Function(_$DispalyCountFailedStateImpl) then) =
      __$$DispalyCountFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DispalyCountFailedStateImplCopyWithImpl<$Res>
    extends _$MerchdisplaycountStateCopyWithImpl<$Res,
        _$DispalyCountFailedStateImpl>
    implements _$$DispalyCountFailedStateImplCopyWith<$Res> {
  __$$DispalyCountFailedStateImplCopyWithImpl(
      _$DispalyCountFailedStateImpl _value,
      $Res Function(_$DispalyCountFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MerchdisplaycountState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$DispalyCountFailedStateImpl implements DispalyCountFailedState {
  const _$DispalyCountFailedStateImpl();

  @override
  String toString() {
    return 'MerchdisplaycountState.dispalyCountFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DispalyCountFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetDisplayCountModel? discount)
        getDisplayCountState,
    required TResult Function() dispalyCountFailedState,
  }) {
    return dispalyCountFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetDisplayCountModel? discount)? getDisplayCountState,
    TResult? Function()? dispalyCountFailedState,
  }) {
    return dispalyCountFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetDisplayCountModel? discount)? getDisplayCountState,
    TResult Function()? dispalyCountFailedState,
    required TResult orElse(),
  }) {
    if (dispalyCountFailedState != null) {
      return dispalyCountFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetDisplayCountState value) getDisplayCountState,
    required TResult Function(DispalyCountFailedState value)
        dispalyCountFailedState,
  }) {
    return dispalyCountFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetDisplayCountState value)? getDisplayCountState,
    TResult? Function(DispalyCountFailedState value)? dispalyCountFailedState,
  }) {
    return dispalyCountFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetDisplayCountState value)? getDisplayCountState,
    TResult Function(DispalyCountFailedState value)? dispalyCountFailedState,
    required TResult orElse(),
  }) {
    if (dispalyCountFailedState != null) {
      return dispalyCountFailedState(this);
    }
    return orElse();
  }
}

abstract class DispalyCountFailedState implements MerchdisplaycountState {
  const factory DispalyCountFailedState() = _$DispalyCountFailedStateImpl;
}
