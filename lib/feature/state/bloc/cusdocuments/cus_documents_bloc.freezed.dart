// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cus_documents_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CusDocumentsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cusID) getCusDOcsEvevnt,
    required TResult Function() clearCusDocsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String cusID)? getCusDOcsEvevnt,
    TResult? Function()? clearCusDocsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cusID)? getCusDOcsEvevnt,
    TResult Function()? clearCusDocsEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusDOcsEvevnt value) getCusDOcsEvevnt,
    required TResult Function(ClearCusDocsEvent value) clearCusDocsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusDOcsEvevnt value)? getCusDOcsEvevnt,
    TResult? Function(ClearCusDocsEvent value)? clearCusDocsEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusDOcsEvevnt value)? getCusDOcsEvevnt,
    TResult Function(ClearCusDocsEvent value)? clearCusDocsEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CusDocumentsEventCopyWith<$Res> {
  factory $CusDocumentsEventCopyWith(
          CusDocumentsEvent value, $Res Function(CusDocumentsEvent) then) =
      _$CusDocumentsEventCopyWithImpl<$Res, CusDocumentsEvent>;
}

/// @nodoc
class _$CusDocumentsEventCopyWithImpl<$Res, $Val extends CusDocumentsEvent>
    implements $CusDocumentsEventCopyWith<$Res> {
  _$CusDocumentsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CusDocumentsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetCusDOcsEvevntImplCopyWith<$Res> {
  factory _$$GetCusDOcsEvevntImplCopyWith(_$GetCusDOcsEvevntImpl value,
          $Res Function(_$GetCusDOcsEvevntImpl) then) =
      __$$GetCusDOcsEvevntImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String cusID});
}

/// @nodoc
class __$$GetCusDOcsEvevntImplCopyWithImpl<$Res>
    extends _$CusDocumentsEventCopyWithImpl<$Res, _$GetCusDOcsEvevntImpl>
    implements _$$GetCusDOcsEvevntImplCopyWith<$Res> {
  __$$GetCusDOcsEvevntImplCopyWithImpl(_$GetCusDOcsEvevntImpl _value,
      $Res Function(_$GetCusDOcsEvevntImpl) _then)
      : super(_value, _then);

  /// Create a copy of CusDocumentsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cusID = null,
  }) {
    return _then(_$GetCusDOcsEvevntImpl(
      cusID: null == cusID
          ? _value.cusID
          : cusID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetCusDOcsEvevntImpl implements GetCusDOcsEvevnt {
  const _$GetCusDOcsEvevntImpl({required this.cusID});

  @override
  final String cusID;

  @override
  String toString() {
    return 'CusDocumentsEvent.getCusDOcsEvevnt(cusID: $cusID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCusDOcsEvevntImpl &&
            (identical(other.cusID, cusID) || other.cusID == cusID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cusID);

  /// Create a copy of CusDocumentsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCusDOcsEvevntImplCopyWith<_$GetCusDOcsEvevntImpl> get copyWith =>
      __$$GetCusDOcsEvevntImplCopyWithImpl<_$GetCusDOcsEvevntImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cusID) getCusDOcsEvevnt,
    required TResult Function() clearCusDocsEvent,
  }) {
    return getCusDOcsEvevnt(cusID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String cusID)? getCusDOcsEvevnt,
    TResult? Function()? clearCusDocsEvent,
  }) {
    return getCusDOcsEvevnt?.call(cusID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cusID)? getCusDOcsEvevnt,
    TResult Function()? clearCusDocsEvent,
    required TResult orElse(),
  }) {
    if (getCusDOcsEvevnt != null) {
      return getCusDOcsEvevnt(cusID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusDOcsEvevnt value) getCusDOcsEvevnt,
    required TResult Function(ClearCusDocsEvent value) clearCusDocsEvent,
  }) {
    return getCusDOcsEvevnt(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusDOcsEvevnt value)? getCusDOcsEvevnt,
    TResult? Function(ClearCusDocsEvent value)? clearCusDocsEvent,
  }) {
    return getCusDOcsEvevnt?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusDOcsEvevnt value)? getCusDOcsEvevnt,
    TResult Function(ClearCusDocsEvent value)? clearCusDocsEvent,
    required TResult orElse(),
  }) {
    if (getCusDOcsEvevnt != null) {
      return getCusDOcsEvevnt(this);
    }
    return orElse();
  }
}

abstract class GetCusDOcsEvevnt implements CusDocumentsEvent {
  const factory GetCusDOcsEvevnt({required final String cusID}) =
      _$GetCusDOcsEvevntImpl;

  String get cusID;

