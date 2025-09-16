// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'merch_survey_count_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MerchSurveyCountEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fromDate, String toDate)
        getSurveyCountEvent,
    required TResult Function() surveyCountClearEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fromDate, String toDate)? getSurveyCountEvent,
    TResult? Function()? surveyCountClearEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fromDate, String toDate)? getSurveyCountEvent,
    TResult Function()? surveyCountClearEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSurveyCountEvent value) getSurveyCountEvent,
    required TResult Function(SurveyCountClearEvent value)
        surveyCountClearEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSurveyCountEvent value)? getSurveyCountEvent,
    TResult? Function(SurveyCountClearEvent value)? surveyCountClearEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSurveyCountEvent value)? getSurveyCountEvent,
    TResult Function(SurveyCountClearEvent value)? surveyCountClearEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerchSurveyCountEventCopyWith<$Res> {
  factory $MerchSurveyCountEventCopyWith(MerchSurveyCountEvent value,
          $Res Function(MerchSurveyCountEvent) then) =
      _$MerchSurveyCountEventCopyWithImpl<$Res, MerchSurveyCountEvent>;
}

/// @nodoc
class _$MerchSurveyCountEventCopyWithImpl<$Res,
        $Val extends MerchSurveyCountEvent>
    implements $MerchSurveyCountEventCopyWith<$Res> {
  _$MerchSurveyCountEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MerchSurveyCountEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetSurveyCountEventImplCopyWith<$Res> {
  factory _$$GetSurveyCountEventImplCopyWith(_$GetSurveyCountEventImpl value,
          $Res Function(_$GetSurveyCountEventImpl) then) =
      __$$GetSurveyCountEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String fromDate, String toDate});
}

/// @nodoc
class __$$GetSurveyCountEventImplCopyWithImpl<$Res>
    extends _$MerchSurveyCountEventCopyWithImpl<$Res, _$GetSurveyCountEventImpl>
    implements _$$GetSurveyCountEventImplCopyWith<$Res> {
  __$$GetSurveyCountEventImplCopyWithImpl(_$GetSurveyCountEventImpl _value,
      $Res Function(_$GetSurveyCountEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of MerchSurveyCountEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromDate = null,
    Object? toDate = null,
  }) {
    return _then(_$GetSurveyCountEventImpl(
      fromDate: null == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as String,
      toDate: null == toDate
          ? _value.toDate
          : toDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetSurveyCountEventImpl implements GetSurveyCountEvent {
  const _$GetSurveyCountEventImpl(
      {required this.fromDate, required this.toDate});

  @override
  final String fromDate;
  @override
  final String toDate;

  @override
  String toString() {
    return 'MerchSurveyCountEvent.getSurveyCountEvent(fromDate: $fromDate, toDate: $toDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSurveyCountEventImpl &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.toDate, toDate) || other.toDate == toDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fromDate, toDate);

  /// Create a copy of MerchSurveyCountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSurveyCountEventImplCopyWith<_$GetSurveyCountEventImpl> get copyWith =>
      __$$GetSurveyCountEventImplCopyWithImpl<_$GetSurveyCountEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fromDate, String toDate)
        getSurveyCountEvent,
    required TResult Function() surveyCountClearEvent,
  }) {
    return getSurveyCountEvent(fromDate, toDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fromDate, String toDate)? getSurveyCountEvent,
    TResult? Function()? surveyCountClearEvent,
  }) {
    return getSurveyCountEvent?.call(fromDate, toDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fromDate, String toDate)? getSurveyCountEvent,
    TResult Function()? surveyCountClearEvent,
    required TResult orElse(),
  }) {
    if (getSurveyCountEvent != null) {
      return getSurveyCountEvent(fromDate, toDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSurveyCountEvent value) getSurveyCountEvent,
    required TResult Function(SurveyCountClearEvent value)
        surveyCountClearEvent,
  }) {
    return getSurveyCountEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSurveyCountEvent value)? getSurveyCountEvent,
    TResult? Function(SurveyCountClearEvent value)? surveyCountClearEvent,
  }) {
    return getSurveyCountEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSurveyCountEvent value)? getSurveyCountEvent,
    TResult Function(SurveyCountClearEvent value)? surveyCountClearEvent,
    required TResult orElse(),
  }) {
    if (getSurveyCountEvent != null) {
      return getSurveyCountEvent(this);
    }
    return orElse();
  }
}

abstract class GetSurveyCountEvent implements MerchSurveyCountEvent {
  const factory GetSurveyCountEvent(
      {required final String fromDate,
      required final String toDate}) = _$GetSurveyCountEventImpl;

  String get fromDate;
  String get toDate;

