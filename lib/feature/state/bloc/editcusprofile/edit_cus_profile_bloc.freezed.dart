// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_cus_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EditCusProfileEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EditProfileInModel profile) editProfileEvent,
    required TResult Function() clearEditStateEvent,
    required TResult Function() editLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EditProfileInModel profile)? editProfileEvent,
    TResult? Function()? clearEditStateEvent,
    TResult? Function()? editLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EditProfileInModel profile)? editProfileEvent,
    TResult Function()? clearEditStateEvent,
    TResult Function()? editLoadingEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditProfileEvent value) editProfileEvent,
    required TResult Function(ClearEditStateEvent value) clearEditStateEvent,
    required TResult Function(EditLoadingEvent value) editLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditProfileEvent value)? editProfileEvent,
    TResult? Function(ClearEditStateEvent value)? clearEditStateEvent,
    TResult? Function(EditLoadingEvent value)? editLoadingEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditProfileEvent value)? editProfileEvent,
    TResult Function(ClearEditStateEvent value)? clearEditStateEvent,
    TResult Function(EditLoadingEvent value)? editLoadingEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditCusProfileEventCopyWith<$Res> {
  factory $EditCusProfileEventCopyWith(
          EditCusProfileEvent value, $Res Function(EditCusProfileEvent) then) =
      _$EditCusProfileEventCopyWithImpl<$Res, EditCusProfileEvent>;
}

/// @nodoc
class _$EditCusProfileEventCopyWithImpl<$Res, $Val extends EditCusProfileEvent>
    implements $EditCusProfileEventCopyWith<$Res> {
  _$EditCusProfileEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EditProfileEventImplCopyWith<$Res> {
  factory _$$EditProfileEventImplCopyWith(_$EditProfileEventImpl value,
          $Res Function(_$EditProfileEventImpl) then) =
      __$$EditProfileEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EditProfileInModel profile});
}

/// @nodoc
class __$$EditProfileEventImplCopyWithImpl<$Res>
    extends _$EditCusProfileEventCopyWithImpl<$Res, _$EditProfileEventImpl>
    implements _$$EditProfileEventImplCopyWith<$Res> {
  __$$EditProfileEventImplCopyWithImpl(_$EditProfileEventImpl _value,
      $Res Function(_$EditProfileEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profile = null,
  }) {
    return _then(_$EditProfileEventImpl(
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as EditProfileInModel,
    ));
  }
}

/// @nodoc

class _$EditProfileEventImpl implements EditProfileEvent {
  const _$EditProfileEventImpl({required this.profile});

  @override
  final EditProfileInModel profile;

  @override
  String toString() {
    return 'EditCusProfileEvent.editProfileEvent(profile: $profile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfileEventImpl &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, profile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditProfileEventImplCopyWith<_$EditProfileEventImpl> get copyWith =>
      __$$EditProfileEventImplCopyWithImpl<_$EditProfileEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EditProfileInModel profile) editProfileEvent,
    required TResult Function() clearEditStateEvent,
    required TResult Function() editLoadingEvent,
  }) {
    return editProfileEvent(profile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EditProfileInModel profile)? editProfileEvent,
    TResult? Function()? clearEditStateEvent,
    TResult? Function()? editLoadingEvent,
  }) {
    return editProfileEvent?.call(profile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EditProfileInModel profile)? editProfileEvent,
    TResult Function()? clearEditStateEvent,
    TResult Function()? editLoadingEvent,
    required TResult orElse(),
  }) {
    if (editProfileEvent != null) {
      return editProfileEvent(profile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditProfileEvent value) editProfileEvent,
    required TResult Function(ClearEditStateEvent value) clearEditStateEvent,
    required TResult Function(EditLoadingEvent value) editLoadingEvent,
  }) {
    return editProfileEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditProfileEvent value)? editProfileEvent,
    TResult? Function(ClearEditStateEvent value)? clearEditStateEvent,
    TResult? Function(EditLoadingEvent value)? editLoadingEvent,
  }) {
    return editProfileEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditProfileEvent value)? editProfileEvent,
    TResult Function(ClearEditStateEvent value)? clearEditStateEvent,
    TResult Function(EditLoadingEvent value)? editLoadingEvent,
    required TResult orElse(),
  }) {
    if (editProfileEvent != null) {
      return editProfileEvent(this);
    }
    return orElse();
  }
}

abstract class EditProfileEvent implements EditCusProfileEvent {
  const factory EditProfileEvent({required final EditProfileInModel profile}) =
      _$EditProfileEventImpl;

