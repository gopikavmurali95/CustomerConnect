// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loading_header_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoadingHeaderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            LoadingHeaderInModel loadingin, String searchQuery)
        getLoadingHeaderEvent,
    required TResult Function() clearLoadingHeadderEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoadingHeaderInModel loadingin, String searchQuery)?
        getLoadingHeaderEvent,
    TResult? Function()? clearLoadingHeadderEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoadingHeaderInModel loadingin, String searchQuery)?
        getLoadingHeaderEvent,
    TResult Function()? clearLoadingHeadderEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetLoadingHeaderEvent value)
        getLoadingHeaderEvent,
    required TResult Function(ClearLoadingHeadderEvent value)
        clearLoadingHeadderEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetLoadingHeaderEvent value)? getLoadingHeaderEvent,
    TResult? Function(ClearLoadingHeadderEvent value)? clearLoadingHeadderEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetLoadingHeaderEvent value)? getLoadingHeaderEvent,
    TResult Function(ClearLoadingHeadderEvent value)? clearLoadingHeadderEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingHeaderEventCopyWith<$Res> {
  factory $LoadingHeaderEventCopyWith(
          LoadingHeaderEvent value, $Res Function(LoadingHeaderEvent) then) =
      _$LoadingHeaderEventCopyWithImpl<$Res, LoadingHeaderEvent>;
}

/// @nodoc
class _$LoadingHeaderEventCopyWithImpl<$Res, $Val extends LoadingHeaderEvent>
    implements $LoadingHeaderEventCopyWith<$Res> {
  _$LoadingHeaderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoadingHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetLoadingHeaderEventImplCopyWith<$Res> {
  factory _$$GetLoadingHeaderEventImplCopyWith(
          _$GetLoadingHeaderEventImpl value,
          $Res Function(_$GetLoadingHeaderEventImpl) then) =
      __$$GetLoadingHeaderEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LoadingHeaderInModel loadingin, String searchQuery});
}

/// @nodoc
class __$$GetLoadingHeaderEventImplCopyWithImpl<$Res>
    extends _$LoadingHeaderEventCopyWithImpl<$Res, _$GetLoadingHeaderEventImpl>
    implements _$$GetLoadingHeaderEventImplCopyWith<$Res> {
  __$$GetLoadingHeaderEventImplCopyWithImpl(_$GetLoadingHeaderEventImpl _value,
      $Res Function(_$GetLoadingHeaderEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoadingHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadingin = null,
    Object? searchQuery = null,
  }) {
    return _then(_$GetLoadingHeaderEventImpl(
      loadingin: null == loadingin
          ? _value.loadingin
          : loadingin // ignore: cast_nullable_to_non_nullable
              as LoadingHeaderInModel,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetLoadingHeaderEventImpl implements GetLoadingHeaderEvent {
  const _$GetLoadingHeaderEventImpl(
      {required this.loadingin, required this.searchQuery});

  @override
  final LoadingHeaderInModel loadingin;
  @override
  final String searchQuery;

  @override
  String toString() {
    return 'LoadingHeaderEvent.getLoadingHeaderEvent(loadingin: $loadingin, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetLoadingHeaderEventImpl &&
            (identical(other.loadingin, loadingin) ||
                other.loadingin == loadingin) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loadingin, searchQuery);

  /// Create a copy of LoadingHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetLoadingHeaderEventImplCopyWith<_$GetLoadingHeaderEventImpl>
      get copyWith => __$$GetLoadingHeaderEventImplCopyWithImpl<
          _$GetLoadingHeaderEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            LoadingHeaderInModel loadingin, String searchQuery)
        getLoadingHeaderEvent,
    required TResult Function() clearLoadingHeadderEvent,
  }) {
    return getLoadingHeaderEvent(loadingin, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoadingHeaderInModel loadingin, String searchQuery)?
        getLoadingHeaderEvent,
    TResult? Function()? clearLoadingHeadderEvent,
  }) {
    return getLoadingHeaderEvent?.call(loadingin, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoadingHeaderInModel loadingin, String searchQuery)?
        getLoadingHeaderEvent,
    TResult Function()? clearLoadingHeadderEvent,
    required TResult orElse(),
  }) {
    if (getLoadingHeaderEvent != null) {
      return getLoadingHeaderEvent(loadingin, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetLoadingHeaderEvent value)
        getLoadingHeaderEvent,
    required TResult Function(ClearLoadingHeadderEvent value)
        clearLoadingHeadderEvent,
  }) {
    return getLoadingHeaderEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetLoadingHeaderEvent value)? getLoadingHeaderEvent,
    TResult? Function(ClearLoadingHeadderEvent value)? clearLoadingHeadderEvent,
  }) {
    return getLoadingHeaderEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetLoadingHeaderEvent value)? getLoadingHeaderEvent,
    TResult Function(ClearLoadingHeadderEvent value)? clearLoadingHeadderEvent,
    required TResult orElse(),
  }) {
    if (getLoadingHeaderEvent != null) {
      return getLoadingHeaderEvent(this);
    }
    return orElse();
  }
}

