// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'out_standing_pagination_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OutStandingPaginationState {
  List<OutStandOutModel>? get headers => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<OutStandOutModel>? headers, bool isLoading)
        getOutStandingHeadersPageState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<OutStandOutModel>? headers, bool isLoading)?
        getOutStandingHeadersPageState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<OutStandOutModel>? headers, bool isLoading)?
        getOutStandingHeadersPageState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOutStandingHeadersPageState value)
        getOutStandingHeadersPageState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOutStandingHeadersPageState value)?
        getOutStandingHeadersPageState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOutStandingHeadersPageState value)?
        getOutStandingHeadersPageState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OutStandingPaginationStateCopyWith<OutStandingPaginationState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OutStandingPaginationStateCopyWith<$Res> {
  factory $OutStandingPaginationStateCopyWith(OutStandingPaginationState value,
          $Res Function(OutStandingPaginationState) then) =
      _$OutStandingPaginationStateCopyWithImpl<$Res,
          OutStandingPaginationState>;
  @useResult
  $Res call({List<OutStandOutModel>? headers, bool isLoading});
}

/// @nodoc
class _$OutStandingPaginationStateCopyWithImpl<$Res,
        $Val extends OutStandingPaginationState>
    implements $OutStandingPaginationStateCopyWith<$Res> {
  _$OutStandingPaginationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headers = freezed,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      headers: freezed == headers
          ? _value.headers
          : headers // ignore: cast_nullable_to_non_nullable
              as List<OutStandOutModel>?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetOutStandingHeadersPageStateImplCopyWith<$Res>
    implements $OutStandingPaginationStateCopyWith<$Res> {
  factory _$$GetOutStandingHeadersPageStateImplCopyWith(
          _$GetOutStandingHeadersPageStateImpl value,
          $Res Function(_$GetOutStandingHeadersPageStateImpl) then) =
      __$$GetOutStandingHeadersPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<OutStandOutModel>? headers, bool isLoading});
}

/// @nodoc
class __$$GetOutStandingHeadersPageStateImplCopyWithImpl<$Res>
    extends _$OutStandingPaginationStateCopyWithImpl<$Res,
        _$GetOutStandingHeadersPageStateImpl>
    implements _$$GetOutStandingHeadersPageStateImplCopyWith<$Res> {
  __$$GetOutStandingHeadersPageStateImplCopyWithImpl(
      _$GetOutStandingHeadersPageStateImpl _value,
      $Res Function(_$GetOutStandingHeadersPageStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headers = freezed,
    Object? isLoading = null,
  }) {
    return _then(_$GetOutStandingHeadersPageStateImpl(
      headers: freezed == headers
          ? _value._headers
          : headers // ignore: cast_nullable_to_non_nullable
              as List<OutStandOutModel>?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GetOutStandingHeadersPageStateImpl
    implements GetOutStandingHeadersPageState {
  const _$GetOutStandingHeadersPageStateImpl(
      {required final List<OutStandOutModel>? headers, required this.isLoading})
      : _headers = headers;

  final List<OutStandOutModel>? _headers;
  @override
  List<OutStandOutModel>? get headers {
    final value = _headers;
    if (value == null) return null;
    if (_headers is EqualUnmodifiableListView) return _headers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'OutStandingPaginationState.getOutStandingHeadersPageState(headers: $headers, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetOutStandingHeadersPageStateImpl &&
            const DeepCollectionEquality().equals(other._headers, _headers) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_headers), isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetOutStandingHeadersPageStateImplCopyWith<
          _$GetOutStandingHeadersPageStateImpl>
      get copyWith => __$$GetOutStandingHeadersPageStateImplCopyWithImpl<
          _$GetOutStandingHeadersPageStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<OutStandOutModel>? headers, bool isLoading)
        getOutStandingHeadersPageState,
  }) {
    return getOutStandingHeadersPageState(headers, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<OutStandOutModel>? headers, bool isLoading)?
        getOutStandingHeadersPageState,
  }) {
    return getOutStandingHeadersPageState?.call(headers, isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<OutStandOutModel>? headers, bool isLoading)?
        getOutStandingHeadersPageState,
    required TResult orElse(),
  }) {
    if (getOutStandingHeadersPageState != null) {
      return getOutStandingHeadersPageState(headers, isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetOutStandingHeadersPageState value)
        getOutStandingHeadersPageState,
  }) {
    return getOutStandingHeadersPageState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetOutStandingHeadersPageState value)?
        getOutStandingHeadersPageState,
  }) {
    return getOutStandingHeadersPageState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetOutStandingHeadersPageState value)?
        getOutStandingHeadersPageState,
    required TResult orElse(),
  }) {
    if (getOutStandingHeadersPageState != null) {
      return getOutStandingHeadersPageState(this);
    }
    return orElse();
  }
}

abstract class GetOutStandingHeadersPageState
    implements OutStandingPaginationState {
  const factory GetOutStandingHeadersPageState(
      {required final List<OutStandOutModel>? headers,
      required final bool isLoading}) = _$GetOutStandingHeadersPageStateImpl;

  @override
  List<OutStandOutModel>? get headers;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$GetOutStandingHeadersPageStateImplCopyWith<
          _$GetOutStandingHeadersPageStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
