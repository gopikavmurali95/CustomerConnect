// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jourey_plan_approval_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$JoureyPlanApprovalEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(JourneyPlanApprovalInModel approve)
        approveJourneyPlanEvent,
    required TResult Function(JourneyPlanApprovalInModel reject)
        rejectaJOurneyPlanEvent,
    required TResult Function() addJourneyPlanApprovalLoadingEvent,
    required TResult Function() clearJourneyPlanApprovalEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(JourneyPlanApprovalInModel approve)?
        approveJourneyPlanEvent,
    TResult? Function(JourneyPlanApprovalInModel reject)?
        rejectaJOurneyPlanEvent,
    TResult? Function()? addJourneyPlanApprovalLoadingEvent,
    TResult? Function()? clearJourneyPlanApprovalEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(JourneyPlanApprovalInModel approve)?
        approveJourneyPlanEvent,
    TResult Function(JourneyPlanApprovalInModel reject)?
        rejectaJOurneyPlanEvent,
    TResult Function()? addJourneyPlanApprovalLoadingEvent,
    TResult Function()? clearJourneyPlanApprovalEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApproveJourneyPlanEvent value)
        approveJourneyPlanEvent,
    required TResult Function(RejectaJOurneyPlanEvent value)
        rejectaJOurneyPlanEvent,
    required TResult Function(AddJourneyPlanApprovalLoadingEvent value)
        addJourneyPlanApprovalLoadingEvent,
    required TResult Function(ClearJourneyPlanApprovalEvent value)
        clearJourneyPlanApprovalEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApproveJourneyPlanEvent value)? approveJourneyPlanEvent,
    TResult? Function(RejectaJOurneyPlanEvent value)? rejectaJOurneyPlanEvent,
    TResult? Function(AddJourneyPlanApprovalLoadingEvent value)?
        addJourneyPlanApprovalLoadingEvent,
    TResult? Function(ClearJourneyPlanApprovalEvent value)?
        clearJourneyPlanApprovalEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApproveJourneyPlanEvent value)? approveJourneyPlanEvent,
    TResult Function(RejectaJOurneyPlanEvent value)? rejectaJOurneyPlanEvent,
    TResult Function(AddJourneyPlanApprovalLoadingEvent value)?
        addJourneyPlanApprovalLoadingEvent,
    TResult Function(ClearJourneyPlanApprovalEvent value)?
        clearJourneyPlanApprovalEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoureyPlanApprovalEventCopyWith<$Res> {
  factory $JoureyPlanApprovalEventCopyWith(JoureyPlanApprovalEvent value,
          $Res Function(JoureyPlanApprovalEvent) then) =
      _$JoureyPlanApprovalEventCopyWithImpl<$Res, JoureyPlanApprovalEvent>;
}

