// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'un_scheduled_approval_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UnScheduledApprovalEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<UnScheduledVisitApproveInModel> approve)
        approveUnScheduledVisitEvent,
    required TResult Function(List<UnScheduledVisitApproveInModel> reject)
        rejectUnScheduledEvent,
    required TResult Function() unScheuledLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UnScheduledVisitApproveInModel> approve)?
        approveUnScheduledVisitEvent,
    TResult? Function(List<UnScheduledVisitApproveInModel> reject)?
        rejectUnScheduledEvent,
    TResult? Function()? unScheuledLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UnScheduledVisitApproveInModel> approve)?
        approveUnScheduledVisitEvent,
    TResult Function(List<UnScheduledVisitApproveInModel> reject)?
        rejectUnScheduledEvent,
    TResult Function()? unScheuledLoadingEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApproveUnScheduledVisitEvent value)
        approveUnScheduledVisitEvent,
    required TResult Function(RejectUnScheduledEvent value)
        rejectUnScheduledEvent,
    required TResult Function(UnScheuledLoadingEvent value)
        unScheuledLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApproveUnScheduledVisitEvent value)?
        approveUnScheduledVisitEvent,
    TResult? Function(RejectUnScheduledEvent value)? rejectUnScheduledEvent,
    TResult? Function(UnScheuledLoadingEvent value)? unScheuledLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApproveUnScheduledVisitEvent value)?
        approveUnScheduledVisitEvent,
    TResult Function(RejectUnScheduledEvent value)? rejectUnScheduledEvent,
    TResult Function(UnScheuledLoadingEvent value)? unScheuledLoadingEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnScheduledApprovalEventCopyWith<$Res> {
  factory $UnScheduledApprovalEventCopyWith(UnScheduledApprovalEvent value,
          $Res Function(UnScheduledApprovalEvent) then) =
      _$UnScheduledApprovalEventCopyWithImpl<$Res, UnScheduledApprovalEvent>;
}

/// @nodoc
class _$UnScheduledApprovalEventCopyWithImpl<$Res,
        $Val extends UnScheduledApprovalEvent>
    implements $UnScheduledApprovalEventCopyWith<$Res> {
  _$UnScheduledApprovalEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnScheduledApprovalEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ApproveUnScheduledVisitEventImplCopyWith<$Res> {
  factory _$$ApproveUnScheduledVisitEventImplCopyWith(
          _$ApproveUnScheduledVisitEventImpl value,
          $Res Function(_$ApproveUnScheduledVisitEventImpl) then) =
      __$$ApproveUnScheduledVisitEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UnScheduledVisitApproveInModel> approve});
}

/// @nodoc
class __$$ApproveUnScheduledVisitEventImplCopyWithImpl<$Res>
    extends _$UnScheduledApprovalEventCopyWithImpl<$Res,
        _$ApproveUnScheduledVisitEventImpl>
    implements _$$ApproveUnScheduledVisitEventImplCopyWith<$Res> {
  __$$ApproveUnScheduledVisitEventImplCopyWithImpl(
      _$ApproveUnScheduledVisitEventImpl _value,
      $Res Function(_$ApproveUnScheduledVisitEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnScheduledApprovalEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? approve = null,
  }) {
    return _then(_$ApproveUnScheduledVisitEventImpl(
      approve: null == approve
          ? _value._approve
          : approve // ignore: cast_nullable_to_non_nullable
              as List<UnScheduledVisitApproveInModel>,
    ));
  }
}

/// @nodoc

