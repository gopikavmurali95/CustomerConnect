// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'un_scheduled_visit_selection_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UnScheduledVisitSelectionState {
  List<UnScheduledVisitApproveInModel> get selected =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<UnScheduledVisitApproveInModel> selected)
        unSchedledSelectedItemsState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UnScheduledVisitApproveInModel> selected)?
        unSchedledSelectedItemsState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UnScheduledVisitApproveInModel> selected)?
        unSchedledSelectedItemsState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnSchedledSelectedItemsState value)
        unSchedledSelectedItemsState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnSchedledSelectedItemsState value)?
        unSchedledSelectedItemsState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnSchedledSelectedItemsState value)?
        unSchedledSelectedItemsState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of UnScheduledVisitSelectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnScheduledVisitSelectionStateCopyWith<UnScheduledVisitSelectionState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnScheduledVisitSelectionStateCopyWith<$Res> {
  factory $UnScheduledVisitSelectionStateCopyWith(
          UnScheduledVisitSelectionState value,
          $Res Function(UnScheduledVisitSelectionState) then) =
      _$UnScheduledVisitSelectionStateCopyWithImpl<$Res,
          UnScheduledVisitSelectionState>;
  @useResult
  $Res call({List<UnScheduledVisitApproveInModel> selected});
}

/// @nodoc
class _$UnScheduledVisitSelectionStateCopyWithImpl<$Res,
        $Val extends UnScheduledVisitSelectionState>
    implements $UnScheduledVisitSelectionStateCopyWith<$Res> {
  _$UnScheduledVisitSelectionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnScheduledVisitSelectionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selected = null,
  }) {
    return _then(_value.copyWith(
      selected: null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as List<UnScheduledVisitApproveInModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnSchedledSelectedItemsStateImplCopyWith<$Res>
    implements $UnScheduledVisitSelectionStateCopyWith<$Res> {
  factory _$$UnSchedledSelectedItemsStateImplCopyWith(
          _$UnSchedledSelectedItemsStateImpl value,
          $Res Function(_$UnSchedledSelectedItemsStateImpl) then) =
      __$$UnSchedledSelectedItemsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UnScheduledVisitApproveInModel> selected});
}

/// @nodoc
class __$$UnSchedledSelectedItemsStateImplCopyWithImpl<$Res>
    extends _$UnScheduledVisitSelectionStateCopyWithImpl<$Res,
        _$UnSchedledSelectedItemsStateImpl>
    implements _$$UnSchedledSelectedItemsStateImplCopyWith<$Res> {
  __$$UnSchedledSelectedItemsStateImplCopyWithImpl(
      _$UnSchedledSelectedItemsStateImpl _value,
      $Res Function(_$UnSchedledSelectedItemsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnScheduledVisitSelectionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selected = null,
  }) {
    return _then(_$UnSchedledSelectedItemsStateImpl(
      selected: null == selected
          ? _value._selected
          : selected // ignore: cast_nullable_to_non_nullable
              as List<UnScheduledVisitApproveInModel>,
    ));
  }
}

/// @nodoc

class _$UnSchedledSelectedItemsStateImpl
    implements UnSchedledSelectedItemsState {
  const _$UnSchedledSelectedItemsStateImpl(
      {required final List<UnScheduledVisitApproveInModel> selected})
      : _selected = selected;

  final List<UnScheduledVisitApproveInModel> _selected;
  @override
  List<UnScheduledVisitApproveInModel> get selected {
    if (_selected is EqualUnmodifiableListView) return _selected;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selected);
  }

  @override
  String toString() {
    return 'UnScheduledVisitSelectionState.unSchedledSelectedItemsState(selected: $selected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnSchedledSelectedItemsStateImpl &&
            const DeepCollectionEquality().equals(other._selected, _selected));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_selected));

  /// Create a copy of UnScheduledVisitSelectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnSchedledSelectedItemsStateImplCopyWith<
          _$UnSchedledSelectedItemsStateImpl>
      get copyWith => __$$UnSchedledSelectedItemsStateImplCopyWithImpl<
          _$UnSchedledSelectedItemsStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<UnScheduledVisitApproveInModel> selected)
        unSchedledSelectedItemsState,
  }) {
    return unSchedledSelectedItemsState(selected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<UnScheduledVisitApproveInModel> selected)?
        unSchedledSelectedItemsState,
  }) {
    return unSchedledSelectedItemsState?.call(selected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<UnScheduledVisitApproveInModel> selected)?
        unSchedledSelectedItemsState,
    required TResult orElse(),
  }) {
    if (unSchedledSelectedItemsState != null) {
      return unSchedledSelectedItemsState(selected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnSchedledSelectedItemsState value)
        unSchedledSelectedItemsState,
  }) {
    return unSchedledSelectedItemsState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnSchedledSelectedItemsState value)?
        unSchedledSelectedItemsState,
  }) {
    return unSchedledSelectedItemsState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnSchedledSelectedItemsState value)?
        unSchedledSelectedItemsState,
    required TResult orElse(),
  }) {
    if (unSchedledSelectedItemsState != null) {
      return unSchedledSelectedItemsState(this);
    }
    return orElse();
  }
}

abstract class UnSchedledSelectedItemsState
    implements UnScheduledVisitSelectionState {
  const factory UnSchedledSelectedItemsState(
          {required final List<UnScheduledVisitApproveInModel> selected}) =
      _$UnSchedledSelectedItemsStateImpl;

  @override
  List<UnScheduledVisitApproveInModel> get selected;

  /// Create a copy of UnScheduledVisitSelectionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnSchedledSelectedItemsStateImplCopyWith<
          _$UnSchedledSelectedItemsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
