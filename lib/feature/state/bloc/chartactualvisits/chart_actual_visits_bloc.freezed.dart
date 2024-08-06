// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chart_actual_visits_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChartActualVisitsEvent {
  String get date => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String date) getChartActualVisitsDataEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String date)? getChartActualVisitsDataEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String date)? getChartActualVisitsDataEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetChartActualVisitsDataEvent value)
        getChartActualVisitsDataEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetChartActualVisitsDataEvent value)?
        getChartActualVisitsDataEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetChartActualVisitsDataEvent value)?
        getChartActualVisitsDataEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChartActualVisitsEventCopyWith<ChartActualVisitsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChartActualVisitsEventCopyWith<$Res> {
  factory $ChartActualVisitsEventCopyWith(ChartActualVisitsEvent value,
          $Res Function(ChartActualVisitsEvent) then) =
      _$ChartActualVisitsEventCopyWithImpl<$Res, ChartActualVisitsEvent>;
  @useResult
  $Res call({String date});
}

/// @nodoc
class _$ChartActualVisitsEventCopyWithImpl<$Res,
        $Val extends ChartActualVisitsEvent>
    implements $ChartActualVisitsEventCopyWith<$Res> {
  _$ChartActualVisitsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetChartActualVisitsDataEventImplCopyWith<$Res>
    implements $ChartActualVisitsEventCopyWith<$Res> {
  factory _$$GetChartActualVisitsDataEventImplCopyWith(
          _$GetChartActualVisitsDataEventImpl value,
          $Res Function(_$GetChartActualVisitsDataEventImpl) then) =
      __$$GetChartActualVisitsDataEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String date});
}

/// @nodoc
class __$$GetChartActualVisitsDataEventImplCopyWithImpl<$Res>
    extends _$ChartActualVisitsEventCopyWithImpl<$Res,
        _$GetChartActualVisitsDataEventImpl>
    implements _$$GetChartActualVisitsDataEventImplCopyWith<$Res> {
  __$$GetChartActualVisitsDataEventImplCopyWithImpl(
      _$GetChartActualVisitsDataEventImpl _value,
      $Res Function(_$GetChartActualVisitsDataEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$GetChartActualVisitsDataEventImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetChartActualVisitsDataEventImpl
    implements GetChartActualVisitsDataEvent {
  const _$GetChartActualVisitsDataEventImpl({required this.date});

  @override
  final String date;

  @override
  String toString() {
    return 'ChartActualVisitsEvent.getChartActualVisitsDataEvent(date: $date)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetChartActualVisitsDataEventImpl &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetChartActualVisitsDataEventImplCopyWith<
          _$GetChartActualVisitsDataEventImpl>
      get copyWith => __$$GetChartActualVisitsDataEventImplCopyWithImpl<
          _$GetChartActualVisitsDataEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String date) getChartActualVisitsDataEvent,
  }) {
    return getChartActualVisitsDataEvent(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String date)? getChartActualVisitsDataEvent,
  }) {
    return getChartActualVisitsDataEvent?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String date)? getChartActualVisitsDataEvent,
    required TResult orElse(),
  }) {
    if (getChartActualVisitsDataEvent != null) {
      return getChartActualVisitsDataEvent(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetChartActualVisitsDataEvent value)
        getChartActualVisitsDataEvent,
  }) {
    return getChartActualVisitsDataEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetChartActualVisitsDataEvent value)?
        getChartActualVisitsDataEvent,
  }) {
    return getChartActualVisitsDataEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetChartActualVisitsDataEvent value)?
        getChartActualVisitsDataEvent,
    required TResult orElse(),
  }) {
    if (getChartActualVisitsDataEvent != null) {
      return getChartActualVisitsDataEvent(this);
    }
    return orElse();
  }
}

abstract class GetChartActualVisitsDataEvent implements ChartActualVisitsEvent {
  const factory GetChartActualVisitsDataEvent({required final String date}) =
      _$GetChartActualVisitsDataEventImpl;