class _$ApproveUnScheduledVisitEventImpl
    implements ApproveUnScheduledVisitEvent {
  const _$ApproveUnScheduledVisitEventImpl(
      {required final List<UnScheduledVisitApproveInModel> approve})
      : _approve = approve;

  final List<UnScheduledVisitApproveInModel> _approve;
  @override
  List<UnScheduledVisitApproveInModel> get approve {
    if (_approve is EqualUnmodifiableListView) return _approve;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_approve);
  }

  @override
  String toString() {
    return 'UnScheduledApprovalEvent.approveUnScheduledVisitEvent(approve: $approve)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApproveUnScheduledVisitEventImpl &&
            const DeepCollectionEquality().equals(other._approve, _approve));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_approve));

  /// Create a copy of UnScheduledApprovalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApproveUnScheduledVisitEventImplCopyWith<
          _$ApproveUnScheduledVisitEventImpl>
      get copyWith => __$$ApproveUnScheduledVisitEventImplCopyWithImpl<
          _$ApproveUnScheduledVisitEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<UnScheduledVisitApproveInModel> approve)
        approveUnScheduledVisitEvent,
    required TResult Function(List<UnScheduledVisitApproveInModel> reject)
        rejectUnScheduledEvent,
    required TResult Function() unScheuledLoadingEvent,
  }) {
    return approveUnScheduledVisitEvent(approve);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UnScheduledVisitApproveInModel> approve)?
        approveUnScheduledVisitEvent,
    TResult? Function(List<UnScheduledVisitApproveInModel> reject)?
        rejectUnScheduledEvent,
    TResult? Function()? unScheuledLoadingEvent,
  }) {
    return approveUnScheduledVisitEvent?.call(approve);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UnScheduledVisitApproveInModel> approve)?
        approveUnScheduledVisitEvent,
    TResult Function(List<UnScheduledVisitApproveInModel> reject)?
        rejectUnScheduledEvent,
    TResult Function()? unScheuledLoadingEvent,
    required TResult orElse(),
  }) {
    if (approveUnScheduledVisitEvent != null) {
      return approveUnScheduledVisitEvent(approve);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApproveUnScheduledVisitEvent value)
        approveUnScheduledVisitEvent,
    required TResult Function(RejectUnScheduledEvent value)
        rejectUnScheduledEvent,
    required TResult Function(UnScheuledLoadingEvent value)
        unScheuledLoadingEvent,
  }) {
    return approveUnScheduledVisitEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApproveUnScheduledVisitEvent value)?
        approveUnScheduledVisitEvent,
    TResult? Function(RejectUnScheduledEvent value)? rejectUnScheduledEvent,
    TResult? Function(UnScheuledLoadingEvent value)? unScheuledLoadingEvent,
  }) {
    return approveUnScheduledVisitEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApproveUnScheduledVisitEvent value)?
        approveUnScheduledVisitEvent,
    TResult Function(RejectUnScheduledEvent value)? rejectUnScheduledEvent,
    TResult Function(UnScheuledLoadingEvent value)? unScheuledLoadingEvent,
    required TResult orElse(),
  }) {
    if (approveUnScheduledVisitEvent != null) {
      return approveUnScheduledVisitEvent(this);
    }
    return orElse();
  }
}

abstract class ApproveUnScheduledVisitEvent
    implements UnScheduledApprovalEvent {
  const factory ApproveUnScheduledVisitEvent(
          {required final List<UnScheduledVisitApproveInModel> approve}) =
      _$ApproveUnScheduledVisitEventImpl;

  List<UnScheduledVisitApproveInModel> get approve;

  /// Create a copy of UnScheduledApprovalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApproveUnScheduledVisitEventImplCopyWith<
          _$ApproveUnScheduledVisitEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RejectUnScheduledEventImplCopyWith<$Res> {
  factory _$$RejectUnScheduledEventImplCopyWith(
          _$RejectUnScheduledEventImpl value,
          $Res Function(_$RejectUnScheduledEventImpl) then) =
      __$$RejectUnScheduledEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<UnScheduledVisitApproveInModel> reject});
}

/// @nodoc
class __$$RejectUnScheduledEventImplCopyWithImpl<$Res>
    extends _$UnScheduledApprovalEventCopyWithImpl<$Res,
        _$RejectUnScheduledEventImpl>
    implements _$$RejectUnScheduledEventImplCopyWith<$Res> {
  __$$RejectUnScheduledEventImplCopyWithImpl(
      _$RejectUnScheduledEventImpl _value,
      $Res Function(_$RejectUnScheduledEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnScheduledApprovalEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reject = null,
  }) {
    return _then(_$RejectUnScheduledEventImpl(
      reject: null == reject
          ? _value._reject
          : reject // ignore: cast_nullable_to_non_nullable
              as List<UnScheduledVisitApproveInModel>,
    ));
  }
}

/// @nodoc

class _$RejectUnScheduledEventImpl implements RejectUnScheduledEvent {
  const _$RejectUnScheduledEventImpl(
      {required final List<UnScheduledVisitApproveInModel> reject})
      : _reject = reject;

