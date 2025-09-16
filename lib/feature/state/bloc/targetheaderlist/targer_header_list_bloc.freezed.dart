// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'targer_header_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TargerHeaderListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fromDate, String searchQuery)
        getTargetHeaderItemsEvent,
    required TResult Function() clearTargetHeaderItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fromDate, String searchQuery)?
        getTargetHeaderItemsEvent,
    TResult? Function()? clearTargetHeaderItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fromDate, String searchQuery)?
        getTargetHeaderItemsEvent,
    TResult Function()? clearTargetHeaderItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTargetHeaderItemsEvent value)
        getTargetHeaderItemsEvent,
    required TResult Function(ClearTargetHeaderItems value)
        clearTargetHeaderItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTargetHeaderItemsEvent value)?
        getTargetHeaderItemsEvent,
    TResult? Function(ClearTargetHeaderItems value)? clearTargetHeaderItems,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTargetHeaderItemsEvent value)?
        getTargetHeaderItemsEvent,
    TResult Function(ClearTargetHeaderItems value)? clearTargetHeaderItems,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TargerHeaderListEventCopyWith<$Res> {
  factory $TargerHeaderListEventCopyWith(TargerHeaderListEvent value,
          $Res Function(TargerHeaderListEvent) then) =
      _$TargerHeaderListEventCopyWithImpl<$Res, TargerHeaderListEvent>;
}

/// @nodoc
class _$TargerHeaderListEventCopyWithImpl<$Res,
        $Val extends TargerHeaderListEvent>
    implements $TargerHeaderListEventCopyWith<$Res> {
  _$TargerHeaderListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TargerHeaderListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetTargetHeaderItemsEventImplCopyWith<$Res> {
  factory _$$GetTargetHeaderItemsEventImplCopyWith(
          _$GetTargetHeaderItemsEventImpl value,
          $Res Function(_$GetTargetHeaderItemsEventImpl) then) =
      __$$GetTargetHeaderItemsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String fromDate, String searchQuery});
}

/// @nodoc
class __$$GetTargetHeaderItemsEventImplCopyWithImpl<$Res>
    extends _$TargerHeaderListEventCopyWithImpl<$Res,
        _$GetTargetHeaderItemsEventImpl>
    implements _$$GetTargetHeaderItemsEventImplCopyWith<$Res> {
  __$$GetTargetHeaderItemsEventImplCopyWithImpl(
      _$GetTargetHeaderItemsEventImpl _value,
      $Res Function(_$GetTargetHeaderItemsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TargerHeaderListEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fromDate = null,
    Object? searchQuery = null,
  }) {
    return _then(_$GetTargetHeaderItemsEventImpl(
      fromDate: null == fromDate
          ? _value.fromDate
          : fromDate // ignore: cast_nullable_to_non_nullable
              as String,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetTargetHeaderItemsEventImpl implements GetTargetHeaderItemsEvent {
  const _$GetTargetHeaderItemsEventImpl(
      {required this.fromDate, required this.searchQuery});

  @override
  final String fromDate;
  @override
  final String searchQuery;

  @override
  String toString() {
    return 'TargerHeaderListEvent.getTargetHeaderItemsEvent(fromDate: $fromDate, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTargetHeaderItemsEventImpl &&
            (identical(other.fromDate, fromDate) ||
                other.fromDate == fromDate) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fromDate, searchQuery);

  /// Create a copy of TargerHeaderListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTargetHeaderItemsEventImplCopyWith<_$GetTargetHeaderItemsEventImpl>
      get copyWith => __$$GetTargetHeaderItemsEventImplCopyWithImpl<
          _$GetTargetHeaderItemsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fromDate, String searchQuery)
        getTargetHeaderItemsEvent,
    required TResult Function() clearTargetHeaderItems,
  }) {
    return getTargetHeaderItemsEvent(fromDate, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fromDate, String searchQuery)?
        getTargetHeaderItemsEvent,
    TResult? Function()? clearTargetHeaderItems,
  }) {
    return getTargetHeaderItemsEvent?.call(fromDate, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fromDate, String searchQuery)?
        getTargetHeaderItemsEvent,
    TResult Function()? clearTargetHeaderItems,
    required TResult orElse(),
  }) {
    if (getTargetHeaderItemsEvent != null) {
      return getTargetHeaderItemsEvent(fromDate, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTargetHeaderItemsEvent value)
        getTargetHeaderItemsEvent,
    required TResult Function(ClearTargetHeaderItems value)
        clearTargetHeaderItems,
  }) {
    return getTargetHeaderItemsEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTargetHeaderItemsEvent value)?
        getTargetHeaderItemsEvent,
    TResult? Function(ClearTargetHeaderItems value)? clearTargetHeaderItems,
  }) {
    return getTargetHeaderItemsEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTargetHeaderItemsEvent value)?
        getTargetHeaderItemsEvent,
    TResult Function(ClearTargetHeaderItems value)? clearTargetHeaderItems,
    required TResult orElse(),
  }) {
    if (getTargetHeaderItemsEvent != null) {
      return getTargetHeaderItemsEvent(this);
    }
    return orElse();
  }
}

