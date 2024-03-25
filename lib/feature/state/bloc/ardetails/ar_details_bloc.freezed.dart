// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ar_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ArDetailsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String arhID) getArDetailsEvent,
    required TResult Function() clearArDetailEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String arhID)? getArDetailsEvent,
    TResult? Function()? clearArDetailEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String arhID)? getArDetailsEvent,
    TResult Function()? clearArDetailEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetArDetailsEvent value) getArDetailsEvent,
    required TResult Function(ClearArDetailEvent value) clearArDetailEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetArDetailsEvent value)? getArDetailsEvent,
    TResult? Function(ClearArDetailEvent value)? clearArDetailEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetArDetailsEvent value)? getArDetailsEvent,
    TResult Function(ClearArDetailEvent value)? clearArDetailEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArDetailsEventCopyWith<$Res> {
  factory $ArDetailsEventCopyWith(
          ArDetailsEvent value, $Res Function(ArDetailsEvent) then) =
      _$ArDetailsEventCopyWithImpl<$Res, ArDetailsEvent>;
}

/// @nodoc
class _$ArDetailsEventCopyWithImpl<$Res, $Val extends ArDetailsEvent>
    implements $ArDetailsEventCopyWith<$Res> {
  _$ArDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetArDetailsEventImplCopyWith<$Res> {
  factory _$$GetArDetailsEventImplCopyWith(_$GetArDetailsEventImpl value,
          $Res Function(_$GetArDetailsEventImpl) then) =
      __$$GetArDetailsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String arhID});
}

/// @nodoc
class __$$GetArDetailsEventImplCopyWithImpl<$Res>
    extends _$ArDetailsEventCopyWithImpl<$Res, _$GetArDetailsEventImpl>
    implements _$$GetArDetailsEventImplCopyWith<$Res> {
  __$$GetArDetailsEventImplCopyWithImpl(_$GetArDetailsEventImpl _value,
      $Res Function(_$GetArDetailsEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arhID = null,
  }) {
    return _then(_$GetArDetailsEventImpl(
      arhID: null == arhID
          ? _value.arhID
          : arhID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetArDetailsEventImpl implements GetArDetailsEvent {
  const _$GetArDetailsEventImpl({required this.arhID});

  @override
  final String arhID;

  @override
  String toString() {
    return 'ArDetailsEvent.getArDetailsEvent(arhID: $arhID)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetArDetailsEventImpl &&
            (identical(other.arhID, arhID) || other.arhID == arhID));
  }

  @override
  int get hashCode => Object.hash(runtimeType, arhID);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetArDetailsEventImplCopyWith<_$GetArDetailsEventImpl> get copyWith =>
      __$$GetArDetailsEventImplCopyWithImpl<_$GetArDetailsEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String arhID) getArDetailsEvent,
    required TResult Function() clearArDetailEvent,
  }) {
    return getArDetailsEvent(arhID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String arhID)? getArDetailsEvent,
    TResult? Function()? clearArDetailEvent,
  }) {
    return getArDetailsEvent?.call(arhID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String arhID)? getArDetailsEvent,
    TResult Function()? clearArDetailEvent,
    required TResult orElse(),
  }) {
    if (getArDetailsEvent != null) {
      return getArDetailsEvent(arhID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetArDetailsEvent value) getArDetailsEvent,
    required TResult Function(ClearArDetailEvent value) clearArDetailEvent,
  }) {
    return getArDetailsEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetArDetailsEvent value)? getArDetailsEvent,
    TResult? Function(ClearArDetailEvent value)? clearArDetailEvent,
  }) {
    return getArDetailsEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetArDetailsEvent value)? getArDetailsEvent,
    TResult Function(ClearArDetailEvent value)? clearArDetailEvent,
    required TResult orElse(),
  }) {
    if (getArDetailsEvent != null) {
      return getArDetailsEvent(this);
    }
    return orElse();
  }
}

abstract class GetArDetailsEvent implements ArDetailsEvent {
  const factory GetArDetailsEvent({required final String arhID}) =
      _$GetArDetailsEventImpl;