  final List<UnScheduledVisitApproveInModel> _reject;
  @override
  List<UnScheduledVisitApproveInModel> get reject {
    if (_reject is EqualUnmodifiableListView) return _reject;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reject);
  }

  @override
  String toString() {
    return 'UnScheduledApprovalEvent.rejectUnScheduledEvent(reject: $reject)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RejectUnScheduledEventImpl &&
            const DeepCollectionEquality().equals(other._reject, _reject));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_reject));

  /// Create a copy of UnScheduledApprovalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RejectUnScheduledEventImplCopyWith<_$RejectUnScheduledEventImpl>
      get copyWith => __$$RejectUnScheduledEventImplCopyWithImpl<
          _$RejectUnScheduledEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<UnScheduledVisitApproveInModel> approve)
        approveUnScheduledVisitEvent,
    required TResult Function(List<UnScheduledVisitApproveInModel> reject)
        rejectUnScheduledEvent,
    required TResult Function() unScheuledLoadingEvent,
  }) {
    return rejectUnScheduledEvent(reject);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UnScheduledVisitApproveInModel> approve)?
        approveUnScheduledVisitEvent,
    TResult? Function(List<UnScheduledVisitApproveInModel> reject)?
        rejectUnScheduledEvent,
    TResult? Function()? unScheuledLoadingEvent,
  }) {
    return rejectUnScheduledEvent?.call(reject);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UnScheduledVisitApproveInModel> approve)?
        approveUnScheduledVisitEvent,
    TResult Function(List<UnScheduledVisitApproveInModel> reject)?
        rejectUnScheduledEvent,
    TResult Function()? unScheuledLoadingEvent,
    required TResult orElse(),
  }) {
    if (rejectUnScheduledEvent != null) {
      return rejectUnScheduledEvent(reject);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApproveUnScheduledVisitEvent value)
        approveUnScheduledVisitEvent,
    required TResult Function(RejectUnScheduledEvent value)
        rejectUnScheduledEvent,
    required TResult Function(UnScheuledLoadingEvent value)
        unScheuledLoadingEvent,
  }) {
    return rejectUnScheduledEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApproveUnScheduledVisitEvent value)?
        approveUnScheduledVisitEvent,
    TResult? Function(RejectUnScheduledEvent value)? rejectUnScheduledEvent,
    TResult? Function(UnScheuledLoadingEvent value)? unScheuledLoadingEvent,
  }) {
    return rejectUnScheduledEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApproveUnScheduledVisitEvent value)?
        approveUnScheduledVisitEvent,
    TResult Function(RejectUnScheduledEvent value)? rejectUnScheduledEvent,
    TResult Function(UnScheuledLoadingEvent value)? unScheuledLoadingEvent,
    required TResult orElse(),
  }) {
    if (rejectUnScheduledEvent != null) {
      return rejectUnScheduledEvent(this);
    }
    return orElse();
  }
}

abstract class RejectUnScheduledEvent implements UnScheduledApprovalEvent {
  const factory RejectUnScheduledEvent(
          {required final List<UnScheduledVisitApproveInModel> reject}) =
      _$RejectUnScheduledEventImpl;

  List<UnScheduledVisitApproveInModel> get reject;

  /// Create a copy of UnScheduledApprovalEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RejectUnScheduledEventImplCopyWith<_$RejectUnScheduledEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnScheuledLoadingEventImplCopyWith<$Res> {
  factory _$$UnScheuledLoadingEventImplCopyWith(
          _$UnScheuledLoadingEventImpl value,
          $Res Function(_$UnScheuledLoadingEventImpl) then) =
      __$$UnScheuledLoadingEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnScheuledLoadingEventImplCopyWithImpl<$Res>
    extends _$UnScheduledApprovalEventCopyWithImpl<$Res,
        _$UnScheuledLoadingEventImpl>
    implements _$$UnScheuledLoadingEventImplCopyWith<$Res> {
  __$$UnScheuledLoadingEventImplCopyWithImpl(
      _$UnScheuledLoadingEventImpl _value,
      $Res Function(_$UnScheuledLoadingEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnScheduledApprovalEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnScheuledLoadingEventImpl implements UnScheuledLoadingEvent {
  const _$UnScheuledLoadingEventImpl();

  @override
  String toString() {
    return 'UnScheduledApprovalEvent.unScheuledLoadingEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnScheuledLoadingEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<UnScheduledVisitApproveInModel> approve)
        approveUnScheduledVisitEvent,
    required TResult Function(List<UnScheduledVisitApproveInModel> reject)
        rejectUnScheduledEvent,
    required TResult Function() unScheuledLoadingEvent,
  }) {
    return unScheuledLoadingEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UnScheduledVisitApproveInModel> approve)?
        approveUnScheduledVisitEvent,
    TResult? Function(List<UnScheduledVisitApproveInModel> reject)?
        rejectUnScheduledEvent,
    TResult? Function()? unScheuledLoadingEvent,
  }) {
    return unScheuledLoadingEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UnScheduledVisitApproveInModel> approve)?
        approveUnScheduledVisitEvent,
    TResult Function(List<UnScheduledVisitApproveInModel> reject)?
        rejectUnScheduledEvent,
    TResult Function()? unScheuledLoadingEvent,
    required TResult orElse(),
  }) {
    if (unScheuledLoadingEvent != null) {
      return unScheuledLoadingEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApproveUnScheduledVisitEvent value)
        approveUnScheduledVisitEvent,
    required TResult Function(RejectUnScheduledEvent value)
        rejectUnScheduledEvent,
    required TResult Function(UnScheuledLoadingEvent value)
        unScheuledLoadingEvent,
  }) {
    return unScheuledLoadingEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApproveUnScheduledVisitEvent value)?
        approveUnScheduledVisitEvent,
    TResult? Function(RejectUnScheduledEvent value)? rejectUnScheduledEvent,
    TResult? Function(UnScheuledLoadingEvent value)? unScheuledLoadingEvent,
  }) {
    return unScheuledLoadingEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApproveUnScheduledVisitEvent value)?
        approveUnScheduledVisitEvent,
    TResult Function(RejectUnScheduledEvent value)? rejectUnScheduledEvent,
    TResult Function(UnScheuledLoadingEvent value)? unScheuledLoadingEvent,
    required TResult orElse(),
  }) {
    if (unScheuledLoadingEvent != null) {
      return unScheuledLoadingEvent(this);
    }
    return orElse();
  }
}