  /// Create a copy of MerchSurveyCountEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetSurveyCountEventImplCopyWith<_$GetSurveyCountEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SurveyCountClearEventImplCopyWith<$Res> {
  factory _$$SurveyCountClearEventImplCopyWith(
          _$SurveyCountClearEventImpl value,
          $Res Function(_$SurveyCountClearEventImpl) then) =
      __$$SurveyCountClearEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SurveyCountClearEventImplCopyWithImpl<$Res>
    extends _$MerchSurveyCountEventCopyWithImpl<$Res,
        _$SurveyCountClearEventImpl>
    implements _$$SurveyCountClearEventImplCopyWith<$Res> {
  __$$SurveyCountClearEventImplCopyWithImpl(_$SurveyCountClearEventImpl _value,
      $Res Function(_$SurveyCountClearEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of MerchSurveyCountEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SurveyCountClearEventImpl implements SurveyCountClearEvent {
  const _$SurveyCountClearEventImpl();

  @override
  String toString() {
    return 'MerchSurveyCountEvent.surveyCountClearEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurveyCountClearEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fromDate, String toDate)
        getSurveyCountEvent,
    required TResult Function() surveyCountClearEvent,
  }) {
    return surveyCountClearEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fromDate, String toDate)? getSurveyCountEvent,
    TResult? Function()? surveyCountClearEvent,
  }) {
    return surveyCountClearEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fromDate, String toDate)? getSurveyCountEvent,
    TResult Function()? surveyCountClearEvent,
    required TResult orElse(),
  }) {
    if (surveyCountClearEvent != null) {
      return surveyCountClearEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSurveyCountEvent value) getSurveyCountEvent,
    required TResult Function(SurveyCountClearEvent value)
        surveyCountClearEvent,
  }) {
    return surveyCountClearEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSurveyCountEvent value)? getSurveyCountEvent,
    TResult? Function(SurveyCountClearEvent value)? surveyCountClearEvent,
  }) {
    return surveyCountClearEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSurveyCountEvent value)? getSurveyCountEvent,
    TResult Function(SurveyCountClearEvent value)? surveyCountClearEvent,
    required TResult orElse(),
  }) {
    if (surveyCountClearEvent != null) {
      return surveyCountClearEvent(this);
    }
    return orElse();
  }
}

abstract class SurveyCountClearEvent implements MerchSurveyCountEvent {
  const factory SurveyCountClearEvent() = _$SurveyCountClearEventImpl;
}

/// @nodoc
mixin _$MerchSurveyCountState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetSurveyCountModel? survey) getSurveyCountState,
    required TResult Function() surveyCountFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetSurveyCountModel? survey)? getSurveyCountState,
    TResult? Function()? surveyCountFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetSurveyCountModel? survey)? getSurveyCountState,
    TResult Function()? surveyCountFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSurveyCountState value) getSurveyCountState,
    required TResult Function(SurveyCountFailedState value)
        surveyCountFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSurveyCountState value)? getSurveyCountState,
    TResult? Function(SurveyCountFailedState value)? surveyCountFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSurveyCountState value)? getSurveyCountState,
    TResult Function(SurveyCountFailedState value)? surveyCountFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MerchSurveyCountStateCopyWith<$Res> {
  factory $MerchSurveyCountStateCopyWith(MerchSurveyCountState value,
          $Res Function(MerchSurveyCountState) then) =
      _$MerchSurveyCountStateCopyWithImpl<$Res, MerchSurveyCountState>;
}

/// @nodoc
class _$MerchSurveyCountStateCopyWithImpl<$Res,
        $Val extends MerchSurveyCountState>
    implements $MerchSurveyCountStateCopyWith<$Res> {
  _$MerchSurveyCountStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MerchSurveyCountState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetSurveyCountStateImplCopyWith<$Res> {
  factory _$$GetSurveyCountStateImplCopyWith(_$GetSurveyCountStateImpl value,
          $Res Function(_$GetSurveyCountStateImpl) then) =
      __$$GetSurveyCountStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GetSurveyCountModel? survey});
}

/// @nodoc
class __$$GetSurveyCountStateImplCopyWithImpl<$Res>
    extends _$MerchSurveyCountStateCopyWithImpl<$Res, _$GetSurveyCountStateImpl>
    implements _$$GetSurveyCountStateImplCopyWith<$Res> {
  __$$GetSurveyCountStateImplCopyWithImpl(_$GetSurveyCountStateImpl _value,
      $Res Function(_$GetSurveyCountStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MerchSurveyCountState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? survey = freezed,
  }) {
    return _then(_$GetSurveyCountStateImpl(
      survey: freezed == survey
          ? _value.survey
          : survey // ignore: cast_nullable_to_non_nullable
              as GetSurveyCountModel?,
    ));
  }
}

