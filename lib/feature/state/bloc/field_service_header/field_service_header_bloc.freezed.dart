// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'field_service_header_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FieldServiceHeaderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String searchQuery)
        getAllFieldServiceHeadersEvent,
    required TResult Function() clearFieldServiceHeaderEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String searchQuery)?
        getAllFieldServiceHeadersEvent,
    TResult? Function()? clearFieldServiceHeaderEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String searchQuery)?
        getAllFieldServiceHeadersEvent,
    TResult Function()? clearFieldServiceHeaderEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllFieldServiceHeadersEvent value)
        getAllFieldServiceHeadersEvent,
    required TResult Function(ClearFieldServiceHeaderEvent value)
        clearFieldServiceHeaderEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllFieldServiceHeadersEvent value)?
        getAllFieldServiceHeadersEvent,
    TResult? Function(ClearFieldServiceHeaderEvent value)?
        clearFieldServiceHeaderEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllFieldServiceHeadersEvent value)?
        getAllFieldServiceHeadersEvent,
    TResult Function(ClearFieldServiceHeaderEvent value)?
        clearFieldServiceHeaderEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldServiceHeaderEventCopyWith<$Res> {
  factory $FieldServiceHeaderEventCopyWith(FieldServiceHeaderEvent value,
          $Res Function(FieldServiceHeaderEvent) then) =
      _$FieldServiceHeaderEventCopyWithImpl<$Res, FieldServiceHeaderEvent>;
}

/// @nodoc
class _$FieldServiceHeaderEventCopyWithImpl<$Res,
        $Val extends FieldServiceHeaderEvent>
    implements $FieldServiceHeaderEventCopyWith<$Res> {
  _$FieldServiceHeaderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAllFieldServiceHeadersEventImplCopyWith<$Res> {
  factory _$$GetAllFieldServiceHeadersEventImplCopyWith(
          _$GetAllFieldServiceHeadersEventImpl value,
          $Res Function(_$GetAllFieldServiceHeadersEventImpl) then) =
      __$$GetAllFieldServiceHeadersEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId, String searchQuery});
}

/// @nodoc
class __$$GetAllFieldServiceHeadersEventImplCopyWithImpl<$Res>
    extends _$FieldServiceHeaderEventCopyWithImpl<$Res,
        _$GetAllFieldServiceHeadersEventImpl>
    implements _$$GetAllFieldServiceHeadersEventImplCopyWith<$Res> {
  __$$GetAllFieldServiceHeadersEventImplCopyWithImpl(
      _$GetAllFieldServiceHeadersEventImpl _value,
      $Res Function(_$GetAllFieldServiceHeadersEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? searchQuery = null,
  }) {
    return _then(_$GetAllFieldServiceHeadersEventImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetAllFieldServiceHeadersEventImpl
    implements GetAllFieldServiceHeadersEvent {
  const _$GetAllFieldServiceHeadersEventImpl(
      {required this.userId, required this.searchQuery});

  @override
  final String userId;
  @override
  final String searchQuery;

  @override
  String toString() {
    return 'FieldServiceHeaderEvent.getAllFieldServiceHeadersEvent(userId: $userId, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllFieldServiceHeadersEventImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, searchQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllFieldServiceHeadersEventImplCopyWith<
          _$GetAllFieldServiceHeadersEventImpl>
      get copyWith => __$$GetAllFieldServiceHeadersEventImplCopyWithImpl<
          _$GetAllFieldServiceHeadersEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String searchQuery)
        getAllFieldServiceHeadersEvent,
    required TResult Function() clearFieldServiceHeaderEvent,
  }) {
    return getAllFieldServiceHeadersEvent(userId, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String searchQuery)?
        getAllFieldServiceHeadersEvent,
    TResult? Function()? clearFieldServiceHeaderEvent,
  }) {
    return getAllFieldServiceHeadersEvent?.call(userId, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String searchQuery)?
        getAllFieldServiceHeadersEvent,
    TResult Function()? clearFieldServiceHeaderEvent,
    required TResult orElse(),
  }) {
    if (getAllFieldServiceHeadersEvent != null) {
      return getAllFieldServiceHeadersEvent(userId, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllFieldServiceHeadersEvent value)
        getAllFieldServiceHeadersEvent,
    required TResult Function(ClearFieldServiceHeaderEvent value)
        clearFieldServiceHeaderEvent,
  }) {
    return getAllFieldServiceHeadersEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllFieldServiceHeadersEvent value)?
        getAllFieldServiceHeadersEvent,
    TResult? Function(ClearFieldServiceHeaderEvent value)?
        clearFieldServiceHeaderEvent,
  }) {
    return getAllFieldServiceHeadersEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllFieldServiceHeadersEvent value)?
        getAllFieldServiceHeadersEvent,
    TResult Function(ClearFieldServiceHeaderEvent value)?
        clearFieldServiceHeaderEvent,
    required TResult orElse(),
  }) {
    if (getAllFieldServiceHeadersEvent != null) {
      return getAllFieldServiceHeadersEvent(this);
    }
    return orElse();
  }
}

