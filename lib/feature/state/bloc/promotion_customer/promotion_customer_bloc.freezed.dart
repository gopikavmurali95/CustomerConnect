// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promotion_customer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PromotionCustomerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String searchQuery)
        getPromotionCustomerEvent,
    required TResult Function() clearOromotionCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String searchQuery)? getPromotionCustomerEvent,
    TResult? Function()? clearOromotionCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String searchQuery)? getPromotionCustomerEvent,
    TResult Function()? clearOromotionCustomer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPromotionCustomerEvent value)
        getPromotionCustomerEvent,
    required TResult Function(ClearOromotionCustomer value)
        clearOromotionCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPromotionCustomerEvent value)?
        getPromotionCustomerEvent,
    TResult? Function(ClearOromotionCustomer value)? clearOromotionCustomer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPromotionCustomerEvent value)?
        getPromotionCustomerEvent,
    TResult Function(ClearOromotionCustomer value)? clearOromotionCustomer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionCustomerEventCopyWith<$Res> {
  factory $PromotionCustomerEventCopyWith(PromotionCustomerEvent value,
          $Res Function(PromotionCustomerEvent) then) =
      _$PromotionCustomerEventCopyWithImpl<$Res, PromotionCustomerEvent>;
}

/// @nodoc
class _$PromotionCustomerEventCopyWithImpl<$Res,
        $Val extends PromotionCustomerEvent>
    implements $PromotionCustomerEventCopyWith<$Res> {
  _$PromotionCustomerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetPromotionCustomerEventImplCopyWith<$Res> {
  factory _$$GetPromotionCustomerEventImplCopyWith(
          _$GetPromotionCustomerEventImpl value,
          $Res Function(_$GetPromotionCustomerEventImpl) then) =
      __$$GetPromotionCustomerEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, String searchQuery});
}

/// @nodoc
class __$$GetPromotionCustomerEventImplCopyWithImpl<$Res>
    extends _$PromotionCustomerEventCopyWithImpl<$Res,
        _$GetPromotionCustomerEventImpl>
    implements _$$GetPromotionCustomerEventImplCopyWith<$Res> {
  __$$GetPromotionCustomerEventImplCopyWithImpl(
      _$GetPromotionCustomerEventImpl _value,
      $Res Function(_$GetPromotionCustomerEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? searchQuery = null,
  }) {
    return _then(_$GetPromotionCustomerEventImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      searchQuery: null == searchQuery
          ? _value.searchQuery
          : searchQuery // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetPromotionCustomerEventImpl implements GetPromotionCustomerEvent {
  const _$GetPromotionCustomerEventImpl(
      {required this.id, required this.searchQuery});

  @override
  final String id;
  @override
  final String searchQuery;

  @override
  String toString() {
    return 'PromotionCustomerEvent.getPromotionCustomerEvent(id: $id, searchQuery: $searchQuery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPromotionCustomerEventImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.searchQuery, searchQuery) ||
                other.searchQuery == searchQuery));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, searchQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPromotionCustomerEventImplCopyWith<_$GetPromotionCustomerEventImpl>
      get copyWith => __$$GetPromotionCustomerEventImplCopyWithImpl<
          _$GetPromotionCustomerEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String searchQuery)
        getPromotionCustomerEvent,
    required TResult Function() clearOromotionCustomer,
  }) {
    return getPromotionCustomerEvent(id, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String searchQuery)? getPromotionCustomerEvent,
    TResult? Function()? clearOromotionCustomer,
  }) {
    return getPromotionCustomerEvent?.call(id, searchQuery);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String searchQuery)? getPromotionCustomerEvent,
    TResult Function()? clearOromotionCustomer,
    required TResult orElse(),
  }) {
    if (getPromotionCustomerEvent != null) {
      return getPromotionCustomerEvent(id, searchQuery);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPromotionCustomerEvent value)
        getPromotionCustomerEvent,
    required TResult Function(ClearOromotionCustomer value)
        clearOromotionCustomer,
  }) {
    return getPromotionCustomerEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPromotionCustomerEvent value)?
        getPromotionCustomerEvent,
    TResult? Function(ClearOromotionCustomer value)? clearOromotionCustomer,
  }) {
    return getPromotionCustomerEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPromotionCustomerEvent value)?
        getPromotionCustomerEvent,
    TResult Function(ClearOromotionCustomer value)? clearOromotionCustomer,
    required TResult orElse(),
  }) {
    if (getPromotionCustomerEvent != null) {
      return getPromotionCustomerEvent(this);
    }
    return orElse();
  }
}

abstract class GetPromotionCustomerEvent implements PromotionCustomerEvent {
  const factory GetPromotionCustomerEvent(
      {required final String id,
      required final String searchQuery}) = _$GetPromotionCustomerEventImpl;

