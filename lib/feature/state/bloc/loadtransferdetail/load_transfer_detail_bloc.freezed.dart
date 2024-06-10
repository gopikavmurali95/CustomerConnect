// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'load_transfer_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoadTransferDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String reqID, String searchQuery)
        getAllLoadTransferDetailEvent,
    required TResult Function() clearLoadTransferDetailEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String reqID, String searchQuery)?
        getAllLoadTransferDetailEvent,
    TResult? Function()? clearLoadTransferDetailEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String reqID, String searchQuery)?
        getAllLoadTransferDetailEvent,
    TResult Function()? clearLoadTransferDetailEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllLoadTransferDetailEvent value)
        getAllLoadTransferDetailEvent,
    required TResult Function(ClearLoadTransferDetailEvent value)
        clearLoadTransferDetailEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllLoadTransferDetailEvent value)?
        getAllLoadTransferDetailEvent,
    TResult? Function(ClearLoadTransferDetailEvent value)?
        clearLoadTransferDetailEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllLoadTransferDetailEvent value)?
        getAllLoadTransferDetailEvent,
    TResult Function(ClearLoadTransferDetailEvent value)?
        clearLoadTransferDetailEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadTransferDetailEventCopyWith<$Res> {
  factory $LoadTransferDetailEventCopyWith(LoadTransferDetailEvent value,
          $Res Function(LoadTransferDetailEvent) then) =
      _$LoadTransferDetailEventCopyWithImpl<$Res, LoadTransferDetailEvent>;
}

/// @nodoc
class _$LoadTransferDetailEventCopyWithImpl<$Res,
        $Val extends LoadTransferDetailEvent>
    implements $LoadTransferDetailEventCopyWith<$Res> {
  _$LoadTransferDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAllLoadTransferDetailEventImplCopyWith<$Res> {
  factory _$$GetAllLoadTransferDetailEventImplCopyWith(
          _$GetAllLoadTransferDetailEventImpl value,
          $Res Function(_$GetAllLoadTransferDetailEventImpl) then) =
      __$$GetAllLoadTransferDetailEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String reqID, String searchQuery});
}

/// @nodoc
class __$$GetAllLoadTransferDetailEventImplCopyWithImpl<$Res>
    extends _$LoadTransferDetailEventCopyWithImpl<$Res,
        _$GetAllLoadTransferDetailEventImpl>
    implements _$$GetAllLoadTransferDetailEventImplCopyWith<$Res> {
  __$$GetAllLoadTransferDetailEventImplCopyWithImpl(
      _$GetAllLoadTransferDetailEventImpl _value,
      $Res Function(_$GetAllLoadTransferDetailEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reqID = null,
    Object? searchQuery = null,
  }) {
    return _then(_$GetAllLoadTransferDetailEventImpl(
      reqID: null == reqID
          ? _value.reqID
          : reqID // ignore: cast_nullable_to_non_nullable
              as String,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetAllLoadTransferDetailEventImpl
    implements GetAllLoadTransferDetailEvent {
  const _$GetAllLoadTransferDetailEventImpl(
      {required this.reqID, required this.searchQuery});

  @override
  final String reqID;
  @override
  final String searchQuery;

  @override
  String toString() {
    return 'LoadTransferDetailEvent.getAllLoadTransferDetailEvent(reqID: $reqID, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAllLoadTransferDetailEventImpl &&
            (identical(other.reqID, reqID) || other.reqID == reqID) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reqID, searchQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetAllLoadTransferDetailEventImplCopyWith<
          _$GetAllLoadTransferDetailEventImpl>
      get copyWith => __$$GetAllLoadTransferDetailEventImplCopyWithImpl<
          _$GetAllLoadTransferDetailEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String reqID, String searchQuery)
        getAllLoadTransferDetailEvent,
    required TResult Function() clearLoadTransferDetailEvent,
  }) {
    return getAllLoadTransferDetailEvent(reqID, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String reqID, String searchQuery)?
        getAllLoadTransferDetailEvent,
    TResult? Function()? clearLoadTransferDetailEvent,
  }) {
    return getAllLoadTransferDetailEvent?.call(reqID, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String reqID, String searchQuery)?
        getAllLoadTransferDetailEvent,
    TResult Function()? clearLoadTransferDetailEvent,
    required TResult orElse(),
  }) {
    if (getAllLoadTransferDetailEvent != null) {
      return getAllLoadTransferDetailEvent(reqID, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllLoadTransferDetailEvent value)
        getAllLoadTransferDetailEvent,
    required TResult Function(ClearLoadTransferDetailEvent value)
        clearLoadTransferDetailEvent,
  }) {
    return getAllLoadTransferDetailEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllLoadTransferDetailEvent value)?
        getAllLoadTransferDetailEvent,
    TResult? Function(ClearLoadTransferDetailEvent value)?
        clearLoadTransferDetailEvent,
  }) {
    return getAllLoadTransferDetailEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllLoadTransferDetailEvent value)?
        getAllLoadTransferDetailEvent,
    TResult Function(ClearLoadTransferDetailEvent value)?
        clearLoadTransferDetailEvent,
    required TResult orElse(),
  }) {
    if (getAllLoadTransferDetailEvent != null) {
      return getAllLoadTransferDetailEvent(this);
    }
    return orElse();
  }
}

