// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'splash_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SplashViewState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<UiEvent> get events => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SplashViewStateCopyWith<SplashViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SplashViewStateCopyWith<$Res> {
  factory $SplashViewStateCopyWith(
          SplashViewState value, $Res Function(SplashViewState) then) =
      _$SplashViewStateCopyWithImpl<$Res, SplashViewState>;
  @useResult
  $Res call({bool isLoading, List<UiEvent> events});
}

/// @nodoc
class _$SplashViewStateCopyWithImpl<$Res, $Val extends SplashViewState>
    implements $SplashViewStateCopyWith<$Res> {
  _$SplashViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? events = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<UiEvent>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SplashViewStateCopyWith<$Res>
    implements $SplashViewStateCopyWith<$Res> {
  factory _$$_SplashViewStateCopyWith(
          _$_SplashViewState value, $Res Function(_$_SplashViewState) then) =
      __$$_SplashViewStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, List<UiEvent> events});
}

/// @nodoc
class __$$_SplashViewStateCopyWithImpl<$Res>
    extends _$SplashViewStateCopyWithImpl<$Res, _$_SplashViewState>
    implements _$$_SplashViewStateCopyWith<$Res> {
  __$$_SplashViewStateCopyWithImpl(
      _$_SplashViewState _value, $Res Function(_$_SplashViewState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? events = null,
  }) {
    return _then(_$_SplashViewState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<UiEvent>,
    ));
  }
}

/// @nodoc

class _$_SplashViewState implements _SplashViewState {
  const _$_SplashViewState(
      {this.isLoading = false, final List<UiEvent> events = const []})
      : _events = events;

  @override
  @JsonKey()
  final bool isLoading;
  final List<UiEvent> _events;
  @override
  @JsonKey()
  List<UiEvent> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  String toString() {
    return 'SplashViewState(isLoading: $isLoading, events: $events)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SplashViewState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._events, _events));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, const DeepCollectionEquality().hash(_events));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SplashViewStateCopyWith<_$_SplashViewState> get copyWith =>
      __$$_SplashViewStateCopyWithImpl<_$_SplashViewState>(this, _$identity);
}

abstract class _SplashViewState implements SplashViewState {
  const factory _SplashViewState(
      {final bool isLoading, final List<UiEvent> events}) = _$_SplashViewState;

  @override
  bool get isLoading;
  @override
  List<UiEvent> get events;
  @override
  @JsonKey(ignore: true)
  _$$_SplashViewStateCopyWith<_$_SplashViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UiEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onCompleteNotLogin,
    required TResult Function() onCompleteLogin,
    required TResult Function(Exception e) onError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onCompleteNotLogin,
    TResult? Function()? onCompleteLogin,
    TResult? Function(Exception e)? onError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onCompleteNotLogin,
    TResult Function()? onCompleteLogin,
    TResult Function(Exception e)? onError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnCompleteNotLogin value) onCompleteNotLogin,
    required TResult Function(OnCompleteLogin value) onCompleteLogin,
    required TResult Function(OnError value) onError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnCompleteNotLogin value)? onCompleteNotLogin,
    TResult? Function(OnCompleteLogin value)? onCompleteLogin,
    TResult? Function(OnError value)? onError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnCompleteNotLogin value)? onCompleteNotLogin,
    TResult Function(OnCompleteLogin value)? onCompleteLogin,
    TResult Function(OnError value)? onError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UiEventCopyWith<$Res> {
  factory $UiEventCopyWith(UiEvent value, $Res Function(UiEvent) then) =
      _$UiEventCopyWithImpl<$Res, UiEvent>;
}

/// @nodoc
class _$UiEventCopyWithImpl<$Res, $Val extends UiEvent>
    implements $UiEventCopyWith<$Res> {
  _$UiEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OnCompleteNotLoginCopyWith<$Res> {
  factory _$$OnCompleteNotLoginCopyWith(_$OnCompleteNotLogin value,
          $Res Function(_$OnCompleteNotLogin) then) =
      __$$OnCompleteNotLoginCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnCompleteNotLoginCopyWithImpl<$Res>
    extends _$UiEventCopyWithImpl<$Res, _$OnCompleteNotLogin>
    implements _$$OnCompleteNotLoginCopyWith<$Res> {
  __$$OnCompleteNotLoginCopyWithImpl(
      _$OnCompleteNotLogin _value, $Res Function(_$OnCompleteNotLogin) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnCompleteNotLogin implements OnCompleteNotLogin {
  const _$OnCompleteNotLogin();

  @override
  String toString() {
    return 'UiEvent.onCompleteNotLogin()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnCompleteNotLogin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onCompleteNotLogin,
    required TResult Function() onCompleteLogin,
    required TResult Function(Exception e) onError,
  }) {
    return onCompleteNotLogin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onCompleteNotLogin,
    TResult? Function()? onCompleteLogin,
    TResult? Function(Exception e)? onError,
  }) {
    return onCompleteNotLogin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onCompleteNotLogin,
    TResult Function()? onCompleteLogin,
    TResult Function(Exception e)? onError,
    required TResult orElse(),
  }) {
    if (onCompleteNotLogin != null) {
      return onCompleteNotLogin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnCompleteNotLogin value) onCompleteNotLogin,
    required TResult Function(OnCompleteLogin value) onCompleteLogin,
    required TResult Function(OnError value) onError,
  }) {
    return onCompleteNotLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnCompleteNotLogin value)? onCompleteNotLogin,
    TResult? Function(OnCompleteLogin value)? onCompleteLogin,
    TResult? Function(OnError value)? onError,
  }) {
    return onCompleteNotLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnCompleteNotLogin value)? onCompleteNotLogin,
    TResult Function(OnCompleteLogin value)? onCompleteLogin,
    TResult Function(OnError value)? onError,
    required TResult orElse(),
  }) {
    if (onCompleteNotLogin != null) {
      return onCompleteNotLogin(this);
    }
    return orElse();
  }
}

