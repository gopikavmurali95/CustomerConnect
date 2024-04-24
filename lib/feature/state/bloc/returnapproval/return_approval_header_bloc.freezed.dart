// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'return_approval_header_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReturnApprovalHeaderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String rotID) getReturnApprovalHeaders,
    required TResult Function() clearReturnHeaderState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String rotID)? getReturnApprovalHeaders,
    TResult? Function()? clearReturnHeaderState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String rotID)? getReturnApprovalHeaders,
    TResult Function()? clearReturnHeaderState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetReturnApprovalHeaders value)
        getReturnApprovalHeaders,
    required TResult Function(ClearReturnHeaderState value)
        clearReturnHeaderState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetReturnApprovalHeaders value)? getReturnApprovalHeaders,
    TResult? Function(ClearReturnHeaderState value)? clearReturnHeaderState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetReturnApprovalHeaders value)? getReturnApprovalHeaders,
    TResult Function(ClearReturnHeaderState value)? clearReturnHeaderState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReturnApprovalHeaderEventCopyWith<$Res> {
  factory $ReturnApprovalHeaderEventCopyWith(ReturnApprovalHeaderEvent value,
          $Res Function(ReturnApprovalHeaderEvent) then) =
      _$ReturnApprovalHeaderEventCopyWithImpl<$Res, ReturnApprovalHeaderEvent>;
}

/// @nodoc
class _$ReturnApprovalHeaderEventCopyWithImpl<$Res,
        $Val extends ReturnApprovalHeaderEvent>
    implements $ReturnApprovalHeaderEventCopyWith<$Res> {
  _$ReturnApprovalHeaderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetReturnApprovalHeadersImplCopyWith<$Res> {
  factory _$$GetReturnApprovalHeadersImplCopyWith(
          _$GetReturnApprovalHeadersImpl value,
          $Res Function(_$GetReturnApprovalHeadersImpl) then) =
      __$$GetReturnApprovalHeadersImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String rotID});
}

/// @nodoc
class __$$GetReturnApprovalHeadersImplCopyWithImpl<$Res>
    extends _$ReturnApprovalHeaderEventCopyWithImpl<$Res,
        _$GetReturnApprovalHeadersImpl>
    implements _$$GetReturnApprovalHeadersImplCopyWith<$Res> {
  __$$GetReturnApprovalHeadersImplCopyWithImpl(
      _$GetReturnApprovalHeadersImpl _value,
      $Res Function(_$GetReturnApprovalHeadersImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rotID = null,
  }) {
    return _then(_$GetReturnApprovalHeadersImpl(
      rotID: null == rotID
          ? _value.rotID
          : rotID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetReturnApprovalHeadersImpl implements GetReturnApprovalHeaders {
  const _$GetReturnApprovalHeadersImpl({required this.rotID});

  @override
  final String rotID;

  @override
  String toString() {
    return 'ReturnApprovalHeaderEvent.getReturnApprovalHeaders(rotID: $rotID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetReturnApprovalHeadersImpl &&
            (identical(other.rotID, rotID) || other.rotID == rotID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rotID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetReturnApprovalHeadersImplCopyWith<_$GetReturnApprovalHeadersImpl>
      get copyWith => __$$GetReturnApprovalHeadersImplCopyWithImpl<
          _$GetReturnApprovalHeadersImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String rotID) getReturnApprovalHeaders,
    required TResult Function() clearReturnHeaderState,
  }) {
    return getReturnApprovalHeaders(rotID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String rotID)? getReturnApprovalHeaders,
    TResult? Function()? clearReturnHeaderState,
  }) {
    return getReturnApprovalHeaders?.call(rotID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String rotID)? getReturnApprovalHeaders,
    TResult Function()? clearReturnHeaderState,
    required TResult orElse(),
  }) {
    if (getReturnApprovalHeaders != null) {
      return getReturnApprovalHeaders(rotID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetReturnApprovalHeaders value)
        getReturnApprovalHeaders,
    required TResult Function(ClearReturnHeaderState value)
        clearReturnHeaderState,
  }) {
    return getReturnApprovalHeaders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetReturnApprovalHeaders value)? getReturnApprovalHeaders,
    TResult? Function(ClearReturnHeaderState value)? clearReturnHeaderState,
  }) {
    return getReturnApprovalHeaders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetReturnApprovalHeaders value)? getReturnApprovalHeaders,
    TResult Function(ClearReturnHeaderState value)? clearReturnHeaderState,
    required TResult orElse(),
  }) {
    if (getReturnApprovalHeaders != null) {
      return getReturnApprovalHeaders(this);
    }
    return orElse();
  }
}