abstract class GetAllLoadTransferDetailEvent
    implements LoadTransferDetailEvent {
  const factory GetAllLoadTransferDetailEvent(
      {required final String reqID,
      required final String searchQuery}) = _$GetAllLoadTransferDetailEventImpl;

  String get reqID;
  String get searchQuery;
  @JsonKey(ignore: true)
  _$$GetAllLoadTransferDetailEventImplCopyWith<
          _$GetAllLoadTransferDetailEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearLoadTransferDetailEventImplCopyWith<$Res> {
  factory _$$ClearLoadTransferDetailEventImplCopyWith(
          _$ClearLoadTransferDetailEventImpl value,
          $Res Function(_$ClearLoadTransferDetailEventImpl) then) =
      __$$ClearLoadTransferDetailEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearLoadTransferDetailEventImplCopyWithImpl<$Res>
    extends _$LoadTransferDetailEventCopyWithImpl<$Res,
        _$ClearLoadTransferDetailEventImpl>
    implements _$$ClearLoadTransferDetailEventImplCopyWith<$Res> {
  __$$ClearLoadTransferDetailEventImplCopyWithImpl(
      _$ClearLoadTransferDetailEventImpl _value,
      $Res Function(_$ClearLoadTransferDetailEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearLoadTransferDetailEventImpl
    implements ClearLoadTransferDetailEvent {
  const _$ClearLoadTransferDetailEventImpl();

  @override
  String toString() {
    return 'LoadTransferDetailEvent.clearLoadTransferDetailEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearLoadTransferDetailEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String reqID, String searchQuery)
        getAllLoadTransferDetailEvent,
    required TResult Function() clearLoadTransferDetailEvent,
  }) {
    return clearLoadTransferDetailEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String reqID, String searchQuery)?
        getAllLoadTransferDetailEvent,
    TResult? Function()? clearLoadTransferDetailEvent,
  }) {
    return clearLoadTransferDetailEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String reqID, String searchQuery)?
        getAllLoadTransferDetailEvent,
    TResult Function()? clearLoadTransferDetailEvent,
    required TResult orElse(),
  }) {
    if (clearLoadTransferDetailEvent != null) {
      return clearLoadTransferDetailEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAllLoadTransferDetailEvent value)
        getAllLoadTransferDetailEvent,
    required TResult Function(ClearLoadTransferDetailEvent value)
        clearLoadTransferDetailEvent,
  }) {
    return clearLoadTransferDetailEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetAllLoadTransferDetailEvent value)?
        getAllLoadTransferDetailEvent,
    TResult? Function(ClearLoadTransferDetailEvent value)?
        clearLoadTransferDetailEvent,
  }) {
    return clearLoadTransferDetailEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAllLoadTransferDetailEvent value)?
        getAllLoadTransferDetailEvent,
    TResult Function(ClearLoadTransferDetailEvent value)?
        clearLoadTransferDetailEvent,
    required TResult orElse(),
  }) {
    if (clearLoadTransferDetailEvent != null) {
      return clearLoadTransferDetailEvent(this);
    }
    return orElse();
  }
}

