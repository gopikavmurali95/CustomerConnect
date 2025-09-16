// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pickingdetail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PickingdetailEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pickingID, String searchQuery)
        pickingDetailSuccess,
    required TResult Function() clearPickingDetailevent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pickingID, String searchQuery)?
        pickingDetailSuccess,
    TResult? Function()? clearPickingDetailevent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pickingID, String searchQuery)?
        pickingDetailSuccess,
    TResult Function()? clearPickingDetailevent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PickingDetailSuccess value) pickingDetailSuccess,
    required TResult Function(ClearPickingDetailevent value)
        clearPickingDetailevent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PickingDetailSuccess value)? pickingDetailSuccess,
    TResult? Function(ClearPickingDetailevent value)? clearPickingDetailevent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PickingDetailSuccess value)? pickingDetailSuccess,
    TResult Function(ClearPickingDetailevent value)? clearPickingDetailevent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickingdetailEventCopyWith<$Res> {
  factory $PickingdetailEventCopyWith(
          PickingdetailEvent value, $Res Function(PickingdetailEvent) then) =
      _$PickingdetailEventCopyWithImpl<$Res, PickingdetailEvent>;
}

/// @nodoc
class _$PickingdetailEventCopyWithImpl<$Res, $Val extends PickingdetailEvent>
    implements $PickingdetailEventCopyWith<$Res> {
  _$PickingdetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PickingdetailEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PickingDetailSuccessImplCopyWith<$Res> {
  factory _$$PickingDetailSuccessImplCopyWith(_$PickingDetailSuccessImpl value,
          $Res Function(_$PickingDetailSuccessImpl) then) =
      __$$PickingDetailSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String pickingID, String searchQuery});
}

/// @nodoc
class __$$PickingDetailSuccessImplCopyWithImpl<$Res>
    extends _$PickingdetailEventCopyWithImpl<$Res, _$PickingDetailSuccessImpl>
    implements _$$PickingDetailSuccessImplCopyWith<$Res> {
  __$$PickingDetailSuccessImplCopyWithImpl(_$PickingDetailSuccessImpl _value,
      $Res Function(_$PickingDetailSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of PickingdetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pickingID = null,
    Object? searchQuery = null,
  }) {
    return _then(_$PickingDetailSuccessImpl(
      pickingID: null == pickingID
          ? _value.pickingID
          : pickingID // ignore: cast_nullable_to_non_nullable
              as String,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PickingDetailSuccessImpl implements PickingDetailSuccess {
  const _$PickingDetailSuccessImpl(
      {required this.pickingID, required this.searchQuery});

  @override
  final String pickingID;
  @override
  final String searchQuery;

  @override
  String toString() {
    return 'PickingdetailEvent.pickingDetailSuccess(pickingID: $pickingID, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickingDetailSuccessImpl &&
            (identical(other.pickingID, pickingID) ||
                other.pickingID == pickingID) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pickingID, searchQuery);

  /// Create a copy of PickingdetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PickingDetailSuccessImplCopyWith<_$PickingDetailSuccessImpl>
      get copyWith =>
          __$$PickingDetailSuccessImplCopyWithImpl<_$PickingDetailSuccessImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pickingID, String searchQuery)
        pickingDetailSuccess,
    required TResult Function() clearPickingDetailevent,
  }) {
    return pickingDetailSuccess(pickingID, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pickingID, String searchQuery)?
        pickingDetailSuccess,
    TResult? Function()? clearPickingDetailevent,
  }) {
    return pickingDetailSuccess?.call(pickingID, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pickingID, String searchQuery)?
        pickingDetailSuccess,
    TResult Function()? clearPickingDetailevent,
    required TResult orElse(),
  }) {
    if (pickingDetailSuccess != null) {
      return pickingDetailSuccess(pickingID, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PickingDetailSuccess value) pickingDetailSuccess,
    required TResult Function(ClearPickingDetailevent value)
        clearPickingDetailevent,
  }) {
    return pickingDetailSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PickingDetailSuccess value)? pickingDetailSuccess,
    TResult? Function(ClearPickingDetailevent value)? clearPickingDetailevent,
  }) {
    return pickingDetailSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PickingDetailSuccess value)? pickingDetailSuccess,
    TResult Function(ClearPickingDetailevent value)? clearPickingDetailevent,
    required TResult orElse(),
  }) {
    if (pickingDetailSuccess != null) {
      return pickingDetailSuccess(this);
    }
    return orElse();
  }
}

abstract class PickingDetailSuccess implements PickingdetailEvent {
  const factory PickingDetailSuccess(
      {required final String pickingID,
      required final String searchQuery}) = _$PickingDetailSuccessImpl;

