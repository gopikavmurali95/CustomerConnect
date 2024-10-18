// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'free_sample_header_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FreeSampleHeaderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mode, String searchQuery)
        getFreeSampleHeadersEvent,
    required TResult Function() clearFreeSampleheadersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mode, String searchQuery)?
        getFreeSampleHeadersEvent,
    TResult? Function()? clearFreeSampleheadersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mode, String searchQuery)?
        getFreeSampleHeadersEvent,
    TResult Function()? clearFreeSampleheadersEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFreeSampleHeadersEvent value)
        getFreeSampleHeadersEvent,
    required TResult Function(ClearFreeSampleheadersEvent value)
        clearFreeSampleheadersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFreeSampleHeadersEvent value)?
        getFreeSampleHeadersEvent,
    TResult? Function(ClearFreeSampleheadersEvent value)?
        clearFreeSampleheadersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFreeSampleHeadersEvent value)?
        getFreeSampleHeadersEvent,
    TResult Function(ClearFreeSampleheadersEvent value)?
        clearFreeSampleheadersEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FreeSampleHeaderEventCopyWith<$Res> {
  factory $FreeSampleHeaderEventCopyWith(FreeSampleHeaderEvent value,
          $Res Function(FreeSampleHeaderEvent) then) =
      _$FreeSampleHeaderEventCopyWithImpl<$Res, FreeSampleHeaderEvent>;
}

/// @nodoc
class _$FreeSampleHeaderEventCopyWithImpl<$Res,
        $Val extends FreeSampleHeaderEvent>
    implements $FreeSampleHeaderEventCopyWith<$Res> {
  _$FreeSampleHeaderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetFreeSampleHeadersEventImplCopyWith<$Res> {
  factory _$$GetFreeSampleHeadersEventImplCopyWith(
          _$GetFreeSampleHeadersEventImpl value,
          $Res Function(_$GetFreeSampleHeadersEventImpl) then) =
      __$$GetFreeSampleHeadersEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String mode, String searchQuery});
}

/// @nodoc
class __$$GetFreeSampleHeadersEventImplCopyWithImpl<$Res>
    extends _$FreeSampleHeaderEventCopyWithImpl<$Res,
        _$GetFreeSampleHeadersEventImpl>
    implements _$$GetFreeSampleHeadersEventImplCopyWith<$Res> {
  __$$GetFreeSampleHeadersEventImplCopyWithImpl(
      _$GetFreeSampleHeadersEventImpl _value,
      $Res Function(_$GetFreeSampleHeadersEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
    Object? searchQuery = null,
  }) {
    return _then(_$GetFreeSampleHeadersEventImpl(
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

class _$GetFreeSampleHeadersEventImpl implements GetFreeSampleHeadersEvent {
  const _$GetFreeSampleHeadersEventImpl(
      {required this.mode, required this.searchQuery});

  @override
  final String mode;
  @override
  final String searchQuery;

  @override
  String toString() {
    return 'FreeSampleHeaderEvent.getFreeSampleHeadersEvent(mode: $mode, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFreeSampleHeadersEventImpl &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mode, searchQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFreeSampleHeadersEventImplCopyWith<_$GetFreeSampleHeadersEventImpl>
      get copyWith => __$$GetFreeSampleHeadersEventImplCopyWithImpl<
          _$GetFreeSampleHeadersEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mode, String searchQuery)
        getFreeSampleHeadersEvent,
    required TResult Function() clearFreeSampleheadersEvent,
  }) {
    return getFreeSampleHeadersEvent(mode, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mode, String searchQuery)?
        getFreeSampleHeadersEvent,
    TResult? Function()? clearFreeSampleheadersEvent,
  }) {
    return getFreeSampleHeadersEvent?.call(mode, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mode, String searchQuery)?
        getFreeSampleHeadersEvent,
    TResult Function()? clearFreeSampleheadersEvent,
    required TResult orElse(),
  }) {
    if (getFreeSampleHeadersEvent != null) {
      return getFreeSampleHeadersEvent(mode, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFreeSampleHeadersEvent value)
        getFreeSampleHeadersEvent,
    required TResult Function(ClearFreeSampleheadersEvent value)
        clearFreeSampleheadersEvent,
  }) {
    return getFreeSampleHeadersEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFreeSampleHeadersEvent value)?
        getFreeSampleHeadersEvent,
    TResult? Function(ClearFreeSampleheadersEvent value)?
        clearFreeSampleheadersEvent,
  }) {
    return getFreeSampleHeadersEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFreeSampleHeadersEvent value)?
        getFreeSampleHeadersEvent,
    TResult Function(ClearFreeSampleheadersEvent value)?
        clearFreeSampleheadersEvent,
    required TResult orElse(),
  }) {
    if (getFreeSampleHeadersEvent != null) {
      return getFreeSampleHeadersEvent(this);
    }
    return orElse();
  }
}