abstract class UnScheuledLoadingEvent implements UnScheduledApprovalEvent {
  const factory UnScheuledLoadingEvent() = _$UnScheuledLoadingEventImpl;
}

/// @nodoc
mixin _$UnScheduledApprovalState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UnScheduledApprovalRespModel? resp)
        approveUnScheduledVisitState,
    required TResult Function(UnScheduledApprovalRespModel? resp)
        rejectUnScheduledVisitState,
    required TResult Function() unScheduledApprovalLoadingEvent,
    required TResult Function() unScheduledVisitApprovalFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UnScheduledApprovalRespModel? resp)?
        approveUnScheduledVisitState,
    TResult? Function(UnScheduledApprovalRespModel? resp)?
        rejectUnScheduledVisitState,
    TResult? Function()? unScheduledApprovalLoadingEvent,
    TResult? Function()? unScheduledVisitApprovalFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UnScheduledApprovalRespModel? resp)?
        approveUnScheduledVisitState,
    TResult Function(UnScheduledApprovalRespModel? resp)?
        rejectUnScheduledVisitState,
    TResult Function()? unScheduledApprovalLoadingEvent,
    TResult Function()? unScheduledVisitApprovalFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApproveUnScheduledVisitState value)
        approveUnScheduledVisitState,
    required TResult Function(RejectUnScheduledVisitState value)
        rejectUnScheduledVisitState,
    required TResult Function(UnScheduledApprovalLoadingEvent value)
        unScheduledApprovalLoadingEvent,
    required TResult Function(UnScheduledVisitApprovalFailedState value)
        unScheduledVisitApprovalFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApproveUnScheduledVisitState value)?
        approveUnScheduledVisitState,
    TResult? Function(RejectUnScheduledVisitState value)?
        rejectUnScheduledVisitState,
    TResult? Function(UnScheduledApprovalLoadingEvent value)?
        unScheduledApprovalLoadingEvent,
    TResult? Function(UnScheduledVisitApprovalFailedState value)?
        unScheduledVisitApprovalFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApproveUnScheduledVisitState value)?
        approveUnScheduledVisitState,
    TResult Function(RejectUnScheduledVisitState value)?
        rejectUnScheduledVisitState,
    TResult Function(UnScheduledApprovalLoadingEvent value)?
        unScheduledApprovalLoadingEvent,
    TResult Function(UnScheduledVisitApprovalFailedState value)?
        unScheduledVisitApprovalFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnScheduledApprovalStateCopyWith<$Res> {
  factory $UnScheduledApprovalStateCopyWith(UnScheduledApprovalState value,
          $Res Function(UnScheduledApprovalState) then) =
      _$UnScheduledApprovalStateCopyWithImpl<$Res, UnScheduledApprovalState>;
}

/// @nodoc
class _$UnScheduledApprovalStateCopyWithImpl<$Res,
        $Val extends UnScheduledApprovalState>
    implements $UnScheduledApprovalStateCopyWith<$Res> {
  _$UnScheduledApprovalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnScheduledApprovalState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ApproveUnScheduledVisitStateImplCopyWith<$Res> {
  factory _$$ApproveUnScheduledVisitStateImplCopyWith(
          _$ApproveUnScheduledVisitStateImpl value,
          $Res Function(_$ApproveUnScheduledVisitStateImpl) then) =
      __$$ApproveUnScheduledVisitStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UnScheduledApprovalRespModel? resp});
}