abstract class GetTargetHeaderItemsEvent implements TargerHeaderListEvent {
  const factory GetTargetHeaderItemsEvent(
      {required final String fromDate,
      required final String searchQuery}) = _$GetTargetHeaderItemsEventImpl;

  String get fromDate;
  String get searchQuery;

  /// Create a copy of TargerHeaderListEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetTargetHeaderItemsEventImplCopyWith<_$GetTargetHeaderItemsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearTargetHeaderItemsImplCopyWith<$Res> {
  factory _$$ClearTargetHeaderItemsImplCopyWith(
          _$ClearTargetHeaderItemsImpl value,
          $Res Function(_$ClearTargetHeaderItemsImpl) then) =
      __$$ClearTargetHeaderItemsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearTargetHeaderItemsImplCopyWithImpl<$Res>
    extends _$TargerHeaderListEventCopyWithImpl<$Res,
        _$ClearTargetHeaderItemsImpl>
    implements _$$ClearTargetHeaderItemsImplCopyWith<$Res> {
  __$$ClearTargetHeaderItemsImplCopyWithImpl(
      _$ClearTargetHeaderItemsImpl _value,
      $Res Function(_$ClearTargetHeaderItemsImpl) _then)
      : super(_value, _then);

  /// Create a copy of TargerHeaderListEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearTargetHeaderItemsImpl implements ClearTargetHeaderItems {
  const _$ClearTargetHeaderItemsImpl();

  @override
  String toString() {
    return 'TargerHeaderListEvent.clearTargetHeaderItems()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearTargetHeaderItemsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String fromDate, String searchQuery)
        getTargetHeaderItemsEvent,
    required TResult Function() clearTargetHeaderItems,
  }) {
    return clearTargetHeaderItems();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String fromDate, String searchQuery)?
        getTargetHeaderItemsEvent,
    TResult? Function()? clearTargetHeaderItems,
  }) {
    return clearTargetHeaderItems?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String fromDate, String searchQuery)?
        getTargetHeaderItemsEvent,
    TResult Function()? clearTargetHeaderItems,
    required TResult orElse(),
  }) {
    if (clearTargetHeaderItems != null) {
      return clearTargetHeaderItems();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTargetHeaderItemsEvent value)
        getTargetHeaderItemsEvent,
    required TResult Function(ClearTargetHeaderItems value)
        clearTargetHeaderItems,
  }) {
    return clearTargetHeaderItems(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTargetHeaderItemsEvent value)?
        getTargetHeaderItemsEvent,
    TResult? Function(ClearTargetHeaderItems value)? clearTargetHeaderItems,
  }) {
    return clearTargetHeaderItems?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTargetHeaderItemsEvent value)?
        getTargetHeaderItemsEvent,
    TResult Function(ClearTargetHeaderItems value)? clearTargetHeaderItems,
    required TResult orElse(),
  }) {
    if (clearTargetHeaderItems != null) {
      return clearTargetHeaderItems(this);
    }
    return orElse();
  }
}

