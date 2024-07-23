// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'messages_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MessagesEvent {
  String get uniqueid => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MessageModel message, String fromusername,
            String toUserName, String uniqueid)
        sendmessageevent,
    required TResult Function(String mail, String uniqueid) getMessageEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MessageModel message, String fromusername,
            String toUserName, String uniqueid)?
        sendmessageevent,
    TResult? Function(String mail, String uniqueid)? getMessageEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MessageModel message, String fromusername,
            String toUserName, String uniqueid)?
        sendmessageevent,
    TResult Function(String mail, String uniqueid)? getMessageEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_sendmessageevent value) sendmessageevent,
    required TResult Function(_getMessageEvent value) getMessageEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_sendmessageevent value)? sendmessageevent,
    TResult? Function(_getMessageEvent value)? getMessageEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_sendmessageevent value)? sendmessageevent,
    TResult Function(_getMessageEvent value)? getMessageEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessagesEventCopyWith<MessagesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessagesEventCopyWith<$Res> {
  factory $MessagesEventCopyWith(
          MessagesEvent value, $Res Function(MessagesEvent) then) =
      _$MessagesEventCopyWithImpl<$Res, MessagesEvent>;
  @useResult
  $Res call({String uniqueid});
}

/// @nodoc
class _$MessagesEventCopyWithImpl<$Res, $Val extends MessagesEvent>
    implements $MessagesEventCopyWith<$Res> {
  _$MessagesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uniqueid = null,
  }) {
    return _then(_value.copyWith(
      uniqueid: null == uniqueid
          ? _value.uniqueid
          : uniqueid // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$sendmessageeventImplCopyWith<$Res>
    implements $MessagesEventCopyWith<$Res> {
  factory _$$sendmessageeventImplCopyWith(_$sendmessageeventImpl value,
          $Res Function(_$sendmessageeventImpl) then) =
      __$$sendmessageeventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MessageModel message,
      String fromusername,
      String toUserName,
      String uniqueid});
}

/// @nodoc
class __$$sendmessageeventImplCopyWithImpl<$Res>
    extends _$MessagesEventCopyWithImpl<$Res, _$sendmessageeventImpl>
    implements _$$sendmessageeventImplCopyWith<$Res> {
  __$$sendmessageeventImplCopyWithImpl(_$sendmessageeventImpl _value,
      $Res Function(_$sendmessageeventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? fromusername = null,
    Object? toUserName = null,
    Object? uniqueid = null,
  }) {
    return _then(_$sendmessageeventImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MessageModel,
      fromusername: null == fromusername
          ? _value.fromusername
          : fromusername // ignore: cast_nullable_to_non_nullable
              as String,
      toUserName: null == toUserName
          ? _value.toUserName
          : toUserName // ignore: cast_nullable_to_non_nullable
              as String,
      uniqueid: null == uniqueid
          ? _value.uniqueid
          : uniqueid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$sendmessageeventImpl implements _sendmessageevent {
  const _$sendmessageeventImpl(
      {required this.message,
      required this.fromusername,
      required this.toUserName,
      required this.uniqueid});

  @override
  final MessageModel message;
  @override
  final String fromusername;
  @override
  final String toUserName;
  @override
  final String uniqueid;

  @override
  String toString() {
    return 'MessagesEvent.sendmessageevent(message: $message, fromusername: $fromusername, toUserName: $toUserName, uniqueid: $uniqueid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$sendmessageeventImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.fromusername, fromusername) ||
                other.fromusername == fromusername) &&
            (identical(other.toUserName, toUserName) ||
                other.toUserName == toUserName) &&
            (identical(other.uniqueid, uniqueid) ||
                other.uniqueid == uniqueid));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, message, fromusername, toUserName, uniqueid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$sendmessageeventImplCopyWith<_$sendmessageeventImpl> get copyWith =>
      __$$sendmessageeventImplCopyWithImpl<_$sendmessageeventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MessageModel message, String fromusername,
            String toUserName, String uniqueid)
        sendmessageevent,
    required TResult Function(String mail, String uniqueid) getMessageEvent,
  }) {
    return sendmessageevent(message, fromusername, toUserName, uniqueid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MessageModel message, String fromusername,
            String toUserName, String uniqueid)?
        sendmessageevent,
    TResult? Function(String mail, String uniqueid)? getMessageEvent,
  }) {
    return sendmessageevent?.call(message, fromusername, toUserName, uniqueid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MessageModel message, String fromusername,
            String toUserName, String uniqueid)?
        sendmessageevent,
    TResult Function(String mail, String uniqueid)? getMessageEvent,
    required TResult orElse(),
  }) {
    if (sendmessageevent != null) {
      return sendmessageevent(message, fromusername, toUserName, uniqueid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_sendmessageevent value) sendmessageevent,
    required TResult Function(_getMessageEvent value) getMessageEvent,
  }) {
    return sendmessageevent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_sendmessageevent value)? sendmessageevent,
    TResult? Function(_getMessageEvent value)? getMessageEvent,
  }) {
    return sendmessageevent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_sendmessageevent value)? sendmessageevent,
    TResult Function(_getMessageEvent value)? getMessageEvent,
    required TResult orElse(),
  }) {
    if (sendmessageevent != null) {
      return sendmessageevent(this);
    }
    return orElse();
  }
}