/// @nodoc
class _$JoureyPlanApprovalEventCopyWithImpl<$Res,
        $Val extends JoureyPlanApprovalEvent>
    implements $JoureyPlanApprovalEventCopyWith<$Res> {
  _$JoureyPlanApprovalEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JoureyPlanApprovalEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ApproveJourneyPlanEventImplCopyWith<$Res> {
  factory _$$ApproveJourneyPlanEventImplCopyWith(
          _$ApproveJourneyPlanEventImpl value,
          $Res Function(_$ApproveJourneyPlanEventImpl) then) =
      __$$ApproveJourneyPlanEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({JourneyPlanApprovalInModel approve});
}

/// @nodoc
class __$$ApproveJourneyPlanEventImplCopyWithImpl<$Res>
    extends _$JoureyPlanApprovalEventCopyWithImpl<$Res,
        _$ApproveJourneyPlanEventImpl>
    implements _$$ApproveJourneyPlanEventImplCopyWith<$Res> {
  __$$ApproveJourneyPlanEventImplCopyWithImpl(
      _$ApproveJourneyPlanEventImpl _value,
      $Res Function(_$ApproveJourneyPlanEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of JoureyPlanApprovalEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? approve = null,
  }) {
    return _then(_$ApproveJourneyPlanEventImpl(
      approve: null == approve
          ? _value.approve
          : approve // ignore: cast_nullable_to_non_nullable
              as JourneyPlanApprovalInModel,
    ));
  }
}

/// @nodoc

class _$ApproveJourneyPlanEventImpl implements ApproveJourneyPlanEvent {
  const _$ApproveJourneyPlanEventImpl({required this.approve});

  @override
  final JourneyPlanApprovalInModel approve;

  @override
  String toString() {
    return 'JoureyPlanApprovalEvent.approveJourneyPlanEvent(approve: $approve)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApproveJourneyPlanEventImpl &&
            (identical(other.approve, approve) || other.approve == approve));
  }

  @override
  int get hashCode => Object.hash(runtimeType, approve);

  /// Create a copy of JoureyPlanApprovalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApproveJourneyPlanEventImplCopyWith<_$ApproveJourneyPlanEventImpl>
      get copyWith => __$$ApproveJourneyPlanEventImplCopyWithImpl<
          _$ApproveJourneyPlanEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(JourneyPlanApprovalInModel approve)
        approveJourneyPlanEvent,
    required TResult Function(JourneyPlanApprovalInModel reject)
        rejectaJOurneyPlanEvent,
    required TResult Function() addJourneyPlanApprovalLoadingEvent,
    required TResult Function() clearJourneyPlanApprovalEvent,
  }) {
    return approveJourneyPlanEvent(approve);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(JourneyPlanApprovalInModel approve)?
        approveJourneyPlanEvent,
    TResult? Function(JourneyPlanApprovalInModel reject)?
        rejectaJOurneyPlanEvent,
    TResult? Function()? addJourneyPlanApprovalLoadingEvent,
    TResult? Function()? clearJourneyPlanApprovalEvent,
  }) {
    return approveJourneyPlanEvent?.call(approve);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(JourneyPlanApprovalInModel approve)?
        approveJourneyPlanEvent,
    TResult Function(JourneyPlanApprovalInModel reject)?
        rejectaJOurneyPlanEvent,
    TResult Function()? addJourneyPlanApprovalLoadingEvent,
    TResult Function()? clearJourneyPlanApprovalEvent,
    required TResult orElse(),
  }) {
    if (approveJourneyPlanEvent != null) {
      return approveJourneyPlanEvent(approve);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApproveJourneyPlanEvent value)
        approveJourneyPlanEvent,
    required TResult Function(RejectaJOurneyPlanEvent value)
        rejectaJOurneyPlanEvent,
    required TResult Function(AddJourneyPlanApprovalLoadingEvent value)
        addJourneyPlanApprovalLoadingEvent,
    required TResult Function(ClearJourneyPlanApprovalEvent value)
        clearJourneyPlanApprovalEvent,
  }) {
    return approveJourneyPlanEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApproveJourneyPlanEvent value)? approveJourneyPlanEvent,
    TResult? Function(RejectaJOurneyPlanEvent value)? rejectaJOurneyPlanEvent,
    TResult? Function(AddJourneyPlanApprovalLoadingEvent value)?
        addJourneyPlanApprovalLoadingEvent,
    TResult? Function(ClearJourneyPlanApprovalEvent value)?
        clearJourneyPlanApprovalEvent,
  }) {
    return approveJourneyPlanEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApproveJourneyPlanEvent value)? approveJourneyPlanEvent,
    TResult Function(RejectaJOurneyPlanEvent value)? rejectaJOurneyPlanEvent,
    TResult Function(AddJourneyPlanApprovalLoadingEvent value)?
        addJourneyPlanApprovalLoadingEvent,
    TResult Function(ClearJourneyPlanApprovalEvent value)?
        clearJourneyPlanApprovalEvent,
    required TResult orElse(),
  }) {
    if (approveJourneyPlanEvent != null) {
      return approveJourneyPlanEvent(this);
    }
    return orElse();
  }
}

abstract class ApproveJourneyPlanEvent implements JoureyPlanApprovalEvent {
  const factory ApproveJourneyPlanEvent(
          {required final JourneyPlanApprovalInModel approve}) =
      _$ApproveJourneyPlanEventImpl;

  JourneyPlanApprovalInModel get approve;

  /// Create a copy of JoureyPlanApprovalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApproveJourneyPlanEventImplCopyWith<_$ApproveJourneyPlanEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RejectaJOurneyPlanEventImplCopyWith<$Res> {
  factory _$$RejectaJOurneyPlanEventImplCopyWith(
          _$RejectaJOurneyPlanEventImpl value,
          $Res Function(_$RejectaJOurneyPlanEventImpl) then) =
      __$$RejectaJOurneyPlanEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({JourneyPlanApprovalInModel reject});
}