abstract class GetReturnApprovalHeaders implements ReturnApprovalHeaderEvent {
  const factory GetReturnApprovalHeaders({required final String rotID}) =
      _$GetReturnApprovalHeadersImpl;

  String get rotID;
  @JsonKey(ignore: true)
  _$$GetReturnApprovalHeadersImplCopyWith<_$GetReturnApprovalHeadersImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearReturnHeaderStateImplCopyWith<$Res> {
  factory _$$ClearReturnHeaderStateImplCopyWith(
          _$ClearReturnHeaderStateImpl value,
          $Res Function(_$ClearReturnHeaderStateImpl) then) =
      __$$ClearReturnHeaderStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearReturnHeaderStateImplCopyWithImpl<$Res>
    extends _$ReturnApprovalHeaderEventCopyWithImpl<$Res,
        _$ClearReturnHeaderStateImpl>
    implements _$$ClearReturnHeaderStateImplCopyWith<$Res> {
  __$$ClearReturnHeaderStateImplCopyWithImpl(
      _$ClearReturnHeaderStateImpl _value,
      $Res Function(_$ClearReturnHeaderStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearReturnHeaderStateImpl implements ClearReturnHeaderState {
  const _$ClearReturnHeaderStateImpl();

  @override
  String toString() {
    return 'ReturnApprovalHeaderEvent.clearReturnHeaderState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearReturnHeaderStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String rotID) getReturnApprovalHeaders,
    required TResult Function() clearReturnHeaderState,
  }) {
    return clearReturnHeaderState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String rotID)? getReturnApprovalHeaders,
    TResult? Function()? clearReturnHeaderState,
  }) {
    return clearReturnHeaderState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String rotID)? getReturnApprovalHeaders,
    TResult Function()? clearReturnHeaderState,
    required TResult orElse(),
  }) {
    if (clearReturnHeaderState != null) {
      return clearReturnHeaderState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetReturnApprovalHeaders value)
        getReturnApprovalHeaders,
    required TResult Function(ClearReturnHeaderState value)
        clearReturnHeaderState,
  }) {
    return clearReturnHeaderState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetReturnApprovalHeaders value)? getReturnApprovalHeaders,
    TResult? Function(ClearReturnHeaderState value)? clearReturnHeaderState,
  }) {
    return clearReturnHeaderState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetReturnApprovalHeaders value)? getReturnApprovalHeaders,
    TResult Function(ClearReturnHeaderState value)? clearReturnHeaderState,
    required TResult orElse(),
  }) {
    if (clearReturnHeaderState != null) {
      return clearReturnHeaderState(this);
    }
    return orElse();
  }
}

abstract class ClearReturnHeaderState implements ReturnApprovalHeaderEvent {
  const factory ClearReturnHeaderState() = _$ClearReturnHeaderStateImpl;
}