  String get id;
  String get searchQuery;
  @JsonKey(ignore: true)
  _$$GetPromotionCustomerEventImplCopyWith<_$GetPromotionCustomerEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearOromotionCustomerImplCopyWith<$Res> {
  factory _$$ClearOromotionCustomerImplCopyWith(
          _$ClearOromotionCustomerImpl value,
          $Res Function(_$ClearOromotionCustomerImpl) then) =
      __$$ClearOromotionCustomerImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearOromotionCustomerImplCopyWithImpl<$Res>
    extends _$PromotionCustomerEventCopyWithImpl<$Res,
        _$ClearOromotionCustomerImpl>
    implements _$$ClearOromotionCustomerImplCopyWith<$Res> {
  __$$ClearOromotionCustomerImplCopyWithImpl(
      _$ClearOromotionCustomerImpl _value,
      $Res Function(_$ClearOromotionCustomerImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearOromotionCustomerImpl implements ClearOromotionCustomer {
  const _$ClearOromotionCustomerImpl();

  @override
  String toString() {
    return 'PromotionCustomerEvent.clearOromotionCustomer()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearOromotionCustomerImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id, String searchQuery)
        getPromotionCustomerEvent,
    required TResult Function() clearOromotionCustomer,
  }) {
    return clearOromotionCustomer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String id, String searchQuery)? getPromotionCustomerEvent,
    TResult? Function()? clearOromotionCustomer,
  }) {
    return clearOromotionCustomer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id, String searchQuery)? getPromotionCustomerEvent,
    TResult Function()? clearOromotionCustomer,
    required TResult orElse(),
  }) {
    if (clearOromotionCustomer != null) {
      return clearOromotionCustomer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPromotionCustomerEvent value)
        getPromotionCustomerEvent,
    required TResult Function(ClearOromotionCustomer value)
        clearOromotionCustomer,
  }) {
    return clearOromotionCustomer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPromotionCustomerEvent value)?
        getPromotionCustomerEvent,
    TResult? Function(ClearOromotionCustomer value)? clearOromotionCustomer,
  }) {
    return clearOromotionCustomer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPromotionCustomerEvent value)?
        getPromotionCustomerEvent,
    TResult Function(ClearOromotionCustomer value)? clearOromotionCustomer,
    required TResult orElse(),
  }) {
    if (clearOromotionCustomer != null) {
      return clearOromotionCustomer(this);
    }
    return orElse();
  }
}

abstract class ClearOromotionCustomer implements PromotionCustomerEvent {
  const factory ClearOromotionCustomer() = _$ClearOromotionCustomerImpl;
}

/// @nodoc
mixin _$PromotionCustomerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PromotionCustomerModel>? promotioncust)
        getPromotionCustomer,
    required TResult Function() promotionCustomerFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PromotionCustomerModel>? promotioncust)?
        getPromotionCustomer,
    TResult? Function()? promotionCustomerFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PromotionCustomerModel>? promotioncust)?
        getPromotionCustomer,
    TResult Function()? promotionCustomerFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPromotionCustomerState value)
        getPromotionCustomer,
    required TResult Function(PromotionCustomerFailed value)
        promotionCustomerFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPromotionCustomerState value)? getPromotionCustomer,
    TResult? Function(PromotionCustomerFailed value)? promotionCustomerFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPromotionCustomerState value)? getPromotionCustomer,
    TResult Function(PromotionCustomerFailed value)? promotionCustomerFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromotionCustomerStateCopyWith<$Res> {
  factory $PromotionCustomerStateCopyWith(PromotionCustomerState value,
          $Res Function(PromotionCustomerState) then) =
      _$PromotionCustomerStateCopyWithImpl<$Res, PromotionCustomerState>;
}

/// @nodoc
class _$PromotionCustomerStateCopyWithImpl<$Res,
        $Val extends PromotionCustomerState>
    implements $PromotionCustomerStateCopyWith<$Res> {
  _$PromotionCustomerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetPromotionCustomerStateImplCopyWith<$Res> {
  factory _$$GetPromotionCustomerStateImplCopyWith(
          _$GetPromotionCustomerStateImpl value,
          $Res Function(_$GetPromotionCustomerStateImpl) then) =
      __$$GetPromotionCustomerStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<PromotionCustomerModel>? promotioncust});
}

/// @nodoc
class __$$GetPromotionCustomerStateImplCopyWithImpl<$Res>
    extends _$PromotionCustomerStateCopyWithImpl<$Res,
        _$GetPromotionCustomerStateImpl>
    implements _$$GetPromotionCustomerStateImplCopyWith<$Res> {
  __$$GetPromotionCustomerStateImplCopyWithImpl(
      _$GetPromotionCustomerStateImpl _value,
      $Res Function(_$GetPromotionCustomerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? promotioncust = freezed,
  }) {
    return _then(_$GetPromotionCustomerStateImpl(
      promotioncust: freezed == promotioncust
          ? _value._promotioncust
          : promotioncust // ignore: cast_nullable_to_non_nullable
              as List<PromotionCustomerModel>?,
    ));
  }
}

/// @nodoc