abstract class OnCompleteNotLogin implements UiEvent {
  const factory OnCompleteNotLogin() = _$OnCompleteNotLogin;
}

/// @nodoc
abstract class _$$OnCompleteLoginCopyWith<$Res> {
  factory _$$OnCompleteLoginCopyWith(
          _$OnCompleteLogin value, $Res Function(_$OnCompleteLogin) then) =
      __$$OnCompleteLoginCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnCompleteLoginCopyWithImpl<$Res>
    extends _$UiEventCopyWithImpl<$Res, _$OnCompleteLogin>
    implements _$$OnCompleteLoginCopyWith<$Res> {
  __$$OnCompleteLoginCopyWithImpl(
      _$OnCompleteLogin _value, $Res Function(_$OnCompleteLogin) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OnCompleteLogin implements OnCompleteLogin {
  const _$OnCompleteLogin();

  @override
  String toString() {
    return 'UiEvent.onCompleteLogin()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnCompleteLogin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onCompleteNotLogin,
    required TResult Function() onCompleteLogin,
    required TResult Function(Exception e) onError,
  }) {
    return onCompleteLogin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onCompleteNotLogin,
    TResult? Function()? onCompleteLogin,
    TResult? Function(Exception e)? onError,
  }) {
    return onCompleteLogin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onCompleteNotLogin,
    TResult Function()? onCompleteLogin,
    TResult Function(Exception e)? onError,
    required TResult orElse(),
  }) {
    if (onCompleteLogin != null) {
      return onCompleteLogin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnCompleteNotLogin value) onCompleteNotLogin,
    required TResult Function(OnCompleteLogin value) onCompleteLogin,
    required TResult Function(OnError value) onError,
  }) {
    return onCompleteLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnCompleteNotLogin value)? onCompleteNotLogin,
    TResult? Function(OnCompleteLogin value)? onCompleteLogin,
    TResult? Function(OnError value)? onError,
  }) {
    return onCompleteLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnCompleteNotLogin value)? onCompleteNotLogin,
    TResult Function(OnCompleteLogin value)? onCompleteLogin,
    TResult Function(OnError value)? onError,
    required TResult orElse(),
  }) {
    if (onCompleteLogin != null) {
      return onCompleteLogin(this);
    }
    return orElse();
  }
}

abstract class OnCompleteLogin implements UiEvent {
  const factory OnCompleteLogin() = _$OnCompleteLogin;
}

/// @nodoc
abstract class _$$OnErrorCopyWith<$Res> {
  factory _$$OnErrorCopyWith(_$OnError value, $Res Function(_$OnError) then) =
      __$$OnErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception e});
}

/// @nodoc
class __$$OnErrorCopyWithImpl<$Res>
    extends _$UiEventCopyWithImpl<$Res, _$OnError>
    implements _$$OnErrorCopyWith<$Res> {
  __$$OnErrorCopyWithImpl(_$OnError _value, $Res Function(_$OnError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = null,
  }) {
    return _then(_$OnError(
      null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$OnError implements OnError {
  const _$OnError(this.e);

  @override
  final Exception e;

  @override
  String toString() {
    return 'UiEvent.onError(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnError &&
            (identical(other.e, e) || other.e == e));
  }

  @override
  int get hashCode => Object.hash(runtimeType, e);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OnErrorCopyWith<_$OnError> get copyWith =>
      __$$OnErrorCopyWithImpl<_$OnError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onCompleteNotLogin,
    required TResult Function() onCompleteLogin,
    required TResult Function(Exception e) onError,
  }) {
    return onError(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? onCompleteNotLogin,
    TResult? Function()? onCompleteLogin,
    TResult? Function(Exception e)? onError,
  }) {
    return onError?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onCompleteNotLogin,
    TResult Function()? onCompleteLogin,
    TResult Function(Exception e)? onError,
    required TResult orElse(),
  }) {
    if (onError != null) {
      return onError(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnCompleteNotLogin value) onCompleteNotLogin,
    required TResult Function(OnCompleteLogin value) onCompleteLogin,
    required TResult Function(OnError value) onError,
  }) {
    return onError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnCompleteNotLogin value)? onCompleteNotLogin,
    TResult? Function(OnCompleteLogin value)? onCompleteLogin,
    TResult? Function(OnError value)? onError,
  }) {
    return onError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnCompleteNotLogin value)? onCompleteNotLogin,
    TResult Function(OnCompleteLogin value)? onCompleteLogin,
    TResult Function(OnError value)? onError,
    required TResult orElse(),
  }) {
    if (onError != null) {
      return onError(this);
    }
    return orElse();
  }
}

abstract class OnError implements UiEvent {
  const factory OnError(final Exception e) = _$OnError;

  Exception get e;
  @JsonKey(ignore: true)
  _$$OnErrorCopyWith<_$OnError> get copyWith =>
      throw _privateConstructorUsedError;
}