  /// Create a copy of CusDocumentsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetCusDOcsEvevntImplCopyWith<_$GetCusDOcsEvevntImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearCusDocsEventImplCopyWith<$Res> {
  factory _$$ClearCusDocsEventImplCopyWith(_$ClearCusDocsEventImpl value,
          $Res Function(_$ClearCusDocsEventImpl) then) =
      __$$ClearCusDocsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearCusDocsEventImplCopyWithImpl<$Res>
    extends _$CusDocumentsEventCopyWithImpl<$Res, _$ClearCusDocsEventImpl>
    implements _$$ClearCusDocsEventImplCopyWith<$Res> {
  __$$ClearCusDocsEventImplCopyWithImpl(_$ClearCusDocsEventImpl _value,
      $Res Function(_$ClearCusDocsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CusDocumentsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearCusDocsEventImpl implements ClearCusDocsEvent {
  const _$ClearCusDocsEventImpl();

  @override
  String toString() {
    return 'CusDocumentsEvent.clearCusDocsEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearCusDocsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String cusID) getCusDOcsEvevnt,
    required TResult Function() clearCusDocsEvent,
  }) {
    return clearCusDocsEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String cusID)? getCusDOcsEvevnt,
    TResult? Function()? clearCusDocsEvent,
  }) {
    return clearCusDocsEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String cusID)? getCusDOcsEvevnt,
    TResult Function()? clearCusDocsEvent,
    required TResult orElse(),
  }) {
    if (clearCusDocsEvent != null) {
      return clearCusDocsEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusDOcsEvevnt value) getCusDOcsEvevnt,
    required TResult Function(ClearCusDocsEvent value) clearCusDocsEvent,
  }) {
    return clearCusDocsEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusDOcsEvevnt value)? getCusDOcsEvevnt,
    TResult? Function(ClearCusDocsEvent value)? clearCusDocsEvent,
  }) {
    return clearCusDocsEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusDOcsEvevnt value)? getCusDOcsEvevnt,
    TResult Function(ClearCusDocsEvent value)? clearCusDocsEvent,
    required TResult orElse(),
  }) {
    if (clearCusDocsEvent != null) {
      return clearCusDocsEvent(this);
    }
    return orElse();
  }
}

abstract class ClearCusDocsEvent implements CusDocumentsEvent {
  const factory ClearCusDocsEvent() = _$ClearCusDocsEventImpl;
}

/// @nodoc
mixin _$CusDocumentsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CusDocumentsModel>? docs) getCusDocsState,
    required TResult Function() getCusDOcsFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CusDocumentsModel>? docs)? getCusDocsState,
    TResult? Function()? getCusDOcsFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CusDocumentsModel>? docs)? getCusDocsState,
    TResult Function()? getCusDOcsFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusDocsState value) getCusDocsState,
    required TResult Function(GetCusDOcsFailedState value)
        getCusDOcsFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusDocsState value)? getCusDocsState,
    TResult? Function(GetCusDOcsFailedState value)? getCusDOcsFailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusDocsState value)? getCusDocsState,
    TResult Function(GetCusDOcsFailedState value)? getCusDOcsFailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CusDocumentsStateCopyWith<$Res> {
  factory $CusDocumentsStateCopyWith(
          CusDocumentsState value, $Res Function(CusDocumentsState) then) =
      _$CusDocumentsStateCopyWithImpl<$Res, CusDocumentsState>;
}

/// @nodoc
class _$CusDocumentsStateCopyWithImpl<$Res, $Val extends CusDocumentsState>
    implements $CusDocumentsStateCopyWith<$Res> {
  _$CusDocumentsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CusDocumentsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetCusDocsStateImplCopyWith<$Res> {
  factory _$$GetCusDocsStateImplCopyWith(_$GetCusDocsStateImpl value,
          $Res Function(_$GetCusDocsStateImpl) then) =
      __$$GetCusDocsStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CusDocumentsModel>? docs});
}

/// @nodoc
class __$$GetCusDocsStateImplCopyWithImpl<$Res>
    extends _$CusDocumentsStateCopyWithImpl<$Res, _$GetCusDocsStateImpl>
    implements _$$GetCusDocsStateImplCopyWith<$Res> {
  __$$GetCusDocsStateImplCopyWithImpl(
      _$GetCusDocsStateImpl _value, $Res Function(_$GetCusDocsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CusDocumentsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? docs = freezed,
  }) {
    return _then(_$GetCusDocsStateImpl(
      docs: freezed == docs
          ? _value._docs
          : docs // ignore: cast_nullable_to_non_nullable
              as List<CusDocumentsModel>?,
    ));
  }
}

/// @nodoc