abstract class _sendmessageevent implements MessagesEvent {
  const factory _sendmessageevent(
      {required final MessageModel message,
      required final String fromusername,
      required final String toUserName,
      required final String uniqueid}) = _$sendmessageeventImpl;

  MessageModel get message;
  String get fromusername;
  String get toUserName;
  @override
  String get uniqueid;
  @override
  @JsonKey(ignore: true)
  _$$sendmessageeventImplCopyWith<_$sendmessageeventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$getMessageEventImplCopyWith<$Res>
    implements $MessagesEventCopyWith<$Res> {
  factory _$$getMessageEventImplCopyWith(_$getMessageEventImpl value,
          $Res Function(_$getMessageEventImpl) then) =
      __$$getMessageEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String mail, String uniqueid});
}

/// @nodoc
class __$$getMessageEventImplCopyWithImpl<$Res>
    extends _$MessagesEventCopyWithImpl<$Res, _$getMessageEventImpl>
    implements _$$getMessageEventImplCopyWith<$Res> {
  __$$getMessageEventImplCopyWithImpl(
      _$getMessageEventImpl _value, $Res Function(_$getMessageEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mail = null,
    Object? uniqueid = null,
  }) {
    return _then(_$getMessageEventImpl(
      mail: null == mail
          ? _value.mail
          : mail // ignore: cast_nullable_to_non_nullable
              as String,
      uniqueid: null == uniqueid
          ? _value.uniqueid
          : uniqueid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$getMessageEventImpl implements _getMessageEvent {
  const _$getMessageEventImpl({required this.mail, required this.uniqueid});

  @override
  final String mail;
  @override
  final String uniqueid;

  @override
  String toString() {
    return 'MessagesEvent.getMessageEvent(mail: $mail, uniqueid: $uniqueid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getMessageEventImpl &&
            (identical(other.mail, mail) || other.mail == mail) &&
            (identical(other.uniqueid, uniqueid) ||
                other.uniqueid == uniqueid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mail, uniqueid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getMessageEventImplCopyWith<_$getMessageEventImpl> get copyWith =>
      __$$getMessageEventImplCopyWithImpl<_$getMessageEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(MessageModel message, String fromusername,
            String toUserName, String uniqueid)
        sendmessageevent,
    required TResult Function(String mail, String uniqueid) getMessageEvent,
  }) {
    return getMessageEvent(mail, uniqueid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(MessageModel message, String fromusername,
            String toUserName, String uniqueid)?
        sendmessageevent,
    TResult? Function(String mail, String uniqueid)? getMessageEvent,
  }) {
    return getMessageEvent?.call(mail, uniqueid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(MessageModel message, String fromusername,
            String toUserName, String uniqueid)?
        sendmessageevent,
    TResult Function(String mail, String uniqueid)? getMessageEvent,
    required TResult orElse(),
  }) {
    if (getMessageEvent != null) {
      return getMessageEvent(mail, uniqueid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_sendmessageevent value) sendmessageevent,
    required TResult Function(_getMessageEvent value) getMessageEvent,
  }) {
    return getMessageEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_sendmessageevent value)? sendmessageevent,
    TResult? Function(_getMessageEvent value)? getMessageEvent,
  }) {
    return getMessageEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_sendmessageevent value)? sendmessageevent,
    TResult Function(_getMessageEvent value)? getMessageEvent,
    required TResult orElse(),
  }) {
    if (getMessageEvent != null) {
      return getMessageEvent(this);
    }
    return orElse();
  }
}