/// @nodoc
class __$$RejectaJOurneyPlanEventImplCopyWithImpl<$Res>
    extends _$JoureyPlanApprovalEventCopyWithImpl<$Res,
        _$RejectaJOurneyPlanEventImpl>
    implements _$$RejectaJOurneyPlanEventImplCopyWith<$Res> {
  __$$RejectaJOurneyPlanEventImplCopyWithImpl(
      _$RejectaJOurneyPlanEventImpl _value,
      $Res Function(_$RejectaJOurneyPlanEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of JoureyPlanApprovalEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reject = null,
  }) {
    return _then(_$RejectaJOurneyPlanEventImpl(
      reject: null == reject
          ? _value.reject
          : reject // ignore: cast_nullable_to_non_nullable
              as JourneyPlanApprovalInModel,
    ));
  }
}

/// @nodoc

class _$RejectaJOurneyPlanEventImpl implements RejectaJOurneyPlanEvent {
  const _$RejectaJOurneyPlanEventImpl({required this.reject});

  @override
  final JourneyPlanApprovalInModel reject;

  @override
  String toString() {
    return 'JoureyPlanApprovalEvent.rejectaJOurneyPlanEvent(reject: $reject)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RejectaJOurneyPlanEventImpl &&
            (identical(other.reject, reject) || other.reject == reject));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reject);

  /// Create a copy of JoureyPlanApprovalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RejectaJOurneyPlanEventImplCopyWith<_$RejectaJOurneyPlanEventImpl>
      get copyWith => __$$RejectaJOurneyPlanEventImplCopyWithImpl<
          _$RejectaJOurneyPlanEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(JourneyPlanApprovalInModel approve)
        approveJourneyPlanEvent,
    required TResult Function(JourneyPlanApprovalInModel reject)
        rejectaJOurneyPlanEvent,
    required TResult Function() addJourneyPlanApprovalLoadingEvent,
    required TResult Function() clearJourneyPlanApprovalEvent,
  }) {
    return rejectaJOurneyPlanEvent(reject);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(JourneyPlanApprovalInModel approve)?
        approveJourneyPlanEvent,
    TResult? Function(JourneyPlanApprovalInModel reject)?
        rejectaJOurneyPlanEvent,
    TResult? Function()? addJourneyPlanApprovalLoadingEvent,
    TResult? Function()? clearJourneyPlanApprovalEvent,
  }) {
    return rejectaJOurneyPlanEvent?.call(reject);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(JourneyPlanApprovalInModel approve)?
        approveJourneyPlanEvent,
    TResult Function(JourneyPlanApprovalInModel reject)?
        rejectaJOurneyPlanEvent,
    TResult Function()? addJourneyPlanApprovalLoadingEvent,
    TResult Function()? clearJourneyPlanApprovalEvent,
    required TResult orElse(),
  }) {
    if (rejectaJOurneyPlanEvent != null) {
      return rejectaJOurneyPlanEvent(reject);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApproveJourneyPlanEvent value)
        approveJourneyPlanEvent,
    required TResult Function(RejectaJOurneyPlanEvent value)
        rejectaJOurneyPlanEvent,
    required TResult Function(AddJourneyPlanApprovalLoadingEvent value)
        addJourneyPlanApprovalLoadingEvent,
    required TResult Function(ClearJourneyPlanApprovalEvent value)
        clearJourneyPlanApprovalEvent,
  }) {
    return rejectaJOurneyPlanEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApproveJourneyPlanEvent value)? approveJourneyPlanEvent,
    TResult? Function(RejectaJOurneyPlanEvent value)? rejectaJOurneyPlanEvent,
    TResult? Function(AddJourneyPlanApprovalLoadingEvent value)?
        addJourneyPlanApprovalLoadingEvent,
    TResult? Function(ClearJourneyPlanApprovalEvent value)?
        clearJourneyPlanApprovalEvent,
  }) {
    return rejectaJOurneyPlanEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApproveJourneyPlanEvent value)? approveJourneyPlanEvent,
    TResult Function(RejectaJOurneyPlanEvent value)? rejectaJOurneyPlanEvent,
    TResult Function(AddJourneyPlanApprovalLoadingEvent value)?
        addJourneyPlanApprovalLoadingEvent,
    TResult Function(ClearJourneyPlanApprovalEvent value)?
        clearJourneyPlanApprovalEvent,
    required TResult orElse(),
  }) {
    if (rejectaJOurneyPlanEvent != null) {
      return rejectaJOurneyPlanEvent(this);
    }
    return orElse();
  }
}

abstract class RejectaJOurneyPlanEvent implements JoureyPlanApprovalEvent {
  const factory RejectaJOurneyPlanEvent(
          {required final JourneyPlanApprovalInModel reject}) =
      _$RejectaJOurneyPlanEventImpl;

