// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settlement_approval_header_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettlementApprovalHeaderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String statusvalue, String searchQuery)
        getSettlmntApprovalHeaderEvent,
    required TResult Function() clearSettlmntApprovalHeaderEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String statusvalue, String searchQuery)?
        getSettlmntApprovalHeaderEvent,
    TResult? Function()? clearSettlmntApprovalHeaderEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String statusvalue, String searchQuery)?
        getSettlmntApprovalHeaderEvent,
    TResult Function()? clearSettlmntApprovalHeaderEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSettlmntApprovalHeaderEvent value)
        getSettlmntApprovalHeaderEvent,
    required TResult Function(ClearSettlmntApprovalHeaderEvent value)
        clearSettlmntApprovalHeaderEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSettlmntApprovalHeaderEvent value)?
        getSettlmntApprovalHeaderEvent,
    TResult? Function(ClearSettlmntApprovalHeaderEvent value)?
        clearSettlmntApprovalHeaderEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSettlmntApprovalHeaderEvent value)?
        getSettlmntApprovalHeaderEvent,
    TResult Function(ClearSettlmntApprovalHeaderEvent value)?
        clearSettlmntApprovalHeaderEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettlementApprovalHeaderEventCopyWith<$Res> {
  factory $SettlementApprovalHeaderEventCopyWith(
          SettlementApprovalHeaderEvent value,
          $Res Function(SettlementApprovalHeaderEvent) then) =
      _$SettlementApprovalHeaderEventCopyWithImpl<$Res,
          SettlementApprovalHeaderEvent>;
}

/// @nodoc
class _$SettlementApprovalHeaderEventCopyWithImpl<$Res,
        $Val extends SettlementApprovalHeaderEvent>
    implements $SettlementApprovalHeaderEventCopyWith<$Res> {
  _$SettlementApprovalHeaderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetSettlmntApprovalHeaderEventImplCopyWith<$Res> {
  factory _$$GetSettlmntApprovalHeaderEventImplCopyWith(
          _$GetSettlmntApprovalHeaderEventImpl value,
          $Res Function(_$GetSettlmntApprovalHeaderEventImpl) then) =
      __$$GetSettlmntApprovalHeaderEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String statusvalue, String searchQuery});
}

/// @nodoc
class __$$GetSettlmntApprovalHeaderEventImplCopyWithImpl<$Res>
    extends _$SettlementApprovalHeaderEventCopyWithImpl<$Res,
        _$GetSettlmntApprovalHeaderEventImpl>
    implements _$$GetSettlmntApprovalHeaderEventImplCopyWith<$Res> {
  __$$GetSettlmntApprovalHeaderEventImplCopyWithImpl(
      _$GetSettlmntApprovalHeaderEventImpl _value,
      $Res Function(_$GetSettlmntApprovalHeaderEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusvalue = null,
    Object? searchQuery = null,
  }) {
    return _then(_$GetSettlmntApprovalHeaderEventImpl(
      statusvalue: null == statusvalue
          ? _value.statusvalue
          : statusvalue // ignore: cast_nullable_to_non_nullable
              as String,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetSettlmntApprovalHeaderEventImpl
    implements GetSettlmntApprovalHeaderEvent {
  const _$GetSettlmntApprovalHeaderEventImpl(
      {required this.statusvalue, required this.searchQuery});

  @override
  final String statusvalue;
  @override
  final String searchQuery;

  @override
  String toString() {
    return 'SettlementApprovalHeaderEvent.getSettlmntApprovalHeaderEvent(statusvalue: $statusvalue, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSettlmntApprovalHeaderEventImpl &&
            (identical(other.statusvalue, statusvalue) ||
                other.statusvalue == statusvalue) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, statusvalue, searchQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSettlmntApprovalHeaderEventImplCopyWith<
          _$GetSettlmntApprovalHeaderEventImpl>
      get copyWith => __$$GetSettlmntApprovalHeaderEventImplCopyWithImpl<
          _$GetSettlmntApprovalHeaderEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String statusvalue, String searchQuery)
        getSettlmntApprovalHeaderEvent,
    required TResult Function() clearSettlmntApprovalHeaderEvent,
  }) {
    return getSettlmntApprovalHeaderEvent(statusvalue, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String statusvalue, String searchQuery)?
        getSettlmntApprovalHeaderEvent,
    TResult? Function()? clearSettlmntApprovalHeaderEvent,
  }) {
    return getSettlmntApprovalHeaderEvent?.call(statusvalue, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String statusvalue, String searchQuery)?
        getSettlmntApprovalHeaderEvent,
    TResult Function()? clearSettlmntApprovalHeaderEvent,
    required TResult orElse(),
  }) {
    if (getSettlmntApprovalHeaderEvent != null) {
      return getSettlmntApprovalHeaderEvent(statusvalue, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSettlmntApprovalHeaderEvent value)
        getSettlmntApprovalHeaderEvent,
    required TResult Function(ClearSettlmntApprovalHeaderEvent value)
        clearSettlmntApprovalHeaderEvent,
  }) {
    return getSettlmntApprovalHeaderEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSettlmntApprovalHeaderEvent value)?
        getSettlmntApprovalHeaderEvent,
    TResult? Function(ClearSettlmntApprovalHeaderEvent value)?
        clearSettlmntApprovalHeaderEvent,
  }) {
    return getSettlmntApprovalHeaderEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSettlmntApprovalHeaderEvent value)?
        getSettlmntApprovalHeaderEvent,
    TResult Function(ClearSettlmntApprovalHeaderEvent value)?
        clearSettlmntApprovalHeaderEvent,
    required TResult orElse(),
  }) {
    if (getSettlmntApprovalHeaderEvent != null) {
      return getSettlmntApprovalHeaderEvent(this);
    }
    return orElse();
  }
}

