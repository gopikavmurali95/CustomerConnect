// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'void_transaction_header_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VoidTransactionHeaderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String statusValue, String searchQuery)
        getvoidTransactionHeaderEvent,
    required TResult Function() clearVoidTransactionHeader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String statusValue, String searchQuery)?
        getvoidTransactionHeaderEvent,
    TResult? Function()? clearVoidTransactionHeader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String statusValue, String searchQuery)?
        getvoidTransactionHeaderEvent,
    TResult Function()? clearVoidTransactionHeader,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetVoidTransactionHeaderEvent value)
        getvoidTransactionHeaderEvent,
    required TResult Function(ClearVoidTransactionHeader value)
        clearVoidTransactionHeader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetVoidTransactionHeaderEvent value)?
        getvoidTransactionHeaderEvent,
    TResult? Function(ClearVoidTransactionHeader value)?
        clearVoidTransactionHeader,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetVoidTransactionHeaderEvent value)?
        getvoidTransactionHeaderEvent,
    TResult Function(ClearVoidTransactionHeader value)?
        clearVoidTransactionHeader,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoidTransactionHeaderEventCopyWith<$Res> {
  factory $VoidTransactionHeaderEventCopyWith(VoidTransactionHeaderEvent value,
          $Res Function(VoidTransactionHeaderEvent) then) =
      _$VoidTransactionHeaderEventCopyWithImpl<$Res,
          VoidTransactionHeaderEvent>;
}

/// @nodoc
class _$VoidTransactionHeaderEventCopyWithImpl<$Res,
        $Val extends VoidTransactionHeaderEvent>
    implements $VoidTransactionHeaderEventCopyWith<$Res> {
  _$VoidTransactionHeaderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VoidTransactionHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetVoidTransactionHeaderEventImplCopyWith<$Res> {
  factory _$$GetVoidTransactionHeaderEventImplCopyWith(
          _$GetVoidTransactionHeaderEventImpl value,
          $Res Function(_$GetVoidTransactionHeaderEventImpl) then) =
      __$$GetVoidTransactionHeaderEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String statusValue, String searchQuery});
}

/// @nodoc
class __$$GetVoidTransactionHeaderEventImplCopyWithImpl<$Res>
    extends _$VoidTransactionHeaderEventCopyWithImpl<$Res,
        _$GetVoidTransactionHeaderEventImpl>
    implements _$$GetVoidTransactionHeaderEventImplCopyWith<$Res> {
  __$$GetVoidTransactionHeaderEventImplCopyWithImpl(
      _$GetVoidTransactionHeaderEventImpl _value,
      $Res Function(_$GetVoidTransactionHeaderEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of VoidTransactionHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusValue = null,
    Object? searchQuery = null,
  }) {
    return _then(_$GetVoidTransactionHeaderEventImpl(
      statusValue: null == statusValue
          ? _value.statusValue
          : statusValue // ignore: cast_nullable_to_non_nullable
              as String,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetVoidTransactionHeaderEventImpl
    implements GetVoidTransactionHeaderEvent {
  const _$GetVoidTransactionHeaderEventImpl(
      {required this.statusValue, required this.searchQuery});

  @override
  final String statusValue;
  @override
  final String searchQuery;

  @override
  String toString() {
    return 'VoidTransactionHeaderEvent.getvoidTransactionHeaderEvent(statusValue: $statusValue, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetVoidTransactionHeaderEventImpl &&
            (identical(other.statusValue, statusValue) ||
                other.statusValue == statusValue) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, statusValue, searchQuery);

  /// Create a copy of VoidTransactionHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetVoidTransactionHeaderEventImplCopyWith<
          _$GetVoidTransactionHeaderEventImpl>
      get copyWith => __$$GetVoidTransactionHeaderEventImplCopyWithImpl<
          _$GetVoidTransactionHeaderEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String statusValue, String searchQuery)
        getvoidTransactionHeaderEvent,
    required TResult Function() clearVoidTransactionHeader,
  }) {
    return getvoidTransactionHeaderEvent(statusValue, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String statusValue, String searchQuery)?
        getvoidTransactionHeaderEvent,
    TResult? Function()? clearVoidTransactionHeader,
  }) {
    return getvoidTransactionHeaderEvent?.call(statusValue, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String statusValue, String searchQuery)?
        getvoidTransactionHeaderEvent,
    TResult Function()? clearVoidTransactionHeader,
    required TResult orElse(),
  }) {
    if (getvoidTransactionHeaderEvent != null) {
      return getvoidTransactionHeaderEvent(statusValue, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetVoidTransactionHeaderEvent value)
        getvoidTransactionHeaderEvent,
    required TResult Function(ClearVoidTransactionHeader value)
        clearVoidTransactionHeader,
  }) {
    return getvoidTransactionHeaderEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetVoidTransactionHeaderEvent value)?
        getvoidTransactionHeaderEvent,
    TResult? Function(ClearVoidTransactionHeader value)?
        clearVoidTransactionHeader,
  }) {
    return getvoidTransactionHeaderEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetVoidTransactionHeaderEvent value)?
        getvoidTransactionHeaderEvent,
    TResult Function(ClearVoidTransactionHeader value)?
        clearVoidTransactionHeader,
    required TResult orElse(),
  }) {
    if (getvoidTransactionHeaderEvent != null) {
      return getvoidTransactionHeaderEvent(this);
    }
    return orElse();
  }
}

