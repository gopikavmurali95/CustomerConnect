// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'convertpdfurl_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ConvertpdfurlState {
  String? get pdf => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? pdf) convertPDFUrl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? pdf)? convertPDFUrl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? pdf)? convertPDFUrl,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConvertPDFUrlState value) convertPDFUrl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConvertPDFUrlState value)? convertPDFUrl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConvertPDFUrlState value)? convertPDFUrl,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ConvertpdfurlState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ConvertpdfurlStateCopyWith<ConvertpdfurlState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConvertpdfurlStateCopyWith<$Res> {
  factory $ConvertpdfurlStateCopyWith(
          ConvertpdfurlState value, $Res Function(ConvertpdfurlState) then) =
      _$ConvertpdfurlStateCopyWithImpl<$Res, ConvertpdfurlState>;
  @useResult
  $Res call({String? pdf});
}

/// @nodoc
class _$ConvertpdfurlStateCopyWithImpl<$Res, $Val extends ConvertpdfurlState>
    implements $ConvertpdfurlStateCopyWith<$Res> {
  _$ConvertpdfurlStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ConvertpdfurlState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pdf = freezed,
  }) {
    return _then(_value.copyWith(
      pdf: freezed == pdf
          ? _value.pdf
          : pdf // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConvertPDFUrlStateImplCopyWith<$Res>
    implements $ConvertpdfurlStateCopyWith<$Res> {
  factory _$$ConvertPDFUrlStateImplCopyWith(_$ConvertPDFUrlStateImpl value,
          $Res Function(_$ConvertPDFUrlStateImpl) then) =
      __$$ConvertPDFUrlStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? pdf});
}

/// @nodoc
class __$$ConvertPDFUrlStateImplCopyWithImpl<$Res>
    extends _$ConvertpdfurlStateCopyWithImpl<$Res, _$ConvertPDFUrlStateImpl>
    implements _$$ConvertPDFUrlStateImplCopyWith<$Res> {
  __$$ConvertPDFUrlStateImplCopyWithImpl(_$ConvertPDFUrlStateImpl _value,
      $Res Function(_$ConvertPDFUrlStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ConvertpdfurlState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pdf = freezed,
  }) {
    return _then(_$ConvertPDFUrlStateImpl(
      pdf: freezed == pdf
          ? _value.pdf
          : pdf // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ConvertPDFUrlStateImpl implements ConvertPDFUrlState {
  const _$ConvertPDFUrlStateImpl({required this.pdf});

  @override
  final String? pdf;

  @override
  String toString() {
    return 'ConvertpdfurlState.convertPDFUrl(pdf: $pdf)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConvertPDFUrlStateImpl &&
            (identical(other.pdf, pdf) || other.pdf == pdf));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pdf);

  /// Create a copy of ConvertpdfurlState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ConvertPDFUrlStateImplCopyWith<_$ConvertPDFUrlStateImpl> get copyWith =>
      __$$ConvertPDFUrlStateImplCopyWithImpl<_$ConvertPDFUrlStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? pdf) convertPDFUrl,
  }) {
    return convertPDFUrl(pdf);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? pdf)? convertPDFUrl,
  }) {
    return convertPDFUrl?.call(pdf);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? pdf)? convertPDFUrl,
    required TResult orElse(),
  }) {
    if (convertPDFUrl != null) {
      return convertPDFUrl(pdf);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConvertPDFUrlState value) convertPDFUrl,
  }) {
    return convertPDFUrl(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ConvertPDFUrlState value)? convertPDFUrl,
  }) {
    return convertPDFUrl?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConvertPDFUrlState value)? convertPDFUrl,
    required TResult orElse(),
  }) {
    if (convertPDFUrl != null) {
      return convertPDFUrl(this);
    }
    return orElse();
  }
}

abstract class ConvertPDFUrlState implements ConvertpdfurlState {
  const factory ConvertPDFUrlState({required final String? pdf}) =
      _$ConvertPDFUrlStateImpl;

  @override
  String? get pdf;

  /// Create a copy of ConvertpdfurlState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ConvertPDFUrlStateImplCopyWith<_$ConvertPDFUrlStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
