// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loading_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoadingDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String iD, String searchQuery)
        getloadingDetailEvent,
    required TResult Function() clearLoadingDetailEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String iD, String searchQuery)? getloadingDetailEvent,
    TResult? Function()? clearLoadingDetailEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String iD, String searchQuery)? getloadingDetailEvent,
    TResult Function()? clearLoadingDetailEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetloadingDetailEvent value)
        getloadingDetailEvent,
    required TResult Function(ClearLoadingDetailEvent value)
        clearLoadingDetailEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetloadingDetailEvent value)? getloadingDetailEvent,
    TResult? Function(ClearLoadingDetailEvent value)? clearLoadingDetailEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetloadingDetailEvent value)? getloadingDetailEvent,
    TResult Function(ClearLoadingDetailEvent value)? clearLoadingDetailEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingDetailEventCopyWith<$Res> {
  factory $LoadingDetailEventCopyWith(
          LoadingDetailEvent value, $Res Function(LoadingDetailEvent) then) =
      _$LoadingDetailEventCopyWithImpl<$Res, LoadingDetailEvent>;
}

/// @nodoc
class _$LoadingDetailEventCopyWithImpl<$Res, $Val extends LoadingDetailEvent>
    implements $LoadingDetailEventCopyWith<$Res> {
  _$LoadingDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoadingDetailEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetloadingDetailEventImplCopyWith<$Res> {
  factory _$$GetloadingDetailEventImplCopyWith(
          _$GetloadingDetailEventImpl value,
          $Res Function(_$GetloadingDetailEventImpl) then) =
      __$$GetloadingDetailEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String iD, String searchQuery});
}

/// @nodoc
class __$$GetloadingDetailEventImplCopyWithImpl<$Res>
    extends _$LoadingDetailEventCopyWithImpl<$Res, _$GetloadingDetailEventImpl>
    implements _$$GetloadingDetailEventImplCopyWith<$Res> {
  __$$GetloadingDetailEventImplCopyWithImpl(_$GetloadingDetailEventImpl _value,
      $Res Function(_$GetloadingDetailEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoadingDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iD = null,
    Object? searchQuery = null,
  }) {
    return _then(_$GetloadingDetailEventImpl(
      iD: null == iD
          ? _value.iD
          : iD // ignore: cast_nullable_to_non_nullable
              as String,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetloadingDetailEventImpl implements GetloadingDetailEvent {
  const _$GetloadingDetailEventImpl(
      {required this.iD, required this.searchQuery});

  @override
  final String iD;
  @override
  final String searchQuery;

  @override
  String toString() {
    return 'LoadingDetailEvent.getloadingDetailEvent(iD: $iD, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetloadingDetailEventImpl &&
            (identical(other.iD, iD) || other.iD == iD) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, iD, searchQuery);

  /// Create a copy of LoadingDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetloadingDetailEventImplCopyWith<_$GetloadingDetailEventImpl>
      get copyWith => __$$GetloadingDetailEventImplCopyWithImpl<
          _$GetloadingDetailEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String iD, String searchQuery)
        getloadingDetailEvent,
    required TResult Function() clearLoadingDetailEvent,
  }) {
    return getloadingDetailEvent(iD, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String iD, String searchQuery)? getloadingDetailEvent,
    TResult? Function()? clearLoadingDetailEvent,
  }) {
    return getloadingDetailEvent?.call(iD, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String iD, String searchQuery)? getloadingDetailEvent,
    TResult Function()? clearLoadingDetailEvent,
    required TResult orElse(),
  }) {
    if (getloadingDetailEvent != null) {
      return getloadingDetailEvent(iD, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetloadingDetailEvent value)
        getloadingDetailEvent,
    required TResult Function(ClearLoadingDetailEvent value)
        clearLoadingDetailEvent,
  }) {
    return getloadingDetailEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetloadingDetailEvent value)? getloadingDetailEvent,
    TResult? Function(ClearLoadingDetailEvent value)? clearLoadingDetailEvent,
  }) {
    return getloadingDetailEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetloadingDetailEvent value)? getloadingDetailEvent,
    TResult Function(ClearLoadingDetailEvent value)? clearLoadingDetailEvent,
    required TResult orElse(),
  }) {
    if (getloadingDetailEvent != null) {
      return getloadingDetailEvent(this);
    }
    return orElse();
  }
}

abstract class GetloadingDetailEvent implements LoadingDetailEvent {
  const factory GetloadingDetailEvent(
      {required final String iD,
      required final String searchQuery}) = _$GetloadingDetailEventImpl;

  String get iD;
  String get searchQuery;