  JourneyPlanApprovalInModel get reject;

  /// Create a copy of JoureyPlanApprovalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RejectaJOurneyPlanEventImplCopyWith<_$RejectaJOurneyPlanEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddJourneyPlanApprovalLoadingEventImplCopyWith<$Res> {
  factory _$$AddJourneyPlanApprovalLoadingEventImplCopyWith(
          _$AddJourneyPlanApprovalLoadingEventImpl value,
          $Res Function(_$AddJourneyPlanApprovalLoadingEventImpl) then) =
      __$$AddJourneyPlanApprovalLoadingEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddJourneyPlanApprovalLoadingEventImplCopyWithImpl<$Res>
    extends _$JoureyPlanApprovalEventCopyWithImpl<$Res,
        _$AddJourneyPlanApprovalLoadingEventImpl>
    implements _$$AddJourneyPlanApprovalLoadingEventImplCopyWith<$Res> {
  __$$AddJourneyPlanApprovalLoadingEventImplCopyWithImpl(
      _$AddJourneyPlanApprovalLoadingEventImpl _value,
      $Res Function(_$AddJourneyPlanApprovalLoadingEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of JoureyPlanApprovalEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AddJourneyPlanApprovalLoadingEventImpl
    implements AddJourneyPlanApprovalLoadingEvent {
  const _$AddJourneyPlanApprovalLoadingEventImpl();

  @override
  String toString() {
    return 'JoureyPlanApprovalEvent.addJourneyPlanApprovalLoadingEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddJourneyPlanApprovalLoadingEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(JourneyPlanApprovalInModel approve)
        approveJourneyPlanEvent,
    required TResult Function(JourneyPlanApprovalInModel reject)
        rejectaJOurneyPlanEvent,
    required TResult Function() addJourneyPlanApprovalLoadingEvent,
    required TResult Function() clearJourneyPlanApprovalEvent,
  }) {
    return addJourneyPlanApprovalLoadingEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(JourneyPlanApprovalInModel approve)?
        approveJourneyPlanEvent,
    TResult? Function(JourneyPlanApprovalInModel reject)?
        rejectaJOurneyPlanEvent,
    TResult? Function()? addJourneyPlanApprovalLoadingEvent,
    TResult? Function()? clearJourneyPlanApprovalEvent,
  }) {
    return addJourneyPlanApprovalLoadingEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(JourneyPlanApprovalInModel approve)?
        approveJourneyPlanEvent,
    TResult Function(JourneyPlanApprovalInModel reject)?
        rejectaJOurneyPlanEvent,
    TResult Function()? addJourneyPlanApprovalLoadingEvent,
    TResult Function()? clearJourneyPlanApprovalEvent,
    required TResult orElse(),
  }) {
    if (addJourneyPlanApprovalLoadingEvent != null) {
      return addJourneyPlanApprovalLoadingEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApproveJourneyPlanEvent value)
        approveJourneyPlanEvent,
    required TResult Function(RejectaJOurneyPlanEvent value)
        rejectaJOurneyPlanEvent,
    required TResult Function(AddJourneyPlanApprovalLoadingEvent value)
        addJourneyPlanApprovalLoadingEvent,
    required TResult Function(ClearJourneyPlanApprovalEvent value)
        clearJourneyPlanApprovalEvent,
  }) {
    return addJourneyPlanApprovalLoadingEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApproveJourneyPlanEvent value)? approveJourneyPlanEvent,
    TResult? Function(RejectaJOurneyPlanEvent value)? rejectaJOurneyPlanEvent,
    TResult? Function(AddJourneyPlanApprovalLoadingEvent value)?
        addJourneyPlanApprovalLoadingEvent,
    TResult? Function(ClearJourneyPlanApprovalEvent value)?
        clearJourneyPlanApprovalEvent,
  }) {
    return addJourneyPlanApprovalLoadingEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApproveJourneyPlanEvent value)? approveJourneyPlanEvent,
    TResult Function(RejectaJOurneyPlanEvent value)? rejectaJOurneyPlanEvent,
    TResult Function(AddJourneyPlanApprovalLoadingEvent value)?
        addJourneyPlanApprovalLoadingEvent,
    TResult Function(ClearJourneyPlanApprovalEvent value)?
        clearJourneyPlanApprovalEvent,
    required TResult orElse(),
  }) {
    if (addJourneyPlanApprovalLoadingEvent != null) {
      return addJourneyPlanApprovalLoadingEvent(this);
    }
    return orElse();
  }
}