  EditProfileInModel get profile;
  @JsonKey(ignore: true)
  _$$EditProfileEventImplCopyWith<_$EditProfileEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearEditStateEventImplCopyWith<$Res> {
  factory _$$ClearEditStateEventImplCopyWith(_$ClearEditStateEventImpl value,
          $Res Function(_$ClearEditStateEventImpl) then) =
      __$$ClearEditStateEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearEditStateEventImplCopyWithImpl<$Res>
    extends _$EditCusProfileEventCopyWithImpl<$Res, _$ClearEditStateEventImpl>
    implements _$$ClearEditStateEventImplCopyWith<$Res> {
  __$$ClearEditStateEventImplCopyWithImpl(_$ClearEditStateEventImpl _value,
      $Res Function(_$ClearEditStateEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearEditStateEventImpl implements ClearEditStateEvent {
  const _$ClearEditStateEventImpl();

  @override
  String toString() {
    return 'EditCusProfileEvent.clearEditStateEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearEditStateEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EditProfileInModel profile) editProfileEvent,
    required TResult Function() clearEditStateEvent,
    required TResult Function() editLoadingEvent,
  }) {
    return clearEditStateEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EditProfileInModel profile)? editProfileEvent,
    TResult? Function()? clearEditStateEvent,
    TResult? Function()? editLoadingEvent,
  }) {
    return clearEditStateEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EditProfileInModel profile)? editProfileEvent,
    TResult Function()? clearEditStateEvent,
    TResult Function()? editLoadingEvent,
    required TResult orElse(),
  }) {
    if (clearEditStateEvent != null) {
      return clearEditStateEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditProfileEvent value) editProfileEvent,
    required TResult Function(ClearEditStateEvent value) clearEditStateEvent,
    required TResult Function(EditLoadingEvent value) editLoadingEvent,
  }) {
    return clearEditStateEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditProfileEvent value)? editProfileEvent,
    TResult? Function(ClearEditStateEvent value)? clearEditStateEvent,
    TResult? Function(EditLoadingEvent value)? editLoadingEvent,
  }) {
    return clearEditStateEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditProfileEvent value)? editProfileEvent,
    TResult Function(ClearEditStateEvent value)? clearEditStateEvent,
    TResult Function(EditLoadingEvent value)? editLoadingEvent,
    required TResult orElse(),
  }) {
    if (clearEditStateEvent != null) {
      return clearEditStateEvent(this);
    }
    return orElse();
  }
}

abstract class ClearEditStateEvent implements EditCusProfileEvent {
  const factory ClearEditStateEvent() = _$ClearEditStateEventImpl;
}

/// @nodoc
abstract class _$$EditLoadingEventImplCopyWith<$Res> {
  factory _$$EditLoadingEventImplCopyWith(_$EditLoadingEventImpl value,
          $Res Function(_$EditLoadingEventImpl) then) =
      __$$EditLoadingEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditLoadingEventImplCopyWithImpl<$Res>
    extends _$EditCusProfileEventCopyWithImpl<$Res, _$EditLoadingEventImpl>
    implements _$$EditLoadingEventImplCopyWith<$Res> {
  __$$EditLoadingEventImplCopyWithImpl(_$EditLoadingEventImpl _value,
      $Res Function(_$EditLoadingEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EditLoadingEventImpl implements EditLoadingEvent {
  const _$EditLoadingEventImpl();

  @override
  String toString() {
    return 'EditCusProfileEvent.editLoadingEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EditLoadingEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EditProfileInModel profile) editProfileEvent,
    required TResult Function() clearEditStateEvent,
    required TResult Function() editLoadingEvent,
  }) {
    return editLoadingEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EditProfileInModel profile)? editProfileEvent,
    TResult? Function()? clearEditStateEvent,
    TResult? Function()? editLoadingEvent,
  }) {
    return editLoadingEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EditProfileInModel profile)? editProfileEvent,
    TResult Function()? clearEditStateEvent,
    TResult Function()? editLoadingEvent,
    required TResult orElse(),
  }) {
    if (editLoadingEvent != null) {
      return editLoadingEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditProfileEvent value) editProfileEvent,
    required TResult Function(ClearEditStateEvent value) clearEditStateEvent,
    required TResult Function(EditLoadingEvent value) editLoadingEvent,
  }) {
    return editLoadingEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditProfileEvent value)? editProfileEvent,
    TResult? Function(ClearEditStateEvent value)? clearEditStateEvent,
    TResult? Function(EditLoadingEvent value)? editLoadingEvent,
  }) {
    return editLoadingEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditProfileEvent value)? editProfileEvent,
    TResult Function(ClearEditStateEvent value)? clearEditStateEvent,
    TResult Function(EditLoadingEvent value)? editLoadingEvent,
    required TResult orElse(),
  }) {
    if (editLoadingEvent != null) {
      return editLoadingEvent(this);
    }
    return orElse();
  }
}

