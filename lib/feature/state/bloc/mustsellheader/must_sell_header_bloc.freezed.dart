// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'must_sell_header_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MustSellHeaderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mode, String searchQuery)
        getMustSellHeadersEvent,
    required TResult Function() clearMustSellHeadersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mode, String searchQuery)? getMustSellHeadersEvent,
    TResult? Function()? clearMustSellHeadersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mode, String searchQuery)? getMustSellHeadersEvent,
    TResult Function()? clearMustSellHeadersEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMustSellHeadersEvent value)
        getMustSellHeadersEvent,
    required TResult Function(ClearMustSellHeadersEvent value)
        clearMustSellHeadersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMustSellHeadersEvent value)? getMustSellHeadersEvent,
    TResult? Function(ClearMustSellHeadersEvent value)?
        clearMustSellHeadersEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMustSellHeadersEvent value)? getMustSellHeadersEvent,
    TResult Function(ClearMustSellHeadersEvent value)?
        clearMustSellHeadersEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MustSellHeaderEventCopyWith<$Res> {
  factory $MustSellHeaderEventCopyWith(
          MustSellHeaderEvent value, $Res Function(MustSellHeaderEvent) then) =
      _$MustSellHeaderEventCopyWithImpl<$Res, MustSellHeaderEvent>;
}

/// @nodoc
class _$MustSellHeaderEventCopyWithImpl<$Res, $Val extends MustSellHeaderEvent>
    implements $MustSellHeaderEventCopyWith<$Res> {
  _$MustSellHeaderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetMustSellHeadersEventImplCopyWith<$Res> {
  factory _$$GetMustSellHeadersEventImplCopyWith(
          _$GetMustSellHeadersEventImpl value,
          $Res Function(_$GetMustSellHeadersEventImpl) then) =
      __$$GetMustSellHeadersEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String mode, String searchQuery});
}

/// @nodoc
class __$$GetMustSellHeadersEventImplCopyWithImpl<$Res>
    extends _$MustSellHeaderEventCopyWithImpl<$Res,
        _$GetMustSellHeadersEventImpl>
    implements _$$GetMustSellHeadersEventImplCopyWith<$Res> {
  __$$GetMustSellHeadersEventImplCopyWithImpl(
      _$GetMustSellHeadersEventImpl _value,
      $Res Function(_$GetMustSellHeadersEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
    Object? searchQuery = null,
  }) {
    return _then(_$GetMustSellHeadersEventImpl(
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

class _$GetMustSellHeadersEventImpl implements GetMustSellHeadersEvent {
  const _$GetMustSellHeadersEventImpl(
      {required this.mode, required this.searchQuery});

  @override
  final String mode;
  @override
  final String searchQuery;

  @override
  String toString() {
    return 'MustSellHeaderEvent.getMustSellHeadersEvent(mode: $mode, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMustSellHeadersEventImpl &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mode, searchQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMustSellHeadersEventImplCopyWith<_$GetMustSellHeadersEventImpl>
      get copyWith => __$$GetMustSellHeadersEventImplCopyWithImpl<
          _$GetMustSellHeadersEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mode, String searchQuery)
        getMustSellHeadersEvent,
    required TResult Function() clearMustSellHeadersEvent,
  }) {
    return getMustSellHeadersEvent(mode, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mode, String searchQuery)? getMustSellHeadersEvent,
    TResult? Function()? clearMustSellHeadersEvent,
  }) {
    return getMustSellHeadersEvent?.call(mode, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mode, String searchQuery)? getMustSellHeadersEvent,
    TResult Function()? clearMustSellHeadersEvent,
    required TResult orElse(),
  }) {
    if (getMustSellHeadersEvent != null) {
      return getMustSellHeadersEvent(mode, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMustSellHeadersEvent value)
        getMustSellHeadersEvent,
    required TResult Function(ClearMustSellHeadersEvent value)
        clearMustSellHeadersEvent,
  }) {
    return getMustSellHeadersEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMustSellHeadersEvent value)? getMustSellHeadersEvent,
    TResult? Function(ClearMustSellHeadersEvent value)?
        clearMustSellHeadersEvent,
  }) {
    return getMustSellHeadersEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMustSellHeadersEvent value)? getMustSellHeadersEvent,
    TResult Function(ClearMustSellHeadersEvent value)?
        clearMustSellHeadersEvent,
    required TResult orElse(),
  }) {
    if (getMustSellHeadersEvent != null) {
      return getMustSellHeadersEvent(this);
    }
    return orElse();
  }
}

abstract class GetMustSellHeadersEvent implements MustSellHeaderEvent {
  const factory GetMustSellHeadersEvent(
      {required final String mode,
      required final String searchQuery}) = _$GetMustSellHeadersEventImpl;