abstract class _getMessageEvent implements MessagesEvent {
  const factory _getMessageEvent(
      {required final String mail,
      required final String uniqueid}) = _$getMessageEventImpl;

  String get mail;
  @override
  String get uniqueid;
  @override
  @JsonKey(ignore: true)
  _$$getMessageEventImplCopyWith<_$getMessageEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MessagesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() messagesendstate,
    required TResult Function(List<MessageModel> messagelist) getmessagestate,
    required TResult Function() errorstate,
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? messagesendstate,
    TResult? Function(List<MessageModel> messagelist)? getmessagestate,
    TResult? Function()? errorstate,
    TResult? Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? messagesendstate,
    TResult Function(List<MessageModel> messagelist)? getmessagestate,
    TResult Function()? errorstate,
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MessagesState value) $default, {
    required TResult Function(_messagesendstate value) messagesendstate,
    required TResult Function(_getmessagestate value) getmessagestate,
    required TResult Function(_errorstate value) errorstate,
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_MessagesState value)? $default, {
    TResult? Function(_messagesendstate value)? messagesendstate,
    TResult? Function(_getmessagestate value)? getmessagestate,
    TResult? Function(_errorstate value)? errorstate,
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MessagesState value)? $default, {
    TResult Function(_messagesendstate value)? messagesendstate,
    TResult Function(_getmessagestate value)? getmessagestate,
    TResult Function(_errorstate value)? errorstate,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessagesStateCopyWith<$Res> {
  factory $MessagesStateCopyWith(
          MessagesState value, $Res Function(MessagesState) then) =
      _$MessagesStateCopyWithImpl<$Res, MessagesState>;
}

/// @nodoc
class _$MessagesStateCopyWithImpl<$Res, $Val extends MessagesState>
    implements $MessagesStateCopyWith<$Res> {
  _$MessagesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MessagesStateImplCopyWith<$Res> {
  factory _$$MessagesStateImplCopyWith(
          _$MessagesStateImpl value, $Res Function(_$MessagesStateImpl) then) =
      __$$MessagesStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MessagesStateImplCopyWithImpl<$Res>
    extends _$MessagesStateCopyWithImpl<$Res, _$MessagesStateImpl>
    implements _$$MessagesStateImplCopyWith<$Res> {
  __$$MessagesStateImplCopyWithImpl(
      _$MessagesStateImpl _value, $Res Function(_$MessagesStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MessagesStateImpl implements _MessagesState {
  const _$MessagesStateImpl();

  @override
  String toString() {
    return 'MessagesState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MessagesStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() messagesendstate,
    required TResult Function(List<MessageModel> messagelist) getmessagestate,
    required TResult Function() errorstate,
    required TResult Function() initial,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? messagesendstate,
    TResult? Function(List<MessageModel> messagelist)? getmessagestate,
    TResult? Function()? errorstate,
    TResult? Function()? initial,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? messagesendstate,
    TResult Function(List<MessageModel> messagelist)? getmessagestate,
    TResult Function()? errorstate,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MessagesState value) $default, {
    required TResult Function(_messagesendstate value) messagesendstate,
    required TResult Function(_getmessagestate value) getmessagestate,
    required TResult Function(_errorstate value) errorstate,
    required TResult Function(_Initial value) initial,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_MessagesState value)? $default, {
    TResult? Function(_messagesendstate value)? messagesendstate,
    TResult? Function(_getmessagestate value)? getmessagestate,
    TResult? Function(_errorstate value)? errorstate,
    TResult? Function(_Initial value)? initial,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MessagesState value)? $default, {
    TResult Function(_messagesendstate value)? messagesendstate,
    TResult Function(_getmessagestate value)? getmessagestate,
    TResult Function(_errorstate value)? errorstate,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _MessagesState implements MessagesState {
  const factory _MessagesState() = _$MessagesStateImpl;
}

/// @nodoc
abstract class _$$messagesendstateImplCopyWith<$Res> {
  factory _$$messagesendstateImplCopyWith(_$messagesendstateImpl value,
          $Res Function(_$messagesendstateImpl) then) =
      __$$messagesendstateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$messagesendstateImplCopyWithImpl<$Res>
    extends _$MessagesStateCopyWithImpl<$Res, _$messagesendstateImpl>
    implements _$$messagesendstateImplCopyWith<$Res> {
  __$$messagesendstateImplCopyWithImpl(_$messagesendstateImpl _value,
      $Res Function(_$messagesendstateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$messagesendstateImpl implements _messagesendstate {
  const _$messagesendstateImpl();

  @override
  String toString() {
    return 'MessagesState.messagesendstate()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$messagesendstateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() messagesendstate,
    required TResult Function(List<MessageModel> messagelist) getmessagestate,
    required TResult Function() errorstate,
    required TResult Function() initial,
  }) {
    return messagesendstate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? messagesendstate,
    TResult? Function(List<MessageModel> messagelist)? getmessagestate,
    TResult? Function()? errorstate,
    TResult? Function()? initial,
  }) {
    return messagesendstate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? messagesendstate,
    TResult Function(List<MessageModel> messagelist)? getmessagestate,
    TResult Function()? errorstate,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (messagesendstate != null) {
      return messagesendstate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MessagesState value) $default, {
    required TResult Function(_messagesendstate value) messagesendstate,
    required TResult Function(_getmessagestate value) getmessagestate,
    required TResult Function(_errorstate value) errorstate,
    required TResult Function(_Initial value) initial,
  }) {
    return messagesendstate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_MessagesState value)? $default, {
    TResult? Function(_messagesendstate value)? messagesendstate,
    TResult? Function(_getmessagestate value)? getmessagestate,
    TResult? Function(_errorstate value)? errorstate,
    TResult? Function(_Initial value)? initial,
  }) {
    return messagesendstate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MessagesState value)? $default, {
    TResult Function(_messagesendstate value)? messagesendstate,
    TResult Function(_getmessagestate value)? getmessagestate,
    TResult Function(_errorstate value)? errorstate,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (messagesendstate != null) {
      return messagesendstate(this);
    }
    return orElse();
  }
}

abstract class _messagesendstate implements MessagesState {
  const factory _messagesendstate() = _$messagesendstateImpl;
}

/// @nodoc
abstract class _$$getmessagestateImplCopyWith<$Res> {
  factory _$$getmessagestateImplCopyWith(_$getmessagestateImpl value,
          $Res Function(_$getmessagestateImpl) then) =
      __$$getmessagestateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<MessageModel> messagelist});
}

/// @nodoc
class __$$getmessagestateImplCopyWithImpl<$Res>
    extends _$MessagesStateCopyWithImpl<$Res, _$getmessagestateImpl>
    implements _$$getmessagestateImplCopyWith<$Res> {
  __$$getmessagestateImplCopyWithImpl(
      _$getmessagestateImpl _value, $Res Function(_$getmessagestateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messagelist = null,
  }) {
    return _then(_$getmessagestateImpl(
      messagelist: null == messagelist
          ? _value._messagelist
          : messagelist // ignore: cast_nullable_to_non_nullable
              as List<MessageModel>,
    ));
  }
}

/// @nodoc

class _$getmessagestateImpl implements _getmessagestate {
  const _$getmessagestateImpl({required final List<MessageModel> messagelist})
      : _messagelist = messagelist;

  final List<MessageModel> _messagelist;
  @override
  List<MessageModel> get messagelist {
    if (_messagelist is EqualUnmodifiableListView) return _messagelist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messagelist);
  }

  @override
  String toString() {
    return 'MessagesState.getmessagestate(messagelist: $messagelist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$getmessagestateImpl &&
            const DeepCollectionEquality()
                .equals(other._messagelist, _messagelist));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_messagelist));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$getmessagestateImplCopyWith<_$getmessagestateImpl> get copyWith =>
      __$$getmessagestateImplCopyWithImpl<_$getmessagestateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() messagesendstate,
    required TResult Function(List<MessageModel> messagelist) getmessagestate,
    required TResult Function() errorstate,
    required TResult Function() initial,
  }) {
    return getmessagestate(messagelist);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? messagesendstate,
    TResult? Function(List<MessageModel> messagelist)? getmessagestate,
    TResult? Function()? errorstate,
    TResult? Function()? initial,
  }) {
    return getmessagestate?.call(messagelist);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? messagesendstate,
    TResult Function(List<MessageModel> messagelist)? getmessagestate,
    TResult Function()? errorstate,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (getmessagestate != null) {
      return getmessagestate(messagelist);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MessagesState value) $default, {
    required TResult Function(_messagesendstate value) messagesendstate,
    required TResult Function(_getmessagestate value) getmessagestate,
    required TResult Function(_errorstate value) errorstate,
    required TResult Function(_Initial value) initial,
  }) {
    return getmessagestate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_MessagesState value)? $default, {
    TResult? Function(_messagesendstate value)? messagesendstate,
    TResult? Function(_getmessagestate value)? getmessagestate,
    TResult? Function(_errorstate value)? errorstate,
    TResult? Function(_Initial value)? initial,
  }) {
    return getmessagestate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MessagesState value)? $default, {
    TResult Function(_messagesendstate value)? messagesendstate,
    TResult Function(_getmessagestate value)? getmessagestate,
    TResult Function(_errorstate value)? errorstate,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (getmessagestate != null) {
      return getmessagestate(this);
    }
    return orElse();
  }
}