/// @nodoc

class _$GetSurveyCountStateImpl implements GetSurveyCountState {
  const _$GetSurveyCountStateImpl({required this.survey});

  @override
  final GetSurveyCountModel? survey;

  @override
  String toString() {
    return 'MerchSurveyCountState.getSurveyCountState(survey: $survey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSurveyCountStateImpl &&
            (identical(other.survey, survey) || other.survey == survey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, survey);

  /// Create a copy of MerchSurveyCountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSurveyCountStateImplCopyWith<_$GetSurveyCountStateImpl> get copyWith =>
      __$$GetSurveyCountStateImplCopyWithImpl<_$GetSurveyCountStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetSurveyCountModel? survey) getSurveyCountState,
    required TResult Function() surveyCountFailedState,
  }) {
    return getSurveyCountState(survey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetSurveyCountModel? survey)? getSurveyCountState,
    TResult? Function()? surveyCountFailedState,
  }) {
    return getSurveyCountState?.call(survey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetSurveyCountModel? survey)? getSurveyCountState,
    TResult Function()? surveyCountFailedState,
    required TResult orElse(),
  }) {
    if (getSurveyCountState != null) {
      return getSurveyCountState(survey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSurveyCountState value) getSurveyCountState,
    required TResult Function(SurveyCountFailedState value)
        surveyCountFailedState,
  }) {
    return getSurveyCountState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSurveyCountState value)? getSurveyCountState,
    TResult? Function(SurveyCountFailedState value)? surveyCountFailedState,
  }) {
    return getSurveyCountState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSurveyCountState value)? getSurveyCountState,
    TResult Function(SurveyCountFailedState value)? surveyCountFailedState,
    required TResult orElse(),
  }) {
    if (getSurveyCountState != null) {
      return getSurveyCountState(this);
    }
    return orElse();
  }
}

abstract class GetSurveyCountState implements MerchSurveyCountState {
  const factory GetSurveyCountState(
      {required final GetSurveyCountModel? survey}) = _$GetSurveyCountStateImpl;

  GetSurveyCountModel? get survey;

  /// Create a copy of MerchSurveyCountState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetSurveyCountStateImplCopyWith<_$GetSurveyCountStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SurveyCountFailedStateImplCopyWith<$Res> {
  factory _$$SurveyCountFailedStateImplCopyWith(
          _$SurveyCountFailedStateImpl value,
          $Res Function(_$SurveyCountFailedStateImpl) then) =
      __$$SurveyCountFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SurveyCountFailedStateImplCopyWithImpl<$Res>
    extends _$MerchSurveyCountStateCopyWithImpl<$Res,
        _$SurveyCountFailedStateImpl>
    implements _$$SurveyCountFailedStateImplCopyWith<$Res> {
  __$$SurveyCountFailedStateImplCopyWithImpl(
      _$SurveyCountFailedStateImpl _value,
      $Res Function(_$SurveyCountFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MerchSurveyCountState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SurveyCountFailedStateImpl implements SurveyCountFailedState {
  const _$SurveyCountFailedStateImpl();

  @override
  String toString() {
    return 'MerchSurveyCountState.surveyCountFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SurveyCountFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetSurveyCountModel? survey) getSurveyCountState,
    required TResult Function() surveyCountFailedState,
  }) {
    return surveyCountFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetSurveyCountModel? survey)? getSurveyCountState,
    TResult? Function()? surveyCountFailedState,
  }) {
    return surveyCountFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetSurveyCountModel? survey)? getSurveyCountState,
    TResult Function()? surveyCountFailedState,
    required TResult orElse(),
  }) {
    if (surveyCountFailedState != null) {
      return surveyCountFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetSurveyCountState value) getSurveyCountState,
    required TResult Function(SurveyCountFailedState value)
        surveyCountFailedState,
  }) {
    return surveyCountFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetSurveyCountState value)? getSurveyCountState,
    TResult? Function(SurveyCountFailedState value)? surveyCountFailedState,
  }) {
    return surveyCountFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetSurveyCountState value)? getSurveyCountState,
    TResult Function(SurveyCountFailedState value)? surveyCountFailedState,
    required TResult orElse(),
  }) {
    if (surveyCountFailedState != null) {
      return surveyCountFailedState(this);
    }
    return orElse();
  }
}

abstract class SurveyCountFailedState implements MerchSurveyCountState {
  const factory SurveyCountFailedState() = _$SurveyCountFailedStateImpl;
}