/// @nodoc
class __$$ApproveUnScheduledVisitStateImplCopyWithImpl<$Res>
    extends _$UnScheduledApprovalStateCopyWithImpl<$Res,
        _$ApproveUnScheduledVisitStateImpl>
    implements _$$ApproveUnScheduledVisitStateImplCopyWith<$Res> {
  __$$ApproveUnScheduledVisitStateImplCopyWithImpl(
      _$ApproveUnScheduledVisitStateImpl _value,
      $Res Function(_$ApproveUnScheduledVisitStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnScheduledApprovalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resp = freezed,
  }) {
    return _then(_$ApproveUnScheduledVisitStateImpl(
      resp: freezed == resp
          ? _value.resp
          : resp // ignore: cast_nullable_to_non_nullable
              as UnScheduledApprovalRespModel?,
    ));
  }
}

/// @nodoc

class _$ApproveUnScheduledVisitStateImpl
    implements ApproveUnScheduledVisitState {
  const _$ApproveUnScheduledVisitStateImpl({required this.resp});

  @override
  final UnScheduledApprovalRespModel? resp;

  @override
  String toString() {
    return 'UnScheduledApprovalState.approveUnScheduledVisitState(resp: $resp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApproveUnScheduledVisitStateImpl &&
            (identical(other.resp, resp) || other.resp == resp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, resp);

  /// Create a copy of UnScheduledApprovalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApproveUnScheduledVisitStateImplCopyWith<
          _$ApproveUnScheduledVisitStateImpl>
      get copyWith => __$$ApproveUnScheduledVisitStateImplCopyWithImpl<
          _$ApproveUnScheduledVisitStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UnScheduledApprovalRespModel? resp)
        approveUnScheduledVisitState,
    required TResult Function(UnScheduledApprovalRespModel? resp)
        rejectUnScheduledVisitState,
    required TResult Function() unScheduledApprovalLoadingEvent,
    required TResult Function() unScheduledVisitApprovalFailedState,
  }) {
    return approveUnScheduledVisitState(resp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UnScheduledApprovalRespModel? resp)?
        approveUnScheduledVisitState,
    TResult? Function(UnScheduledApprovalRespModel? resp)?
        rejectUnScheduledVisitState,
    TResult? Function()? unScheduledApprovalLoadingEvent,
    TResult? Function()? unScheduledVisitApprovalFailedState,
  }) {
    return approveUnScheduledVisitState?.call(resp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UnScheduledApprovalRespModel? resp)?
        approveUnScheduledVisitState,
    TResult Function(UnScheduledApprovalRespModel? resp)?
        rejectUnScheduledVisitState,
    TResult Function()? unScheduledApprovalLoadingEvent,
    TResult Function()? unScheduledVisitApprovalFailedState,
    required TResult orElse(),
  }) {
    if (approveUnScheduledVisitState != null) {
      return approveUnScheduledVisitState(resp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApproveUnScheduledVisitState value)
        approveUnScheduledVisitState,
    required TResult Function(RejectUnScheduledVisitState value)
        rejectUnScheduledVisitState,
    required TResult Function(UnScheduledApprovalLoadingEvent value)
        unScheduledApprovalLoadingEvent,
    required TResult Function(UnScheduledVisitApprovalFailedState value)
        unScheduledVisitApprovalFailedState,
  }) {
    return approveUnScheduledVisitState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApproveUnScheduledVisitState value)?
        approveUnScheduledVisitState,
    TResult? Function(RejectUnScheduledVisitState value)?
        rejectUnScheduledVisitState,
    TResult? Function(UnScheduledApprovalLoadingEvent value)?
        unScheduledApprovalLoadingEvent,
    TResult? Function(UnScheduledVisitApprovalFailedState value)?
        unScheduledVisitApprovalFailedState,
  }) {
    return approveUnScheduledVisitState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApproveUnScheduledVisitState value)?
        approveUnScheduledVisitState,
    TResult Function(RejectUnScheduledVisitState value)?
        rejectUnScheduledVisitState,
    TResult Function(UnScheduledApprovalLoadingEvent value)?
        unScheduledApprovalLoadingEvent,
    TResult Function(UnScheduledVisitApprovalFailedState value)?
        unScheduledVisitApprovalFailedState,
    required TResult orElse(),
  }) {
    if (approveUnScheduledVisitState != null) {
      return approveUnScheduledVisitState(this);
    }
    return orElse();
  }
}