abstract class AddJourneyPlanApprovalLoadingEvent
    implements JoureyPlanApprovalEvent {
  const factory AddJourneyPlanApprovalLoadingEvent() =
      _$AddJourneyPlanApprovalLoadingEventImpl;
}

/// @nodoc
abstract class _$$ClearJourneyPlanApprovalEventImplCopyWith<$Res> {
  factory _$$ClearJourneyPlanApprovalEventImplCopyWith(
          _$ClearJourneyPlanApprovalEventImpl value,
          $Res Function(_$ClearJourneyPlanApprovalEventImpl) then) =
      __$$ClearJourneyPlanApprovalEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearJourneyPlanApprovalEventImplCopyWithImpl<$Res>
    extends _$JoureyPlanApprovalEventCopyWithImpl<$Res,
        _$ClearJourneyPlanApprovalEventImpl>
    implements _$$ClearJourneyPlanApprovalEventImplCopyWith<$Res> {
  __$$ClearJourneyPlanApprovalEventImplCopyWithImpl(
      _$ClearJourneyPlanApprovalEventImpl _value,
      $Res Function(_$ClearJourneyPlanApprovalEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of JoureyPlanApprovalEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearJourneyPlanApprovalEventImpl
    implements ClearJourneyPlanApprovalEvent {
  const _$ClearJourneyPlanApprovalEventImpl();

  @override
  String toString() {
    return 'JoureyPlanApprovalEvent.clearJourneyPlanApprovalEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearJourneyPlanApprovalEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(JourneyPlanApprovalInModel approve)
        approveJourneyPlanEvent,
    required TResult Function(JourneyPlanApprovalInModel reject)
        rejectaJOurneyPlanEvent,
    required TResult Function() addJourneyPlanApprovalLoadingEvent,
    required TResult Function() clearJourneyPlanApprovalEvent,
  }) {
    return clearJourneyPlanApprovalEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(JourneyPlanApprovalInModel approve)?
        approveJourneyPlanEvent,
    TResult? Function(JourneyPlanApprovalInModel reject)?
        rejectaJOurneyPlanEvent,
    TResult? Function()? addJourneyPlanApprovalLoadingEvent,
    TResult? Function()? clearJourneyPlanApprovalEvent,
  }) {
    return clearJourneyPlanApprovalEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(JourneyPlanApprovalInModel approve)?
        approveJourneyPlanEvent,
    TResult Function(JourneyPlanApprovalInModel reject)?
        rejectaJOurneyPlanEvent,
    TResult Function()? addJourneyPlanApprovalLoadingEvent,
    TResult Function()? clearJourneyPlanApprovalEvent,
    required TResult orElse(),
  }) {
    if (clearJourneyPlanApprovalEvent != null) {
      return clearJourneyPlanApprovalEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApproveJourneyPlanEvent value)
        approveJourneyPlanEvent,
    required TResult Function(RejectaJOurneyPlanEvent value)
        rejectaJOurneyPlanEvent,
    required TResult Function(AddJourneyPlanApprovalLoadingEvent value)
        addJourneyPlanApprovalLoadingEvent,
    required TResult Function(ClearJourneyPlanApprovalEvent value)
        clearJourneyPlanApprovalEvent,
  }) {
    return clearJourneyPlanApprovalEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApproveJourneyPlanEvent value)? approveJourneyPlanEvent,
    TResult? Function(RejectaJOurneyPlanEvent value)? rejectaJOurneyPlanEvent,
    TResult? Function(AddJourneyPlanApprovalLoadingEvent value)?
        addJourneyPlanApprovalLoadingEvent,
    TResult? Function(ClearJourneyPlanApprovalEvent value)?
        clearJourneyPlanApprovalEvent,
  }) {
    return clearJourneyPlanApprovalEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApproveJourneyPlanEvent value)? approveJourneyPlanEvent,
    TResult Function(RejectaJOurneyPlanEvent value)? rejectaJOurneyPlanEvent,
    TResult Function(AddJourneyPlanApprovalLoadingEvent value)?
        addJourneyPlanApprovalLoadingEvent,
    TResult Function(ClearJourneyPlanApprovalEvent value)?
        clearJourneyPlanApprovalEvent,
    required TResult orElse(),
  }) {
    if (clearJourneyPlanApprovalEvent != null) {
      return clearJourneyPlanApprovalEvent(this);
    }
    return orElse();
  }
}

abstract class ClearJourneyPlanApprovalEvent
    implements JoureyPlanApprovalEvent {
  const factory ClearJourneyPlanApprovalEvent() =
      _$ClearJourneyPlanApprovalEventImpl;
}