abstract class GetAllFieldServiceHeadersEvent
    implements FieldServiceHeaderEvent {
  const factory GetAllFieldServiceHeadersEvent(
          {required final String userId, required final String searchQuery}) =
      _$GetAllFieldServiceHeadersEventImpl;

  String get userId;
  String get searchQuery;
  @JsonKey(ignore: true)
  _$$GetAllFieldServiceHeadersEventImplCopyWith<
          _$GetAllFieldServiceHeadersEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearFieldServiceHeaderEventImplCopyWith<$Res> {
  factory _$$ClearFieldServiceHeaderEventImplCopyWith(
          _$ClearFieldServiceHeaderEventImpl value,
          $Res Function(_$ClearFieldServiceHeaderEventImpl) then) =
      __$$ClearFieldServiceHeaderEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearFieldServiceHeaderEventImplCopyWithImpl<$Res>
    extends _$FieldServiceHeaderEventCopyWithImpl<$Res,
        _$ClearFieldServiceHeaderEventImpl>
    implements _$$ClearFieldServiceHeaderEventImplCopyWith<$Res> {
  __$$ClearFieldServiceHeaderEventImplCopyWithImpl(
      _$ClearFieldServiceHeaderEventImpl _value,
      $Res Function(_$ClearFieldServiceHeaderEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearFieldServiceHeaderEventImpl
    implements ClearFieldServiceHeaderEvent {
  const _$ClearFieldServiceHeaderEventImpl();

  @override
  String toString() {
    return 'FieldServiceHeaderEvent.clearFieldServiceHeaderEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearFieldServiceHeaderEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userId, String searchQuery)
        getAllFieldServiceHeadersEvent,
    required TResult Function() clearFieldServiceHeaderEvent,
  }) {
    return clearFieldServiceHeaderEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userId, String searchQuery)?
        getAllFieldServiceHeadersEvent,
    TResult? Function()? clearFieldServiceHeaderEvent,
  }) {
    return clearFieldServiceHeaderEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userId, String searchQuery)?
        getAllFieldServiceHeadersEvent,
    TResult Function()? clearFieldServiceHeaderEvent,
    required TResult orElse(),
  }) {
    if (clearFieldServiceHeaderEvent != null) {
      return clearFieldServiceHeaderEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllFieldServiceHeadersEvent value)
        getAllFieldServiceHeadersEvent,
    required TResult Function(ClearFieldServiceHeaderEvent value)
        clearFieldServiceHeaderEvent,
  }) {
    return clearFieldServiceHeaderEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllFieldServiceHeadersEvent value)?
        getAllFieldServiceHeadersEvent,
    TResult? Function(ClearFieldServiceHeaderEvent value)?
        clearFieldServiceHeaderEvent,
  }) {
    return clearFieldServiceHeaderEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllFieldServiceHeadersEvent value)?
        getAllFieldServiceHeadersEvent,
    TResult Function(ClearFieldServiceHeaderEvent value)?
        clearFieldServiceHeaderEvent,
    required TResult orElse(),
  }) {
    if (clearFieldServiceHeaderEvent != null) {
      return clearFieldServiceHeaderEvent(this);
    }
    return orElse();
  }
}

abstract class ClearFieldServiceHeaderEvent implements FieldServiceHeaderEvent {
  const factory ClearFieldServiceHeaderEvent() =
      _$ClearFieldServiceHeaderEventImpl;
}

