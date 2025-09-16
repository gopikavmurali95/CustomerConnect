// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'van_to_van_header_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VanToVanHeaderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userID, String mode, String searchQuery)
        getVanToVanHeaderEvent,
    required TResult Function() clearVanToVanHeaderEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userID, String mode, String searchQuery)?
        getVanToVanHeaderEvent,
    TResult? Function()? clearVanToVanHeaderEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userID, String mode, String searchQuery)?
        getVanToVanHeaderEvent,
    TResult Function()? clearVanToVanHeaderEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(getVanToVanHeaderEvent value)
        getVanToVanHeaderEvent,
    required TResult Function(ClearVanToVanHeaderEvent value)
        clearVanToVanHeaderEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(getVanToVanHeaderEvent value)? getVanToVanHeaderEvent,
    TResult? Function(ClearVanToVanHeaderEvent value)? clearVanToVanHeaderEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(getVanToVanHeaderEvent value)? getVanToVanHeaderEvent,
    TResult Function(ClearVanToVanHeaderEvent value)? clearVanToVanHeaderEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VanToVanHeaderEventCopyWith<$Res> {
  factory $VanToVanHeaderEventCopyWith(
          VanToVanHeaderEvent value, $Res Function(VanToVanHeaderEvent) then) =
      _$VanToVanHeaderEventCopyWithImpl<$Res, VanToVanHeaderEvent>;
}

/// @nodoc
class _$VanToVanHeaderEventCopyWithImpl<$Res, $Val extends VanToVanHeaderEvent>
    implements $VanToVanHeaderEventCopyWith<$Res> {
  _$VanToVanHeaderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VanToVanHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$getVanToVanHeaderEventImplCopyWith<$Res> {
  factory _$$getVanToVanHeaderEventImplCopyWith(
          _$getVanToVanHeaderEventImpl value,
          $Res Function(_$getVanToVanHeaderEventImpl) then) =
      __$$getVanToVanHeaderEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userID, String mode, String searchQuery});
}

/// @nodoc
class __$$getVanToVanHeaderEventImplCopyWithImpl<$Res>
    extends _$VanToVanHeaderEventCopyWithImpl<$Res,
        _$getVanToVanHeaderEventImpl>
    implements _$$getVanToVanHeaderEventImplCopyWith<$Res> {
  __$$getVanToVanHeaderEventImplCopyWithImpl(
      _$getVanToVanHeaderEventImpl _value,
      $Res Function(_$getVanToVanHeaderEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of VanToVanHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userID = null,
    Object? mode = null,
    Object? searchQuery = null,
  }) {
    return _then(_$getVanToVanHeaderEventImpl(
      userID: null == userID
          ? _value.userID
          : userID // ignore: cast_nullable_to_non_nullable
              as String,
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as String,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$getVanToVanHeaderEventImpl implements getVanToVanHeaderEvent {
  const _$getVanToVanHeaderEventImpl(
      {required this.userID, required this.mode, required this.searchQuery});

  @override
  final String userID;
  @override
  final String mode;
  @override
  final String searchQuery;

  @override
  String toString() {
    return 'VanToVanHeaderEvent.getVanToVanHeaderEvent(userID: $userID, mode: $mode, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getVanToVanHeaderEventImpl &&
            (identical(other.userID, userID) || other.userID == userID) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userID, mode, searchQuery);

  /// Create a copy of VanToVanHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$getVanToVanHeaderEventImplCopyWith<_$getVanToVanHeaderEventImpl>
      get copyWith => __$$getVanToVanHeaderEventImplCopyWithImpl<
          _$getVanToVanHeaderEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userID, String mode, String searchQuery)
        getVanToVanHeaderEvent,
    required TResult Function() clearVanToVanHeaderEvent,
  }) {
    return getVanToVanHeaderEvent(userID, mode, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userID, String mode, String searchQuery)?
        getVanToVanHeaderEvent,
    TResult? Function()? clearVanToVanHeaderEvent,
  }) {
    return getVanToVanHeaderEvent?.call(userID, mode, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userID, String mode, String searchQuery)?
        getVanToVanHeaderEvent,
    TResult Function()? clearVanToVanHeaderEvent,
    required TResult orElse(),
  }) {
    if (getVanToVanHeaderEvent != null) {
      return getVanToVanHeaderEvent(userID, mode, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(getVanToVanHeaderEvent value)
        getVanToVanHeaderEvent,
    required TResult Function(ClearVanToVanHeaderEvent value)
        clearVanToVanHeaderEvent,
  }) {
    return getVanToVanHeaderEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(getVanToVanHeaderEvent value)? getVanToVanHeaderEvent,
    TResult? Function(ClearVanToVanHeaderEvent value)? clearVanToVanHeaderEvent,
  }) {
    return getVanToVanHeaderEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(getVanToVanHeaderEvent value)? getVanToVanHeaderEvent,
    TResult Function(ClearVanToVanHeaderEvent value)? clearVanToVanHeaderEvent,
    required TResult orElse(),
  }) {
    if (getVanToVanHeaderEvent != null) {
      return getVanToVanHeaderEvent(this);
    }
    return orElse();
  }
}