class _$GetPromotionCustomerStateImpl implements GetPromotionCustomerState {
  const _$GetPromotionCustomerStateImpl(
      {required final List<PromotionCustomerModel>? promotioncust})
      : _promotioncust = promotioncust;

  final List<PromotionCustomerModel>? _promotioncust;
  @override
  List<PromotionCustomerModel>? get promotioncust {
    final value = _promotioncust;
    if (value == null) return null;
    if (_promotioncust is EqualUnmodifiableListView) return _promotioncust;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PromotionCustomerState.getPromotionCustomer(promotioncust: $promotioncust)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPromotionCustomerStateImpl &&
            const DeepCollectionEquality()
                .equals(other._promotioncust, _promotioncust));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_promotioncust));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPromotionCustomerStateImplCopyWith<_$GetPromotionCustomerStateImpl>
      get copyWith => __$$GetPromotionCustomerStateImplCopyWithImpl<
          _$GetPromotionCustomerStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PromotionCustomerModel>? promotioncust)
        getPromotionCustomer,
    required TResult Function() promotionCustomerFailed,
  }) {
    return getPromotionCustomer(promotioncust);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PromotionCustomerModel>? promotioncust)?
        getPromotionCustomer,
    TResult? Function()? promotionCustomerFailed,
  }) {
    return getPromotionCustomer?.call(promotioncust);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PromotionCustomerModel>? promotioncust)?
        getPromotionCustomer,
    TResult Function()? promotionCustomerFailed,
    required TResult orElse(),
  }) {
    if (getPromotionCustomer != null) {
      return getPromotionCustomer(promotioncust);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPromotionCustomerState value)
        getPromotionCustomer,
    required TResult Function(PromotionCustomerFailed value)
        promotionCustomerFailed,
  }) {
    return getPromotionCustomer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPromotionCustomerState value)? getPromotionCustomer,
    TResult? Function(PromotionCustomerFailed value)? promotionCustomerFailed,
  }) {
    return getPromotionCustomer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPromotionCustomerState value)? getPromotionCustomer,
    TResult Function(PromotionCustomerFailed value)? promotionCustomerFailed,
    required TResult orElse(),
  }) {
    if (getPromotionCustomer != null) {
      return getPromotionCustomer(this);
    }
    return orElse();
  }
}

abstract class GetPromotionCustomerState implements PromotionCustomerState {
  const factory GetPromotionCustomerState(
          {required final List<PromotionCustomerModel>? promotioncust}) =
      _$GetPromotionCustomerStateImpl;

  List<PromotionCustomerModel>? get promotioncust;
  @JsonKey(ignore: true)
  _$$GetPromotionCustomerStateImplCopyWith<_$GetPromotionCustomerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PromotionCustomerFailedImplCopyWith<$Res> {
  factory _$$PromotionCustomerFailedImplCopyWith(
          _$PromotionCustomerFailedImpl value,
          $Res Function(_$PromotionCustomerFailedImpl) then) =
      __$$PromotionCustomerFailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PromotionCustomerFailedImplCopyWithImpl<$Res>
    extends _$PromotionCustomerStateCopyWithImpl<$Res,
        _$PromotionCustomerFailedImpl>
    implements _$$PromotionCustomerFailedImplCopyWith<$Res> {
  __$$PromotionCustomerFailedImplCopyWithImpl(
      _$PromotionCustomerFailedImpl _value,
      $Res Function(_$PromotionCustomerFailedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PromotionCustomerFailedImpl implements PromotionCustomerFailed {
  const _$PromotionCustomerFailedImpl();

  @override
  String toString() {
    return 'PromotionCustomerState.promotionCustomerFailed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromotionCustomerFailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<PromotionCustomerModel>? promotioncust)
        getPromotionCustomer,
    required TResult Function() promotionCustomerFailed,
  }) {
    return promotionCustomerFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<PromotionCustomerModel>? promotioncust)?
        getPromotionCustomer,
    TResult? Function()? promotionCustomerFailed,
  }) {
    return promotionCustomerFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<PromotionCustomerModel>? promotioncust)?
        getPromotionCustomer,
    TResult Function()? promotionCustomerFailed,
    required TResult orElse(),
  }) {
    if (promotionCustomerFailed != null) {
      return promotionCustomerFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetPromotionCustomerState value)
        getPromotionCustomer,
    required TResult Function(PromotionCustomerFailed value)
        promotionCustomerFailed,
  }) {
    return promotionCustomerFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetPromotionCustomerState value)? getPromotionCustomer,
    TResult? Function(PromotionCustomerFailed value)? promotionCustomerFailed,
  }) {
    return promotionCustomerFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetPromotionCustomerState value)? getPromotionCustomer,
    TResult Function(PromotionCustomerFailed value)? promotionCustomerFailed,
    required TResult orElse(),
  }) {
    if (promotionCustomerFailed != null) {
      return promotionCustomerFailed(this);
    }
    return orElse();
  }
}

abstract class PromotionCustomerFailed implements PromotionCustomerState {
  const factory PromotionCustomerFailed() = _$PromotionCustomerFailedImpl;
}