/// @nodoc
mixin _$FieldServiceHeaderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<FieldServiceInvoiceHeaderModel>? headers)
        getFieldServiceInvoiceHEadersState,
    required TResult Function() fieldServiceInvoiceHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<FieldServiceInvoiceHeaderModel>? headers)?
        getFieldServiceInvoiceHEadersState,
    TResult? Function()? fieldServiceInvoiceHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<FieldServiceInvoiceHeaderModel>? headers)?
        getFieldServiceInvoiceHEadersState,
    TResult Function()? fieldServiceInvoiceHeaderFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFieldServiceInvoiceHEadersState value)
        getFieldServiceInvoiceHEadersState,
    required TResult Function(FieldServiceInvoiceHeaderFailedState value)
        fieldServiceInvoiceHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFieldServiceInvoiceHEadersState value)?
        getFieldServiceInvoiceHEadersState,
    TResult? Function(FieldServiceInvoiceHeaderFailedState value)?
        fieldServiceInvoiceHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFieldServiceInvoiceHEadersState value)?
        getFieldServiceInvoiceHEadersState,
    TResult Function(FieldServiceInvoiceHeaderFailedState value)?
        fieldServiceInvoiceHeaderFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldServiceHeaderStateCopyWith<$Res> {
  factory $FieldServiceHeaderStateCopyWith(FieldServiceHeaderState value,
          $Res Function(FieldServiceHeaderState) then) =
      _$FieldServiceHeaderStateCopyWithImpl<$Res, FieldServiceHeaderState>;
}

/// @nodoc
class _$FieldServiceHeaderStateCopyWithImpl<$Res,
        $Val extends FieldServiceHeaderState>
    implements $FieldServiceHeaderStateCopyWith<$Res> {
  _$FieldServiceHeaderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetFieldServiceInvoiceHEadersStateImplCopyWith<$Res> {
  factory _$$GetFieldServiceInvoiceHEadersStateImplCopyWith(
          _$GetFieldServiceInvoiceHEadersStateImpl value,
          $Res Function(_$GetFieldServiceInvoiceHEadersStateImpl) then) =
      __$$GetFieldServiceInvoiceHEadersStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<FieldServiceInvoiceHeaderModel>? headers});
}

/// @nodoc
class __$$GetFieldServiceInvoiceHEadersStateImplCopyWithImpl<$Res>
    extends _$FieldServiceHeaderStateCopyWithImpl<$Res,
        _$GetFieldServiceInvoiceHEadersStateImpl>
    implements _$$GetFieldServiceInvoiceHEadersStateImplCopyWith<$Res> {
  __$$GetFieldServiceInvoiceHEadersStateImplCopyWithImpl(
      _$GetFieldServiceInvoiceHEadersStateImpl _value,
      $Res Function(_$GetFieldServiceInvoiceHEadersStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headers = freezed,
  }) {
    return _then(_$GetFieldServiceInvoiceHEadersStateImpl(
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as List<FieldServiceInvoiceHeaderModel>?,
    ));
  }
}

/// @nodoc

class _$GetFieldServiceInvoiceHEadersStateImpl
    implements GetFieldServiceInvoiceHEadersState {
  const _$GetFieldServiceInvoiceHEadersStateImpl(
      {required final List<FieldServiceInvoiceHeaderModel>? headers})
      : _headers = headers;

  final List<FieldServiceInvoiceHeaderModel>? _headers;
  @override
  List<FieldServiceInvoiceHeaderModel>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableListView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FieldServiceHeaderState.getFieldServiceInvoiceHEadersState(headers: $headers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFieldServiceInvoiceHEadersStateImpl &&
            const DeepCollectionEquality().equals(other._headers, _headers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_headers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFieldServiceInvoiceHEadersStateImplCopyWith<
          _$GetFieldServiceInvoiceHEadersStateImpl>
      get copyWith => __$$GetFieldServiceInvoiceHEadersStateImplCopyWithImpl<
          _$GetFieldServiceInvoiceHEadersStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<FieldServiceInvoiceHeaderModel>? headers)
        getFieldServiceInvoiceHEadersState,
    required TResult Function() fieldServiceInvoiceHeaderFailedState,
  }) {
    return getFieldServiceInvoiceHEadersState(headers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<FieldServiceInvoiceHeaderModel>? headers)?
        getFieldServiceInvoiceHEadersState,
    TResult? Function()? fieldServiceInvoiceHeaderFailedState,
  }) {
    return getFieldServiceInvoiceHEadersState?.call(headers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<FieldServiceInvoiceHeaderModel>? headers)?
        getFieldServiceInvoiceHEadersState,
    TResult Function()? fieldServiceInvoiceHeaderFailedState,
    required TResult orElse(),
  }) {
    if (getFieldServiceInvoiceHEadersState != null) {
      return getFieldServiceInvoiceHEadersState(headers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFieldServiceInvoiceHEadersState value)
        getFieldServiceInvoiceHEadersState,
    required TResult Function(FieldServiceInvoiceHeaderFailedState value)
        fieldServiceInvoiceHeaderFailedState,
  }) {
    return getFieldServiceInvoiceHEadersState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFieldServiceInvoiceHEadersState value)?
        getFieldServiceInvoiceHEadersState,
    TResult? Function(FieldServiceInvoiceHeaderFailedState value)?
        fieldServiceInvoiceHeaderFailedState,
  }) {
    return getFieldServiceInvoiceHEadersState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFieldServiceInvoiceHEadersState value)?
        getFieldServiceInvoiceHEadersState,
    TResult Function(FieldServiceInvoiceHeaderFailedState value)?
        fieldServiceInvoiceHeaderFailedState,
    required TResult orElse(),
  }) {
    if (getFieldServiceInvoiceHEadersState != null) {
      return getFieldServiceInvoiceHEadersState(this);
    }
    return orElse();
  }
}