  String get arhID;
  @JsonKey(ignore: true)
  _$$GetArDetailsEventImplCopyWith<_$GetArDetailsEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearArDetailEventImplCopyWith<$Res> {
  factory _$$ClearArDetailEventImplCopyWith(_$ClearArDetailEventImpl value,
          $Res Function(_$ClearArDetailEventImpl) then) =
      __$$ClearArDetailEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearArDetailEventImplCopyWithImpl<$Res>
    extends _$ArDetailsEventCopyWithImpl<$Res, _$ClearArDetailEventImpl>
    implements _$$ClearArDetailEventImplCopyWith<$Res> {
  __$$ClearArDetailEventImplCopyWithImpl(_$ClearArDetailEventImpl _value,
      $Res Function(_$ClearArDetailEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearArDetailEventImpl implements ClearArDetailEvent {
  const _$ClearArDetailEventImpl();

  @override
  String toString() {
    return 'ArDetailsEvent.clearArDetailEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearArDetailEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String arhID) getArDetailsEvent,
    required TResult Function() clearArDetailEvent,
  }) {
    return clearArDetailEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String arhID)? getArDetailsEvent,
    TResult? Function()? clearArDetailEvent,
  }) {
    return clearArDetailEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String arhID)? getArDetailsEvent,
    TResult Function()? clearArDetailEvent,
    required TResult orElse(),
  }) {
    if (clearArDetailEvent != null) {
      return clearArDetailEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetArDetailsEvent value) getArDetailsEvent,
    required TResult Function(ClearArDetailEvent value) clearArDetailEvent,
  }) {
    return clearArDetailEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetArDetailsEvent value)? getArDetailsEvent,
    TResult? Function(ClearArDetailEvent value)? clearArDetailEvent,
  }) {
    return clearArDetailEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetArDetailsEvent value)? getArDetailsEvent,
    TResult Function(ClearArDetailEvent value)? clearArDetailEvent,
    required TResult orElse(),
  }) {
    if (clearArDetailEvent != null) {
      return clearArDetailEvent(this);
    }
    return orElse();
  }
}

abstract class ClearArDetailEvent implements ArDetailsEvent {
  const factory ClearArDetailEvent() = _$ClearArDetailEventImpl;
}

/// @nodoc
mixin _$ArDetailsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ArDetailModel>? ardetails) getArDetailsState,
    required TResult Function() ardetailsfailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ArDetailModel>? ardetails)? getArDetailsState,
    TResult? Function()? ardetailsfailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ArDetailModel>? ardetails)? getArDetailsState,
    TResult Function()? ardetailsfailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetArDetailsState value) getArDetailsState,
    required TResult Function(ArdetailsfailedState value) ardetailsfailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetArDetailsState value)? getArDetailsState,
    TResult? Function(ArdetailsfailedState value)? ardetailsfailedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetArDetailsState value)? getArDetailsState,
    TResult Function(ArdetailsfailedState value)? ardetailsfailedState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArDetailsStateCopyWith<$Res> {
  factory $ArDetailsStateCopyWith(
          ArDetailsState value, $Res Function(ArDetailsState) then) =
      _$ArDetailsStateCopyWithImpl<$Res, ArDetailsState>;
}

/// @nodoc
class _$ArDetailsStateCopyWithImpl<$Res, $Val extends ArDetailsState>
    implements $ArDetailsStateCopyWith<$Res> {
  _$ArDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetArDetailsStateImplCopyWith<$Res> {
  factory _$$GetArDetailsStateImplCopyWith(_$GetArDetailsStateImpl value,
          $Res Function(_$GetArDetailsStateImpl) then) =
      __$$GetArDetailsStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ArDetailModel>? ardetails});
}

/// @nodoc
class __$$GetArDetailsStateImplCopyWithImpl<$Res>
    extends _$ArDetailsStateCopyWithImpl<$Res, _$GetArDetailsStateImpl>
    implements _$$GetArDetailsStateImplCopyWith<$Res> {
  __$$GetArDetailsStateImplCopyWithImpl(_$GetArDetailsStateImpl _value,
      $Res Function(_$GetArDetailsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ardetails = freezed,
  }) {
    return _then(_$GetArDetailsStateImpl(
      ardetails: freezed == ardetails
          ? _value._ardetails
          : ardetails // ignore: cast_nullable_to_non_nullable
              as List<ArDetailModel>?,
    ));
  }
}

/// @nodoc

class _$GetArDetailsStateImpl implements GetArDetailsState {
  const _$GetArDetailsStateImpl({required final List<ArDetailModel>? ardetails})
      : _ardetails = ardetails;