abstract class GetLoadingHeaderEvent implements LoadingHeaderEvent {
  const factory GetLoadingHeaderEvent(
      {required final LoadingHeaderInModel loadingin,
      required final String searchQuery}) = _$GetLoadingHeaderEventImpl;

  LoadingHeaderInModel get loadingin;
  String get searchQuery;

  /// Create a copy of LoadingHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetLoadingHeaderEventImplCopyWith<_$GetLoadingHeaderEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearLoadingHeadderEventImplCopyWith<$Res> {
  factory _$$ClearLoadingHeadderEventImplCopyWith(
          _$ClearLoadingHeadderEventImpl value,
          $Res Function(_$ClearLoadingHeadderEventImpl) then) =
      __$$ClearLoadingHeadderEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearLoadingHeadderEventImplCopyWithImpl<$Res>
    extends _$LoadingHeaderEventCopyWithImpl<$Res,
        _$ClearLoadingHeadderEventImpl>
    implements _$$ClearLoadingHeadderEventImplCopyWith<$Res> {
  __$$ClearLoadingHeadderEventImplCopyWithImpl(
      _$ClearLoadingHeadderEventImpl _value,
      $Res Function(_$ClearLoadingHeadderEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoadingHeaderEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearLoadingHeadderEventImpl implements ClearLoadingHeadderEvent {
  const _$ClearLoadingHeadderEventImpl();

  @override
  String toString() {
    return 'LoadingHeaderEvent.clearLoadingHeadderEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearLoadingHeadderEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            LoadingHeaderInModel loadingin, String searchQuery)
        getLoadingHeaderEvent,
    required TResult Function() clearLoadingHeadderEvent,
  }) {
    return clearLoadingHeadderEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LoadingHeaderInModel loadingin, String searchQuery)?
        getLoadingHeaderEvent,
    TResult? Function()? clearLoadingHeadderEvent,
  }) {
    return clearLoadingHeadderEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LoadingHeaderInModel loadingin, String searchQuery)?
        getLoadingHeaderEvent,
    TResult Function()? clearLoadingHeadderEvent,
    required TResult orElse(),
  }) {
    if (clearLoadingHeadderEvent != null) {
      return clearLoadingHeadderEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetLoadingHeaderEvent value)
        getLoadingHeaderEvent,
    required TResult Function(ClearLoadingHeadderEvent value)
        clearLoadingHeadderEvent,
  }) {
    return clearLoadingHeadderEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetLoadingHeaderEvent value)? getLoadingHeaderEvent,
    TResult? Function(ClearLoadingHeadderEvent value)? clearLoadingHeadderEvent,
  }) {
    return clearLoadingHeadderEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetLoadingHeaderEvent value)? getLoadingHeaderEvent,
    TResult Function(ClearLoadingHeadderEvent value)? clearLoadingHeadderEvent,
    required TResult orElse(),
  }) {
    if (clearLoadingHeadderEvent != null) {
      return clearLoadingHeadderEvent(this);
    }
    return orElse();
  }
}