abstract class GetFieldServiceInvoiceHEadersState
    implements FieldServiceHeaderState {
  const factory GetFieldServiceInvoiceHEadersState(
          {required final List<FieldServiceInvoiceHeaderModel>? headers}) =
      _$GetFieldServiceInvoiceHEadersStateImpl;

  List<FieldServiceInvoiceHeaderModel>? get headers;
  @JsonKey(ignore: true)
  _$$GetFieldServiceInvoiceHEadersStateImplCopyWith<
          _$GetFieldServiceInvoiceHEadersStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FieldServiceInvoiceHeaderFailedStateImplCopyWith<$Res> {
  factory _$$FieldServiceInvoiceHeaderFailedStateImplCopyWith(
          _$FieldServiceInvoiceHeaderFailedStateImpl value,
          $Res Function(_$FieldServiceInvoiceHeaderFailedStateImpl) then) =
      __$$FieldServiceInvoiceHeaderFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FieldServiceInvoiceHeaderFailedStateImplCopyWithImpl<$Res>
    extends _$FieldServiceHeaderStateCopyWithImpl<$Res,
        _$FieldServiceInvoiceHeaderFailedStateImpl>
    implements _$$FieldServiceInvoiceHeaderFailedStateImplCopyWith<$Res> {
  __$$FieldServiceInvoiceHeaderFailedStateImplCopyWithImpl(
      _$FieldServiceInvoiceHeaderFailedStateImpl _value,
      $Res Function(_$FieldServiceInvoiceHeaderFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FieldServiceInvoiceHeaderFailedStateImpl
    implements FieldServiceInvoiceHeaderFailedState {
  const _$FieldServiceInvoiceHeaderFailedStateImpl();

  @override
  String toString() {
    return 'FieldServiceHeaderState.fieldServiceInvoiceHeaderFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FieldServiceInvoiceHeaderFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<FieldServiceInvoiceHeaderModel>? headers)
        getFieldServiceInvoiceHEadersState,
    required TResult Function() fieldServiceInvoiceHeaderFailedState,
  }) {
    return fieldServiceInvoiceHeaderFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<FieldServiceInvoiceHeaderModel>? headers)?
        getFieldServiceInvoiceHEadersState,
    TResult? Function()? fieldServiceInvoiceHeaderFailedState,
  }) {
    return fieldServiceInvoiceHeaderFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<FieldServiceInvoiceHeaderModel>? headers)?
        getFieldServiceInvoiceHEadersState,
    TResult Function()? fieldServiceInvoiceHeaderFailedState,
    required TResult orElse(),
  }) {
    if (fieldServiceInvoiceHeaderFailedState != null) {
      return fieldServiceInvoiceHeaderFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFieldServiceInvoiceHEadersState value)
        getFieldServiceInvoiceHEadersState,
    required TResult Function(FieldServiceInvoiceHeaderFailedState value)
        fieldServiceInvoiceHeaderFailedState,
  }) {
    return fieldServiceInvoiceHeaderFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFieldServiceInvoiceHEadersState value)?
        getFieldServiceInvoiceHEadersState,
    TResult? Function(FieldServiceInvoiceHeaderFailedState value)?
        fieldServiceInvoiceHeaderFailedState,
  }) {
    return fieldServiceInvoiceHeaderFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFieldServiceInvoiceHEadersState value)?
        getFieldServiceInvoiceHEadersState,
    TResult Function(FieldServiceInvoiceHeaderFailedState value)?
        fieldServiceInvoiceHeaderFailedState,
    required TResult orElse(),
  }) {
    if (fieldServiceInvoiceHeaderFailedState != null) {
      return fieldServiceInvoiceHeaderFailedState(this);
    }
    return orElse();
  }
}

abstract class FieldServiceInvoiceHeaderFailedState
    implements FieldServiceHeaderState {
  const factory FieldServiceInvoiceHeaderFailedState() =
      _$FieldServiceInvoiceHeaderFailedStateImpl;
}
