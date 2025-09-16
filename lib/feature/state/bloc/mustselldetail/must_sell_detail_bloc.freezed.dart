// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'must_sell_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MustSellDetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String headerID, String searchQuery)
        getMustSellDetailsEvent,
    required TResult Function() clearMustSellDetailsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String headerID, String searchQuery)?
        getMustSellDetailsEvent,
    TResult? Function()? clearMustSellDetailsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String headerID, String searchQuery)?
        getMustSellDetailsEvent,
    TResult Function()? clearMustSellDetailsEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMustSellDetailsEvent value)
        getMustSellDetailsEvent,
    required TResult Function(ClearMustSellDetailsEvent value)
        clearMustSellDetailsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMustSellDetailsEvent value)? getMustSellDetailsEvent,
    TResult? Function(ClearMustSellDetailsEvent value)?
        clearMustSellDetailsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMustSellDetailsEvent value)? getMustSellDetailsEvent,
    TResult Function(ClearMustSellDetailsEvent value)?
        clearMustSellDetailsEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MustSellDetailEventCopyWith<$Res> {
  factory $MustSellDetailEventCopyWith(
          MustSellDetailEvent value, $Res Function(MustSellDetailEvent) then) =
      _$MustSellDetailEventCopyWithImpl<$Res, MustSellDetailEvent>;
}

/// @nodoc
class _$MustSellDetailEventCopyWithImpl<$Res, $Val extends MustSellDetailEvent>
    implements $MustSellDetailEventCopyWith<$Res> {
  _$MustSellDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MustSellDetailEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetMustSellDetailsEventImplCopyWith<$Res> {
  factory _$$GetMustSellDetailsEventImplCopyWith(
          _$GetMustSellDetailsEventImpl value,
          $Res Function(_$GetMustSellDetailsEventImpl) then) =
      __$$GetMustSellDetailsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String headerID, String searchQuery});
}

/// @nodoc
class __$$GetMustSellDetailsEventImplCopyWithImpl<$Res>
    extends _$MustSellDetailEventCopyWithImpl<$Res,
        _$GetMustSellDetailsEventImpl>
    implements _$$GetMustSellDetailsEventImplCopyWith<$Res> {
  __$$GetMustSellDetailsEventImplCopyWithImpl(
      _$GetMustSellDetailsEventImpl _value,
      $Res Function(_$GetMustSellDetailsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of MustSellDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headerID = null,
    Object? searchQuery = null,
  }) {
    return _then(_$GetMustSellDetailsEventImpl(
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

class _$GetMustSellDetailsEventImpl implements GetMustSellDetailsEvent {
  const _$GetMustSellDetailsEventImpl(
      {required this.headerID, required this.searchQuery});

  @override
  final String headerID;
  @override
  final String searchQuery;

  @override
  String toString() {
    return 'MustSellDetailEvent.getMustSellDetailsEvent(headerID: $headerID, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMustSellDetailsEventImpl &&
            (identical(other.headerID, headerID) ||
                other.headerID == headerID) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, headerID, searchQuery);

  /// Create a copy of MustSellDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMustSellDetailsEventImplCopyWith<_$GetMustSellDetailsEventImpl>
      get copyWith => __$$GetMustSellDetailsEventImplCopyWithImpl<
          _$GetMustSellDetailsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String headerID, String searchQuery)
        getMustSellDetailsEvent,
    required TResult Function() clearMustSellDetailsEvent,
  }) {
    return getMustSellDetailsEvent(headerID, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String headerID, String searchQuery)?
        getMustSellDetailsEvent,
    TResult? Function()? clearMustSellDetailsEvent,
  }) {
    return getMustSellDetailsEvent?.call(headerID, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String headerID, String searchQuery)?
        getMustSellDetailsEvent,
    TResult Function()? clearMustSellDetailsEvent,
    required TResult orElse(),
  }) {
    if (getMustSellDetailsEvent != null) {
      return getMustSellDetailsEvent(headerID, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMustSellDetailsEvent value)
        getMustSellDetailsEvent,
    required TResult Function(ClearMustSellDetailsEvent value)
        clearMustSellDetailsEvent,
  }) {
    return getMustSellDetailsEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMustSellDetailsEvent value)? getMustSellDetailsEvent,
    TResult? Function(ClearMustSellDetailsEvent value)?
        clearMustSellDetailsEvent,
  }) {
    return getMustSellDetailsEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMustSellDetailsEvent value)? getMustSellDetailsEvent,
    TResult Function(ClearMustSellDetailsEvent value)?
        clearMustSellDetailsEvent,
    required TResult orElse(),
  }) {
    if (getMustSellDetailsEvent != null) {
      return getMustSellDetailsEvent(this);
    }
    return orElse();
  }
}

abstract class GetMustSellDetailsEvent implements MustSellDetailEvent {
  const factory GetMustSellDetailsEvent(
      {required final String headerID,
      required final String searchQuery}) = _$GetMustSellDetailsEventImpl;

  String get headerID;
  String get searchQuery;