  String get mode;
  String get searchQuery;
  @JsonKey(ignore: true)
  _$$GetMustSellHeadersEventImplCopyWith<_$GetMustSellHeadersEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearMustSellHeadersEventImplCopyWith<$Res> {
  factory _$$ClearMustSellHeadersEventImplCopyWith(
          _$ClearMustSellHeadersEventImpl value,
          $Res Function(_$ClearMustSellHeadersEventImpl) then) =
      __$$ClearMustSellHeadersEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearMustSellHeadersEventImplCopyWithImpl<$Res>
    extends _$MustSellHeaderEventCopyWithImpl<$Res,
        _$ClearMustSellHeadersEventImpl>
    implements _$$ClearMustSellHeadersEventImplCopyWith<$Res> {
  __$$ClearMustSellHeadersEventImplCopyWithImpl(
      _$ClearMustSellHeadersEventImpl _value,
      $Res Function(_$ClearMustSellHeadersEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearMustSellHeadersEventImpl implements ClearMustSellHeadersEvent {
  const _$ClearMustSellHeadersEventImpl();

  @override
  String toString() {
    return 'MustSellHeaderEvent.clearMustSellHeadersEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearMustSellHeadersEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String mode, String searchQuery)
        getMustSellHeadersEvent,
    required TResult Function() clearMustSellHeadersEvent,
  }) {
    return clearMustSellHeadersEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String mode, String searchQuery)? getMustSellHeadersEvent,
    TResult? Function()? clearMustSellHeadersEvent,
  }) {
    return clearMustSellHeadersEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String mode, String searchQuery)? getMustSellHeadersEvent,
    TResult Function()? clearMustSellHeadersEvent,
    required TResult orElse(),
  }) {
    if (clearMustSellHeadersEvent != null) {
      return clearMustSellHeadersEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMustSellHeadersEvent value)
        getMustSellHeadersEvent,
    required TResult Function(ClearMustSellHeadersEvent value)
        clearMustSellHeadersEvent,
  }) {
    return clearMustSellHeadersEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMustSellHeadersEvent value)? getMustSellHeadersEvent,
    TResult? Function(ClearMustSellHeadersEvent value)?
        clearMustSellHeadersEvent,
  }) {
    return clearMustSellHeadersEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMustSellHeadersEvent value)? getMustSellHeadersEvent,
    TResult Function(ClearMustSellHeadersEvent value)?
        clearMustSellHeadersEvent,
    required TResult orElse(),
  }) {
    if (clearMustSellHeadersEvent != null) {
      return clearMustSellHeadersEvent(this);
    }
    return orElse();
  }
}

abstract class ClearMustSellHeadersEvent implements MustSellHeaderEvent {
  const factory ClearMustSellHeadersEvent() = _$ClearMustSellHeadersEventImpl;
}

/// @nodoc
mixin _$MustSellHeaderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MustSellHeaderModel>? headers)
        getMustsellHeadersState,
    required TResult Function() mustSellHeadersFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MustSellHeaderModel>? headers)?
        getMustsellHeadersState,
    TResult? Function()? mustSellHeadersFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MustSellHeaderModel>? headers)?
        getMustsellHeadersState,
    TResult Function()? mustSellHeadersFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMustsellHeadersState value)
        getMustsellHeadersState,
    required TResult Function(MustSellHeadersFailedState value)
        mustSellHeadersFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMustsellHeadersState value)? getMustsellHeadersState,
    TResult? Function(MustSellHeadersFailedState value)?
        mustSellHeadersFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMustsellHeadersState value)? getMustsellHeadersState,
    TResult Function(MustSellHeadersFailedState value)?
        mustSellHeadersFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MustSellHeaderStateCopyWith<$Res> {
  factory $MustSellHeaderStateCopyWith(
          MustSellHeaderState value, $Res Function(MustSellHeaderState) then) =
      _$MustSellHeaderStateCopyWithImpl<$Res, MustSellHeaderState>;
}

/// @nodoc
class _$MustSellHeaderStateCopyWithImpl<$Res, $Val extends MustSellHeaderState>
    implements $MustSellHeaderStateCopyWith<$Res> {
  _$MustSellHeaderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetMustsellHeadersStateImplCopyWith<$Res> {
  factory _$$GetMustsellHeadersStateImplCopyWith(
          _$GetMustsellHeadersStateImpl value,
          $Res Function(_$GetMustsellHeadersStateImpl) then) =
      __$$GetMustsellHeadersStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MustSellHeaderModel>? headers});
}

/// @nodoc
class __$$GetMustsellHeadersStateImplCopyWithImpl<$Res>
    extends _$MustSellHeaderStateCopyWithImpl<$Res,
        _$GetMustsellHeadersStateImpl>
    implements _$$GetMustsellHeadersStateImplCopyWith<$Res> {
  __$$GetMustsellHeadersStateImplCopyWithImpl(
      _$GetMustsellHeadersStateImpl _value,
      $Res Function(_$GetMustsellHeadersStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headers = freezed,
  }) {
    return _then(_$GetMustsellHeadersStateImpl(
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as List<MustSellHeaderModel>?,
    ));
  }
}

/// @nodoc