abstract class getVanToVanHeaderEvent implements VanToVanHeaderEvent {
  const factory getVanToVanHeaderEvent(
      {required final String userID,
      required final String mode,
      required final String searchQuery}) = _$getVanToVanHeaderEventImpl;

  String get userID;
  String get mode;
  String get searchQuery;

  /// Create a copy of VanToVanHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$getVanToVanHeaderEventImplCopyWith<_$getVanToVanHeaderEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearVanToVanHeaderEventImplCopyWith<$Res> {
  factory _$$ClearVanToVanHeaderEventImplCopyWith(
          _$ClearVanToVanHeaderEventImpl value,
          $Res Function(_$ClearVanToVanHeaderEventImpl) then) =
      __$$ClearVanToVanHeaderEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearVanToVanHeaderEventImplCopyWithImpl<$Res>
    extends _$VanToVanHeaderEventCopyWithImpl<$Res,
        _$ClearVanToVanHeaderEventImpl>
    implements _$$ClearVanToVanHeaderEventImplCopyWith<$Res> {
  __$$ClearVanToVanHeaderEventImplCopyWithImpl(
      _$ClearVanToVanHeaderEventImpl _value,
      $Res Function(_$ClearVanToVanHeaderEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of VanToVanHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearVanToVanHeaderEventImpl implements ClearVanToVanHeaderEvent {
  const _$ClearVanToVanHeaderEventImpl();

  @override
  String toString() {
    return 'VanToVanHeaderEvent.clearVanToVanHeaderEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearVanToVanHeaderEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userID, String mode, String searchQuery)
        getVanToVanHeaderEvent,
    required TResult Function() clearVanToVanHeaderEvent,
  }) {
    return clearVanToVanHeaderEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userID, String mode, String searchQuery)?
        getVanToVanHeaderEvent,
    TResult? Function()? clearVanToVanHeaderEvent,
  }) {
    return clearVanToVanHeaderEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userID, String mode, String searchQuery)?
        getVanToVanHeaderEvent,
    TResult Function()? clearVanToVanHeaderEvent,
    required TResult orElse(),
  }) {
    if (clearVanToVanHeaderEvent != null) {
      return clearVanToVanHeaderEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(getVanToVanHeaderEvent value)
        getVanToVanHeaderEvent,
    required TResult Function(ClearVanToVanHeaderEvent value)
        clearVanToVanHeaderEvent,
  }) {
    return clearVanToVanHeaderEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(getVanToVanHeaderEvent value)? getVanToVanHeaderEvent,
    TResult? Function(ClearVanToVanHeaderEvent value)? clearVanToVanHeaderEvent,
  }) {
    return clearVanToVanHeaderEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(getVanToVanHeaderEvent value)? getVanToVanHeaderEvent,
    TResult Function(ClearVanToVanHeaderEvent value)? clearVanToVanHeaderEvent,
    required TResult orElse(),
  }) {
    if (clearVanToVanHeaderEvent != null) {
      return clearVanToVanHeaderEvent(this);
    }
    return orElse();
  }
}

abstract class ClearVanToVanHeaderEvent implements VanToVanHeaderEvent {
  const factory ClearVanToVanHeaderEvent() = _$ClearVanToVanHeaderEventImpl;
}