abstract class GetFreeSampleHeadersEvent implements FreeSampleHeaderEvent {
  const factory GetFreeSampleHeadersEvent(
      {required final String mode,
      required final String searchQuery}) = _$GetFreeSampleHeadersEventImpl;

  String get mode;
  String get searchQuery;
  @JsonKey(ignore: true)
  _$$GetFreeSampleHeadersEventImplCopyWith<_$GetFreeSampleHeadersEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearFreeSampleheadersEventImplCopyWith<$Res> {
  factory _$$ClearFreeSampleheadersEventImplCopyWith(
          _$ClearFreeSampleheadersEventImpl value,
          $Res Function(_$ClearFreeSampleheadersEventImpl) then) =
      __$$ClearFreeSampleheadersEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearFreeSampleheadersEventImplCopyWithImpl<$Res>
    extends _$FreeSampleHeaderEventCopyWithImpl<$Res,
        _$ClearFreeSampleheadersEventImpl>
    implements _$$ClearFreeSampleheadersEventImplCopyWith<$Res> {
  __$$ClearFreeSampleheadersEventImplCopyWithImpl(
      _$ClearFreeSampleheadersEventImpl _value,
      $Res Function(_$ClearFreeSampleheadersEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearFreeSampleheadersEventImpl implements ClearFreeSampleheadersEvent {
  const _$ClearFreeSampleheadersEventImpl();

  @override
  String toString() {
    return 'FreeSampleHeaderEvent.clearFreeSampleheadersEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearFreeSampleheadersEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mode, String searchQuery)
        getFreeSampleHeadersEvent,
    required TResult Function() clearFreeSampleheadersEvent,
  }) {
    return clearFreeSampleheadersEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mode, String searchQuery)?
        getFreeSampleHeadersEvent,
    TResult? Function()? clearFreeSampleheadersEvent,
  }) {
    return clearFreeSampleheadersEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mode, String searchQuery)?
        getFreeSampleHeadersEvent,
    TResult Function()? clearFreeSampleheadersEvent,
    required TResult orElse(),
  }) {
    if (clearFreeSampleheadersEvent != null) {
      return clearFreeSampleheadersEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFreeSampleHeadersEvent value)
        getFreeSampleHeadersEvent,
    required TResult Function(ClearFreeSampleheadersEvent value)
        clearFreeSampleheadersEvent,
  }) {
    return clearFreeSampleheadersEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFreeSampleHeadersEvent value)?
        getFreeSampleHeadersEvent,
    TResult? Function(ClearFreeSampleheadersEvent value)?
        clearFreeSampleheadersEvent,
  }) {
    return clearFreeSampleheadersEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFreeSampleHeadersEvent value)?
        getFreeSampleHeadersEvent,
    TResult Function(ClearFreeSampleheadersEvent value)?
        clearFreeSampleheadersEvent,
    required TResult orElse(),
  }) {
    if (clearFreeSampleheadersEvent != null) {
      return clearFreeSampleheadersEvent(this);
    }
    return orElse();
  }
}

abstract class ClearFreeSampleheadersEvent implements FreeSampleHeaderEvent {
  const factory ClearFreeSampleheadersEvent() =
      _$ClearFreeSampleheadersEventImpl;
}

