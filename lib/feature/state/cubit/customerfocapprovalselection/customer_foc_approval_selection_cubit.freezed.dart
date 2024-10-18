// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_foc_approval_selection_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CustomerFocApprovalSelectionState {
  List<CustomerFocApprovalJsonModel> get selection =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CustomerFocApprovalJsonModel> selection)
        focApprovalSelectionState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CustomerFocApprovalJsonModel> selection)?
        focApprovalSelectionState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CustomerFocApprovalJsonModel> selection)?
        focApprovalSelectionState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FocApprovalSelectionState value)
        focApprovalSelectionState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FocApprovalSelectionState value)?
        focApprovalSelectionState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FocApprovalSelectionState value)?
        focApprovalSelectionState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerFocApprovalSelectionStateCopyWith<CustomerFocApprovalSelectionState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerFocApprovalSelectionStateCopyWith<$Res> {
  factory $CustomerFocApprovalSelectionStateCopyWith(
          CustomerFocApprovalSelectionState value,
          $Res Function(CustomerFocApprovalSelectionState) then) =
      _$CustomerFocApprovalSelectionStateCopyWithImpl<$Res,
          CustomerFocApprovalSelectionState>;
  @useResult
  $Res call({List<CustomerFocApprovalJsonModel> selection});
}

/// @nodoc
class _$CustomerFocApprovalSelectionStateCopyWithImpl<$Res,
        $Val extends CustomerFocApprovalSelectionState>
    implements $CustomerFocApprovalSelectionStateCopyWith<$Res> {
  _$CustomerFocApprovalSelectionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selection = null,
  }) {
    return _then(_value.copyWith(
      selection: null == selection
          ? _value.selection
          : selection // ignore: cast_nullable_to_non_nullable
              as List<CustomerFocApprovalJsonModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FocApprovalSelectionStateImplCopyWith<$Res>
    implements $CustomerFocApprovalSelectionStateCopyWith<$Res> {
  factory _$$FocApprovalSelectionStateImplCopyWith(
          _$FocApprovalSelectionStateImpl value,
          $Res Function(_$FocApprovalSelectionStateImpl) then) =
      __$$FocApprovalSelectionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CustomerFocApprovalJsonModel> selection});
}

/// @nodoc
class __$$FocApprovalSelectionStateImplCopyWithImpl<$Res>
    extends _$CustomerFocApprovalSelectionStateCopyWithImpl<$Res,
        _$FocApprovalSelectionStateImpl>
    implements _$$FocApprovalSelectionStateImplCopyWith<$Res> {
  __$$FocApprovalSelectionStateImplCopyWithImpl(
      _$FocApprovalSelectionStateImpl _value,
      $Res Function(_$FocApprovalSelectionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selection = null,
  }) {
    return _then(_$FocApprovalSelectionStateImpl(
      selection: null == selection
          ? _value._selection
          : selection // ignore: cast_nullable_to_non_nullable
              as List<CustomerFocApprovalJsonModel>,
    ));
  }
}

/// @nodoc

class _$FocApprovalSelectionStateImpl implements FocApprovalSelectionState {
  const _$FocApprovalSelectionStateImpl(
      {required final List<CustomerFocApprovalJsonModel> selection})
      : _selection = selection;

  final List<CustomerFocApprovalJsonModel> _selection;
  @override
  List<CustomerFocApprovalJsonModel> get selection {
    if (_selection is EqualUnmodifiableListView) return _selection;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selection);
  }

  @override
  String toString() {
    return 'CustomerFocApprovalSelectionState.focApprovalSelectionState(selection: $selection)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FocApprovalSelectionStateImpl &&
            const DeepCollectionEquality()
                .equals(other._selection, _selection));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_selection));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FocApprovalSelectionStateImplCopyWith<_$FocApprovalSelectionStateImpl>
      get copyWith => __$$FocApprovalSelectionStateImplCopyWithImpl<
          _$FocApprovalSelectionStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CustomerFocApprovalJsonModel> selection)
        focApprovalSelectionState,
  }) {
    return focApprovalSelectionState(selection);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CustomerFocApprovalJsonModel> selection)?
        focApprovalSelectionState,
  }) {
    return focApprovalSelectionState?.call(selection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CustomerFocApprovalJsonModel> selection)?
        focApprovalSelectionState,
    required TResult orElse(),
  }) {
    if (focApprovalSelectionState != null) {
      return focApprovalSelectionState(selection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FocApprovalSelectionState value)
        focApprovalSelectionState,
  }) {
    return focApprovalSelectionState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FocApprovalSelectionState value)?
        focApprovalSelectionState,
  }) {
    return focApprovalSelectionState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FocApprovalSelectionState value)?
        focApprovalSelectionState,
    required TResult orElse(),
  }) {
    if (focApprovalSelectionState != null) {
      return focApprovalSelectionState(this);
    }
    return orElse();
  }
}

abstract class FocApprovalSelectionState
    implements CustomerFocApprovalSelectionState {
  const factory FocApprovalSelectionState(
          {required final List<CustomerFocApprovalJsonModel> selection}) =
      _$FocApprovalSelectionStateImpl;

  @override
  List<CustomerFocApprovalJsonModel> get selection;
  @override
  @JsonKey(ignore: true)
  _$$FocApprovalSelectionStateImplCopyWith<_$FocApprovalSelectionStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