abstract class EditLoadingEvent implements EditCusProfileEvent {
  const factory EditLoadingEvent() = _$EditLoadingEventImpl;
}

/// @nodoc
mixin _$EditCusProfileState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EditProfileRespModel? editrep) editProfileState,
    required TResult Function() editFailedState,
    required TResult Function() editLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EditProfileRespModel? editrep)? editProfileState,
    TResult? Function()? editFailedState,
    TResult? Function()? editLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EditProfileRespModel? editrep)? editProfileState,
    TResult Function()? editFailedState,
    TResult Function()? editLoadingState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditProfileState value) editProfileState,
    required TResult Function(EditFailedState value) editFailedState,
    required TResult Function(EditLoadingState value) editLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditProfileState value)? editProfileState,
    TResult? Function(EditFailedState value)? editFailedState,
    TResult? Function(EditLoadingState value)? editLoadingState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditProfileState value)? editProfileState,
    TResult Function(EditFailedState value)? editFailedState,
    TResult Function(EditLoadingState value)? editLoadingState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditCusProfileStateCopyWith<$Res> {
  factory $EditCusProfileStateCopyWith(
          EditCusProfileState value, $Res Function(EditCusProfileState) then) =
      _$EditCusProfileStateCopyWithImpl<$Res, EditCusProfileState>;
}

/// @nodoc
class _$EditCusProfileStateCopyWithImpl<$Res, $Val extends EditCusProfileState>
    implements $EditCusProfileStateCopyWith<$Res> {
  _$EditCusProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EditProfileStateImplCopyWith<$Res> {
  factory _$$EditProfileStateImplCopyWith(_$EditProfileStateImpl value,
          $Res Function(_$EditProfileStateImpl) then) =
      __$$EditProfileStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EditProfileRespModel? editrep});
}

/// @nodoc
class __$$EditProfileStateImplCopyWithImpl<$Res>
    extends _$EditCusProfileStateCopyWithImpl<$Res, _$EditProfileStateImpl>
    implements _$$EditProfileStateImplCopyWith<$Res> {
  __$$EditProfileStateImplCopyWithImpl(_$EditProfileStateImpl _value,
      $Res Function(_$EditProfileStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? editrep = freezed,
  }) {
    return _then(_$EditProfileStateImpl(
      editrep: freezed == editrep
          ? _value.editrep
          : editrep // ignore: cast_nullable_to_non_nullable
              as EditProfileRespModel?,
    ));
  }
}

/// @nodoc

class _$EditProfileStateImpl implements EditProfileState {
  const _$EditProfileStateImpl({required this.editrep});

  @override
  final EditProfileRespModel? editrep;

  @override
  String toString() {
    return 'EditCusProfileState.editProfileState(editrep: $editrep)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfileStateImpl &&
            (identical(other.editrep, editrep) || other.editrep == editrep));
  }

  @override
  int get hashCode => Object.hash(runtimeType, editrep);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditProfileStateImplCopyWith<_$EditProfileStateImpl> get copyWith =>
      __$$EditProfileStateImplCopyWithImpl<_$EditProfileStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EditProfileRespModel? editrep) editProfileState,
    required TResult Function() editFailedState,
    required TResult Function() editLoadingState,
  }) {
    return editProfileState(editrep);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EditProfileRespModel? editrep)? editProfileState,
    TResult? Function()? editFailedState,
    TResult? Function()? editLoadingState,
  }) {
    return editProfileState?.call(editrep);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EditProfileRespModel? editrep)? editProfileState,
    TResult Function()? editFailedState,
    TResult Function()? editLoadingState,
    required TResult orElse(),
  }) {
    if (editProfileState != null) {
      return editProfileState(editrep);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditProfileState value) editProfileState,
    required TResult Function(EditFailedState value) editFailedState,
    required TResult Function(EditLoadingState value) editLoadingState,
  }) {
    return editProfileState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditProfileState value)? editProfileState,
    TResult? Function(EditFailedState value)? editFailedState,
    TResult? Function(EditLoadingState value)? editLoadingState,
  }) {
    return editProfileState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditProfileState value)? editProfileState,
    TResult Function(EditFailedState value)? editFailedState,
    TResult Function(EditLoadingState value)? editLoadingState,
    required TResult orElse(),
  }) {
    if (editProfileState != null) {
      return editProfileState(this);
    }
    return orElse();
  }
}