  @override
  String get date;
  @override
  @JsonKey(ignore: true)
  _$$GetChartActualVisitsDataEventImplCopyWith<
          _$GetChartActualVisitsDataEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ChartActualVisitsState {
  ChartActualVisitModel get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChartActualVisitModel data)
        getChartActualVisitsDataState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChartActualVisitModel data)?
        getChartActualVisitsDataState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChartActualVisitModel data)? getChartActualVisitsDataState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetChartActualVisitsDataState value)
        getChartActualVisitsDataState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetChartActualVisitsDataState value)?
        getChartActualVisitsDataState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetChartActualVisitsDataState value)?
        getChartActualVisitsDataState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChartActualVisitsStateCopyWith<ChartActualVisitsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChartActualVisitsStateCopyWith<$Res> {
  factory $ChartActualVisitsStateCopyWith(ChartActualVisitsState value,
          $Res Function(ChartActualVisitsState) then) =
      _$ChartActualVisitsStateCopyWithImpl<$Res, ChartActualVisitsState>;
  @useResult
  $Res call({ChartActualVisitModel data});
}

/// @nodoc
class _$ChartActualVisitsStateCopyWithImpl<$Res,
        $Val extends ChartActualVisitsState>
    implements $ChartActualVisitsStateCopyWith<$Res> {
  _$ChartActualVisitsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ChartActualVisitModel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetChartActualVisitsDataStateImplCopyWith<$Res>
    implements $ChartActualVisitsStateCopyWith<$Res> {
  factory _$$GetChartActualVisitsDataStateImplCopyWith(
          _$GetChartActualVisitsDataStateImpl value,
          $Res Function(_$GetChartActualVisitsDataStateImpl) then) =
      __$$GetChartActualVisitsDataStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ChartActualVisitModel data});
}

/// @nodoc
class __$$GetChartActualVisitsDataStateImplCopyWithImpl<$Res>
    extends _$ChartActualVisitsStateCopyWithImpl<$Res,
        _$GetChartActualVisitsDataStateImpl>
    implements _$$GetChartActualVisitsDataStateImplCopyWith<$Res> {
  __$$GetChartActualVisitsDataStateImplCopyWithImpl(
      _$GetChartActualVisitsDataStateImpl _value,
      $Res Function(_$GetChartActualVisitsDataStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$GetChartActualVisitsDataStateImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ChartActualVisitModel,
    ));
  }
}

/// @nodoc

class _$GetChartActualVisitsDataStateImpl
    implements GetChartActualVisitsDataState {
  const _$GetChartActualVisitsDataStateImpl({required this.data});

  @override
  final ChartActualVisitModel data;

  @override
  String toString() {
    return 'ChartActualVisitsState.getChartActualVisitsDataState(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetChartActualVisitsDataStateImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetChartActualVisitsDataStateImplCopyWith<
          _$GetChartActualVisitsDataStateImpl>
      get copyWith => __$$GetChartActualVisitsDataStateImplCopyWithImpl<
          _$GetChartActualVisitsDataStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ChartActualVisitModel data)
        getChartActualVisitsDataState,
  }) {
    return getChartActualVisitsDataState(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ChartActualVisitModel data)?
        getChartActualVisitsDataState,
  }) {
    return getChartActualVisitsDataState?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ChartActualVisitModel data)? getChartActualVisitsDataState,
    required TResult orElse(),
  }) {
    if (getChartActualVisitsDataState != null) {
      return getChartActualVisitsDataState(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetChartActualVisitsDataState value)
        getChartActualVisitsDataState,
  }) {
    return getChartActualVisitsDataState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetChartActualVisitsDataState value)?
        getChartActualVisitsDataState,
  }) {
    return getChartActualVisitsDataState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetChartActualVisitsDataState value)?
        getChartActualVisitsDataState,
    required TResult orElse(),
  }) {
    if (getChartActualVisitsDataState != null) {
      return getChartActualVisitsDataState(this);
    }
    return orElse();
  }
}

abstract class GetChartActualVisitsDataState implements ChartActualVisitsState {
  const factory GetChartActualVisitsDataState(
          {required final ChartActualVisitModel data}) =
      _$GetChartActualVisitsDataStateImpl;

  @override
  ChartActualVisitModel get data;
  @override
  @JsonKey(ignore: true)
  _$$GetChartActualVisitsDataStateImplCopyWith<
          _$GetChartActualVisitsDataStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