abstract class ApproveUnScheduledVisitState
    implements UnScheduledApprovalState {
  const factory ApproveUnScheduledVisitState(
          {required final UnScheduledApprovalRespModel? resp}) =
      _$ApproveUnScheduledVisitStateImpl;

  UnScheduledApprovalRespModel? get resp;

  /// Create a copy of UnScheduledApprovalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApproveUnScheduledVisitStateImplCopyWith<
          _$ApproveUnScheduledVisitStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RejectUnScheduledVisitStateImplCopyWith<$Res> {
  factory _$$RejectUnScheduledVisitStateImplCopyWith(
          _$RejectUnScheduledVisitStateImpl value,
          $Res Function(_$RejectUnScheduledVisitStateImpl) then) =
      __$$RejectUnScheduledVisitStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UnScheduledApprovalRespModel? resp});
}

/// @nodoc
class __$$RejectUnScheduledVisitStateImplCopyWithImpl<$Res>
    extends _$UnScheduledApprovalStateCopyWithImpl<$Res,
        _$RejectUnScheduledVisitStateImpl>
    implements _$$RejectUnScheduledVisitStateImplCopyWith<$Res> {
  __$$RejectUnScheduledVisitStateImplCopyWithImpl(
      _$RejectUnScheduledVisitStateImpl _value,
      $Res Function(_$RejectUnScheduledVisitStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnScheduledApprovalState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resp = freezed,
  }) {
    return _then(_$RejectUnScheduledVisitStateImpl(
      resp: freezed == resp
          ? _value.resp
          : resp // ignore: cast_nullable_to_non_nullable
              as UnScheduledApprovalRespModel?,
    ));
  }
}

/// @nodoc

class _$RejectUnScheduledVisitStateImpl implements RejectUnScheduledVisitState {
  const _$RejectUnScheduledVisitStateImpl({required this.resp});

  @override
  final UnScheduledApprovalRespModel? resp;

  @override
  String toString() {
    return 'UnScheduledApprovalState.rejectUnScheduledVisitState(resp: $resp)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RejectUnScheduledVisitStateImpl &&
            (identical(other.resp, resp) || other.resp == resp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, resp);

  /// Create a copy of UnScheduledApprovalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RejectUnScheduledVisitStateImplCopyWith<_$RejectUnScheduledVisitStateImpl>
      get copyWith => __$$RejectUnScheduledVisitStateImplCopyWithImpl<
          _$RejectUnScheduledVisitStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UnScheduledApprovalRespModel? resp)
        approveUnScheduledVisitState,
    required TResult Function(UnScheduledApprovalRespModel? resp)
        rejectUnScheduledVisitState,
    required TResult Function() unScheduledApprovalLoadingEvent,
    required TResult Function() unScheduledVisitApprovalFailedState,
  }) {
    return rejectUnScheduledVisitState(resp);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UnScheduledApprovalRespModel? resp)?
        approveUnScheduledVisitState,
    TResult? Function(UnScheduledApprovalRespModel? resp)?
        rejectUnScheduledVisitState,
    TResult? Function()? unScheduledApprovalLoadingEvent,
    TResult? Function()? unScheduledVisitApprovalFailedState,
  }) {
    return rejectUnScheduledVisitState?.call(resp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UnScheduledApprovalRespModel? resp)?
        approveUnScheduledVisitState,
    TResult Function(UnScheduledApprovalRespModel? resp)?
        rejectUnScheduledVisitState,
    TResult Function()? unScheduledApprovalLoadingEvent,
    TResult Function()? unScheduledVisitApprovalFailedState,
    required TResult orElse(),
  }) {
    if (rejectUnScheduledVisitState != null) {
      return rejectUnScheduledVisitState(resp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApproveUnScheduledVisitState value)
        approveUnScheduledVisitState,
    required TResult Function(RejectUnScheduledVisitState value)
        rejectUnScheduledVisitState,
    required TResult Function(UnScheduledApprovalLoadingEvent value)
        unScheduledApprovalLoadingEvent,
    required TResult Function(UnScheduledVisitApprovalFailedState value)
        unScheduledVisitApprovalFailedState,
  }) {
    return rejectUnScheduledVisitState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApproveUnScheduledVisitState value)?
        approveUnScheduledVisitState,
    TResult? Function(RejectUnScheduledVisitState value)?
        rejectUnScheduledVisitState,
    TResult? Function(UnScheduledApprovalLoadingEvent value)?
        unScheduledApprovalLoadingEvent,
    TResult? Function(UnScheduledVisitApprovalFailedState value)?
        unScheduledVisitApprovalFailedState,
  }) {
    return rejectUnScheduledVisitState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApproveUnScheduledVisitState value)?
        approveUnScheduledVisitState,
    TResult Function(RejectUnScheduledVisitState value)?
        rejectUnScheduledVisitState,
    TResult Function(UnScheduledApprovalLoadingEvent value)?
        unScheduledApprovalLoadingEvent,
    TResult Function(UnScheduledVisitApprovalFailedState value)?
        unScheduledVisitApprovalFailedState,
    required TResult orElse(),
  }) {
    if (rejectUnScheduledVisitState != null) {
      return rejectUnScheduledVisitState(this);
    }
    return orElse();
  }
}