  /// Create a copy of LoadingDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetloadingDetailEventImplCopyWith<_$GetloadingDetailEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearLoadingDetailEventImplCopyWith<$Res> {
  factory _$$ClearLoadingDetailEventImplCopyWith(
          _$ClearLoadingDetailEventImpl value,
          $Res Function(_$ClearLoadingDetailEventImpl) then) =
      __$$ClearLoadingDetailEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearLoadingDetailEventImplCopyWithImpl<$Res>
    extends _$LoadingDetailEventCopyWithImpl<$Res,
        _$ClearLoadingDetailEventImpl>
    implements _$$ClearLoadingDetailEventImplCopyWith<$Res> {
  __$$ClearLoadingDetailEventImplCopyWithImpl(
      _$ClearLoadingDetailEventImpl _value,
      $Res Function(_$ClearLoadingDetailEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoadingDetailEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearLoadingDetailEventImpl implements ClearLoadingDetailEvent {
  const _$ClearLoadingDetailEventImpl();

  @override
  String toString() {
    return 'LoadingDetailEvent.clearLoadingDetailEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearLoadingDetailEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String iD, String searchQuery)
        getloadingDetailEvent,
    required TResult Function() clearLoadingDetailEvent,
  }) {
    return clearLoadingDetailEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String iD, String searchQuery)? getloadingDetailEvent,
    TResult? Function()? clearLoadingDetailEvent,
  }) {
    return clearLoadingDetailEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String iD, String searchQuery)? getloadingDetailEvent,
    TResult Function()? clearLoadingDetailEvent,
    required TResult orElse(),
  }) {
    if (clearLoadingDetailEvent != null) {
      return clearLoadingDetailEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetloadingDetailEvent value)
        getloadingDetailEvent,
    required TResult Function(ClearLoadingDetailEvent value)
        clearLoadingDetailEvent,
  }) {
    return clearLoadingDetailEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetloadingDetailEvent value)? getloadingDetailEvent,
    TResult? Function(ClearLoadingDetailEvent value)? clearLoadingDetailEvent,
  }) {
    return clearLoadingDetailEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetloadingDetailEvent value)? getloadingDetailEvent,
    TResult Function(ClearLoadingDetailEvent value)? clearLoadingDetailEvent,
    required TResult orElse(),
  }) {
    if (clearLoadingDetailEvent != null) {
      return clearLoadingDetailEvent(this);
    }
    return orElse();
  }
}

abstract class ClearLoadingDetailEvent implements LoadingDetailEvent {
  const factory ClearLoadingDetailEvent() = _$ClearLoadingDetailEventImpl;
}

/// @nodoc
mixin _$LoadingDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<LoadingDetailModel>? detail)
        getloadingDetail,
    required TResult Function() loadingDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<LoadingDetailModel>? detail)? getloadingDetail,
    TResult? Function()? loadingDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<LoadingDetailModel>? detail)? getloadingDetail,
    TResult Function()? loadingDetailFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetloadingDetail value) getloadingDetail,
    required TResult Function(LoadingDetailFailedState value)
        loadingDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetloadingDetail value)? getloadingDetail,
    TResult? Function(LoadingDetailFailedState value)? loadingDetailFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetloadingDetail value)? getloadingDetail,
    TResult Function(LoadingDetailFailedState value)? loadingDetailFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingDetailStateCopyWith<$Res> {
  factory $LoadingDetailStateCopyWith(
          LoadingDetailState value, $Res Function(LoadingDetailState) then) =
      _$LoadingDetailStateCopyWithImpl<$Res, LoadingDetailState>;
}

/// @nodoc
class _$LoadingDetailStateCopyWithImpl<$Res, $Val extends LoadingDetailState>
    implements $LoadingDetailStateCopyWith<$Res> {
  _$LoadingDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoadingDetailState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetloadingDetailImplCopyWith<$Res> {
  factory _$$GetloadingDetailImplCopyWith(_$GetloadingDetailImpl value,
          $Res Function(_$GetloadingDetailImpl) then) =
      __$$GetloadingDetailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<LoadingDetailModel>? detail});
}

/// @nodoc
class __$$GetloadingDetailImplCopyWithImpl<$Res>
    extends _$LoadingDetailStateCopyWithImpl<$Res, _$GetloadingDetailImpl>
    implements _$$GetloadingDetailImplCopyWith<$Res> {
  __$$GetloadingDetailImplCopyWithImpl(_$GetloadingDetailImpl _value,
      $Res Function(_$GetloadingDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoadingDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detail = freezed,
  }) {
    return _then(_$GetloadingDetailImpl(
      detail: freezed == detail
          ? _value._detail
          : detail // ignore: cast_nullable_to_non_nullable
              as List<LoadingDetailModel>?,
    ));
  }
}