abstract class ClearLoadTransferDetailEvent implements LoadTransferDetailEvent {
  const factory ClearLoadTransferDetailEvent() =
      _$ClearLoadTransferDetailEventImpl;
}

/// @nodoc
mixin _$LoadTransferDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<LoadTransferDetailModel>? details)
        getLoadTransferDetailState,
    required TResult Function() loadTransferDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<LoadTransferDetailModel>? details)?
        getLoadTransferDetailState,
    TResult? Function()? loadTransferDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<LoadTransferDetailModel>? details)?
        getLoadTransferDetailState,
    TResult Function()? loadTransferDetailFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetLoadTransferDetailState value)
        getLoadTransferDetailState,
    required TResult Function(LoadTransferDetailFailedState value)
        loadTransferDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetLoadTransferDetailState value)?
        getLoadTransferDetailState,
    TResult? Function(LoadTransferDetailFailedState value)?
        loadTransferDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetLoadTransferDetailState value)?
        getLoadTransferDetailState,
    TResult Function(LoadTransferDetailFailedState value)?
        loadTransferDetailFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadTransferDetailStateCopyWith<$Res> {
  factory $LoadTransferDetailStateCopyWith(LoadTransferDetailState value,
          $Res Function(LoadTransferDetailState) then) =
      _$LoadTransferDetailStateCopyWithImpl<$Res, LoadTransferDetailState>;
}

/// @nodoc
class _$LoadTransferDetailStateCopyWithImpl<$Res,
        $Val extends LoadTransferDetailState>
    implements $LoadTransferDetailStateCopyWith<$Res> {
  _$LoadTransferDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetLoadTransferDetailStateImplCopyWith<$Res> {
  factory _$$GetLoadTransferDetailStateImplCopyWith(
          _$GetLoadTransferDetailStateImpl value,
          $Res Function(_$GetLoadTransferDetailStateImpl) then) =
      __$$GetLoadTransferDetailStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<LoadTransferDetailModel>? details});
}

/// @nodoc
class __$$GetLoadTransferDetailStateImplCopyWithImpl<$Res>
    extends _$LoadTransferDetailStateCopyWithImpl<$Res,
        _$GetLoadTransferDetailStateImpl>
    implements _$$GetLoadTransferDetailStateImplCopyWith<$Res> {
  __$$GetLoadTransferDetailStateImplCopyWithImpl(
      _$GetLoadTransferDetailStateImpl _value,
      $Res Function(_$GetLoadTransferDetailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? details = freezed,
  }) {
    return _then(_$GetLoadTransferDetailStateImpl(
      details: freezed == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<LoadTransferDetailModel>?,
    ));
  }
}

/// @nodoc

class _$GetLoadTransferDetailStateImpl implements GetLoadTransferDetailState {
  const _$GetLoadTransferDetailStateImpl(
      {required final List<LoadTransferDetailModel>? details})
      : _details = details;