class _$GetMustsellHeadersStateImpl implements GetMustsellHeadersState {
  const _$GetMustsellHeadersStateImpl(
      {required final List<MustSellHeaderModel>? headers})
      : _headers = headers;

  final List<MustSellHeaderModel>? _headers;
  @override
  List<MustSellHeaderModel>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableListView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MustSellHeaderState.getMustsellHeadersState(headers: $headers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMustsellHeadersStateImpl &&
            const DeepCollectionEquality().equals(other._headers, _headers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_headers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMustsellHeadersStateImplCopyWith<_$GetMustsellHeadersStateImpl>
      get copyWith => __$$GetMustsellHeadersStateImplCopyWithImpl<
          _$GetMustsellHeadersStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MustSellHeaderModel>? headers)
        getMustsellHeadersState,
    required TResult Function() mustSellHeadersFailedState,
  }) {
    return getMustsellHeadersState(headers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MustSellHeaderModel>? headers)?
        getMustsellHeadersState,
    TResult? Function()? mustSellHeadersFailedState,
  }) {
    return getMustsellHeadersState?.call(headers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MustSellHeaderModel>? headers)?
        getMustsellHeadersState,
    TResult Function()? mustSellHeadersFailedState,
    required TResult orElse(),
  }) {
    if (getMustsellHeadersState != null) {
      return getMustsellHeadersState(headers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMustsellHeadersState value)
        getMustsellHeadersState,
    required TResult Function(MustSellHeadersFailedState value)
        mustSellHeadersFailedState,
  }) {
    return getMustsellHeadersState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMustsellHeadersState value)? getMustsellHeadersState,
    TResult? Function(MustSellHeadersFailedState value)?
        mustSellHeadersFailedState,
  }) {
    return getMustsellHeadersState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMustsellHeadersState value)? getMustsellHeadersState,
    TResult Function(MustSellHeadersFailedState value)?
        mustSellHeadersFailedState,
    required TResult orElse(),
  }) {
    if (getMustsellHeadersState != null) {
      return getMustsellHeadersState(this);
    }
    return orElse();
  }
}

abstract class GetMustsellHeadersState implements MustSellHeaderState {
  const factory GetMustsellHeadersState(
          {required final List<MustSellHeaderModel>? headers}) =
      _$GetMustsellHeadersStateImpl;

  List<MustSellHeaderModel>? get headers;
  @JsonKey(ignore: true)
  _$$GetMustsellHeadersStateImplCopyWith<_$GetMustsellHeadersStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MustSellHeadersFailedStateImplCopyWith<$Res> {
  factory _$$MustSellHeadersFailedStateImplCopyWith(
          _$MustSellHeadersFailedStateImpl value,
          $Res Function(_$MustSellHeadersFailedStateImpl) then) =
      __$$MustSellHeadersFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MustSellHeadersFailedStateImplCopyWithImpl<$Res>
    extends _$MustSellHeaderStateCopyWithImpl<$Res,
        _$MustSellHeadersFailedStateImpl>
    implements _$$MustSellHeadersFailedStateImplCopyWith<$Res> {
  __$$MustSellHeadersFailedStateImplCopyWithImpl(
      _$MustSellHeadersFailedStateImpl _value,
      $Res Function(_$MustSellHeadersFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MustSellHeadersFailedStateImpl implements MustSellHeadersFailedState {
  const _$MustSellHeadersFailedStateImpl();

  @override
  String toString() {
    return 'MustSellHeaderState.mustSellHeadersFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MustSellHeadersFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MustSellHeaderModel>? headers)
        getMustsellHeadersState,
    required TResult Function() mustSellHeadersFailedState,
  }) {
    return mustSellHeadersFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MustSellHeaderModel>? headers)?
        getMustsellHeadersState,
    TResult? Function()? mustSellHeadersFailedState,
  }) {
    return mustSellHeadersFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MustSellHeaderModel>? headers)?
        getMustsellHeadersState,
    TResult Function()? mustSellHeadersFailedState,
    required TResult orElse(),
  }) {
    if (mustSellHeadersFailedState != null) {
      return mustSellHeadersFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMustsellHeadersState value)
        getMustsellHeadersState,
    required TResult Function(MustSellHeadersFailedState value)
        mustSellHeadersFailedState,
  }) {
    return mustSellHeadersFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMustsellHeadersState value)? getMustsellHeadersState,
    TResult? Function(MustSellHeadersFailedState value)?
        mustSellHeadersFailedState,
  }) {
    return mustSellHeadersFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMustsellHeadersState value)? getMustsellHeadersState,
    TResult Function(MustSellHeadersFailedState value)?
        mustSellHeadersFailedState,
    required TResult orElse(),
  }) {
    if (mustSellHeadersFailedState != null) {
      return mustSellHeadersFailedState(this);
    }
    return orElse();
  }
}

abstract class MustSellHeadersFailedState implements MustSellHeaderState {
  const factory MustSellHeadersFailedState() = _$MustSellHeadersFailedStateImpl;
}