abstract class ClearLoadingHeadderEvent implements LoadingHeaderEvent {
  const factory ClearLoadingHeadderEvent() = _$ClearLoadingHeadderEventImpl;
}

/// @nodoc
mixin _$LoadingHeaderState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<LoadingHeadermodel>? loadingheaders)
        getloadingHeaderState,
    required TResult Function() loadingHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<LoadingHeadermodel>? loadingheaders)?
        getloadingHeaderState,
    TResult? Function()? loadingHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<LoadingHeadermodel>? loadingheaders)?
        getloadingHeaderState,
    TResult Function()? loadingHeaderFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetloadingHeaderState value)
        getloadingHeaderState,
    required TResult Function(LoadingHeaderFailedState value)
        loadingHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetloadingHeaderState value)? getloadingHeaderState,
    TResult? Function(LoadingHeaderFailedState value)? loadingHeaderFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetloadingHeaderState value)? getloadingHeaderState,
    TResult Function(LoadingHeaderFailedState value)? loadingHeaderFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingHeaderStateCopyWith<$Res> {
  factory $LoadingHeaderStateCopyWith(
          LoadingHeaderState value, $Res Function(LoadingHeaderState) then) =
      _$LoadingHeaderStateCopyWithImpl<$Res, LoadingHeaderState>;
}

/// @nodoc
class _$LoadingHeaderStateCopyWithImpl<$Res, $Val extends LoadingHeaderState>
    implements $LoadingHeaderStateCopyWith<$Res> {
  _$LoadingHeaderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoadingHeaderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetloadingHeaderStateImplCopyWith<$Res> {
  factory _$$GetloadingHeaderStateImplCopyWith(
          _$GetloadingHeaderStateImpl value,
          $Res Function(_$GetloadingHeaderStateImpl) then) =
      __$$GetloadingHeaderStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<LoadingHeadermodel>? loadingheaders});
}

/// @nodoc
class __$$GetloadingHeaderStateImplCopyWithImpl<$Res>
    extends _$LoadingHeaderStateCopyWithImpl<$Res, _$GetloadingHeaderStateImpl>
    implements _$$GetloadingHeaderStateImplCopyWith<$Res> {
  __$$GetloadingHeaderStateImplCopyWithImpl(_$GetloadingHeaderStateImpl _value,
      $Res Function(_$GetloadingHeaderStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoadingHeaderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadingheaders = freezed,
  }) {
    return _then(_$GetloadingHeaderStateImpl(
      loadingheaders: freezed == loadingheaders
          ? _value._loadingheaders
          : loadingheaders // ignore: cast_nullable_to_non_nullable
              as List<LoadingHeadermodel>?,
    ));
  }
}

/// @nodoc

class _$GetloadingHeaderStateImpl implements GetloadingHeaderState {
  const _$GetloadingHeaderStateImpl(
      {required final List<LoadingHeadermodel>? loadingheaders})
      : _loadingheaders = loadingheaders;

