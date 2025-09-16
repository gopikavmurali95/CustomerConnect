// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_graph_switch_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeGraphSwitchState {
  HomeGraphModel get graph => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HomeGraphModel graph) switchGraphState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeGraphModel graph)? switchGraphState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeGraphModel graph)? switchGraphState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SwitchGraphState value) switchGraphState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SwitchGraphState value)? switchGraphState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SwitchGraphState value)? switchGraphState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of HomeGraphSwitchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeGraphSwitchStateCopyWith<HomeGraphSwitchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeGraphSwitchStateCopyWith<$Res> {
  factory $HomeGraphSwitchStateCopyWith(HomeGraphSwitchState value,
          $Res Function(HomeGraphSwitchState) then) =
      _$HomeGraphSwitchStateCopyWithImpl<$Res, HomeGraphSwitchState>;
  @useResult
  $Res call({HomeGraphModel graph});
}

/// @nodoc
class _$HomeGraphSwitchStateCopyWithImpl<$Res,
        $Val extends HomeGraphSwitchState>
    implements $HomeGraphSwitchStateCopyWith<$Res> {
  _$HomeGraphSwitchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeGraphSwitchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? graph = null,
  }) {
    return _then(_value.copyWith(
      graph: null == graph
          ? _value.graph
          : graph // ignore: cast_nullable_to_non_nullable
              as HomeGraphModel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SwitchGraphStateImplCopyWith<$Res>
    implements $HomeGraphSwitchStateCopyWith<$Res> {
  factory _$$SwitchGraphStateImplCopyWith(_$SwitchGraphStateImpl value,
          $Res Function(_$SwitchGraphStateImpl) then) =
      __$$SwitchGraphStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HomeGraphModel graph});
}

/// @nodoc
class __$$SwitchGraphStateImplCopyWithImpl<$Res>
    extends _$HomeGraphSwitchStateCopyWithImpl<$Res, _$SwitchGraphStateImpl>
    implements _$$SwitchGraphStateImplCopyWith<$Res> {
  __$$SwitchGraphStateImplCopyWithImpl(_$SwitchGraphStateImpl _value,
      $Res Function(_$SwitchGraphStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeGraphSwitchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? graph = null,
  }) {
    return _then(_$SwitchGraphStateImpl(
      graph: null == graph
          ? _value.graph
          : graph // ignore: cast_nullable_to_non_nullable
              as HomeGraphModel,
    ));
  }
}

/// @nodoc

class _$SwitchGraphStateImpl implements SwitchGraphState {
  const _$SwitchGraphStateImpl({required this.graph});

  @override
  final HomeGraphModel graph;

  @override
  String toString() {
    return 'HomeGraphSwitchState.switchGraphState(graph: $graph)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwitchGraphStateImpl &&
            (identical(other.graph, graph) || other.graph == graph));
  }

  @override
  int get hashCode => Object.hash(runtimeType, graph);

  /// Create a copy of HomeGraphSwitchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SwitchGraphStateImplCopyWith<_$SwitchGraphStateImpl> get copyWith =>
      __$$SwitchGraphStateImplCopyWithImpl<_$SwitchGraphStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HomeGraphModel graph) switchGraphState,
  }) {
    return switchGraphState(graph);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeGraphModel graph)? switchGraphState,
  }) {
    return switchGraphState?.call(graph);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeGraphModel graph)? switchGraphState,
    required TResult orElse(),
  }) {
    if (switchGraphState != null) {
      return switchGraphState(graph);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SwitchGraphState value) switchGraphState,
  }) {
    return switchGraphState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SwitchGraphState value)? switchGraphState,
  }) {
    return switchGraphState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SwitchGraphState value)? switchGraphState,
    required TResult orElse(),
  }) {
    if (switchGraphState != null) {
      return switchGraphState(this);
    }
    return orElse();
  }
}

abstract class SwitchGraphState implements HomeGraphSwitchState {
  const factory SwitchGraphState({required final HomeGraphModel graph}) =
      _$SwitchGraphStateImpl;

  @override
  HomeGraphModel get graph;

  /// Create a copy of HomeGraphSwitchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SwitchGraphStateImplCopyWith<_$SwitchGraphStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