abstract class RejectUnScheduledVisitState implements UnScheduledApprovalState {
  const factory RejectUnScheduledVisitState(
          {required final UnScheduledApprovalRespModel? resp}) =
      _$RejectUnScheduledVisitStateImpl;

  UnScheduledApprovalRespModel? get resp;

  /// Create a copy of UnScheduledApprovalState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RejectUnScheduledVisitStateImplCopyWith<_$RejectUnScheduledVisitStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnScheduledApprovalLoadingEventImplCopyWith<$Res> {
  factory _$$UnScheduledApprovalLoadingEventImplCopyWith(
          _$UnScheduledApprovalLoadingEventImpl value,
          $Res Function(_$UnScheduledApprovalLoadingEventImpl) then) =
      __$$UnScheduledApprovalLoadingEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnScheduledApprovalLoadingEventImplCopyWithImpl<$Res>
    extends _$UnScheduledApprovalStateCopyWithImpl<$Res,
        _$UnScheduledApprovalLoadingEventImpl>
    implements _$$UnScheduledApprovalLoadingEventImplCopyWith<$Res> {
  __$$UnScheduledApprovalLoadingEventImplCopyWithImpl(
      _$UnScheduledApprovalLoadingEventImpl _value,
      $Res Function(_$UnScheduledApprovalLoadingEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnScheduledApprovalState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnScheduledApprovalLoadingEventImpl
    implements UnScheduledApprovalLoadingEvent {
  const _$UnScheduledApprovalLoadingEventImpl();

  @override
  String toString() {
    return 'UnScheduledApprovalState.unScheduledApprovalLoadingEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnScheduledApprovalLoadingEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UnScheduledApprovalRespModel? resp)
        approveUnScheduledVisitState,
    required TResult Function(UnScheduledApprovalRespModel? resp)
        rejectUnScheduledVisitState,
    required TResult Function() unScheduledApprovalLoadingEvent,
    required TResult Function() unScheduledVisitApprovalFailedState,
  }) {
    return unScheduledApprovalLoadingEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UnScheduledApprovalRespModel? resp)?
        approveUnScheduledVisitState,
    TResult? Function(UnScheduledApprovalRespModel? resp)?
        rejectUnScheduledVisitState,
    TResult? Function()? unScheduledApprovalLoadingEvent,
    TResult? Function()? unScheduledVisitApprovalFailedState,
  }) {
    return unScheduledApprovalLoadingEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UnScheduledApprovalRespModel? resp)?
        approveUnScheduledVisitState,
    TResult Function(UnScheduledApprovalRespModel? resp)?
        rejectUnScheduledVisitState,
    TResult Function()? unScheduledApprovalLoadingEvent,
    TResult Function()? unScheduledVisitApprovalFailedState,
    required TResult orElse(),
  }) {
    if (unScheduledApprovalLoadingEvent != null) {
      return unScheduledApprovalLoadingEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApproveUnScheduledVisitState value)
        approveUnScheduledVisitState,
    required TResult Function(RejectUnScheduledVisitState value)
        rejectUnScheduledVisitState,
    required TResult Function(UnScheduledApprovalLoadingEvent value)
        unScheduledApprovalLoadingEvent,
    required TResult Function(UnScheduledVisitApprovalFailedState value)
        unScheduledVisitApprovalFailedState,
  }) {
    return unScheduledApprovalLoadingEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApproveUnScheduledVisitState value)?
        approveUnScheduledVisitState,
    TResult? Function(RejectUnScheduledVisitState value)?
        rejectUnScheduledVisitState,
    TResult? Function(UnScheduledApprovalLoadingEvent value)?
        unScheduledApprovalLoadingEvent,
    TResult? Function(UnScheduledVisitApprovalFailedState value)?
        unScheduledVisitApprovalFailedState,
  }) {
    return unScheduledApprovalLoadingEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApproveUnScheduledVisitState value)?
        approveUnScheduledVisitState,
    TResult Function(RejectUnScheduledVisitState value)?
        rejectUnScheduledVisitState,
    TResult Function(UnScheduledApprovalLoadingEvent value)?
        unScheduledApprovalLoadingEvent,
    TResult Function(UnScheduledVisitApprovalFailedState value)?
        unScheduledVisitApprovalFailedState,
    required TResult orElse(),
  }) {
    if (unScheduledApprovalLoadingEvent != null) {
      return unScheduledApprovalLoadingEvent(this);
    }
    return orElse();
  }
}