abstract class _getmessagestate implements MessagesState {
  const factory _getmessagestate(
      {required final List<MessageModel> messagelist}) = _$getmessagestateImpl;

  List<MessageModel> get messagelist;
  @JsonKey(ignore: true)
  _$$getmessagestateImplCopyWith<_$getmessagestateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$errorstateImplCopyWith<$Res> {
  factory _$$errorstateImplCopyWith(
          _$errorstateImpl value, $Res Function(_$errorstateImpl) then) =
      __$$errorstateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$errorstateImplCopyWithImpl<$Res>
    extends _$MessagesStateCopyWithImpl<$Res, _$errorstateImpl>
    implements _$$errorstateImplCopyWith<$Res> {
  __$$errorstateImplCopyWithImpl(
      _$errorstateImpl _value, $Res Function(_$errorstateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$errorstateImpl implements _errorstate {
  const _$errorstateImpl();

  @override
  String toString() {
    return 'MessagesState.errorstate()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$errorstateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() messagesendstate,
    required TResult Function(List<MessageModel> messagelist) getmessagestate,
    required TResult Function() errorstate,
    required TResult Function() initial,
  }) {
    return errorstate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? messagesendstate,
    TResult? Function(List<MessageModel> messagelist)? getmessagestate,
    TResult? Function()? errorstate,
    TResult? Function()? initial,
  }) {
    return errorstate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? messagesendstate,
    TResult Function(List<MessageModel> messagelist)? getmessagestate,
    TResult Function()? errorstate,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (errorstate != null) {
      return errorstate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MessagesState value) $default, {
    required TResult Function(_messagesendstate value) messagesendstate,
    required TResult Function(_getmessagestate value) getmessagestate,
    required TResult Function(_errorstate value) errorstate,
    required TResult Function(_Initial value) initial,
  }) {
    return errorstate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_MessagesState value)? $default, {
    TResult? Function(_messagesendstate value)? messagesendstate,
    TResult? Function(_getmessagestate value)? getmessagestate,
    TResult? Function(_errorstate value)? errorstate,
    TResult? Function(_Initial value)? initial,
  }) {
    return errorstate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MessagesState value)? $default, {
    TResult Function(_messagesendstate value)? messagesendstate,
    TResult Function(_getmessagestate value)? getmessagestate,
    TResult Function(_errorstate value)? errorstate,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (errorstate != null) {
      return errorstate(this);
    }
    return orElse();
  }
}

abstract class _errorstate implements MessagesState {
  const factory _errorstate() = _$errorstateImpl;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$MessagesStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'MessagesState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function() messagesendstate,
    required TResult Function(List<MessageModel> messagelist) getmessagestate,
    required TResult Function() errorstate,
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function()? messagesendstate,
    TResult? Function(List<MessageModel> messagelist)? getmessagestate,
    TResult? Function()? errorstate,
    TResult? Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function()? messagesendstate,
    TResult Function(List<MessageModel> messagelist)? getmessagestate,
    TResult Function()? errorstate,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_MessagesState value) $default, {
    required TResult Function(_messagesendstate value) messagesendstate,
    required TResult Function(_getmessagestate value) getmessagestate,
    required TResult Function(_errorstate value) errorstate,
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_MessagesState value)? $default, {
    TResult? Function(_messagesendstate value)? messagesendstate,
    TResult? Function(_getmessagestate value)? getmessagestate,
    TResult? Function(_errorstate value)? errorstate,
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_MessagesState value)? $default, {
    TResult Function(_messagesendstate value)? messagesendstate,
    TResult Function(_getmessagestate value)? getmessagestate,
    TResult Function(_errorstate value)? errorstate,
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements MessagesState {
  const factory _Initial() = _$InitialImpl;
}