/// @nodoc

class _$GetloadingDetailImpl implements GetloadingDetail {
  const _$GetloadingDetailImpl(
      {required final List<LoadingDetailModel>? detail})
      : _detail = detail;

  final List<LoadingDetailModel>? _detail;
  @override
  List<LoadingDetailModel>? get detail {
    final value = _detail;
    if (value == null) return null;
    if (_detail is EqualUnmodifiableListView) return _detail;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LoadingDetailState.getloadingDetail(detail: $detail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetloadingDetailImpl &&
            const DeepCollectionEquality().equals(other._detail, _detail));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_detail));

  /// Create a copy of LoadingDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetloadingDetailImplCopyWith<_$GetloadingDetailImpl> get copyWith =>
      __$$GetloadingDetailImplCopyWithImpl<_$GetloadingDetailImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<LoadingDetailModel>? detail)
        getloadingDetail,
    required TResult Function() loadingDetailFailedState,
  }) {
    return getloadingDetail(detail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<LoadingDetailModel>? detail)? getloadingDetail,
    TResult? Function()? loadingDetailFailedState,
  }) {
    return getloadingDetail?.call(detail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<LoadingDetailModel>? detail)? getloadingDetail,
    TResult Function()? loadingDetailFailedState,
    required TResult orElse(),
  }) {
    if (getloadingDetail != null) {
      return getloadingDetail(detail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetloadingDetail value) getloadingDetail,
    required TResult Function(LoadingDetailFailedState value)
        loadingDetailFailedState,
  }) {
    return getloadingDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetloadingDetail value)? getloadingDetail,
    TResult? Function(LoadingDetailFailedState value)? loadingDetailFailedState,
  }) {
    return getloadingDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetloadingDetail value)? getloadingDetail,
    TResult Function(LoadingDetailFailedState value)? loadingDetailFailedState,
    required TResult orElse(),
  }) {
    if (getloadingDetail != null) {
      return getloadingDetail(this);
    }
    return orElse();
  }
}

abstract class GetloadingDetail implements LoadingDetailState {
  const factory GetloadingDetail(
          {required final List<LoadingDetailModel>? detail}) =
      _$GetloadingDetailImpl;

  List<LoadingDetailModel>? get detail;

  /// Create a copy of LoadingDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetloadingDetailImplCopyWith<_$GetloadingDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingDetailFailedStateImplCopyWith<$Res> {
  factory _$$LoadingDetailFailedStateImplCopyWith(
          _$LoadingDetailFailedStateImpl value,
          $Res Function(_$LoadingDetailFailedStateImpl) then) =
      __$$LoadingDetailFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingDetailFailedStateImplCopyWithImpl<$Res>
    extends _$LoadingDetailStateCopyWithImpl<$Res,
        _$LoadingDetailFailedStateImpl>
    implements _$$LoadingDetailFailedStateImplCopyWith<$Res> {
  __$$LoadingDetailFailedStateImplCopyWithImpl(
      _$LoadingDetailFailedStateImpl _value,
      $Res Function(_$LoadingDetailFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoadingDetailState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingDetailFailedStateImpl implements LoadingDetailFailedState {
  const _$LoadingDetailFailedStateImpl();

  @override
  String toString() {
    return 'LoadingDetailState.loadingDetailFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingDetailFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<LoadingDetailModel>? detail)
        getloadingDetail,
    required TResult Function() loadingDetailFailedState,
  }) {
    return loadingDetailFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<LoadingDetailModel>? detail)? getloadingDetail,
    TResult? Function()? loadingDetailFailedState,
  }) {
    return loadingDetailFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<LoadingDetailModel>? detail)? getloadingDetail,
    TResult Function()? loadingDetailFailedState,
    required TResult orElse(),
  }) {
    if (loadingDetailFailedState != null) {
      return loadingDetailFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetloadingDetail value) getloadingDetail,
    required TResult Function(LoadingDetailFailedState value)
        loadingDetailFailedState,
  }) {
    return loadingDetailFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetloadingDetail value)? getloadingDetail,
    TResult? Function(LoadingDetailFailedState value)? loadingDetailFailedState,
  }) {
    return loadingDetailFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetloadingDetail value)? getloadingDetail,
    TResult Function(LoadingDetailFailedState value)? loadingDetailFailedState,
    required TResult orElse(),
  }) {
    if (loadingDetailFailedState != null) {
      return loadingDetailFailedState(this);
    }
    return orElse();
  }
}

abstract class LoadingDetailFailedState implements LoadingDetailState {
  const factory LoadingDetailFailedState() = _$LoadingDetailFailedStateImpl;
}