/// @nodoc
mixin _$ReturnApprovalHeaderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ReturnApprovalHeaderModel>? headers)
        getReturnApprovalHeaders,
    required TResult Function() returnHeaderFailedstate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ReturnApprovalHeaderModel>? headers)?
        getReturnApprovalHeaders,
    TResult? Function()? returnHeaderFailedstate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ReturnApprovalHeaderModel>? headers)?
        getReturnApprovalHeaders,
    TResult Function()? returnHeaderFailedstate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetReturnApprovalHeadersState value)
        getReturnApprovalHeaders,
    required TResult Function(ReturnHeaderFailedstate value)
        returnHeaderFailedstate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetReturnApprovalHeadersState value)?
        getReturnApprovalHeaders,
    TResult? Function(ReturnHeaderFailedstate value)? returnHeaderFailedstate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetReturnApprovalHeadersState value)?
        getReturnApprovalHeaders,
    TResult Function(ReturnHeaderFailedstate value)? returnHeaderFailedstate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReturnApprovalHeaderStateCopyWith<$Res> {
  factory $ReturnApprovalHeaderStateCopyWith(ReturnApprovalHeaderState value,
          $Res Function(ReturnApprovalHeaderState) then) =
      _$ReturnApprovalHeaderStateCopyWithImpl<$Res, ReturnApprovalHeaderState>;
}

/// @nodoc
class _$ReturnApprovalHeaderStateCopyWithImpl<$Res,
        $Val extends ReturnApprovalHeaderState>
    implements $ReturnApprovalHeaderStateCopyWith<$Res> {
  _$ReturnApprovalHeaderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetReturnApprovalHeadersStateImplCopyWith<$Res> {
  factory _$$GetReturnApprovalHeadersStateImplCopyWith(
          _$GetReturnApprovalHeadersStateImpl value,
          $Res Function(_$GetReturnApprovalHeadersStateImpl) then) =
      __$$GetReturnApprovalHeadersStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ReturnApprovalHeaderModel>? headers});
}

/// @nodoc
class __$$GetReturnApprovalHeadersStateImplCopyWithImpl<$Res>
    extends _$ReturnApprovalHeaderStateCopyWithImpl<$Res,
        _$GetReturnApprovalHeadersStateImpl>
    implements _$$GetReturnApprovalHeadersStateImplCopyWith<$Res> {
  __$$GetReturnApprovalHeadersStateImplCopyWithImpl(
      _$GetReturnApprovalHeadersStateImpl _value,
      $Res Function(_$GetReturnApprovalHeadersStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headers = freezed,
  }) {
    return _then(_$GetReturnApprovalHeadersStateImpl(
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as List<ReturnApprovalHeaderModel>?,
    ));
  }
}

/// @nodoc

class _$GetReturnApprovalHeadersStateImpl
    implements GetReturnApprovalHeadersState {
  const _$GetReturnApprovalHeadersStateImpl(
      {required final List<ReturnApprovalHeaderModel>? headers})
      : _headers = headers;

  final List<ReturnApprovalHeaderModel>? _headers;
  @override
  List<ReturnApprovalHeaderModel>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableListView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ReturnApprovalHeaderState.getReturnApprovalHeaders(headers: $headers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetReturnApprovalHeadersStateImpl &&
            const DeepCollectionEquality().equals(other._headers, _headers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_headers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetReturnApprovalHeadersStateImplCopyWith<
          _$GetReturnApprovalHeadersStateImpl>
      get copyWith => __$$GetReturnApprovalHeadersStateImplCopyWithImpl<
          _$GetReturnApprovalHeadersStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ReturnApprovalHeaderModel>? headers)
        getReturnApprovalHeaders,
    required TResult Function() returnHeaderFailedstate,
  }) {
    return getReturnApprovalHeaders(headers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ReturnApprovalHeaderModel>? headers)?
        getReturnApprovalHeaders,
    TResult? Function()? returnHeaderFailedstate,
  }) {
    return getReturnApprovalHeaders?.call(headers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ReturnApprovalHeaderModel>? headers)?
        getReturnApprovalHeaders,
    TResult Function()? returnHeaderFailedstate,
    required TResult orElse(),
  }) {
    if (getReturnApprovalHeaders != null) {
      return getReturnApprovalHeaders(headers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetReturnApprovalHeadersState value)
        getReturnApprovalHeaders,
    required TResult Function(ReturnHeaderFailedstate value)
        returnHeaderFailedstate,
  }) {
    return getReturnApprovalHeaders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetReturnApprovalHeadersState value)?
        getReturnApprovalHeaders,
    TResult? Function(ReturnHeaderFailedstate value)? returnHeaderFailedstate,
  }) {
    return getReturnApprovalHeaders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetReturnApprovalHeadersState value)?
        getReturnApprovalHeaders,
    TResult Function(ReturnHeaderFailedstate value)? returnHeaderFailedstate,
    required TResult orElse(),
  }) {
    if (getReturnApprovalHeaders != null) {
      return getReturnApprovalHeaders(this);
    }
    return orElse();
  }
}