  String get pickingID;
  String get searchQuery;

  /// Create a copy of PickingdetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PickingDetailSuccessImplCopyWith<_$PickingDetailSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearPickingDetaileventImplCopyWith<$Res> {
  factory _$$ClearPickingDetaileventImplCopyWith(
          _$ClearPickingDetaileventImpl value,
          $Res Function(_$ClearPickingDetaileventImpl) then) =
      __$$ClearPickingDetaileventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearPickingDetaileventImplCopyWithImpl<$Res>
    extends _$PickingdetailEventCopyWithImpl<$Res,
        _$ClearPickingDetaileventImpl>
    implements _$$ClearPickingDetaileventImplCopyWith<$Res> {
  __$$ClearPickingDetaileventImplCopyWithImpl(
      _$ClearPickingDetaileventImpl _value,
      $Res Function(_$ClearPickingDetaileventImpl) _then)
      : super(_value, _then);

  /// Create a copy of PickingdetailEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearPickingDetaileventImpl implements ClearPickingDetailevent {
  const _$ClearPickingDetaileventImpl();

  @override
  String toString() {
    return 'PickingdetailEvent.clearPickingDetailevent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearPickingDetaileventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String pickingID, String searchQuery)
        pickingDetailSuccess,
    required TResult Function() clearPickingDetailevent,
  }) {
    return clearPickingDetailevent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String pickingID, String searchQuery)?
        pickingDetailSuccess,
    TResult? Function()? clearPickingDetailevent,
  }) {
    return clearPickingDetailevent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String pickingID, String searchQuery)?
        pickingDetailSuccess,
    TResult Function()? clearPickingDetailevent,
    required TResult orElse(),
  }) {
    if (clearPickingDetailevent != null) {
      return clearPickingDetailevent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PickingDetailSuccess value) pickingDetailSuccess,
    required TResult Function(ClearPickingDetailevent value)
        clearPickingDetailevent,
  }) {
    return clearPickingDetailevent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PickingDetailSuccess value)? pickingDetailSuccess,
    TResult? Function(ClearPickingDetailevent value)? clearPickingDetailevent,
  }) {
    return clearPickingDetailevent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PickingDetailSuccess value)? pickingDetailSuccess,
    TResult Function(ClearPickingDetailevent value)? clearPickingDetailevent,
    required TResult orElse(),
  }) {
    if (clearPickingDetailevent != null) {
      return clearPickingDetailevent(this);
    }
    return orElse();
  }
}

abstract class ClearPickingDetailevent implements PickingdetailEvent {
  const factory ClearPickingDetailevent() = _$ClearPickingDetaileventImpl;
}

/// @nodoc
mixin _$PickingdetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PickingDetailModel>? pdetailList)
        pickingSuccessState,
    required TResult Function() pickingFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PickingDetailModel>? pdetailList)?
        pickingSuccessState,
    TResult? Function()? pickingFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PickingDetailModel>? pdetailList)?
        pickingSuccessState,
    TResult Function()? pickingFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PickingSuccessState value) pickingSuccessState,
    required TResult Function(PickingFailedState value) pickingFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PickingSuccessState value)? pickingSuccessState,
    TResult? Function(PickingFailedState value)? pickingFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PickingSuccessState value)? pickingSuccessState,
    TResult Function(PickingFailedState value)? pickingFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PickingdetailStateCopyWith<$Res> {
  factory $PickingdetailStateCopyWith(
          PickingdetailState value, $Res Function(PickingdetailState) then) =
      _$PickingdetailStateCopyWithImpl<$Res, PickingdetailState>;
}

/// @nodoc
class _$PickingdetailStateCopyWithImpl<$Res, $Val extends PickingdetailState>
    implements $PickingdetailStateCopyWith<$Res> {
  _$PickingdetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PickingdetailState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PickingSuccessStateImplCopyWith<$Res> {
  factory _$$PickingSuccessStateImplCopyWith(_$PickingSuccessStateImpl value,
          $Res Function(_$PickingSuccessStateImpl) then) =
      __$$PickingSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PickingDetailModel>? pdetailList});
}

/// @nodoc
class __$$PickingSuccessStateImplCopyWithImpl<$Res>
    extends _$PickingdetailStateCopyWithImpl<$Res, _$PickingSuccessStateImpl>
    implements _$$PickingSuccessStateImplCopyWith<$Res> {
  __$$PickingSuccessStateImplCopyWithImpl(_$PickingSuccessStateImpl _value,
      $Res Function(_$PickingSuccessStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PickingdetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pdetailList = freezed,
  }) {
    return _then(_$PickingSuccessStateImpl(
      pdetailList: freezed == pdetailList
          ? _value._pdetailList
          : pdetailList // ignore: cast_nullable_to_non_nullable
              as List<PickingDetailModel>?,
    ));
  }
}

