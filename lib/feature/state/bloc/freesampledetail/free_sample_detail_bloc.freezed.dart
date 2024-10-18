// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'free_sample_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FreeSampleDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String headerID, String searchQuery)
        getFreeSampleDetailsEvent,
    required TResult Function() clearFreeSampleDetailEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String headerID, String searchQuery)?
        getFreeSampleDetailsEvent,
    TResult? Function()? clearFreeSampleDetailEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String headerID, String searchQuery)?
        getFreeSampleDetailsEvent,
    TResult Function()? clearFreeSampleDetailEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFreeSampleDetailsEvent value)
        getFreeSampleDetailsEvent,
    required TResult Function(ClearFreeSampleDetailEvent value)
        clearFreeSampleDetailEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFreeSampleDetailsEvent value)?
        getFreeSampleDetailsEvent,
    TResult? Function(ClearFreeSampleDetailEvent value)?
        clearFreeSampleDetailEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFreeSampleDetailsEvent value)?
        getFreeSampleDetailsEvent,
    TResult Function(ClearFreeSampleDetailEvent value)?
        clearFreeSampleDetailEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FreeSampleDetailEventCopyWith<$Res> {
  factory $FreeSampleDetailEventCopyWith(FreeSampleDetailEvent value,
          $Res Function(FreeSampleDetailEvent) then) =
      _$FreeSampleDetailEventCopyWithImpl<$Res, FreeSampleDetailEvent>;
}

/// @nodoc
class _$FreeSampleDetailEventCopyWithImpl<$Res,
        $Val extends FreeSampleDetailEvent>
    implements $FreeSampleDetailEventCopyWith<$Res> {
  _$FreeSampleDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetFreeSampleDetailsEventImplCopyWith<$Res> {
  factory _$$GetFreeSampleDetailsEventImplCopyWith(
          _$GetFreeSampleDetailsEventImpl value,
          $Res Function(_$GetFreeSampleDetailsEventImpl) then) =
      __$$GetFreeSampleDetailsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String headerID, String searchQuery});
}

/// @nodoc
class __$$GetFreeSampleDetailsEventImplCopyWithImpl<$Res>
    extends _$FreeSampleDetailEventCopyWithImpl<$Res,
        _$GetFreeSampleDetailsEventImpl>
    implements _$$GetFreeSampleDetailsEventImplCopyWith<$Res> {
  __$$GetFreeSampleDetailsEventImplCopyWithImpl(
      _$GetFreeSampleDetailsEventImpl _value,
      $Res Function(_$GetFreeSampleDetailsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headerID = null,
    Object? searchQuery = null,
  }) {
    return _then(_$GetFreeSampleDetailsEventImpl(
      headerID: null == headerID
          ? _value.headerID
          : headerID // ignore: cast_nullable_to_non_nullable
              as String,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetFreeSampleDetailsEventImpl implements GetFreeSampleDetailsEvent {
  const _$GetFreeSampleDetailsEventImpl(
      {required this.headerID, required this.searchQuery});

  @override
  final String headerID;
  @override
  final String searchQuery;

  @override
  String toString() {
    return 'FreeSampleDetailEvent.getFreeSampleDetailsEvent(headerID: $headerID, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFreeSampleDetailsEventImpl &&
            (identical(other.headerID, headerID) ||
                other.headerID == headerID) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, headerID, searchQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFreeSampleDetailsEventImplCopyWith<_$GetFreeSampleDetailsEventImpl>
      get copyWith => __$$GetFreeSampleDetailsEventImplCopyWithImpl<
          _$GetFreeSampleDetailsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String headerID, String searchQuery)
        getFreeSampleDetailsEvent,
    required TResult Function() clearFreeSampleDetailEvent,
  }) {
    return getFreeSampleDetailsEvent(headerID, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String headerID, String searchQuery)?
        getFreeSampleDetailsEvent,
    TResult? Function()? clearFreeSampleDetailEvent,
  }) {
    return getFreeSampleDetailsEvent?.call(headerID, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String headerID, String searchQuery)?
        getFreeSampleDetailsEvent,
    TResult Function()? clearFreeSampleDetailEvent,
    required TResult orElse(),
  }) {
    if (getFreeSampleDetailsEvent != null) {
      return getFreeSampleDetailsEvent(headerID, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFreeSampleDetailsEvent value)
        getFreeSampleDetailsEvent,
    required TResult Function(ClearFreeSampleDetailEvent value)
        clearFreeSampleDetailEvent,
  }) {
    return getFreeSampleDetailsEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFreeSampleDetailsEvent value)?
        getFreeSampleDetailsEvent,
    TResult? Function(ClearFreeSampleDetailEvent value)?
        clearFreeSampleDetailEvent,
  }) {
    return getFreeSampleDetailsEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFreeSampleDetailsEvent value)?
        getFreeSampleDetailsEvent,
    TResult Function(ClearFreeSampleDetailEvent value)?
        clearFreeSampleDetailEvent,
    required TResult orElse(),
  }) {
    if (getFreeSampleDetailsEvent != null) {
      return getFreeSampleDetailsEvent(this);
    }
    return orElse();
  }
}