class _$GetCusDocsStateImpl implements GetCusDocsState {
  const _$GetCusDocsStateImpl({required final List<CusDocumentsModel>? docs})
      : _docs = docs;

  final List<CusDocumentsModel>? _docs;
  @override
  List<CusDocumentsModel>? get docs {
    final value = _docs;
    if (value == null) return null;
    if (_docs is EqualUnmodifiableListView) return _docs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CusDocumentsState.getCusDocsState(docs: $docs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCusDocsStateImpl &&
            const DeepCollectionEquality().equals(other._docs, _docs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_docs));

  /// Create a copy of CusDocumentsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCusDocsStateImplCopyWith<_$GetCusDocsStateImpl> get copyWith =>
      __$$GetCusDocsStateImplCopyWithImpl<_$GetCusDocsStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CusDocumentsModel>? docs) getCusDocsState,
    required TResult Function() getCusDOcsFailedState,
  }) {
    return getCusDocsState(docs);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CusDocumentsModel>? docs)? getCusDocsState,
    TResult? Function()? getCusDOcsFailedState,
  }) {
    return getCusDocsState?.call(docs);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CusDocumentsModel>? docs)? getCusDocsState,
    TResult Function()? getCusDOcsFailedState,
    required TResult orElse(),
  }) {
    if (getCusDocsState != null) {
      return getCusDocsState(docs);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusDocsState value) getCusDocsState,
    required TResult Function(GetCusDOcsFailedState value)
        getCusDOcsFailedState,
  }) {
    return getCusDocsState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusDocsState value)? getCusDocsState,
    TResult? Function(GetCusDOcsFailedState value)? getCusDOcsFailedState,
  }) {
    return getCusDocsState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusDocsState value)? getCusDocsState,
    TResult Function(GetCusDOcsFailedState value)? getCusDOcsFailedState,
    required TResult orElse(),
  }) {
    if (getCusDocsState != null) {
      return getCusDocsState(this);
    }
    return orElse();
  }
}

abstract class GetCusDocsState implements CusDocumentsState {
  const factory GetCusDocsState(
      {required final List<CusDocumentsModel>? docs}) = _$GetCusDocsStateImpl;

  List<CusDocumentsModel>? get docs;

  /// Create a copy of CusDocumentsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetCusDocsStateImplCopyWith<_$GetCusDocsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetCusDOcsFailedStateImplCopyWith<$Res> {
  factory _$$GetCusDOcsFailedStateImplCopyWith(
          _$GetCusDOcsFailedStateImpl value,
          $Res Function(_$GetCusDOcsFailedStateImpl) then) =
      __$$GetCusDOcsFailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetCusDOcsFailedStateImplCopyWithImpl<$Res>
    extends _$CusDocumentsStateCopyWithImpl<$Res, _$GetCusDOcsFailedStateImpl>
    implements _$$GetCusDOcsFailedStateImplCopyWith<$Res> {
  __$$GetCusDOcsFailedStateImplCopyWithImpl(_$GetCusDOcsFailedStateImpl _value,
      $Res Function(_$GetCusDOcsFailedStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CusDocumentsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetCusDOcsFailedStateImpl implements GetCusDOcsFailedState {
  const _$GetCusDOcsFailedStateImpl();

  @override
  String toString() {
    return 'CusDocumentsState.getCusDOcsFailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCusDOcsFailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CusDocumentsModel>? docs) getCusDocsState,
    required TResult Function() getCusDOcsFailedState,
  }) {
    return getCusDOcsFailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CusDocumentsModel>? docs)? getCusDocsState,
    TResult? Function()? getCusDOcsFailedState,
  }) {
    return getCusDOcsFailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CusDocumentsModel>? docs)? getCusDocsState,
    TResult Function()? getCusDOcsFailedState,
    required TResult orElse(),
  }) {
    if (getCusDOcsFailedState != null) {
      return getCusDOcsFailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetCusDocsState value) getCusDocsState,
    required TResult Function(GetCusDOcsFailedState value)
        getCusDOcsFailedState,
  }) {
    return getCusDOcsFailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetCusDocsState value)? getCusDocsState,
    TResult? Function(GetCusDOcsFailedState value)? getCusDOcsFailedState,
  }) {
    return getCusDOcsFailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetCusDocsState value)? getCusDocsState,
    TResult Function(GetCusDOcsFailedState value)? getCusDOcsFailedState,
    required TResult orElse(),
  }) {
    if (getCusDOcsFailedState != null) {
      return getCusDOcsFailedState(this);
    }
    return orElse();
  }
}

abstract class GetCusDOcsFailedState implements CusDocumentsState {
  const factory GetCusDOcsFailedState() = _$GetCusDOcsFailedStateImpl;
}