abstract class GetSettlmntApprovalHeaderEvent
    implements SettlementApprovalHeaderEvent {
  const factory GetSettlmntApprovalHeaderEvent(
          {required final String statusvalue,
          required final String searchQuery}) =
      _$GetSettlmntApprovalHeaderEventImpl;

  String get statusvalue;
  String get searchQuery;
  @JsonKey(ignore: true)
  _$$GetSettlmntApprovalHeaderEventImplCopyWith<
          _$GetSettlmntApprovalHeaderEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearSettlmntApprovalHeaderEventImplCopyWith<$Res> {
  factory _$$ClearSettlmntApprovalHeaderEventImplCopyWith(
          _$ClearSettlmntApprovalHeaderEventImpl value,
          $Res Function(_$ClearSettlmntApprovalHeaderEventImpl) then) =
      __$$ClearSettlmntApprovalHeaderEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearSettlmntApprovalHeaderEventImplCopyWithImpl<$Res>
    extends _$SettlementApprovalHeaderEventCopyWithImpl<$Res,
        _$ClearSettlmntApprovalHeaderEventImpl>
    implements _$$ClearSettlmntApprovalHeaderEventImplCopyWith<$Res> {
  __$$ClearSettlmntApprovalHeaderEventImplCopyWithImpl(
      _$ClearSettlmntApprovalHeaderEventImpl _value,
      $Res Function(_$ClearSettlmntApprovalHeaderEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearSettlmntApprovalHeaderEventImpl
    implements ClearSettlmntApprovalHeaderEvent {
  const _$ClearSettlmntApprovalHeaderEventImpl();

  @override
  String toString() {
    return 'SettlementApprovalHeaderEvent.clearSettlmntApprovalHeaderEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearSettlmntApprovalHeaderEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String statusvalue, String searchQuery)
        getSettlmntApprovalHeaderEvent,
    required TResult Function() clearSettlmntApprovalHeaderEvent,
  }) {
    return clearSettlmntApprovalHeaderEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String statusvalue, String searchQuery)?
        getSettlmntApprovalHeaderEvent,
    TResult? Function()? clearSettlmntApprovalHeaderEvent,
  }) {
    return clearSettlmntApprovalHeaderEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String statusvalue, String searchQuery)?
        getSettlmntApprovalHeaderEvent,
    TResult Function()? clearSettlmntApprovalHeaderEvent,
    required TResult orElse(),
  }) {
    if (clearSettlmntApprovalHeaderEvent != null) {
      return clearSettlmntApprovalHeaderEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSettlmntApprovalHeaderEvent value)
        getSettlmntApprovalHeaderEvent,
    required TResult Function(ClearSettlmntApprovalHeaderEvent value)
        clearSettlmntApprovalHeaderEvent,
  }) {
    return clearSettlmntApprovalHeaderEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSettlmntApprovalHeaderEvent value)?
        getSettlmntApprovalHeaderEvent,
    TResult? Function(ClearSettlmntApprovalHeaderEvent value)?
        clearSettlmntApprovalHeaderEvent,
  }) {
    return clearSettlmntApprovalHeaderEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSettlmntApprovalHeaderEvent value)?
        getSettlmntApprovalHeaderEvent,
    TResult Function(ClearSettlmntApprovalHeaderEvent value)?
        clearSettlmntApprovalHeaderEvent,
    required TResult orElse(),
  }) {
    if (clearSettlmntApprovalHeaderEvent != null) {
      return clearSettlmntApprovalHeaderEvent(this);
    }
    return orElse();
  }
}