abstract class GetFreeSampleDetailsEvent implements FreeSampleDetailEvent {
  const factory GetFreeSampleDetailsEvent(
      {required final String headerID,
      required final String searchQuery}) = _$GetFreeSampleDetailsEventImpl;

  String get headerID;
  String get searchQuery;
  @JsonKey(ignore: true)
  _$$GetFreeSampleDetailsEventImplCopyWith<_$GetFreeSampleDetailsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearFreeSampleDetailEventImplCopyWith<$Res> {
  factory _$$ClearFreeSampleDetailEventImplCopyWith(
          _$ClearFreeSampleDetailEventImpl value,
          $Res Function(_$ClearFreeSampleDetailEventImpl) then) =
      __$$ClearFreeSampleDetailEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearFreeSampleDetailEventImplCopyWithImpl<$Res>
    extends _$FreeSampleDetailEventCopyWithImpl<$Res,
        _$ClearFreeSampleDetailEventImpl>
    implements _$$ClearFreeSampleDetailEventImplCopyWith<$Res> {
  __$$ClearFreeSampleDetailEventImplCopyWithImpl(
      _$ClearFreeSampleDetailEventImpl _value,
      $Res Function(_$ClearFreeSampleDetailEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearFreeSampleDetailEventImpl implements ClearFreeSampleDetailEvent {
  const _$ClearFreeSampleDetailEventImpl();

  @override
  String toString() {
    return 'FreeSampleDetailEvent.clearFreeSampleDetailEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearFreeSampleDetailEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String headerID, String searchQuery)
        getFreeSampleDetailsEvent,
    required TResult Function() clearFreeSampleDetailEvent,
  }) {
    return clearFreeSampleDetailEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String headerID, String searchQuery)?
        getFreeSampleDetailsEvent,
    TResult? Function()? clearFreeSampleDetailEvent,
  }) {
    return clearFreeSampleDetailEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String headerID, String searchQuery)?
        getFreeSampleDetailsEvent,
    TResult Function()? clearFreeSampleDetailEvent,
    required TResult orElse(),
  }) {
    if (clearFreeSampleDetailEvent != null) {
      return clearFreeSampleDetailEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFreeSampleDetailsEvent value)
        getFreeSampleDetailsEvent,
    required TResult Function(ClearFreeSampleDetailEvent value)
        clearFreeSampleDetailEvent,
  }) {
    return clearFreeSampleDetailEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFreeSampleDetailsEvent value)?
        getFreeSampleDetailsEvent,
    TResult? Function(ClearFreeSampleDetailEvent value)?
        clearFreeSampleDetailEvent,
  }) {
    return clearFreeSampleDetailEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFreeSampleDetailsEvent value)?
        getFreeSampleDetailsEvent,
    TResult Function(ClearFreeSampleDetailEvent value)?
        clearFreeSampleDetailEvent,
    required TResult orElse(),
  }) {
    if (clearFreeSampleDetailEvent != null) {
      return clearFreeSampleDetailEvent(this);
    }
    return orElse();
  }
}