/// @nodoc
mixin _$VanToVanHeaderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<VanToVanHeaderModel>? headers)
        getVanToVanHeaderState,
    required TResult Function() vanToVanHeaderFailedstate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<VanToVanHeaderModel>? headers)?
        getVanToVanHeaderState,
    TResult? Function()? vanToVanHeaderFailedstate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<VanToVanHeaderModel>? headers)?
        getVanToVanHeaderState,
    TResult Function()? vanToVanHeaderFailedstate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GettVanToVanHeaderState value)
        getVanToVanHeaderState,
    required TResult Function(VanToVanHeaderFailedstate value)
        vanToVanHeaderFailedstate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GettVanToVanHeaderState value)? getVanToVanHeaderState,
    TResult? Function(VanToVanHeaderFailedstate value)?
        vanToVanHeaderFailedstate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GettVanToVanHeaderState value)? getVanToVanHeaderState,
    TResult Function(VanToVanHeaderFailedstate value)?
        vanToVanHeaderFailedstate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VanToVanHeaderStateCopyWith<$Res> {
  factory $VanToVanHeaderStateCopyWith(
          VanToVanHeaderState value, $Res Function(VanToVanHeaderState) then) =
      _$VanToVanHeaderStateCopyWithImpl<$Res, VanToVanHeaderState>;
}

/// @nodoc
class _$VanToVanHeaderStateCopyWithImpl<$Res, $Val extends VanToVanHeaderState>
    implements $VanToVanHeaderStateCopyWith<$Res> {
  _$VanToVanHeaderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VanToVanHeaderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GettVanToVanHeaderStateImplCopyWith<$Res> {
  factory _$$GettVanToVanHeaderStateImplCopyWith(
          _$GettVanToVanHeaderStateImpl value,
          $Res Function(_$GettVanToVanHeaderStateImpl) then) =
      __$$GettVanToVanHeaderStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<VanToVanHeaderModel>? headers});
}

/// @nodoc
class __$$GettVanToVanHeaderStateImplCopyWithImpl<$Res>
    extends _$VanToVanHeaderStateCopyWithImpl<$Res,
        _$GettVanToVanHeaderStateImpl>
    implements _$$GettVanToVanHeaderStateImplCopyWith<$Res> {
  __$$GettVanToVanHeaderStateImplCopyWithImpl(
      _$GettVanToVanHeaderStateImpl _value,
      $Res Function(_$GettVanToVanHeaderStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of VanToVanHeaderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headers = freezed,
  }) {
    return _then(_$GettVanToVanHeaderStateImpl(
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as List<VanToVanHeaderModel>?,
    ));
  }
}

/// @nodoc

class _$GettVanToVanHeaderStateImpl implements GettVanToVanHeaderState {
  const _$GettVanToVanHeaderStateImpl(
      {required final List<VanToVanHeaderModel>? headers})
      : _headers = headers;

  final List<VanToVanHeaderModel>? _headers;
  @override
  List<VanToVanHeaderModel>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableListView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'VanToVanHeaderState.getVanToVanHeaderState(headers: $headers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GettVanToVanHeaderStateImpl &&
            const DeepCollectionEquality().equals(other._headers, _headers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_headers));

  /// Create a copy of VanToVanHeaderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GettVanToVanHeaderStateImplCopyWith<_$GettVanToVanHeaderStateImpl>
      get copyWith => __$$GettVanToVanHeaderStateImplCopyWithImpl<
          _$GettVanToVanHeaderStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<VanToVanHeaderModel>? headers)
        getVanToVanHeaderState,
    required TResult Function() vanToVanHeaderFailedstate,
  }) {
    return getVanToVanHeaderState(headers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<VanToVanHeaderModel>? headers)?
        getVanToVanHeaderState,
    TResult? Function()? vanToVanHeaderFailedstate,
  }) {
    return getVanToVanHeaderState?.call(headers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<VanToVanHeaderModel>? headers)?
        getVanToVanHeaderState,
    TResult Function()? vanToVanHeaderFailedstate,
    required TResult orElse(),
  }) {
    if (getVanToVanHeaderState != null) {
      return getVanToVanHeaderState(headers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GettVanToVanHeaderState value)
        getVanToVanHeaderState,
    required TResult Function(VanToVanHeaderFailedstate value)
        vanToVanHeaderFailedstate,
  }) {
    return getVanToVanHeaderState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GettVanToVanHeaderState value)? getVanToVanHeaderState,
    TResult? Function(VanToVanHeaderFailedstate value)?
        vanToVanHeaderFailedstate,
  }) {
    return getVanToVanHeaderState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GettVanToVanHeaderState value)? getVanToVanHeaderState,
    TResult Function(VanToVanHeaderFailedstate value)?
        vanToVanHeaderFailedstate,
    required TResult orElse(),
  }) {
    if (getVanToVanHeaderState != null) {
      return getVanToVanHeaderState(this);
    }
    return orElse();
  }
}