abstract class ClearSettlmntApprovalHeaderEvent
    implements SettlementApprovalHeaderEvent {
  const factory ClearSettlmntApprovalHeaderEvent() =
      _$ClearSettlmntApprovalHeaderEventImpl;
}

/// @nodoc
mixin _$SettlementApprovalHeaderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<SettlementApprovalHeaderOutModel>? headers)
        getSettlementApprovalHeaderState,
    required TResult Function() settlementApprovalHeaderFailedstate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<SettlementApprovalHeaderOutModel>? headers)?
        getSettlementApprovalHeaderState,
    TResult? Function()? settlementApprovalHeaderFailedstate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SettlementApprovalHeaderOutModel>? headers)?
        getSettlementApprovalHeaderState,
    TResult Function()? settlementApprovalHeaderFailedstate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSettlementApprovalHeaderState value)
        getSettlementApprovalHeaderState,
    required TResult Function(SettlementApprovalHeaderFailedstate value)
        settlementApprovalHeaderFailedstate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSettlementApprovalHeaderState value)?
        getSettlementApprovalHeaderState,
    TResult? Function(SettlementApprovalHeaderFailedstate value)?
        settlementApprovalHeaderFailedstate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSettlementApprovalHeaderState value)?
        getSettlementApprovalHeaderState,
    TResult Function(SettlementApprovalHeaderFailedstate value)?
        settlementApprovalHeaderFailedstate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettlementApprovalHeaderStateCopyWith<$Res> {
  factory $SettlementApprovalHeaderStateCopyWith(
          SettlementApprovalHeaderState value,
          $Res Function(SettlementApprovalHeaderState) then) =
      _$SettlementApprovalHeaderStateCopyWithImpl<$Res,
          SettlementApprovalHeaderState>;
}

/// @nodoc
class _$SettlementApprovalHeaderStateCopyWithImpl<$Res,
        $Val extends SettlementApprovalHeaderState>
    implements $SettlementApprovalHeaderStateCopyWith<$Res> {
  _$SettlementApprovalHeaderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetSettlementApprovalHeaderStateImplCopyWith<$Res> {
  factory _$$GetSettlementApprovalHeaderStateImplCopyWith(
          _$GetSettlementApprovalHeaderStateImpl value,
          $Res Function(_$GetSettlementApprovalHeaderStateImpl) then) =
      __$$GetSettlementApprovalHeaderStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<SettlementApprovalHeaderOutModel>? headers});
}

/// @nodoc
class __$$GetSettlementApprovalHeaderStateImplCopyWithImpl<$Res>
    extends _$SettlementApprovalHeaderStateCopyWithImpl<$Res,
        _$GetSettlementApprovalHeaderStateImpl>
    implements _$$GetSettlementApprovalHeaderStateImplCopyWith<$Res> {
  __$$GetSettlementApprovalHeaderStateImplCopyWithImpl(
      _$GetSettlementApprovalHeaderStateImpl _value,
      $Res Function(_$GetSettlementApprovalHeaderStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headers = freezed,
  }) {
    return _then(_$GetSettlementApprovalHeaderStateImpl(
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as List<SettlementApprovalHeaderOutModel>?,
    ));
  }
}

/// @nodoc

class _$GetSettlementApprovalHeaderStateImpl
    implements GetSettlementApprovalHeaderState {
  const _$GetSettlementApprovalHeaderStateImpl(
      {required final List<SettlementApprovalHeaderOutModel>? headers})
      : _headers = headers;

  final List<SettlementApprovalHeaderOutModel>? _headers;
  @override
  List<SettlementApprovalHeaderOutModel>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableListView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SettlementApprovalHeaderState.getSettlementApprovalHeaderState(headers: $headers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSettlementApprovalHeaderStateImpl &&
            const DeepCollectionEquality().equals(other._headers, _headers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_headers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSettlementApprovalHeaderStateImplCopyWith<
          _$GetSettlementApprovalHeaderStateImpl>
      get copyWith => __$$GetSettlementApprovalHeaderStateImplCopyWithImpl<
          _$GetSettlementApprovalHeaderStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<SettlementApprovalHeaderOutModel>? headers)
        getSettlementApprovalHeaderState,
    required TResult Function() settlementApprovalHeaderFailedstate,
  }) {
    return getSettlementApprovalHeaderState(headers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<SettlementApprovalHeaderOutModel>? headers)?
        getSettlementApprovalHeaderState,
    TResult? Function()? settlementApprovalHeaderFailedstate,
  }) {
    return getSettlementApprovalHeaderState?.call(headers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SettlementApprovalHeaderOutModel>? headers)?
        getSettlementApprovalHeaderState,
    TResult Function()? settlementApprovalHeaderFailedstate,
    required TResult orElse(),
  }) {
    if (getSettlementApprovalHeaderState != null) {
      return getSettlementApprovalHeaderState(headers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSettlementApprovalHeaderState value)
        getSettlementApprovalHeaderState,
    required TResult Function(SettlementApprovalHeaderFailedstate value)
        settlementApprovalHeaderFailedstate,
  }) {
    return getSettlementApprovalHeaderState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSettlementApprovalHeaderState value)?
        getSettlementApprovalHeaderState,
    TResult? Function(SettlementApprovalHeaderFailedstate value)?
        settlementApprovalHeaderFailedstate,
  }) {
    return getSettlementApprovalHeaderState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSettlementApprovalHeaderState value)?
        getSettlementApprovalHeaderState,
    TResult Function(SettlementApprovalHeaderFailedstate value)?
        settlementApprovalHeaderFailedstate,
    required TResult orElse(),
  }) {
    if (getSettlementApprovalHeaderState != null) {
      return getSettlementApprovalHeaderState(this);
    }
    return orElse();
  }
}