  final List<ArDetailModel>? _ardetails;
  @override
  List<ArDetailModel>? get ardetails {
    final value = _ardetails;
    if (value == null) return null;
    if (_ardetails is EqualUnmodifiableListView) return _ardetails;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ArDetailsState.getArDetailsState(ardetails: $ardetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetArDetailsStateImpl &&
            const DeepCollectionEquality()
                .equals(other._ardetails, _ardetails));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_ardetails));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetArDetailsStateImplCopyWith<_$GetArDetailsStateImpl> get copyWith =>
      __$$GetArDetailsStateImplCopyWithImpl<_$GetArDetailsStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ArDetailModel>? ardetails) getArDetailsState,
    required TResult Function() ardetailsfailedState,
  }) {
    return getArDetailsState(ardetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ArDetailModel>? ardetails)? getArDetailsState,
    TResult? Function()? ardetailsfailedState,
  }) {
    return getArDetailsState?.call(ardetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ArDetailModel>? ardetails)? getArDetailsState,
    TResult Function()? ardetailsfailedState,
    required TResult orElse(),
  }) {
    if (getArDetailsState != null) {
      return getArDetailsState(ardetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetArDetailsState value) getArDetailsState,
    required TResult Function(ArdetailsfailedState value) ardetailsfailedState,
  }) {
    return getArDetailsState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetArDetailsState value)? getArDetailsState,
    TResult? Function(ArdetailsfailedState value)? ardetailsfailedState,
  }) {
    return getArDetailsState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetArDetailsState value)? getArDetailsState,
    TResult Function(ArdetailsfailedState value)? ardetailsfailedState,
    required TResult orElse(),
  }) {
    if (getArDetailsState != null) {
      return getArDetailsState(this);
    }
    return orElse();
  }
}

abstract class GetArDetailsState implements ArDetailsState {
  const factory GetArDetailsState(
          {required final List<ArDetailModel>? ardetails}) =
      _$GetArDetailsStateImpl;

  List<ArDetailModel>? get ardetails;
  @JsonKey(ignore: true)
  _$$GetArDetailsStateImplCopyWith<_$GetArDetailsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ArdetailsfailedStateImplCopyWith<$Res> {
  factory _$$ArdetailsfailedStateImplCopyWith(_$ArdetailsfailedStateImpl value,
          $Res Function(_$ArdetailsfailedStateImpl) then) =
      __$$ArdetailsfailedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ArdetailsfailedStateImplCopyWithImpl<$Res>
    extends _$ArDetailsStateCopyWithImpl<$Res, _$ArdetailsfailedStateImpl>
    implements _$$ArdetailsfailedStateImplCopyWith<$Res> {
  __$$ArdetailsfailedStateImplCopyWithImpl(_$ArdetailsfailedStateImpl _value,
      $Res Function(_$ArdetailsfailedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ArdetailsfailedStateImpl implements ArdetailsfailedState {
  const _$ArdetailsfailedStateImpl();

  @override
  String toString() {
    return 'ArDetailsState.ardetailsfailedState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArdetailsfailedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<ArDetailModel>? ardetails) getArDetailsState,
    required TResult Function() ardetailsfailedState,
  }) {
    return ardetailsfailedState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<ArDetailModel>? ardetails)? getArDetailsState,
    TResult? Function()? ardetailsfailedState,
  }) {
    return ardetailsfailedState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<ArDetailModel>? ardetails)? getArDetailsState,
    TResult Function()? ardetailsfailedState,
    required TResult orElse(),
  }) {
    if (ardetailsfailedState != null) {
      return ardetailsfailedState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetArDetailsState value) getArDetailsState,
    required TResult Function(ArdetailsfailedState value) ardetailsfailedState,
  }) {
    return ardetailsfailedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetArDetailsState value)? getArDetailsState,
    TResult? Function(ArdetailsfailedState value)? ardetailsfailedState,
  }) {
    return ardetailsfailedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetArDetailsState value)? getArDetailsState,
    TResult Function(ArdetailsfailedState value)? ardetailsfailedState,
    required TResult orElse(),
  }) {
    if (ardetailsfailedState != null) {
      return ardetailsfailedState(this);
    }
    return orElse();
  }
}

abstract class ArdetailsfailedState implements ArDetailsState {
  const factory ArdetailsfailedState() = _$ArdetailsfailedStateImpl;
}