abstract class ClearTargetHeaderItems implements TargerHeaderListEvent {
  const factory ClearTargetHeaderItems() = _$ClearTargetHeaderItemsImpl;
}

/// @nodoc
mixin _$TargerHeaderListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TargetHeaderListModel>? header)
        getTargetHeaderItemsState,
    required TResult Function() targetHeaderItemsFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TargetHeaderListModel>? header)?
        getTargetHeaderItemsState,
    TResult? Function()? targetHeaderItemsFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TargetHeaderListModel>? header)?
        getTargetHeaderItemsState,
    TResult Function()? targetHeaderItemsFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTargetHeaderItemsState value)
        getTargetHeaderItemsState,
    required TResult Function(TargetHeaderItemsFailed value)
        targetHeaderItemsFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTargetHeaderItemsState value)?
        getTargetHeaderItemsState,
    TResult? Function(TargetHeaderItemsFailed value)? targetHeaderItemsFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTargetHeaderItemsState value)?
        getTargetHeaderItemsState,
    TResult Function(TargetHeaderItemsFailed value)? targetHeaderItemsFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TargerHeaderListStateCopyWith<$Res> {
  factory $TargerHeaderListStateCopyWith(TargerHeaderListState value,
          $Res Function(TargerHeaderListState) then) =
      _$TargerHeaderListStateCopyWithImpl<$Res, TargerHeaderListState>;
}

/// @nodoc
class _$TargerHeaderListStateCopyWithImpl<$Res,
        $Val extends TargerHeaderListState>
    implements $TargerHeaderListStateCopyWith<$Res> {
  _$TargerHeaderListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TargerHeaderListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetTargetHeaderItemsStateImplCopyWith<$Res> {
  factory _$$GetTargetHeaderItemsStateImplCopyWith(
          _$GetTargetHeaderItemsStateImpl value,
          $Res Function(_$GetTargetHeaderItemsStateImpl) then) =
      __$$GetTargetHeaderItemsStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TargetHeaderListModel>? header});
}

/// @nodoc
class __$$GetTargetHeaderItemsStateImplCopyWithImpl<$Res>
    extends _$TargerHeaderListStateCopyWithImpl<$Res,
        _$GetTargetHeaderItemsStateImpl>
    implements _$$GetTargetHeaderItemsStateImplCopyWith<$Res> {
  __$$GetTargetHeaderItemsStateImplCopyWithImpl(
      _$GetTargetHeaderItemsStateImpl _value,
      $Res Function(_$GetTargetHeaderItemsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TargerHeaderListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? header = freezed,
  }) {
    return _then(_$GetTargetHeaderItemsStateImpl(
      header: freezed == header
          ? _value._header
          : header // ignore: cast_nullable_to_non_nullable
              as List<TargetHeaderListModel>?,
    ));
  }
}

/// @nodoc

class _$GetTargetHeaderItemsStateImpl implements GetTargetHeaderItemsState {
  const _$GetTargetHeaderItemsStateImpl(
      {required final List<TargetHeaderListModel>? header})
      : _header = header;

  final List<TargetHeaderListModel>? _header;
  @override
  List<TargetHeaderListModel>? get header {
    final value = _header;
    if (value == null) return null;
    if (_header is EqualUnmodifiableListView) return _header;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TargerHeaderListState.getTargetHeaderItemsState(header: $header)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTargetHeaderItemsStateImpl &&
            const DeepCollectionEquality().equals(other._header, _header));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_header));

  /// Create a copy of TargerHeaderListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTargetHeaderItemsStateImplCopyWith<_$GetTargetHeaderItemsStateImpl>
      get copyWith => __$$GetTargetHeaderItemsStateImplCopyWithImpl<
          _$GetTargetHeaderItemsStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TargetHeaderListModel>? header)
        getTargetHeaderItemsState,
    required TResult Function() targetHeaderItemsFailed,
  }) {
    return getTargetHeaderItemsState(header);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TargetHeaderListModel>? header)?
        getTargetHeaderItemsState,
    TResult? Function()? targetHeaderItemsFailed,
  }) {
    return getTargetHeaderItemsState?.call(header);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TargetHeaderListModel>? header)?
        getTargetHeaderItemsState,
    TResult Function()? targetHeaderItemsFailed,
    required TResult orElse(),
  }) {
    if (getTargetHeaderItemsState != null) {
      return getTargetHeaderItemsState(header);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTargetHeaderItemsState value)
        getTargetHeaderItemsState,
    required TResult Function(TargetHeaderItemsFailed value)
        targetHeaderItemsFailed,
  }) {
    return getTargetHeaderItemsState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTargetHeaderItemsState value)?
        getTargetHeaderItemsState,
    TResult? Function(TargetHeaderItemsFailed value)? targetHeaderItemsFailed,
  }) {
    return getTargetHeaderItemsState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTargetHeaderItemsState value)?
        getTargetHeaderItemsState,
    TResult Function(TargetHeaderItemsFailed value)? targetHeaderItemsFailed,
    required TResult orElse(),
  }) {
    if (getTargetHeaderItemsState != null) {
      return getTargetHeaderItemsState(this);
    }
    return orElse();
  }
}