  /// Create a copy of MustSellDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetMustSellDetailsEventImplCopyWith<_$GetMustSellDetailsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearMustSellDetailsEventImplCopyWith<$Res> {
  factory _$$ClearMustSellDetailsEventImplCopyWith(
          _$ClearMustSellDetailsEventImpl value,
          $Res Function(_$ClearMustSellDetailsEventImpl) then) =
      __$$ClearMustSellDetailsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearMustSellDetailsEventImplCopyWithImpl<$Res>
    extends _$MustSellDetailEventCopyWithImpl<$Res,
        _$ClearMustSellDetailsEventImpl>
    implements _$$ClearMustSellDetailsEventImplCopyWith<$Res> {
  __$$ClearMustSellDetailsEventImplCopyWithImpl(
      _$ClearMustSellDetailsEventImpl _value,
      $Res Function(_$ClearMustSellDetailsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of MustSellDetailEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearMustSellDetailsEventImpl implements ClearMustSellDetailsEvent {
  const _$ClearMustSellDetailsEventImpl();

  @override
  String toString() {
    return 'MustSellDetailEvent.clearMustSellDetailsEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearMustSellDetailsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String headerID, String searchQuery)
        getMustSellDetailsEvent,
    required TResult Function() clearMustSellDetailsEvent,
  }) {
    return clearMustSellDetailsEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String headerID, String searchQuery)?
        getMustSellDetailsEvent,
    TResult? Function()? clearMustSellDetailsEvent,
  }) {
    return clearMustSellDetailsEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String headerID, String searchQuery)?
        getMustSellDetailsEvent,
    TResult Function()? clearMustSellDetailsEvent,
    required TResult orElse(),
  }) {
    if (clearMustSellDetailsEvent != null) {
      return clearMustSellDetailsEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMustSellDetailsEvent value)
        getMustSellDetailsEvent,
    required TResult Function(ClearMustSellDetailsEvent value)
        clearMustSellDetailsEvent,
  }) {
    return clearMustSellDetailsEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMustSellDetailsEvent value)? getMustSellDetailsEvent,
    TResult? Function(ClearMustSellDetailsEvent value)?
        clearMustSellDetailsEvent,
  }) {
    return clearMustSellDetailsEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMustSellDetailsEvent value)? getMustSellDetailsEvent,
    TResult Function(ClearMustSellDetailsEvent value)?
        clearMustSellDetailsEvent,
    required TResult orElse(),
  }) {
    if (clearMustSellDetailsEvent != null) {
      return clearMustSellDetailsEvent(this);
    }
    return orElse();
  }
}

abstract class ClearMustSellDetailsEvent implements MustSellDetailEvent {
  const factory ClearMustSellDetailsEvent() = _$ClearMustSellDetailsEventImpl;
}

/// @nodoc
mixin _$MustSellDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MustSellDetailModel>? details)
        getMustSellDetailState,
    required TResult Function() mustSellDetailsFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MustSellDetailModel>? details)?
        getMustSellDetailState,
    TResult? Function()? mustSellDetailsFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MustSellDetailModel>? details)?
        getMustSellDetailState,
    TResult Function()? mustSellDetailsFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMustSellDetailState value)
        getMustSellDetailState,
    required TResult Function(MustSellDetailsFailedState value)
        mustSellDetailsFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMustSellDetailState value)? getMustSellDetailState,
    TResult? Function(MustSellDetailsFailedState value)?
        mustSellDetailsFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMustSellDetailState value)? getMustSellDetailState,
    TResult Function(MustSellDetailsFailedState value)?
        mustSellDetailsFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MustSellDetailStateCopyWith<$Res> {
  factory $MustSellDetailStateCopyWith(
          MustSellDetailState value, $Res Function(MustSellDetailState) then) =
      _$MustSellDetailStateCopyWithImpl<$Res, MustSellDetailState>;
}

/// @nodoc
class _$MustSellDetailStateCopyWithImpl<$Res, $Val extends MustSellDetailState>
    implements $MustSellDetailStateCopyWith<$Res> {
  _$MustSellDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MustSellDetailState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetMustSellDetailStateImplCopyWith<$Res> {
  factory _$$GetMustSellDetailStateImplCopyWith(
          _$GetMustSellDetailStateImpl value,
          $Res Function(_$GetMustSellDetailStateImpl) then) =
      __$$GetMustSellDetailStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MustSellDetailModel>? details});
}

/// @nodoc
class __$$GetMustSellDetailStateImplCopyWithImpl<$Res>
    extends _$MustSellDetailStateCopyWithImpl<$Res,
        _$GetMustSellDetailStateImpl>
    implements _$$GetMustSellDetailStateImplCopyWith<$Res> {
  __$$GetMustSellDetailStateImplCopyWithImpl(
      _$GetMustSellDetailStateImpl _value,
      $Res Function(_$GetMustSellDetailStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MustSellDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? details = freezed,
  }) {
    return _then(_$GetMustSellDetailStateImpl(
      details: freezed == details
          ? _value._details
          : details // ignore: cast_nullable_to_non_nullable
              as List<MustSellDetailModel>?,
    ));
  }
}