abstract class EditProfileState implements EditCusProfileState {
  const factory EditProfileState(
      {required final EditProfileRespModel? editrep}) = _$EditProfileStateImpl;

  EditProfileRespModel? get editrep;
  @JsonKey(ignore: true)
  _$$EditProfileStateImplCopyWith<_$EditProfileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditFailedStateImplCopyWith<$Res> {
  factory _$$EditFailedStateImplCopyWith(_$EditFailedStateImpl value,
          $Res Function(_$EditFailedStateImpl) then) =
      __$$EditFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditFailedStateImplCopyWithImpl<$Res>
    extends _$EditCusProfileStateCopyWithImpl<$Res, _$EditFailedStateImpl>
    implements _$$EditFailedStateImplCopyWith<$Res> {
  __$$EditFailedStateImplCopyWithImpl(
      _$EditFailedStateImpl _value, $Res Function(_$EditFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EditFailedStateImpl implements EditFailedState {
  const _$EditFailedStateImpl();

  @override
  String toString() {
    return 'EditCusProfileState.editFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EditFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EditProfileRespModel? editrep) editProfileState,
    required TResult Function() editFailedState,
    required TResult Function() editLoadingState,
  }) {
    return editFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EditProfileRespModel? editrep)? editProfileState,
    TResult? Function()? editFailedState,
    TResult? Function()? editLoadingState,
  }) {
    return editFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EditProfileRespModel? editrep)? editProfileState,
    TResult Function()? editFailedState,
    TResult Function()? editLoadingState,
    required TResult orElse(),
  }) {
    if (editFailedState != null) {
      return editFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditProfileState value) editProfileState,
    required TResult Function(EditFailedState value) editFailedState,
    required TResult Function(EditLoadingState value) editLoadingState,
  }) {
    return editFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditProfileState value)? editProfileState,
    TResult? Function(EditFailedState value)? editFailedState,
    TResult? Function(EditLoadingState value)? editLoadingState,
  }) {
    return editFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditProfileState value)? editProfileState,
    TResult Function(EditFailedState value)? editFailedState,
    TResult Function(EditLoadingState value)? editLoadingState,
    required TResult orElse(),
  }) {
    if (editFailedState != null) {
      return editFailedState(this);
    }
    return orElse();
  }
}

abstract class EditFailedState implements EditCusProfileState {
  const factory EditFailedState() = _$EditFailedStateImpl;
}

/// @nodoc
abstract class _$$EditLoadingStateImplCopyWith<$Res> {
  factory _$$EditLoadingStateImplCopyWith(_$EditLoadingStateImpl value,
          $Res Function(_$EditLoadingStateImpl) then) =
      __$$EditLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditLoadingStateImplCopyWithImpl<$Res>
    extends _$EditCusProfileStateCopyWithImpl<$Res, _$EditLoadingStateImpl>
    implements _$$EditLoadingStateImplCopyWith<$Res> {
  __$$EditLoadingStateImplCopyWithImpl(_$EditLoadingStateImpl _value,
      $Res Function(_$EditLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EditLoadingStateImpl implements EditLoadingState {
  const _$EditLoadingStateImpl();

  @override
  String toString() {
    return 'EditCusProfileState.editLoadingState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EditLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EditProfileRespModel? editrep) editProfileState,
    required TResult Function() editFailedState,
    required TResult Function() editLoadingState,
  }) {
    return editLoadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EditProfileRespModel? editrep)? editProfileState,
    TResult? Function()? editFailedState,
    TResult? Function()? editLoadingState,
  }) {
    return editLoadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EditProfileRespModel? editrep)? editProfileState,
    TResult Function()? editFailedState,
    TResult Function()? editLoadingState,
    required TResult orElse(),
  }) {
    if (editLoadingState != null) {
      return editLoadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditProfileState value) editProfileState,
    required TResult Function(EditFailedState value) editFailedState,
    required TResult Function(EditLoadingState value) editLoadingState,
  }) {
    return editLoadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditProfileState value)? editProfileState,
    TResult? Function(EditFailedState value)? editFailedState,
    TResult? Function(EditLoadingState value)? editLoadingState,
  }) {
    return editLoadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditProfileState value)? editProfileState,
    TResult Function(EditFailedState value)? editFailedState,
    TResult Function(EditLoadingState value)? editLoadingState,
    required TResult orElse(),
  }) {
    if (editLoadingState != null) {
      return editLoadingState(this);
    }
    return orElse();
  }
}

abstract class EditLoadingState implements EditCusProfileState {
  const factory EditLoadingState() = _$EditLoadingStateImpl;
}
