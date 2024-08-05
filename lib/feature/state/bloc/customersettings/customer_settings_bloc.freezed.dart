// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CustomerSettingsEvent {
  String get usrID => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String usrID) getCustomerSettingsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String usrID)? getCustomerSettingsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String usrID)? getCustomerSettingsEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCustomerSettingsEvent value)
        getCustomerSettingsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCustomerSettingsEvent value)? getCustomerSettingsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCustomerSettingsEvent value)? getCustomerSettingsEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerSettingsEventCopyWith<CustomerSettingsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerSettingsEventCopyWith<$Res> {
  factory $CustomerSettingsEventCopyWith(CustomerSettingsEvent value,
          $Res Function(CustomerSettingsEvent) then) =
      _$CustomerSettingsEventCopyWithImpl<$Res, CustomerSettingsEvent>;
  @useResult
  $Res call({String usrID});
}

/// @nodoc
class _$CustomerSettingsEventCopyWithImpl<$Res,
        $Val extends CustomerSettingsEvent>
    implements $CustomerSettingsEventCopyWith<$Res> {
  _$CustomerSettingsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usrID = null,
  }) {
    return _then(_value.copyWith(
      usrID: null == usrID
          ? _value.usrID
          : usrID // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetCustomerSettingsEventImplCopyWith<$Res>
    implements $CustomerSettingsEventCopyWith<$Res> {
  factory _$$GetCustomerSettingsEventImplCopyWith(
          _$GetCustomerSettingsEventImpl value,
          $Res Function(_$GetCustomerSettingsEventImpl) then) =
      __$$GetCustomerSettingsEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String usrID});
}

/// @nodoc
class __$$GetCustomerSettingsEventImplCopyWithImpl<$Res>
    extends _$CustomerSettingsEventCopyWithImpl<$Res,
        _$GetCustomerSettingsEventImpl>
    implements _$$GetCustomerSettingsEventImplCopyWith<$Res> {
  __$$GetCustomerSettingsEventImplCopyWithImpl(
      _$GetCustomerSettingsEventImpl _value,
      $Res Function(_$GetCustomerSettingsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usrID = null,
  }) {
    return _then(_$GetCustomerSettingsEventImpl(
      usrID: null == usrID
          ? _value.usrID
          : usrID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCustomerSettingsEventImpl implements GetCustomerSettingsEvent {
  const _$GetCustomerSettingsEventImpl({required this.usrID});

  @override
  final String usrID;

  @override
  String toString() {
    return 'CustomerSettingsEvent.getCustomerSettingsEvent(usrID: $usrID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCustomerSettingsEventImpl &&
            (identical(other.usrID, usrID) || other.usrID == usrID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, usrID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCustomerSettingsEventImplCopyWith<_$GetCustomerSettingsEventImpl>
      get copyWith => __$$GetCustomerSettingsEventImplCopyWithImpl<
          _$GetCustomerSettingsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String usrID) getCustomerSettingsEvent,
  }) {
    return getCustomerSettingsEvent(usrID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String usrID)? getCustomerSettingsEvent,
  }) {
    return getCustomerSettingsEvent?.call(usrID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String usrID)? getCustomerSettingsEvent,
    required TResult orElse(),
  }) {
    if (getCustomerSettingsEvent != null) {
      return getCustomerSettingsEvent(usrID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCustomerSettingsEvent value)
        getCustomerSettingsEvent,
  }) {
    return getCustomerSettingsEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCustomerSettingsEvent value)? getCustomerSettingsEvent,
  }) {
    return getCustomerSettingsEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCustomerSettingsEvent value)? getCustomerSettingsEvent,
    required TResult orElse(),
  }) {
    if (getCustomerSettingsEvent != null) {
      return getCustomerSettingsEvent(this);
    }
    return orElse();
  }
}

abstract class GetCustomerSettingsEvent implements CustomerSettingsEvent {
  const factory GetCustomerSettingsEvent({required final String usrID}) =
      _$GetCustomerSettingsEventImpl;

  @override
  String get usrID;
  @override
  @JsonKey(ignore: true)
  _$$GetCustomerSettingsEventImplCopyWith<_$GetCustomerSettingsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CustomerSettingsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerSettingsModel? settings)
        getCustomerSettingsState,
    required TResult Function() customerSettingsFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerSettingsModel? settings)?
        getCustomerSettingsState,
    TResult? Function()? customerSettingsFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerSettingsModel? settings)? getCustomerSettingsState,
    TResult Function()? customerSettingsFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCustomerSettingsState value)
        getCustomerSettingsState,
    required TResult Function(CustomerSettingsFailedState value)
        customerSettingsFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCustomerSettingsState value)? getCustomerSettingsState,
    TResult? Function(CustomerSettingsFailedState value)?
        customerSettingsFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCustomerSettingsState value)? getCustomerSettingsState,
    TResult Function(CustomerSettingsFailedState value)?
        customerSettingsFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerSettingsStateCopyWith<$Res> {
  factory $CustomerSettingsStateCopyWith(CustomerSettingsState value,
          $Res Function(CustomerSettingsState) then) =
      _$CustomerSettingsStateCopyWithImpl<$Res, CustomerSettingsState>;
}

/// @nodoc
class _$CustomerSettingsStateCopyWithImpl<$Res,
        $Val extends CustomerSettingsState>
    implements $CustomerSettingsStateCopyWith<$Res> {
  _$CustomerSettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetCustomerSettingsStateImplCopyWith<$Res> {
  factory _$$GetCustomerSettingsStateImplCopyWith(
          _$GetCustomerSettingsStateImpl value,
          $Res Function(_$GetCustomerSettingsStateImpl) then) =
      __$$GetCustomerSettingsStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CustomerSettingsModel? settings});
}