abstract class UnScheduledApprovalLoadingEvent
    implements UnScheduledApprovalState {
  const factory UnScheduledApprovalLoadingEvent() =
      _$UnScheduledApprovalLoadingEventImpl;
}

/// @nodoc
abstract class _$$UnScheduledVisitApprovalFailedStateImplCopyWith<$Res> {
  factory _$$UnScheduledVisitApprovalFailedStateImplCopyWith(
          _$UnScheduledVisitApprovalFailedStateImpl value,
          $Res Function(_$UnScheduledVisitApprovalFailedStateImpl) then) =
      __$$UnScheduledVisitApprovalFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnScheduledVisitApprovalFailedStateImplCopyWithImpl<$Res>
    extends _$UnScheduledApprovalStateCopyWithImpl<$Res,
        _$UnScheduledVisitApprovalFailedStateImpl>
    implements _$$UnScheduledVisitApprovalFailedStateImplCopyWith<$Res> {
  __$$UnScheduledVisitApprovalFailedStateImplCopyWithImpl(
      _$UnScheduledVisitApprovalFailedStateImpl _value,
      $Res Function(_$UnScheduledVisitApprovalFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnScheduledApprovalState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnScheduledVisitApprovalFailedStateImpl
    implements UnScheduledVisitApprovalFailedState {
  const _$UnScheduledVisitApprovalFailedStateImpl();

  @override
  String toString() {
    return 'UnScheduledApprovalState.unScheduledVisitApprovalFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnScheduledVisitApprovalFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UnScheduledApprovalRespModel? resp)
        approveUnScheduledVisitState,
    required TResult Function(UnScheduledApprovalRespModel? resp)
        rejectUnScheduledVisitState,
    required TResult Function() unScheduledApprovalLoadingEvent,
    required TResult Function() unScheduledVisitApprovalFailedState,
  }) {
    return unScheduledVisitApprovalFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UnScheduledApprovalRespModel? resp)?
        approveUnScheduledVisitState,
    TResult? Function(UnScheduledApprovalRespModel? resp)?
        rejectUnScheduledVisitState,
    TResult? Function()? unScheduledApprovalLoadingEvent,
    TResult? Function()? unScheduledVisitApprovalFailedState,
  }) {
    return unScheduledVisitApprovalFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UnScheduledApprovalRespModel? resp)?
        approveUnScheduledVisitState,
    TResult Function(UnScheduledApprovalRespModel? resp)?
        rejectUnScheduledVisitState,
    TResult Function()? unScheduledApprovalLoadingEvent,
    TResult Function()? unScheduledVisitApprovalFailedState,
    required TResult orElse(),
  }) {
    if (unScheduledVisitApprovalFailedState != null) {
      return unScheduledVisitApprovalFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ApproveUnScheduledVisitState value)
        approveUnScheduledVisitState,
    required TResult Function(RejectUnScheduledVisitState value)
        rejectUnScheduledVisitState,
    required TResult Function(UnScheduledApprovalLoadingEvent value)
        unScheduledApprovalLoadingEvent,
    required TResult Function(UnScheduledVisitApprovalFailedState value)
        unScheduledVisitApprovalFailedState,
  }) {
    return unScheduledVisitApprovalFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ApproveUnScheduledVisitState value)?
        approveUnScheduledVisitState,
    TResult? Function(RejectUnScheduledVisitState value)?
        rejectUnScheduledVisitState,
    TResult? Function(UnScheduledApprovalLoadingEvent value)?
        unScheduledApprovalLoadingEvent,
    TResult? Function(UnScheduledVisitApprovalFailedState value)?
        unScheduledVisitApprovalFailedState,
  }) {
    return unScheduledVisitApprovalFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ApproveUnScheduledVisitState value)?
        approveUnScheduledVisitState,
    TResult Function(RejectUnScheduledVisitState value)?
        rejectUnScheduledVisitState,
    TResult Function(UnScheduledApprovalLoadingEvent value)?
        unScheduledApprovalLoadingEvent,
    TResult Function(UnScheduledVisitApprovalFailedState value)?
        unScheduledVisitApprovalFailedState,
    required TResult orElse(),
  }) {
    if (unScheduledVisitApprovalFailedState != null) {
      return unScheduledVisitApprovalFailedState(this);
    }
    return orElse();
  }
}

abstract class UnScheduledVisitApprovalFailedState
    implements UnScheduledApprovalState {
  const factory UnScheduledVisitApprovalFailedState() =
      _$UnScheduledVisitApprovalFailedStateImpl;
}