abstract class GetSettlementApprovalHeaderState
    implements SettlementApprovalHeaderState {
  const factory GetSettlementApprovalHeaderState(
          {required final List<SettlementApprovalHeaderOutModel>? headers}) =
      _$GetSettlementApprovalHeaderStateImpl;

  List<SettlementApprovalHeaderOutModel>? get headers;
  @JsonKey(ignore: true)
  _$$GetSettlementApprovalHeaderStateImplCopyWith<
          _$GetSettlementApprovalHeaderStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SettlementApprovalHeaderFailedstateImplCopyWith<$Res> {
  factory _$$SettlementApprovalHeaderFailedstateImplCopyWith(
          _$SettlementApprovalHeaderFailedstateImpl value,
          $Res Function(_$SettlementApprovalHeaderFailedstateImpl) then) =
      __$$SettlementApprovalHeaderFailedstateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SettlementApprovalHeaderFailedstateImplCopyWithImpl<$Res>
    extends _$SettlementApprovalHeaderStateCopyWithImpl<$Res,
        _$SettlementApprovalHeaderFailedstateImpl>
    implements _$$SettlementApprovalHeaderFailedstateImplCopyWith<$Res> {
  __$$SettlementApprovalHeaderFailedstateImplCopyWithImpl(
      _$SettlementApprovalHeaderFailedstateImpl _value,
      $Res Function(_$SettlementApprovalHeaderFailedstateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SettlementApprovalHeaderFailedstateImpl
    implements SettlementApprovalHeaderFailedstate {
  const _$SettlementApprovalHeaderFailedstateImpl();

  @override
  String toString() {
    return 'SettlementApprovalHeaderState.settlementApprovalHeaderFailedstate()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettlementApprovalHeaderFailedstateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<SettlementApprovalHeaderOutModel>? headers)
        getSettlementApprovalHeaderState,
    required TResult Function() settlementApprovalHeaderFailedstate,
  }) {
    return settlementApprovalHeaderFailedstate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<SettlementApprovalHeaderOutModel>? headers)?
        getSettlementApprovalHeaderState,
    TResult? Function()? settlementApprovalHeaderFailedstate,
  }) {
    return settlementApprovalHeaderFailedstate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<SettlementApprovalHeaderOutModel>? headers)?
        getSettlementApprovalHeaderState,
    TResult Function()? settlementApprovalHeaderFailedstate,
    required TResult orElse(),
  }) {
    if (settlementApprovalHeaderFailedstate != null) {
      return settlementApprovalHeaderFailedstate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSettlementApprovalHeaderState value)
        getSettlementApprovalHeaderState,
    required TResult Function(SettlementApprovalHeaderFailedstate value)
        settlementApprovalHeaderFailedstate,
  }) {
    return settlementApprovalHeaderFailedstate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSettlementApprovalHeaderState value)?
        getSettlementApprovalHeaderState,
    TResult? Function(SettlementApprovalHeaderFailedstate value)?
        settlementApprovalHeaderFailedstate,
  }) {
    return settlementApprovalHeaderFailedstate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSettlementApprovalHeaderState value)?
        getSettlementApprovalHeaderState,
    TResult Function(SettlementApprovalHeaderFailedstate value)?
        settlementApprovalHeaderFailedstate,
    required TResult orElse(),
  }) {
    if (settlementApprovalHeaderFailedstate != null) {
      return settlementApprovalHeaderFailedstate(this);
    }
    return orElse();
  }
}

abstract class SettlementApprovalHeaderFailedstate
    implements SettlementApprovalHeaderState {
  const factory SettlementApprovalHeaderFailedstate() =
      _$SettlementApprovalHeaderFailedstateImpl;
}