/// @nodoc
class __$$GetCustomerSettingsStateImplCopyWithImpl<$Res>
    extends _$CustomerSettingsStateCopyWithImpl<$Res,
        _$GetCustomerSettingsStateImpl>
    implements _$$GetCustomerSettingsStateImplCopyWith<$Res> {
  __$$GetCustomerSettingsStateImplCopyWithImpl(
      _$GetCustomerSettingsStateImpl _value,
      $Res Function(_$GetCustomerSettingsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? settings = freezed,
  }) {
    return _then(_$GetCustomerSettingsStateImpl(
      settings: freezed == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as CustomerSettingsModel?,
    ));
  }
}

/// @nodoc

class _$GetCustomerSettingsStateImpl implements GetCustomerSettingsState {
  const _$GetCustomerSettingsStateImpl({required this.settings});

  @override
  final CustomerSettingsModel? settings;

  @override
  String toString() {
    return 'CustomerSettingsState.getCustomerSettingsState(settings: $settings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCustomerSettingsStateImpl &&
            (identical(other.settings, settings) ||
                other.settings == settings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, settings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCustomerSettingsStateImplCopyWith<_$GetCustomerSettingsStateImpl>
      get copyWith => __$$GetCustomerSettingsStateImplCopyWithImpl<
          _$GetCustomerSettingsStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerSettingsModel? settings)
        getCustomerSettingsState,
    required TResult Function() customerSettingsFailedState,
  }) {
    return getCustomerSettingsState(settings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerSettingsModel? settings)?
        getCustomerSettingsState,
    TResult? Function()? customerSettingsFailedState,
  }) {
    return getCustomerSettingsState?.call(settings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerSettingsModel? settings)? getCustomerSettingsState,
    TResult Function()? customerSettingsFailedState,
    required TResult orElse(),
  }) {
    if (getCustomerSettingsState != null) {
      return getCustomerSettingsState(settings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCustomerSettingsState value)
        getCustomerSettingsState,
    required TResult Function(CustomerSettingsFailedState value)
        customerSettingsFailedState,
  }) {
    return getCustomerSettingsState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCustomerSettingsState value)? getCustomerSettingsState,
    TResult? Function(CustomerSettingsFailedState value)?
        customerSettingsFailedState,
  }) {
    return getCustomerSettingsState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCustomerSettingsState value)? getCustomerSettingsState,
    TResult Function(CustomerSettingsFailedState value)?
        customerSettingsFailedState,
    required TResult orElse(),
  }) {
    if (getCustomerSettingsState != null) {
      return getCustomerSettingsState(this);
    }
    return orElse();
  }
}

abstract class GetCustomerSettingsState implements CustomerSettingsState {
  const factory GetCustomerSettingsState(
          {required final CustomerSettingsModel? settings}) =
      _$GetCustomerSettingsStateImpl;

  CustomerSettingsModel? get settings;
  @JsonKey(ignore: true)
  _$$GetCustomerSettingsStateImplCopyWith<_$GetCustomerSettingsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CustomerSettingsFailedStateImplCopyWith<$Res> {
  factory _$$CustomerSettingsFailedStateImplCopyWith(
          _$CustomerSettingsFailedStateImpl value,
          $Res Function(_$CustomerSettingsFailedStateImpl) then) =
      __$$CustomerSettingsFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CustomerSettingsFailedStateImplCopyWithImpl<$Res>
    extends _$CustomerSettingsStateCopyWithImpl<$Res,
        _$CustomerSettingsFailedStateImpl>
    implements _$$CustomerSettingsFailedStateImplCopyWith<$Res> {
  __$$CustomerSettingsFailedStateImplCopyWithImpl(
      _$CustomerSettingsFailedStateImpl _value,
      $Res Function(_$CustomerSettingsFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CustomerSettingsFailedStateImpl implements CustomerSettingsFailedState {
  const _$CustomerSettingsFailedStateImpl();

  @override
  String toString() {
    return 'CustomerSettingsState.customerSettingsFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerSettingsFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CustomerSettingsModel? settings)
        getCustomerSettingsState,
    required TResult Function() customerSettingsFailedState,
  }) {
    return customerSettingsFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CustomerSettingsModel? settings)?
        getCustomerSettingsState,
    TResult? Function()? customerSettingsFailedState,
  }) {
    return customerSettingsFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CustomerSettingsModel? settings)? getCustomerSettingsState,
    TResult Function()? customerSettingsFailedState,
    required TResult orElse(),
  }) {
    if (customerSettingsFailedState != null) {
      return customerSettingsFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCustomerSettingsState value)
        getCustomerSettingsState,
    required TResult Function(CustomerSettingsFailedState value)
        customerSettingsFailedState,
  }) {
    return customerSettingsFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCustomerSettingsState value)? getCustomerSettingsState,
    TResult? Function(CustomerSettingsFailedState value)?
        customerSettingsFailedState,
  }) {
    return customerSettingsFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCustomerSettingsState value)? getCustomerSettingsState,
    TResult Function(CustomerSettingsFailedState value)?
        customerSettingsFailedState,
    required TResult orElse(),
  }) {
    if (customerSettingsFailedState != null) {
      return customerSettingsFailedState(this);
    }
    return orElse();
  }
}

abstract class CustomerSettingsFailedState implements CustomerSettingsState {
  const factory CustomerSettingsFailedState() =
      _$CustomerSettingsFailedStateImpl;
}