/// @nodoc

class _$GetMustSellDetailStateImpl implements GetMustSellDetailState {
  const _$GetMustSellDetailStateImpl(
      {required final List<MustSellDetailModel>? details})
      : _details = details;

  final List<MustSellDetailModel>? _details;
  @override
  List<MustSellDetailModel>? get details {
    final value = _details;
    if (value == null) return null;
    if (_details is EqualUnmodifiableListView) return _details;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MustSellDetailState.getMustSellDetailState(details: $details)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetMustSellDetailStateImpl &&
            const DeepCollectionEquality().equals(other._details, _details));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_details));

  /// Create a copy of MustSellDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetMustSellDetailStateImplCopyWith<_$GetMustSellDetailStateImpl>
      get copyWith => __$$GetMustSellDetailStateImplCopyWithImpl<
          _$GetMustSellDetailStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MustSellDetailModel>? details)
        getMustSellDetailState,
    required TResult Function() mustSellDetailsFailedState,
  }) {
    return getMustSellDetailState(details);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MustSellDetailModel>? details)?
        getMustSellDetailState,
    TResult? Function()? mustSellDetailsFailedState,
  }) {
    return getMustSellDetailState?.call(details);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MustSellDetailModel>? details)?
        getMustSellDetailState,
    TResult Function()? mustSellDetailsFailedState,
    required TResult orElse(),
  }) {
    if (getMustSellDetailState != null) {
      return getMustSellDetailState(details);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMustSellDetailState value)
        getMustSellDetailState,
    required TResult Function(MustSellDetailsFailedState value)
        mustSellDetailsFailedState,
  }) {
    return getMustSellDetailState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMustSellDetailState value)? getMustSellDetailState,
    TResult? Function(MustSellDetailsFailedState value)?
        mustSellDetailsFailedState,
  }) {
    return getMustSellDetailState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMustSellDetailState value)? getMustSellDetailState,
    TResult Function(MustSellDetailsFailedState value)?
        mustSellDetailsFailedState,
    required TResult orElse(),
  }) {
    if (getMustSellDetailState != null) {
      return getMustSellDetailState(this);
    }
    return orElse();
  }
}

abstract class GetMustSellDetailState implements MustSellDetailState {
  const factory GetMustSellDetailState(
          {required final List<MustSellDetailModel>? details}) =
      _$GetMustSellDetailStateImpl;

  List<MustSellDetailModel>? get details;

  /// Create a copy of MustSellDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetMustSellDetailStateImplCopyWith<_$GetMustSellDetailStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MustSellDetailsFailedStateImplCopyWith<$Res> {
  factory _$$MustSellDetailsFailedStateImplCopyWith(
          _$MustSellDetailsFailedStateImpl value,
          $Res Function(_$MustSellDetailsFailedStateImpl) then) =
      __$$MustSellDetailsFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MustSellDetailsFailedStateImplCopyWithImpl<$Res>
    extends _$MustSellDetailStateCopyWithImpl<$Res,
        _$MustSellDetailsFailedStateImpl>
    implements _$$MustSellDetailsFailedStateImplCopyWith<$Res> {
  __$$MustSellDetailsFailedStateImplCopyWithImpl(
      _$MustSellDetailsFailedStateImpl _value,
      $Res Function(_$MustSellDetailsFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MustSellDetailState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$MustSellDetailsFailedStateImpl implements MustSellDetailsFailedState {
  const _$MustSellDetailsFailedStateImpl();

  @override
  String toString() {
    return 'MustSellDetailState.mustSellDetailsFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MustSellDetailsFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<MustSellDetailModel>? details)
        getMustSellDetailState,
    required TResult Function() mustSellDetailsFailedState,
  }) {
    return mustSellDetailsFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<MustSellDetailModel>? details)?
        getMustSellDetailState,
    TResult? Function()? mustSellDetailsFailedState,
  }) {
    return mustSellDetailsFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<MustSellDetailModel>? details)?
        getMustSellDetailState,
    TResult Function()? mustSellDetailsFailedState,
    required TResult orElse(),
  }) {
    if (mustSellDetailsFailedState != null) {
      return mustSellDetailsFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetMustSellDetailState value)
        getMustSellDetailState,
    required TResult Function(MustSellDetailsFailedState value)
        mustSellDetailsFailedState,
  }) {
    return mustSellDetailsFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetMustSellDetailState value)? getMustSellDetailState,
    TResult? Function(MustSellDetailsFailedState value)?
        mustSellDetailsFailedState,
  }) {
    return mustSellDetailsFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetMustSellDetailState value)? getMustSellDetailState,
    TResult Function(MustSellDetailsFailedState value)?
        mustSellDetailsFailedState,
    required TResult orElse(),
  }) {
    if (mustSellDetailsFailedState != null) {
      return mustSellDetailsFailedState(this);
    }
    return orElse();
  }
}

abstract class MustSellDetailsFailedState implements MustSellDetailState {
  const factory MustSellDetailsFailedState() = _$MustSellDetailsFailedStateImpl;
}