  final List<LoadingHeadermodel>? _loadingheaders;
  @override
  List<LoadingHeadermodel>? get loadingheaders {
    final value = _loadingheaders;
    if (value == null) return null;
    if (_loadingheaders is EqualUnmodifiableListView) return _loadingheaders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LoadingHeaderState.getloadingHeaderState(loadingheaders: $loadingheaders)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetloadingHeaderStateImpl &&
            const DeepCollectionEquality()
                .equals(other._loadingheaders, _loadingheaders));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_loadingheaders));

  /// Create a copy of LoadingHeaderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetloadingHeaderStateImplCopyWith<_$GetloadingHeaderStateImpl>
      get copyWith => __$$GetloadingHeaderStateImplCopyWithImpl<
          _$GetloadingHeaderStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<LoadingHeadermodel>? loadingheaders)
        getloadingHeaderState,
    required TResult Function() loadingHeaderFailedState,
  }) {
    return getloadingHeaderState(loadingheaders);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<LoadingHeadermodel>? loadingheaders)?
        getloadingHeaderState,
    TResult? Function()? loadingHeaderFailedState,
  }) {
    return getloadingHeaderState?.call(loadingheaders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<LoadingHeadermodel>? loadingheaders)?
        getloadingHeaderState,
    TResult Function()? loadingHeaderFailedState,
    required TResult orElse(),
  }) {
    if (getloadingHeaderState != null) {
      return getloadingHeaderState(loadingheaders);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetloadingHeaderState value)
        getloadingHeaderState,
    required TResult Function(LoadingHeaderFailedState value)
        loadingHeaderFailedState,
  }) {
    return getloadingHeaderState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetloadingHeaderState value)? getloadingHeaderState,
    TResult? Function(LoadingHeaderFailedState value)? loadingHeaderFailedState,
  }) {
    return getloadingHeaderState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetloadingHeaderState value)? getloadingHeaderState,
    TResult Function(LoadingHeaderFailedState value)? loadingHeaderFailedState,
    required TResult orElse(),
  }) {
    if (getloadingHeaderState != null) {
      return getloadingHeaderState(this);
    }
    return orElse();
  }
}

abstract class GetloadingHeaderState implements LoadingHeaderState {
  const factory GetloadingHeaderState(
          {required final List<LoadingHeadermodel>? loadingheaders}) =
      _$GetloadingHeaderStateImpl;

  List<LoadingHeadermodel>? get loadingheaders;

  /// Create a copy of LoadingHeaderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetloadingHeaderStateImplCopyWith<_$GetloadingHeaderStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingHeaderFailedStateImplCopyWith<$Res> {
  factory _$$LoadingHeaderFailedStateImplCopyWith(
          _$LoadingHeaderFailedStateImpl value,
          $Res Function(_$LoadingHeaderFailedStateImpl) then) =
      __$$LoadingHeaderFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingHeaderFailedStateImplCopyWithImpl<$Res>
    extends _$LoadingHeaderStateCopyWithImpl<$Res,
        _$LoadingHeaderFailedStateImpl>
    implements _$$LoadingHeaderFailedStateImplCopyWith<$Res> {
  __$$LoadingHeaderFailedStateImplCopyWithImpl(
      _$LoadingHeaderFailedStateImpl _value,
      $Res Function(_$LoadingHeaderFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoadingHeaderState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingHeaderFailedStateImpl implements LoadingHeaderFailedState {
  const _$LoadingHeaderFailedStateImpl();

  @override
  String toString() {
    return 'LoadingHeaderState.loadingHeaderFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingHeaderFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<LoadingHeadermodel>? loadingheaders)
        getloadingHeaderState,
    required TResult Function() loadingHeaderFailedState,
  }) {
    return loadingHeaderFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<LoadingHeadermodel>? loadingheaders)?
        getloadingHeaderState,
    TResult? Function()? loadingHeaderFailedState,
  }) {
    return loadingHeaderFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<LoadingHeadermodel>? loadingheaders)?
        getloadingHeaderState,
    TResult Function()? loadingHeaderFailedState,
    required TResult orElse(),
  }) {
    if (loadingHeaderFailedState != null) {
      return loadingHeaderFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetloadingHeaderState value)
        getloadingHeaderState,
    required TResult Function(LoadingHeaderFailedState value)
        loadingHeaderFailedState,
  }) {
    return loadingHeaderFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetloadingHeaderState value)? getloadingHeaderState,
    TResult? Function(LoadingHeaderFailedState value)? loadingHeaderFailedState,
  }) {
    return loadingHeaderFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetloadingHeaderState value)? getloadingHeaderState,
    TResult Function(LoadingHeaderFailedState value)? loadingHeaderFailedState,
    required TResult orElse(),
  }) {
    if (loadingHeaderFailedState != null) {
      return loadingHeaderFailedState(this);
    }
    return orElse();
  }
}

abstract class LoadingHeaderFailedState implements LoadingHeaderState {
  const factory LoadingHeaderFailedState() = _$LoadingHeaderFailedStateImpl;
}