abstract class GetVoidTransactionHeaderEvent
    implements VoidTransactionHeaderEvent {
  const factory GetVoidTransactionHeaderEvent(
      {required final String statusValue,
      required final String searchQuery}) = _$GetVoidTransactionHeaderEventImpl;

  String get statusValue;
  String get searchQuery;

  /// Create a copy of VoidTransactionHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetVoidTransactionHeaderEventImplCopyWith<
          _$GetVoidTransactionHeaderEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearVoidTransactionHeaderImplCopyWith<$Res> {
  factory _$$ClearVoidTransactionHeaderImplCopyWith(
          _$ClearVoidTransactionHeaderImpl value,
          $Res Function(_$ClearVoidTransactionHeaderImpl) then) =
      __$$ClearVoidTransactionHeaderImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearVoidTransactionHeaderImplCopyWithImpl<$Res>
    extends _$VoidTransactionHeaderEventCopyWithImpl<$Res,
        _$ClearVoidTransactionHeaderImpl>
    implements _$$ClearVoidTransactionHeaderImplCopyWith<$Res> {
  __$$ClearVoidTransactionHeaderImplCopyWithImpl(
      _$ClearVoidTransactionHeaderImpl _value,
      $Res Function(_$ClearVoidTransactionHeaderImpl) _then)
      : super(_value, _then);

  /// Create a copy of VoidTransactionHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearVoidTransactionHeaderImpl implements ClearVoidTransactionHeader {
  const _$ClearVoidTransactionHeaderImpl();

  @override
  String toString() {
    return 'VoidTransactionHeaderEvent.clearVoidTransactionHeader()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearVoidTransactionHeaderImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String statusValue, String searchQuery)
        getvoidTransactionHeaderEvent,
    required TResult Function() clearVoidTransactionHeader,
  }) {
    return clearVoidTransactionHeader();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String statusValue, String searchQuery)?
        getvoidTransactionHeaderEvent,
    TResult? Function()? clearVoidTransactionHeader,
  }) {
    return clearVoidTransactionHeader?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String statusValue, String searchQuery)?
        getvoidTransactionHeaderEvent,
    TResult Function()? clearVoidTransactionHeader,
    required TResult orElse(),
  }) {
    if (clearVoidTransactionHeader != null) {
      return clearVoidTransactionHeader();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetVoidTransactionHeaderEvent value)
        getvoidTransactionHeaderEvent,
    required TResult Function(ClearVoidTransactionHeader value)
        clearVoidTransactionHeader,
  }) {
    return clearVoidTransactionHeader(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetVoidTransactionHeaderEvent value)?
        getvoidTransactionHeaderEvent,
    TResult? Function(ClearVoidTransactionHeader value)?
        clearVoidTransactionHeader,
  }) {
    return clearVoidTransactionHeader?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetVoidTransactionHeaderEvent value)?
        getvoidTransactionHeaderEvent,
    TResult Function(ClearVoidTransactionHeader value)?
        clearVoidTransactionHeader,
    required TResult orElse(),
  }) {
    if (clearVoidTransactionHeader != null) {
      return clearVoidTransactionHeader(this);
    }
    return orElse();
  }
}

abstract class ClearVoidTransactionHeader
    implements VoidTransactionHeaderEvent {
  const factory ClearVoidTransactionHeader() = _$ClearVoidTransactionHeaderImpl;
}