abstract class GetReturnApprovalHeadersState
    implements ReturnApprovalHeaderState {
  const factory GetReturnApprovalHeadersState(
          {required final List<ReturnApprovalHeaderModel>? headers}) =
      _$GetReturnApprovalHeadersStateImpl;

  List<ReturnApprovalHeaderModel>? get headers;
  @JsonKey(ignore: true)
  _$$GetReturnApprovalHeadersStateImplCopyWith<
          _$GetReturnApprovalHeadersStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReturnHeaderFailedstateImplCopyWith<$Res> {
  factory _$$ReturnHeaderFailedstateImplCopyWith(
          _$ReturnHeaderFailedstateImpl value,
          $Res Function(_$ReturnHeaderFailedstateImpl) then) =
      __$$ReturnHeaderFailedstateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReturnHeaderFailedstateImplCopyWithImpl<$Res>
    extends _$ReturnApprovalHeaderStateCopyWithImpl<$Res,
        _$ReturnHeaderFailedstateImpl>
    implements _$$ReturnHeaderFailedstateImplCopyWith<$Res> {
  __$$ReturnHeaderFailedstateImplCopyWithImpl(
      _$ReturnHeaderFailedstateImpl _value,
      $Res Function(_$ReturnHeaderFailedstateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReturnHeaderFailedstateImpl implements ReturnHeaderFailedstate {
  const _$ReturnHeaderFailedstateImpl();

  @override
  String toString() {
    return 'ReturnApprovalHeaderState.returnHeaderFailedstate()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReturnHeaderFailedstateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ReturnApprovalHeaderModel>? headers)
        getReturnApprovalHeaders,
    required TResult Function() returnHeaderFailedstate,
  }) {
    return returnHeaderFailedstate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ReturnApprovalHeaderModel>? headers)?
        getReturnApprovalHeaders,
    TResult? Function()? returnHeaderFailedstate,
  }) {
    return returnHeaderFailedstate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ReturnApprovalHeaderModel>? headers)?
        getReturnApprovalHeaders,
    TResult Function()? returnHeaderFailedstate,
    required TResult orElse(),
  }) {
    if (returnHeaderFailedstate != null) {
      return returnHeaderFailedstate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetReturnApprovalHeadersState value)
        getReturnApprovalHeaders,
    required TResult Function(ReturnHeaderFailedstate value)
        returnHeaderFailedstate,
  }) {
    return returnHeaderFailedstate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetReturnApprovalHeadersState value)?
        getReturnApprovalHeaders,
    TResult? Function(ReturnHeaderFailedstate value)? returnHeaderFailedstate,
  }) {
    return returnHeaderFailedstate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetReturnApprovalHeadersState value)?
        getReturnApprovalHeaders,
    TResult Function(ReturnHeaderFailedstate value)? returnHeaderFailedstate,
    required TResult orElse(),
  }) {
    if (returnHeaderFailedstate != null) {
      return returnHeaderFailedstate(this);
    }
    return orElse();
  }
}

abstract class ReturnHeaderFailedstate implements ReturnApprovalHeaderState {
  const factory ReturnHeaderFailedstate() = _$ReturnHeaderFailedstateImpl;
}