abstract class ClearFreeSampleDetailEvent implements FreeSampleDetailEvent {
  const factory ClearFreeSampleDetailEvent() = _$ClearFreeSampleDetailEventImpl;
}

/// @nodoc
mixin _$FreeSampleDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<FreeSampleApprovalDetailModel>? details)
        getFreeSampleDetailState,
    required TResult Function() freesampleDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<FreeSampleApprovalDetailModel>? details)?
        getFreeSampleDetailState,
    TResult? Function()? freesampleDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<FreeSampleApprovalDetailModel>? details)?
        getFreeSampleDetailState,
    TResult Function()? freesampleDetailFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFreeSampleDetailState value)
        getFreeSampleDetailState,
    required TResult Function(FreesampleDetailFailedState value)
        freesampleDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFreeSampleDetailState value)? getFreeSampleDetailState,
    TResult? Function(FreesampleDetailFailedState value)?
        freesampleDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFreeSampleDetailState value)? getFreeSampleDetailState,
    TResult Function(FreesampleDetailFailedState value)?
        freesampleDetailFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FreeSampleDetailStateCopyWith<$Res> {
  factory $FreeSampleDetailStateCopyWith(FreeSampleDetailState value,
          $Res Function(FreeSampleDetailState) then) =
      _$FreeSampleDetailStateCopyWithImpl<$Res, FreeSampleDetailState>;
}

/// @nodoc
class _$FreeSampleDetailStateCopyWithImpl<$Res,
        $Val extends FreeSampleDetailState>
    implements $FreeSampleDetailStateCopyWith<$Res> {
  _$FreeSampleDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetFreeSampleDetailStateImplCopyWith<$Res> {
  factory _$$GetFreeSampleDetailStateImplCopyWith(
          _$GetFreeSampleDetailStateImpl value,
          $Res Function(_$GetFreeSampleDetailStateImpl) then) =
      __$$GetFreeSampleDetailStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<FreeSampleApprovalDetailModel>? details});
}

/// @nodoc
class __$$GetFreeSampleDetailStateImplCopyWithImpl<$Res>
    extends _$FreeSampleDetailStateCopyWithImpl<$Res,
        _$GetFreeSampleDetailStateImpl>
    implements _$$GetFreeSampleDetailStateImplCopyWith<$Res> {
  __$$GetFreeSampleDetailStateImplCopyWithImpl(
      _$GetFreeSampleDetailStateImpl _value,
      $Res Function(_$GetFreeSampleDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? details = freezed,
  }) {
    return _then(_$GetFreeSampleDetailStateImpl(
      details: freezed == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<FreeSampleApprovalDetailModel>?,
    ));
  }
}

/// @nodoc

class _$GetFreeSampleDetailStateImpl implements GetFreeSampleDetailState {
  const _$GetFreeSampleDetailStateImpl(
      {required final List<FreeSampleApprovalDetailModel>? details})
      : _details = details;

  final List<FreeSampleApprovalDetailModel>? _details;
  @override
  List<FreeSampleApprovalDetailModel>? get details {
    final value = _details;
    if (value == null) return null;
    if (_details is EqualUnmodifiableListView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FreeSampleDetailState.getFreeSampleDetailState(details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetFreeSampleDetailStateImpl &&
            const DeepCollectionEquality().equals(other._details, _details));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_details));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetFreeSampleDetailStateImplCopyWith<_$GetFreeSampleDetailStateImpl>
      get copyWith => __$$GetFreeSampleDetailStateImplCopyWithImpl<
          _$GetFreeSampleDetailStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<FreeSampleApprovalDetailModel>? details)
        getFreeSampleDetailState,
    required TResult Function() freesampleDetailFailedState,
  }) {
    return getFreeSampleDetailState(details);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<FreeSampleApprovalDetailModel>? details)?
        getFreeSampleDetailState,
    TResult? Function()? freesampleDetailFailedState,
  }) {
    return getFreeSampleDetailState?.call(details);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<FreeSampleApprovalDetailModel>? details)?
        getFreeSampleDetailState,
    TResult Function()? freesampleDetailFailedState,
    required TResult orElse(),
  }) {
    if (getFreeSampleDetailState != null) {
      return getFreeSampleDetailState(details);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFreeSampleDetailState value)
        getFreeSampleDetailState,
    required TResult Function(FreesampleDetailFailedState value)
        freesampleDetailFailedState,
  }) {
    return getFreeSampleDetailState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFreeSampleDetailState value)? getFreeSampleDetailState,
    TResult? Function(FreesampleDetailFailedState value)?
        freesampleDetailFailedState,
  }) {
    return getFreeSampleDetailState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFreeSampleDetailState value)? getFreeSampleDetailState,
    TResult Function(FreesampleDetailFailedState value)?
        freesampleDetailFailedState,
    required TResult orElse(),
  }) {
    if (getFreeSampleDetailState != null) {
      return getFreeSampleDetailState(this);
    }
    return orElse();
  }
}