abstract class GetTargetHeaderItemsState implements TargerHeaderListState {
  const factory GetTargetHeaderItemsState(
          {required final List<TargetHeaderListModel>? header}) =
      _$GetTargetHeaderItemsStateImpl;

  List<TargetHeaderListModel>? get header;

  /// Create a copy of TargerHeaderListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetTargetHeaderItemsStateImplCopyWith<_$GetTargetHeaderItemsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TargetHeaderItemsFailedImplCopyWith<$Res> {
  factory _$$TargetHeaderItemsFailedImplCopyWith(
          _$TargetHeaderItemsFailedImpl value,
          $Res Function(_$TargetHeaderItemsFailedImpl) then) =
      __$$TargetHeaderItemsFailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TargetHeaderItemsFailedImplCopyWithImpl<$Res>
    extends _$TargerHeaderListStateCopyWithImpl<$Res,
        _$TargetHeaderItemsFailedImpl>
    implements _$$TargetHeaderItemsFailedImplCopyWith<$Res> {
  __$$TargetHeaderItemsFailedImplCopyWithImpl(
      _$TargetHeaderItemsFailedImpl _value,
      $Res Function(_$TargetHeaderItemsFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TargerHeaderListState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TargetHeaderItemsFailedImpl implements TargetHeaderItemsFailed {
  const _$TargetHeaderItemsFailedImpl();

  @override
  String toString() {
    return 'TargerHeaderListState.targetHeaderItemsFailed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TargetHeaderItemsFailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<TargetHeaderListModel>? header)
        getTargetHeaderItemsState,
    required TResult Function() targetHeaderItemsFailed,
  }) {
    return targetHeaderItemsFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<TargetHeaderListModel>? header)?
        getTargetHeaderItemsState,
    TResult? Function()? targetHeaderItemsFailed,
  }) {
    return targetHeaderItemsFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<TargetHeaderListModel>? header)?
        getTargetHeaderItemsState,
    TResult Function()? targetHeaderItemsFailed,
    required TResult orElse(),
  }) {
    if (targetHeaderItemsFailed != null) {
      return targetHeaderItemsFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTargetHeaderItemsState value)
        getTargetHeaderItemsState,
    required TResult Function(TargetHeaderItemsFailed value)
        targetHeaderItemsFailed,
  }) {
    return targetHeaderItemsFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTargetHeaderItemsState value)?
        getTargetHeaderItemsState,
    TResult? Function(TargetHeaderItemsFailed value)? targetHeaderItemsFailed,
  }) {
    return targetHeaderItemsFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTargetHeaderItemsState value)?
        getTargetHeaderItemsState,
    TResult Function(TargetHeaderItemsFailed value)? targetHeaderItemsFailed,
    required TResult orElse(),
  }) {
    if (targetHeaderItemsFailed != null) {
      return targetHeaderItemsFailed(this);
    }
    return orElse();
  }
}

abstract class TargetHeaderItemsFailed implements TargerHeaderListState {
  const factory TargetHeaderItemsFailed() = _$TargetHeaderItemsFailedImpl;
}