/// @nodoc
mixin _$FreeSampleHeaderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<FreeSampleHeaderModel>? headers)
        getFreeSampleHeaderState,
    required TResult Function() freesampleHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<FreeSampleHeaderModel>? headers)?
        getFreeSampleHeaderState,
    TResult? Function()? freesampleHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<FreeSampleHeaderModel>? headers)?
        getFreeSampleHeaderState,
    TResult Function()? freesampleHeaderFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFreeSampleHeaderState value)
        getFreeSampleHeaderState,
    required TResult Function(FreesampleHeaderFailedState value)
        freesampleHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFreeSampleHeaderState value)? getFreeSampleHeaderState,
    TResult? Function(FreesampleHeaderFailedState value)?
        freesampleHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFreeSampleHeaderState value)? getFreeSampleHeaderState,
    TResult Function(FreesampleHeaderFailedState value)?
        freesampleHeaderFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FreeSampleHeaderStateCopyWith<$Res> {
  factory $FreeSampleHeaderStateCopyWith(FreeSampleHeaderState value,
          $Res Function(FreeSampleHeaderState) then) =
      _$FreeSampleHeaderStateCopyWithImpl<$Res, FreeSampleHeaderState>;
}

/// @nodoc
class _$FreeSampleHeaderStateCopyWithImpl<$Res,
        $Val extends FreeSampleHeaderState>
    implements $FreeSampleHeaderStateCopyWith<$Res> {
  _$FreeSampleHeaderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetFreeSampleHeaderStateImplCopyWith<$Res> {
  factory _$$GetFreeSampleHeaderStateImplCopyWith(
          _$GetFreeSampleHeaderStateImpl value,
          $Res Function(_$GetFreeSampleHeaderStateImpl) then) =
      __$$GetFreeSampleHeaderStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<FreeSampleHeaderModel>? headers});
}

/// @nodoc
class __$$GetFreeSampleHeaderStateImplCopyWithImpl<$Res>
    extends _$FreeSampleHeaderStateCopyWithImpl<$Res,
        _$GetFreeSampleHeaderStateImpl>
    implements _$$GetFreeSampleHeaderStateImplCopyWith<$Res> {
  __$$GetFreeSampleHeaderStateImplCopyWithImpl(
      _$GetFreeSampleHeaderStateImpl _value,
      $Res Function(_$GetFreeSampleHeaderStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headers = freezed,
  }) {
    return _then(_$GetFreeSampleHeaderStateImpl(
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as List<FreeSampleHeaderModel>?,
    ));
  }
}

/// @nodoc

class _$GetFreeSampleHeaderStateImpl implements GetFreeSampleHeaderState {
  const _$GetFreeSampleHeaderStateImpl(
      {required final List<FreeSampleHeaderModel>? headers})
      : _headers = headers;

  final List<FreeSampleHeaderModel>? _headers;
  @override
  List<FreeSampleHeaderModel>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableListView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FreeSampleHeaderState.getFreeSampleHeaderState(headers: $headers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFreeSampleHeaderStateImpl &&
            const DeepCollectionEquality().equals(other._headers, _headers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_headers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFreeSampleHeaderStateImplCopyWith<_$GetFreeSampleHeaderStateImpl>
      get copyWith => __$$GetFreeSampleHeaderStateImplCopyWithImpl<
          _$GetFreeSampleHeaderStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<FreeSampleHeaderModel>? headers)
        getFreeSampleHeaderState,
    required TResult Function() freesampleHeaderFailedState,
  }) {
    return getFreeSampleHeaderState(headers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<FreeSampleHeaderModel>? headers)?
        getFreeSampleHeaderState,
    TResult? Function()? freesampleHeaderFailedState,
  }) {
    return getFreeSampleHeaderState?.call(headers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<FreeSampleHeaderModel>? headers)?
        getFreeSampleHeaderState,
    TResult Function()? freesampleHeaderFailedState,
    required TResult orElse(),
  }) {
    if (getFreeSampleHeaderState != null) {
      return getFreeSampleHeaderState(headers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFreeSampleHeaderState value)
        getFreeSampleHeaderState,
    required TResult Function(FreesampleHeaderFailedState value)
        freesampleHeaderFailedState,
  }) {
    return getFreeSampleHeaderState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFreeSampleHeaderState value)? getFreeSampleHeaderState,
    TResult? Function(FreesampleHeaderFailedState value)?
        freesampleHeaderFailedState,
  }) {
    return getFreeSampleHeaderState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFreeSampleHeaderState value)? getFreeSampleHeaderState,
    TResult Function(FreesampleHeaderFailedState value)?
        freesampleHeaderFailedState,
    required TResult orElse(),
  }) {
    if (getFreeSampleHeaderState != null) {
      return getFreeSampleHeaderState(this);
    }
    return orElse();
  }
}