/// @nodoc
mixin _$VoidTransactionHeaderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<VoidTransactionHeaderModel>? headers)
        getvoidTransactionHeaderState,
    required TResult Function() voidTransactionHeaderFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<VoidTransactionHeaderModel>? headers)?
        getvoidTransactionHeaderState,
    TResult? Function()? voidTransactionHeaderFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<VoidTransactionHeaderModel>? headers)?
        getvoidTransactionHeaderState,
    TResult Function()? voidTransactionHeaderFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetVoidTransactionHeaderState value)
        getvoidTransactionHeaderState,
    required TResult Function(VoidTransactionHeaderFailure value)
        voidTransactionHeaderFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetVoidTransactionHeaderState value)?
        getvoidTransactionHeaderState,
    TResult? Function(VoidTransactionHeaderFailure value)?
        voidTransactionHeaderFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetVoidTransactionHeaderState value)?
        getvoidTransactionHeaderState,
    TResult Function(VoidTransactionHeaderFailure value)?
        voidTransactionHeaderFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VoidTransactionHeaderStateCopyWith<$Res> {
  factory $VoidTransactionHeaderStateCopyWith(VoidTransactionHeaderState value,
          $Res Function(VoidTransactionHeaderState) then) =
      _$VoidTransactionHeaderStateCopyWithImpl<$Res,
          VoidTransactionHeaderState>;
}

/// @nodoc
class _$VoidTransactionHeaderStateCopyWithImpl<$Res,
        $Val extends VoidTransactionHeaderState>
    implements $VoidTransactionHeaderStateCopyWith<$Res> {
  _$VoidTransactionHeaderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VoidTransactionHeaderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetVoidTransactionHeaderStateImplCopyWith<$Res> {
  factory _$$GetVoidTransactionHeaderStateImplCopyWith(
          _$GetVoidTransactionHeaderStateImpl value,
          $Res Function(_$GetVoidTransactionHeaderStateImpl) then) =
      __$$GetVoidTransactionHeaderStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<VoidTransactionHeaderModel>? headers});
}

/// @nodoc
class __$$GetVoidTransactionHeaderStateImplCopyWithImpl<$Res>
    extends _$VoidTransactionHeaderStateCopyWithImpl<$Res,
        _$GetVoidTransactionHeaderStateImpl>
    implements _$$GetVoidTransactionHeaderStateImplCopyWith<$Res> {
  __$$GetVoidTransactionHeaderStateImplCopyWithImpl(
      _$GetVoidTransactionHeaderStateImpl _value,
      $Res Function(_$GetVoidTransactionHeaderStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of VoidTransactionHeaderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headers = freezed,
  }) {
    return _then(_$GetVoidTransactionHeaderStateImpl(
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as List<VoidTransactionHeaderModel>?,
    ));
  }
}

/// @nodoc

class _$GetVoidTransactionHeaderStateImpl
    implements GetVoidTransactionHeaderState {
  const _$GetVoidTransactionHeaderStateImpl(
      {required final List<VoidTransactionHeaderModel>? headers})
      : _headers = headers;

  final List<VoidTransactionHeaderModel>? _headers;
  @override
  List<VoidTransactionHeaderModel>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableListView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'VoidTransactionHeaderState.getvoidTransactionHeaderState(headers: $headers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetVoidTransactionHeaderStateImpl &&
            const DeepCollectionEquality().equals(other._headers, _headers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_headers));

  /// Create a copy of VoidTransactionHeaderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetVoidTransactionHeaderStateImplCopyWith<
          _$GetVoidTransactionHeaderStateImpl>
      get copyWith => __$$GetVoidTransactionHeaderStateImplCopyWithImpl<
          _$GetVoidTransactionHeaderStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<VoidTransactionHeaderModel>? headers)
        getvoidTransactionHeaderState,
    required TResult Function() voidTransactionHeaderFailure,
  }) {
    return getvoidTransactionHeaderState(headers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<VoidTransactionHeaderModel>? headers)?
        getvoidTransactionHeaderState,
    TResult? Function()? voidTransactionHeaderFailure,
  }) {
    return getvoidTransactionHeaderState?.call(headers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<VoidTransactionHeaderModel>? headers)?
        getvoidTransactionHeaderState,
    TResult Function()? voidTransactionHeaderFailure,
    required TResult orElse(),
  }) {
    if (getvoidTransactionHeaderState != null) {
      return getvoidTransactionHeaderState(headers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetVoidTransactionHeaderState value)
        getvoidTransactionHeaderState,
    required TResult Function(VoidTransactionHeaderFailure value)
        voidTransactionHeaderFailure,
  }) {
    return getvoidTransactionHeaderState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetVoidTransactionHeaderState value)?
        getvoidTransactionHeaderState,
    TResult? Function(VoidTransactionHeaderFailure value)?
        voidTransactionHeaderFailure,
  }) {
    return getvoidTransactionHeaderState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetVoidTransactionHeaderState value)?
        getvoidTransactionHeaderState,
    TResult Function(VoidTransactionHeaderFailure value)?
        voidTransactionHeaderFailure,
    required TResult orElse(),
  }) {
    if (getvoidTransactionHeaderState != null) {
      return getvoidTransactionHeaderState(this);
    }
    return orElse();
  }
}