abstract class GettVanToVanHeaderState implements VanToVanHeaderState {
  const factory GettVanToVanHeaderState(
          {required final List<VanToVanHeaderModel>? headers}) =
      _$GettVanToVanHeaderStateImpl;

  List<VanToVanHeaderModel>? get headers;

  /// Create a copy of VanToVanHeaderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GettVanToVanHeaderStateImplCopyWith<_$GettVanToVanHeaderStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VanToVanHeaderFailedstateImplCopyWith<$Res> {
  factory _$$VanToVanHeaderFailedstateImplCopyWith(
          _$VanToVanHeaderFailedstateImpl value,
          $Res Function(_$VanToVanHeaderFailedstateImpl) then) =
      __$$VanToVanHeaderFailedstateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VanToVanHeaderFailedstateImplCopyWithImpl<$Res>
    extends _$VanToVanHeaderStateCopyWithImpl<$Res,
        _$VanToVanHeaderFailedstateImpl>
    implements _$$VanToVanHeaderFailedstateImplCopyWith<$Res> {
  __$$VanToVanHeaderFailedstateImplCopyWithImpl(
      _$VanToVanHeaderFailedstateImpl _value,
      $Res Function(_$VanToVanHeaderFailedstateImpl) _then)
      : super(_value, _then);

  /// Create a copy of VanToVanHeaderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$VanToVanHeaderFailedstateImpl implements VanToVanHeaderFailedstate {
  const _$VanToVanHeaderFailedstateImpl();

  @override
  String toString() {
    return 'VanToVanHeaderState.vanToVanHeaderFailedstate()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VanToVanHeaderFailedstateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<VanToVanHeaderModel>? headers)
        getVanToVanHeaderState,
    required TResult Function() vanToVanHeaderFailedstate,
  }) {
    return vanToVanHeaderFailedstate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<VanToVanHeaderModel>? headers)?
        getVanToVanHeaderState,
    TResult? Function()? vanToVanHeaderFailedstate,
  }) {
    return vanToVanHeaderFailedstate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<VanToVanHeaderModel>? headers)?
        getVanToVanHeaderState,
    TResult Function()? vanToVanHeaderFailedstate,
    required TResult orElse(),
  }) {
    if (vanToVanHeaderFailedstate != null) {
      return vanToVanHeaderFailedstate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GettVanToVanHeaderState value)
        getVanToVanHeaderState,
    required TResult Function(VanToVanHeaderFailedstate value)
        vanToVanHeaderFailedstate,
  }) {
    return vanToVanHeaderFailedstate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GettVanToVanHeaderState value)? getVanToVanHeaderState,
    TResult? Function(VanToVanHeaderFailedstate value)?
        vanToVanHeaderFailedstate,
  }) {
    return vanToVanHeaderFailedstate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GettVanToVanHeaderState value)? getVanToVanHeaderState,
    TResult Function(VanToVanHeaderFailedstate value)?
        vanToVanHeaderFailedstate,
    required TResult orElse(),
  }) {
    if (vanToVanHeaderFailedstate != null) {
      return vanToVanHeaderFailedstate(this);
    }
    return orElse();
  }
}

abstract class VanToVanHeaderFailedstate implements VanToVanHeaderState {
  const factory VanToVanHeaderFailedstate() = _$VanToVanHeaderFailedstateImpl;
}
