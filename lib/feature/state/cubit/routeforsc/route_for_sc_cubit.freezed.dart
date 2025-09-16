// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'route_for_sc_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RouteForScState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<RouteModel>? routes)
        getAllRoutesForScReturnState,
    required TResult Function() getRoutesFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<RouteModel>? routes)? getAllRoutesForScReturnState,
    TResult? Function()? getRoutesFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<RouteModel>? routes)? getAllRoutesForScReturnState,
    TResult Function()? getRoutesFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllRoutesForScReturnState value)
        getAllRoutesForScReturnState,
    required TResult Function(GetRoutesFailedState value) getRoutesFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllRoutesForScReturnState value)?
        getAllRoutesForScReturnState,
    TResult? Function(GetRoutesFailedState value)? getRoutesFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllRoutesForScReturnState value)?
        getAllRoutesForScReturnState,
    TResult Function(GetRoutesFailedState value)? getRoutesFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RouteForScStateCopyWith<$Res> {
  factory $RouteForScStateCopyWith(
          RouteForScState value, $Res Function(RouteForScState) then) =
      _$RouteForScStateCopyWithImpl<$Res, RouteForScState>;
}

/// @nodoc
class _$RouteForScStateCopyWithImpl<$Res, $Val extends RouteForScState>
    implements $RouteForScStateCopyWith<$Res> {
  _$RouteForScStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RouteForScState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetAllRoutesForScReturnStateImplCopyWith<$Res> {
  factory _$$GetAllRoutesForScReturnStateImplCopyWith(
          _$GetAllRoutesForScReturnStateImpl value,
          $Res Function(_$GetAllRoutesForScReturnStateImpl) then) =
      __$$GetAllRoutesForScReturnStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<RouteModel>? routes});
}

/// @nodoc
class __$$GetAllRoutesForScReturnStateImplCopyWithImpl<$Res>
    extends _$RouteForScStateCopyWithImpl<$Res,
        _$GetAllRoutesForScReturnStateImpl>
    implements _$$GetAllRoutesForScReturnStateImplCopyWith<$Res> {
  __$$GetAllRoutesForScReturnStateImplCopyWithImpl(
      _$GetAllRoutesForScReturnStateImpl _value,
      $Res Function(_$GetAllRoutesForScReturnStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RouteForScState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routes = freezed,
  }) {
    return _then(_$GetAllRoutesForScReturnStateImpl(
      routes: freezed == routes
          ? _value._routes
          : routes // ignore: cast_nullable_to_non_nullable
              as List<RouteModel>?,
    ));
  }
}

/// @nodoc

class _$GetAllRoutesForScReturnStateImpl
    implements GetAllRoutesForScReturnState {
  const _$GetAllRoutesForScReturnStateImpl(
      {required final List<RouteModel>? routes})
      : _routes = routes;

  final List<RouteModel>? _routes;
  @override
  List<RouteModel>? get routes {
    final value = _routes;
    if (value == null) return null;
    if (_routes is EqualUnmodifiableListView) return _routes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RouteForScState.getAllRoutesForScReturnState(routes: $routes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllRoutesForScReturnStateImpl &&
            const DeepCollectionEquality().equals(other._routes, _routes));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_routes));

  /// Create a copy of RouteForScState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllRoutesForScReturnStateImplCopyWith<
          _$GetAllRoutesForScReturnStateImpl>
      get copyWith => __$$GetAllRoutesForScReturnStateImplCopyWithImpl<
          _$GetAllRoutesForScReturnStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<RouteModel>? routes)
        getAllRoutesForScReturnState,
    required TResult Function() getRoutesFailedState,
  }) {
    return getAllRoutesForScReturnState(routes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<RouteModel>? routes)? getAllRoutesForScReturnState,
    TResult? Function()? getRoutesFailedState,
  }) {
    return getAllRoutesForScReturnState?.call(routes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<RouteModel>? routes)? getAllRoutesForScReturnState,
    TResult Function()? getRoutesFailedState,
    required TResult orElse(),
  }) {
    if (getAllRoutesForScReturnState != null) {
      return getAllRoutesForScReturnState(routes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllRoutesForScReturnState value)
        getAllRoutesForScReturnState,
    required TResult Function(GetRoutesFailedState value) getRoutesFailedState,
  }) {
    return getAllRoutesForScReturnState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllRoutesForScReturnState value)?
        getAllRoutesForScReturnState,
    TResult? Function(GetRoutesFailedState value)? getRoutesFailedState,
  }) {
    return getAllRoutesForScReturnState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllRoutesForScReturnState value)?
        getAllRoutesForScReturnState,
    TResult Function(GetRoutesFailedState value)? getRoutesFailedState,
    required TResult orElse(),
  }) {
    if (getAllRoutesForScReturnState != null) {
      return getAllRoutesForScReturnState(this);
    }
    return orElse();
  }
}

abstract class GetAllRoutesForScReturnState implements RouteForScState {
  const factory GetAllRoutesForScReturnState(
          {required final List<RouteModel>? routes}) =
      _$GetAllRoutesForScReturnStateImpl;

  List<RouteModel>? get routes;

  /// Create a copy of RouteForScState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetAllRoutesForScReturnStateImplCopyWith<
          _$GetAllRoutesForScReturnStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetRoutesFailedStateImplCopyWith<$Res> {
  factory _$$GetRoutesFailedStateImplCopyWith(_$GetRoutesFailedStateImpl value,
          $Res Function(_$GetRoutesFailedStateImpl) then) =
      __$$GetRoutesFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetRoutesFailedStateImplCopyWithImpl<$Res>
    extends _$RouteForScStateCopyWithImpl<$Res, _$GetRoutesFailedStateImpl>
    implements _$$GetRoutesFailedStateImplCopyWith<$Res> {
  __$$GetRoutesFailedStateImplCopyWithImpl(_$GetRoutesFailedStateImpl _value,
      $Res Function(_$GetRoutesFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RouteForScState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetRoutesFailedStateImpl implements GetRoutesFailedState {
  const _$GetRoutesFailedStateImpl();

  @override
  String toString() {
    return 'RouteForScState.getRoutesFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRoutesFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<RouteModel>? routes)
        getAllRoutesForScReturnState,
    required TResult Function() getRoutesFailedState,
  }) {
    return getRoutesFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<RouteModel>? routes)? getAllRoutesForScReturnState,
    TResult? Function()? getRoutesFailedState,
  }) {
    return getRoutesFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<RouteModel>? routes)? getAllRoutesForScReturnState,
    TResult Function()? getRoutesFailedState,
    required TResult orElse(),
  }) {
    if (getRoutesFailedState != null) {
      return getRoutesFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllRoutesForScReturnState value)
        getAllRoutesForScReturnState,
    required TResult Function(GetRoutesFailedState value) getRoutesFailedState,
  }) {
    return getRoutesFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllRoutesForScReturnState value)?
        getAllRoutesForScReturnState,
    TResult? Function(GetRoutesFailedState value)? getRoutesFailedState,
  }) {
    return getRoutesFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllRoutesForScReturnState value)?
        getAllRoutesForScReturnState,
    TResult Function(GetRoutesFailedState value)? getRoutesFailedState,
    required TResult orElse(),
  }) {
    if (getRoutesFailedState != null) {
      return getRoutesFailedState(this);
    }
    return orElse();
  }
}

abstract class GetRoutesFailedState implements RouteForScState {
  const factory GetRoutesFailedState() = _$GetRoutesFailedStateImpl;
}