/// @nodoc
mixin _$JoureyPlanApprovalState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(JoutneyPlanApprovalOutModel? approve)
        approveJourneyPlanState,
    required TResult Function() approveJourneyPlanFailedState,
    required TResult Function() approveJourneyPlanLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(JoutneyPlanApprovalOutModel? approve)?
        approveJourneyPlanState,
    TResult? Function()? approveJourneyPlanFailedState,
    TResult? Function()? approveJourneyPlanLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(JoutneyPlanApprovalOutModel? approve)?
        approveJourneyPlanState,
    TResult Function()? approveJourneyPlanFailedState,
    TResult Function()? approveJourneyPlanLoadingState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApproveJourneyPlanState value)
        approveJourneyPlanState,
    required TResult Function(ApproveJourneyPlanFailedState value)
        approveJourneyPlanFailedState,
    required TResult Function(ApproveJourneyPlanLoadingState value)
        approveJourneyPlanLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApproveJourneyPlanState value)? approveJourneyPlanState,
    TResult? Function(ApproveJourneyPlanFailedState value)?
        approveJourneyPlanFailedState,
    TResult? Function(ApproveJourneyPlanLoadingState value)?
        approveJourneyPlanLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApproveJourneyPlanState value)? approveJourneyPlanState,
    TResult Function(ApproveJourneyPlanFailedState value)?
        approveJourneyPlanFailedState,
    TResult Function(ApproveJourneyPlanLoadingState value)?
        approveJourneyPlanLoadingState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoureyPlanApprovalStateCopyWith<$Res> {
  factory $JoureyPlanApprovalStateCopyWith(JoureyPlanApprovalState value,
          $Res Function(JoureyPlanApprovalState) then) =
      _$JoureyPlanApprovalStateCopyWithImpl<$Res, JoureyPlanApprovalState>;
}

/// @nodoc
class _$JoureyPlanApprovalStateCopyWithImpl<$Res,
        $Val extends JoureyPlanApprovalState>
    implements $JoureyPlanApprovalStateCopyWith<$Res> {
  _$JoureyPlanApprovalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JoureyPlanApprovalState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ApproveJourneyPlanStateImplCopyWith<$Res> {
  factory _$$ApproveJourneyPlanStateImplCopyWith(
          _$ApproveJourneyPlanStateImpl value,
          $Res Function(_$ApproveJourneyPlanStateImpl) then) =
      __$$ApproveJourneyPlanStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({JoutneyPlanApprovalOutModel? approve});
}

/// @nodoc
class __$$ApproveJourneyPlanStateImplCopyWithImpl<$Res>
    extends _$JoureyPlanApprovalStateCopyWithImpl<$Res,
        _$ApproveJourneyPlanStateImpl>
    implements _$$ApproveJourneyPlanStateImplCopyWith<$Res> {
  __$$ApproveJourneyPlanStateImplCopyWithImpl(
      _$ApproveJourneyPlanStateImpl _value,
      $Res Function(_$ApproveJourneyPlanStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of JoureyPlanApprovalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? approve = freezed,
  }) {
    return _then(_$ApproveJourneyPlanStateImpl(
      approve: freezed == approve
          ? _value.approve
          : approve // ignore: cast_nullable_to_non_nullable
              as JoutneyPlanApprovalOutModel?,
    ));
  }
}

/// @nodoc

class _$ApproveJourneyPlanStateImpl implements ApproveJourneyPlanState {
  const _$ApproveJourneyPlanStateImpl({required this.approve});

  @override
  final JoutneyPlanApprovalOutModel? approve;

  @override
  String toString() {
    return 'JoureyPlanApprovalState.approveJourneyPlanState(approve: $approve)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApproveJourneyPlanStateImpl &&
            (identical(other.approve, approve) || other.approve == approve));
  }

  @override
  int get hashCode => Object.hash(runtimeType, approve);

  /// Create a copy of JoureyPlanApprovalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApproveJourneyPlanStateImplCopyWith<_$ApproveJourneyPlanStateImpl>
      get copyWith => __$$ApproveJourneyPlanStateImplCopyWithImpl<
          _$ApproveJourneyPlanStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(JoutneyPlanApprovalOutModel? approve)
        approveJourneyPlanState,
    required TResult Function() approveJourneyPlanFailedState,
    required TResult Function() approveJourneyPlanLoadingState,
  }) {
    return approveJourneyPlanState(approve);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(JoutneyPlanApprovalOutModel? approve)?
        approveJourneyPlanState,
    TResult? Function()? approveJourneyPlanFailedState,
    TResult? Function()? approveJourneyPlanLoadingState,
  }) {
    return approveJourneyPlanState?.call(approve);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(JoutneyPlanApprovalOutModel? approve)?
        approveJourneyPlanState,
    TResult Function()? approveJourneyPlanFailedState,
    TResult Function()? approveJourneyPlanLoadingState,
    required TResult orElse(),
  }) {
    if (approveJourneyPlanState != null) {
      return approveJourneyPlanState(approve);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApproveJourneyPlanState value)
        approveJourneyPlanState,
    required TResult Function(ApproveJourneyPlanFailedState value)
        approveJourneyPlanFailedState,
    required TResult Function(ApproveJourneyPlanLoadingState value)
        approveJourneyPlanLoadingState,
  }) {
    return approveJourneyPlanState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApproveJourneyPlanState value)? approveJourneyPlanState,
    TResult? Function(ApproveJourneyPlanFailedState value)?
        approveJourneyPlanFailedState,
    TResult? Function(ApproveJourneyPlanLoadingState value)?
        approveJourneyPlanLoadingState,
  }) {
    return approveJourneyPlanState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApproveJourneyPlanState value)? approveJourneyPlanState,
    TResult Function(ApproveJourneyPlanFailedState value)?
        approveJourneyPlanFailedState,
    TResult Function(ApproveJourneyPlanLoadingState value)?
        approveJourneyPlanLoadingState,
    required TResult orElse(),
  }) {
    if (approveJourneyPlanState != null) {
      return approveJourneyPlanState(this);
    }
    return orElse();
  }
}