abstract class GetVoidTransactionHeaderState
    implements VoidTransactionHeaderState {
  const factory GetVoidTransactionHeaderState(
          {required final List<VoidTransactionHeaderModel>? headers}) =
      _$GetVoidTransactionHeaderStateImpl;

  List<VoidTransactionHeaderModel>? get headers;

  /// Create a copy of VoidTransactionHeaderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetVoidTransactionHeaderStateImplCopyWith<
          _$GetVoidTransactionHeaderStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VoidTransactionHeaderFailureImplCopyWith<$Res> {
  factory _$$VoidTransactionHeaderFailureImplCopyWith(
          _$VoidTransactionHeaderFailureImpl value,
          $Res Function(_$VoidTransactionHeaderFailureImpl) then) =
      __$$VoidTransactionHeaderFailureImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VoidTransactionHeaderFailureImplCopyWithImpl<$Res>
    extends _$VoidTransactionHeaderStateCopyWithImpl<$Res,
        _$VoidTransactionHeaderFailureImpl>
    implements _$$VoidTransactionHeaderFailureImplCopyWith<$Res> {
  __$$VoidTransactionHeaderFailureImplCopyWithImpl(
      _$VoidTransactionHeaderFailureImpl _value,
      $Res Function(_$VoidTransactionHeaderFailureImpl) _then)
      : super(_value, _then);

  /// Create a copy of VoidTransactionHeaderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$VoidTransactionHeaderFailureImpl
    implements VoidTransactionHeaderFailure {
  const _$VoidTransactionHeaderFailureImpl();

  @override
  String toString() {
    return 'VoidTransactionHeaderState.voidTransactionHeaderFailure()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VoidTransactionHeaderFailureImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<VoidTransactionHeaderModel>? headers)
        getvoidTransactionHeaderState,
    required TResult Function() voidTransactionHeaderFailure,
  }) {
    return voidTransactionHeaderFailure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<VoidTransactionHeaderModel>? headers)?
        getvoidTransactionHeaderState,
    TResult? Function()? voidTransactionHeaderFailure,
  }) {
    return voidTransactionHeaderFailure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<VoidTransactionHeaderModel>? headers)?
        getvoidTransactionHeaderState,
    TResult Function()? voidTransactionHeaderFailure,
    required TResult orElse(),
  }) {
    if (voidTransactionHeaderFailure != null) {
      return voidTransactionHeaderFailure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetVoidTransactionHeaderState value)
        getvoidTransactionHeaderState,
    required TResult Function(VoidTransactionHeaderFailure value)
        voidTransactionHeaderFailure,
  }) {
    return voidTransactionHeaderFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetVoidTransactionHeaderState value)?
        getvoidTransactionHeaderState,
    TResult? Function(VoidTransactionHeaderFailure value)?
        voidTransactionHeaderFailure,
  }) {
    return voidTransactionHeaderFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetVoidTransactionHeaderState value)?
        getvoidTransactionHeaderState,
    TResult Function(VoidTransactionHeaderFailure value)?
        voidTransactionHeaderFailure,
    required TResult orElse(),
  }) {
    if (voidTransactionHeaderFailure != null) {
      return voidTransactionHeaderFailure(this);
    }
    return orElse();
  }
}

abstract class VoidTransactionHeaderFailure
    implements VoidTransactionHeaderState {
  const factory VoidTransactionHeaderFailure() =
      _$VoidTransactionHeaderFailureImpl;
}