abstract class GetFreeSampleDetailState implements FreeSampleDetailState {
  const factory GetFreeSampleDetailState(
          {required final List<FreeSampleApprovalDetailModel>? details}) =
      _$GetFreeSampleDetailStateImpl;

  List<FreeSampleApprovalDetailModel>? get details;
  @JsonKey(ignore: true)
  _$$GetFreeSampleDetailStateImplCopyWith<_$GetFreeSampleDetailStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FreesampleDetailFailedStateImplCopyWith<$Res> {
  factory _$$FreesampleDetailFailedStateImplCopyWith(
          _$FreesampleDetailFailedStateImpl value,
          $Res Function(_$FreesampleDetailFailedStateImpl) then) =
      __$$FreesampleDetailFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FreesampleDetailFailedStateImplCopyWithImpl<$Res>
    extends _$FreeSampleDetailStateCopyWithImpl<$Res,
        _$FreesampleDetailFailedStateImpl>
    implements _$$FreesampleDetailFailedStateImplCopyWith<$Res> {
  __$$FreesampleDetailFailedStateImplCopyWithImpl(
      _$FreesampleDetailFailedStateImpl _value,
      $Res Function(_$FreesampleDetailFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FreesampleDetailFailedStateImpl implements FreesampleDetailFailedState {
  const _$FreesampleDetailFailedStateImpl();

  @override
  String toString() {
    return 'FreeSampleDetailState.freesampleDetailFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FreesampleDetailFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<FreeSampleApprovalDetailModel>? details)
        getFreeSampleDetailState,
    required TResult Function() freesampleDetailFailedState,
  }) {
    return freesampleDetailFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<FreeSampleApprovalDetailModel>? details)?
        getFreeSampleDetailState,
    TResult? Function()? freesampleDetailFailedState,
  }) {
    return freesampleDetailFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<FreeSampleApprovalDetailModel>? details)?
        getFreeSampleDetailState,
    TResult Function()? freesampleDetailFailedState,
    required TResult orElse(),
  }) {
    if (freesampleDetailFailedState != null) {
      return freesampleDetailFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetFreeSampleDetailState value)
        getFreeSampleDetailState,
    required TResult Function(FreesampleDetailFailedState value)
        freesampleDetailFailedState,
  }) {
    return freesampleDetailFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetFreeSampleDetailState value)? getFreeSampleDetailState,
    TResult? Function(FreesampleDetailFailedState value)?
        freesampleDetailFailedState,
  }) {
    return freesampleDetailFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetFreeSampleDetailState value)? getFreeSampleDetailState,
    TResult Function(FreesampleDetailFailedState value)?
        freesampleDetailFailedState,
    required TResult orElse(),
  }) {
    if (freesampleDetailFailedState != null) {
      return freesampleDetailFailedState(this);
    }
    return orElse();
  }
}

abstract class FreesampleDetailFailedState implements FreeSampleDetailState {
  const factory FreesampleDetailFailedState() =
      _$FreesampleDetailFailedStateImpl;
}