abstract class ApproveJourneyPlanState implements JoureyPlanApprovalState {
  const factory ApproveJourneyPlanState(
          {required final JoutneyPlanApprovalOutModel? approve}) =
      _$ApproveJourneyPlanStateImpl;

  JoutneyPlanApprovalOutModel? get approve;

  /// Create a copy of JoureyPlanApprovalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApproveJourneyPlanStateImplCopyWith<_$ApproveJourneyPlanStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApproveJourneyPlanFailedStateImplCopyWith<$Res> {
  factory _$$ApproveJourneyPlanFailedStateImplCopyWith(
          _$ApproveJourneyPlanFailedStateImpl value,
          $Res Function(_$ApproveJourneyPlanFailedStateImpl) then) =
      __$$ApproveJourneyPlanFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ApproveJourneyPlanFailedStateImplCopyWithImpl<$Res>
    extends _$JoureyPlanApprovalStateCopyWithImpl<$Res,
        _$ApproveJourneyPlanFailedStateImpl>
    implements _$$ApproveJourneyPlanFailedStateImplCopyWith<$Res> {
  __$$ApproveJourneyPlanFailedStateImplCopyWithImpl(
      _$ApproveJourneyPlanFailedStateImpl _value,
      $Res Function(_$ApproveJourneyPlanFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of JoureyPlanApprovalState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ApproveJourneyPlanFailedStateImpl
    implements ApproveJourneyPlanFailedState {
  const _$ApproveJourneyPlanFailedStateImpl();

  @override
  String toString() {
    return 'JoureyPlanApprovalState.approveJourneyPlanFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApproveJourneyPlanFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(JoutneyPlanApprovalOutModel? approve)
        approveJourneyPlanState,
    required TResult Function() approveJourneyPlanFailedState,
    required TResult Function() approveJourneyPlanLoadingState,
  }) {
    return approveJourneyPlanFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(JoutneyPlanApprovalOutModel? approve)?
        approveJourneyPlanState,
    TResult? Function()? approveJourneyPlanFailedState,
    TResult? Function()? approveJourneyPlanLoadingState,
  }) {
    return approveJourneyPlanFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(JoutneyPlanApprovalOutModel? approve)?
        approveJourneyPlanState,
    TResult Function()? approveJourneyPlanFailedState,
    TResult Function()? approveJourneyPlanLoadingState,
    required TResult orElse(),
  }) {
    if (approveJourneyPlanFailedState != null) {
      return approveJourneyPlanFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApproveJourneyPlanState value)
        approveJourneyPlanState,
    required TResult Function(ApproveJourneyPlanFailedState value)
        approveJourneyPlanFailedState,
    required TResult Function(ApproveJourneyPlanLoadingState value)
        approveJourneyPlanLoadingState,
  }) {
    return approveJourneyPlanFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApproveJourneyPlanState value)? approveJourneyPlanState,
    TResult? Function(ApproveJourneyPlanFailedState value)?
        approveJourneyPlanFailedState,
    TResult? Function(ApproveJourneyPlanLoadingState value)?
        approveJourneyPlanLoadingState,
  }) {
    return approveJourneyPlanFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApproveJourneyPlanState value)? approveJourneyPlanState,
    TResult Function(ApproveJourneyPlanFailedState value)?
        approveJourneyPlanFailedState,
    TResult Function(ApproveJourneyPlanLoadingState value)?
        approveJourneyPlanLoadingState,
    required TResult orElse(),
  }) {
    if (approveJourneyPlanFailedState != null) {
      return approveJourneyPlanFailedState(this);
    }
    return orElse();
  }
}