/// @nodoc

class _$PickingSuccessStateImpl implements PickingSuccessState {
  const _$PickingSuccessStateImpl(
      {required final List<PickingDetailModel>? pdetailList})
      : _pdetailList = pdetailList;

  final List<PickingDetailModel>? _pdetailList;
  @override
  List<PickingDetailModel>? get pdetailList {
    final value = _pdetailList;
    if (value == null) return null;
    if (_pdetailList is EqualUnmodifiableListView) return _pdetailList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PickingdetailState.pickingSuccessState(pdetailList: $pdetailList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickingSuccessStateImpl &&
            const DeepCollectionEquality()
                .equals(other._pdetailList, _pdetailList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_pdetailList));

  /// Create a copy of PickingdetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PickingSuccessStateImplCopyWith<_$PickingSuccessStateImpl> get copyWith =>
      __$$PickingSuccessStateImplCopyWithImpl<_$PickingSuccessStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PickingDetailModel>? pdetailList)
        pickingSuccessState,
    required TResult Function() pickingFailedState,
  }) {
    return pickingSuccessState(pdetailList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PickingDetailModel>? pdetailList)?
        pickingSuccessState,
    TResult? Function()? pickingFailedState,
  }) {
    return pickingSuccessState?.call(pdetailList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PickingDetailModel>? pdetailList)?
        pickingSuccessState,
    TResult Function()? pickingFailedState,
    required TResult orElse(),
  }) {
    if (pickingSuccessState != null) {
      return pickingSuccessState(pdetailList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PickingSuccessState value) pickingSuccessState,
    required TResult Function(PickingFailedState value) pickingFailedState,
  }) {
    return pickingSuccessState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PickingSuccessState value)? pickingSuccessState,
    TResult? Function(PickingFailedState value)? pickingFailedState,
  }) {
    return pickingSuccessState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PickingSuccessState value)? pickingSuccessState,
    TResult Function(PickingFailedState value)? pickingFailedState,
    required TResult orElse(),
  }) {
    if (pickingSuccessState != null) {
      return pickingSuccessState(this);
    }
    return orElse();
  }
}

abstract class PickingSuccessState implements PickingdetailState {
  const factory PickingSuccessState(
          {required final List<PickingDetailModel>? pdetailList}) =
      _$PickingSuccessStateImpl;

  List<PickingDetailModel>? get pdetailList;

  /// Create a copy of PickingdetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PickingSuccessStateImplCopyWith<_$PickingSuccessStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PickingFailedStateImplCopyWith<$Res> {
  factory _$$PickingFailedStateImplCopyWith(_$PickingFailedStateImpl value,
          $Res Function(_$PickingFailedStateImpl) then) =
      __$$PickingFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PickingFailedStateImplCopyWithImpl<$Res>
    extends _$PickingdetailStateCopyWithImpl<$Res, _$PickingFailedStateImpl>
    implements _$$PickingFailedStateImplCopyWith<$Res> {
  __$$PickingFailedStateImplCopyWithImpl(_$PickingFailedStateImpl _value,
      $Res Function(_$PickingFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PickingdetailState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PickingFailedStateImpl implements PickingFailedState {
  const _$PickingFailedStateImpl();

  @override
  String toString() {
    return 'PickingdetailState.pickingFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PickingFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PickingDetailModel>? pdetailList)
        pickingSuccessState,
    required TResult Function() pickingFailedState,
  }) {
    return pickingFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PickingDetailModel>? pdetailList)?
        pickingSuccessState,
    TResult? Function()? pickingFailedState,
  }) {
    return pickingFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PickingDetailModel>? pdetailList)?
        pickingSuccessState,
    TResult Function()? pickingFailedState,
    required TResult orElse(),
  }) {
    if (pickingFailedState != null) {
      return pickingFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PickingSuccessState value) pickingSuccessState,
    required TResult Function(PickingFailedState value) pickingFailedState,
  }) {
    return pickingFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PickingSuccessState value)? pickingSuccessState,
    TResult? Function(PickingFailedState value)? pickingFailedState,
  }) {
    return pickingFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PickingSuccessState value)? pickingSuccessState,
    TResult Function(PickingFailedState value)? pickingFailedState,
    required TResult orElse(),
  }) {
    if (pickingFailedState != null) {
      return pickingFailedState(this);
    }
    return orElse();
  }
}

abstract class PickingFailedState implements PickingdetailState {
  const factory PickingFailedState() = _$PickingFailedStateImpl;
}