abstract class GetFreeSampleHeaderState implements FreeSampleHeaderState {
  const factory GetFreeSampleHeaderState(
          {required final List<FreeSampleHeaderModel>? headers}) =
      _$GetFreeSampleHeaderStateImpl;

  List<FreeSampleHeaderModel>? get headers;
  @JsonKey(ignore: true)
  _$$GetFreeSampleHeaderStateImplCopyWith<_$GetFreeSampleHeaderStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FreesampleHeaderFailedStateImplCopyWith<$Res> {
  factory _$$FreesampleHeaderFailedStateImplCopyWith(
          _$FreesampleHeaderFailedStateImpl value,
          $Res Function(_$FreesampleHeaderFailedStateImpl) then) =
      __$$FreesampleHeaderFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FreesampleHeaderFailedStateImplCopyWithImpl<$Res>
    extends _$FreeSampleHeaderStateCopyWithImpl<$Res,
        _$FreesampleHeaderFailedStateImpl>
    implements _$$FreesampleHeaderFailedStateImplCopyWith<$Res> {
  __$$FreesampleHeaderFailedStateImplCopyWithImpl(
      _$FreesampleHeaderFailedStateImpl _value,
      $Res Function(_$FreesampleHeaderFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FreesampleHeaderFailedStateImpl implements FreesampleHeaderFailedState {
  const _$FreesampleHeaderFailedStateImpl();

  @override
  String toString() {
    return 'FreeSampleHeaderState.freesampleHeaderFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FreesampleHeaderFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<FreeSampleHeaderModel>? headers)
        getFreeSampleHeaderState,
    required TResult Function() freesampleHeaderFailedState,
  }) {
    return freesampleHeaderFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<FreeSampleHeaderModel>? headers)?
        getFreeSampleHeaderState,
    TResult? Function()? freesampleHeaderFailedState,
  }) {
    return freesampleHeaderFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<FreeSampleHeaderModel>? headers)?
        getFreeSampleHeaderState,
    TResult Function()? freesampleHeaderFailedState,
    required TResult orElse(),
  }) {
    if (freesampleHeaderFailedState != null) {
      return freesampleHeaderFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFreeSampleHeaderState value)
        getFreeSampleHeaderState,
    required TResult Function(FreesampleHeaderFailedState value)
        freesampleHeaderFailedState,
  }) {
    return freesampleHeaderFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFreeSampleHeaderState value)? getFreeSampleHeaderState,
    TResult? Function(FreesampleHeaderFailedState value)?
        freesampleHeaderFailedState,
  }) {
    return freesampleHeaderFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFreeSampleHeaderState value)? getFreeSampleHeaderState,
    TResult Function(FreesampleHeaderFailedState value)?
        freesampleHeaderFailedState,
    required TResult orElse(),
  }) {
    if (freesampleHeaderFailedState != null) {
      return freesampleHeaderFailedState(this);
    }
    return orElse();
  }
}

abstract class FreesampleHeaderFailedState implements FreeSampleHeaderState {
  const factory FreesampleHeaderFailedState() =
      _$FreesampleHeaderFailedStateImpl;
}