abstract class ApproveJourneyPlanFailedState
    implements JoureyPlanApprovalState {
  const factory ApproveJourneyPlanFailedState() =
      _$ApproveJourneyPlanFailedStateImpl;
}

/// @nodoc
abstract class _$$ApproveJourneyPlanLoadingStateImplCopyWith<$Res> {
  factory _$$ApproveJourneyPlanLoadingStateImplCopyWith(
          _$ApproveJourneyPlanLoadingStateImpl value,
          $Res Function(_$ApproveJourneyPlanLoadingStateImpl) then) =
      __$$ApproveJourneyPlanLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ApproveJourneyPlanLoadingStateImplCopyWithImpl<$Res>
    extends _$JoureyPlanApprovalStateCopyWithImpl<$Res,
        _$ApproveJourneyPlanLoadingStateImpl>
    implements _$$ApproveJourneyPlanLoadingStateImplCopyWith<$Res> {
  __$$ApproveJourneyPlanLoadingStateImplCopyWithImpl(
      _$ApproveJourneyPlanLoadingStateImpl _value,
      $Res Function(_$ApproveJourneyPlanLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of JoureyPlanApprovalState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ApproveJourneyPlanLoadingStateImpl
    implements ApproveJourneyPlanLoadingState {
  const _$ApproveJourneyPlanLoadingStateImpl();

  @override
  String toString() {
    return 'JoureyPlanApprovalState.approveJourneyPlanLoadingState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApproveJourneyPlanLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(JoutneyPlanApprovalOutModel? approve)
        approveJourneyPlanState,
    required TResult Function() approveJourneyPlanFailedState,
    required TResult Function() approveJourneyPlanLoadingState,
  }) {
    return approveJourneyPlanLoadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(JoutneyPlanApprovalOutModel? approve)?
        approveJourneyPlanState,
    TResult? Function()? approveJourneyPlanFailedState,
    TResult? Function()? approveJourneyPlanLoadingState,
  }) {
    return approveJourneyPlanLoadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(JoutneyPlanApprovalOutModel? approve)?
        approveJourneyPlanState,
    TResult Function()? approveJourneyPlanFailedState,
    TResult Function()? approveJourneyPlanLoadingState,
    required TResult orElse(),
  }) {
    if (approveJourneyPlanLoadingState != null) {
      return approveJourneyPlanLoadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApproveJourneyPlanState value)
        approveJourneyPlanState,
    required TResult Function(ApproveJourneyPlanFailedState value)
        approveJourneyPlanFailedState,
    required TResult Function(ApproveJourneyPlanLoadingState value)
        approveJourneyPlanLoadingState,
  }) {
    return approveJourneyPlanLoadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApproveJourneyPlanState value)? approveJourneyPlanState,
    TResult? Function(ApproveJourneyPlanFailedState value)?
        approveJourneyPlanFailedState,
    TResult? Function(ApproveJourneyPlanLoadingState value)?
        approveJourneyPlanLoadingState,
  }) {
    return approveJourneyPlanLoadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApproveJourneyPlanState value)? approveJourneyPlanState,
    TResult Function(ApproveJourneyPlanFailedState value)?
        approveJourneyPlanFailedState,
    TResult Function(ApproveJourneyPlanLoadingState value)?
        approveJourneyPlanLoadingState,
    required TResult orElse(),
  }) {
    if (approveJourneyPlanLoadingState != null) {
      return approveJourneyPlanLoadingState(this);
    }
    return orElse();
  }
}

abstract class ApproveJourneyPlanLoadingState
    implements JoureyPlanApprovalState {
  const factory ApproveJourneyPlanLoadingState() =
      _$ApproveJourneyPlanLoadingStateImpl;
}