  final List<LoadTransferDetailModel>? _details;
  @override
  List<LoadTransferDetailModel>? get details {
    final value = _details;
    if (value == null) return null;
    if (_details is EqualUnmodifiableListView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LoadTransferDetailState.getLoadTransferDetailState(details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetLoadTransferDetailStateImpl &&
            const DeepCollectionEquality().equals(other._details, _details));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_details));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetLoadTransferDetailStateImplCopyWith<_$GetLoadTransferDetailStateImpl>
      get copyWith => __$$GetLoadTransferDetailStateImplCopyWithImpl<
          _$GetLoadTransferDetailStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<LoadTransferDetailModel>? details)
        getLoadTransferDetailState,
    required TResult Function() loadTransferDetailFailedState,
  }) {
    return getLoadTransferDetailState(details);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<LoadTransferDetailModel>? details)?
        getLoadTransferDetailState,
    TResult? Function()? loadTransferDetailFailedState,
  }) {
    return getLoadTransferDetailState?.call(details);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<LoadTransferDetailModel>? details)?
        getLoadTransferDetailState,
    TResult Function()? loadTransferDetailFailedState,
    required TResult orElse(),
  }) {
    if (getLoadTransferDetailState != null) {
      return getLoadTransferDetailState(details);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetLoadTransferDetailState value)
        getLoadTransferDetailState,
    required TResult Function(LoadTransferDetailFailedState value)
        loadTransferDetailFailedState,
  }) {
    return getLoadTransferDetailState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetLoadTransferDetailState value)?
        getLoadTransferDetailState,
    TResult? Function(LoadTransferDetailFailedState value)?
        loadTransferDetailFailedState,
  }) {
    return getLoadTransferDetailState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetLoadTransferDetailState value)?
        getLoadTransferDetailState,
    TResult Function(LoadTransferDetailFailedState value)?
        loadTransferDetailFailedState,
    required TResult orElse(),
  }) {
    if (getLoadTransferDetailState != null) {
      return getLoadTransferDetailState(this);
    }
    return orElse();
  }
}

abstract class GetLoadTransferDetailState implements LoadTransferDetailState {
  const factory GetLoadTransferDetailState(
          {required final List<LoadTransferDetailModel>? details}) =
      _$GetLoadTransferDetailStateImpl;

  List<LoadTransferDetailModel>? get details;
  @JsonKey(ignore: true)
  _$$GetLoadTransferDetailStateImplCopyWith<_$GetLoadTransferDetailStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadTransferDetailFailedStateImplCopyWith<$Res> {
  factory _$$LoadTransferDetailFailedStateImplCopyWith(
          _$LoadTransferDetailFailedStateImpl value,
          $Res Function(_$LoadTransferDetailFailedStateImpl) then) =
      __$$LoadTransferDetailFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadTransferDetailFailedStateImplCopyWithImpl<$Res>
    extends _$LoadTransferDetailStateCopyWithImpl<$Res,
        _$LoadTransferDetailFailedStateImpl>
    implements _$$LoadTransferDetailFailedStateImplCopyWith<$Res> {
  __$$LoadTransferDetailFailedStateImplCopyWithImpl(
      _$LoadTransferDetailFailedStateImpl _value,
      $Res Function(_$LoadTransferDetailFailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadTransferDetailFailedStateImpl
    implements LoadTransferDetailFailedState {
  const _$LoadTransferDetailFailedStateImpl();

  @override
  String toString() {
    return 'LoadTransferDetailState.loadTransferDetailFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadTransferDetailFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<LoadTransferDetailModel>? details)
        getLoadTransferDetailState,
    required TResult Function() loadTransferDetailFailedState,
  }) {
    return loadTransferDetailFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<LoadTransferDetailModel>? details)?
        getLoadTransferDetailState,
    TResult? Function()? loadTransferDetailFailedState,
  }) {
    return loadTransferDetailFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<LoadTransferDetailModel>? details)?
        getLoadTransferDetailState,
    TResult Function()? loadTransferDetailFailedState,
    required TResult orElse(),
  }) {
    if (loadTransferDetailFailedState != null) {
      return loadTransferDetailFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetLoadTransferDetailState value)
        getLoadTransferDetailState,
    required TResult Function(LoadTransferDetailFailedState value)
        loadTransferDetailFailedState,
  }) {
    return loadTransferDetailFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetLoadTransferDetailState value)?
        getLoadTransferDetailState,
    TResult? Function(LoadTransferDetailFailedState value)?
        loadTransferDetailFailedState,
  }) {
    return loadTransferDetailFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetLoadTransferDetailState value)?
        getLoadTransferDetailState,
    TResult Function(LoadTransferDetailFailedState value)?
        loadTransferDetailFailedState,
    required TResult orElse(),
  }) {
    if (loadTransferDetailFailedState != null) {
      return loadTransferDetailFailedState(this);
    }
    return orElse();
  }
}

abstract class LoadTransferDetailFailedState
    implements LoadTransferDetailState {
  const factory LoadTransferDetailFailedState() =
      _$LoadTransferDetailFailedStateImpl;
}
