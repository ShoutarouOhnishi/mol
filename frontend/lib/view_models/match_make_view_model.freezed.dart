// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'match_make_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MatchMakeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() waiting,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? waiting,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? waiting,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MatchMakeInitial value) initial,
    required TResult Function(MatchMakeLoading value) loading,
    required TResult Function(MatchMakeWaiting value) waiting,
    required TResult Function(MatchMakeError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MatchMakeInitial value)? initial,
    TResult? Function(MatchMakeLoading value)? loading,
    TResult? Function(MatchMakeWaiting value)? waiting,
    TResult? Function(MatchMakeError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MatchMakeInitial value)? initial,
    TResult Function(MatchMakeLoading value)? loading,
    TResult Function(MatchMakeWaiting value)? waiting,
    TResult Function(MatchMakeError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchMakeStateCopyWith<$Res> {
  factory $MatchMakeStateCopyWith(
          MatchMakeState value, $Res Function(MatchMakeState) then) =
      _$MatchMakeStateCopyWithImpl<$Res, MatchMakeState>;
}

/// @nodoc
class _$MatchMakeStateCopyWithImpl<$Res, $Val extends MatchMakeState>
    implements $MatchMakeStateCopyWith<$Res> {
  _$MatchMakeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$MatchMakeInitialCopyWith<$Res> {
  factory _$$MatchMakeInitialCopyWith(
          _$MatchMakeInitial value, $Res Function(_$MatchMakeInitial) then) =
      __$$MatchMakeInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MatchMakeInitialCopyWithImpl<$Res>
    extends _$MatchMakeStateCopyWithImpl<$Res, _$MatchMakeInitial>
    implements _$$MatchMakeInitialCopyWith<$Res> {
  __$$MatchMakeInitialCopyWithImpl(
      _$MatchMakeInitial _value, $Res Function(_$MatchMakeInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MatchMakeInitial implements MatchMakeInitial {
  const _$MatchMakeInitial();

  @override
  String toString() {
    return 'MatchMakeState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MatchMakeInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() waiting,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? waiting,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? waiting,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MatchMakeInitial value) initial,
    required TResult Function(MatchMakeLoading value) loading,
    required TResult Function(MatchMakeWaiting value) waiting,
    required TResult Function(MatchMakeError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MatchMakeInitial value)? initial,
    TResult? Function(MatchMakeLoading value)? loading,
    TResult? Function(MatchMakeWaiting value)? waiting,
    TResult? Function(MatchMakeError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MatchMakeInitial value)? initial,
    TResult Function(MatchMakeLoading value)? loading,
    TResult Function(MatchMakeWaiting value)? waiting,
    TResult Function(MatchMakeError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class MatchMakeInitial implements MatchMakeState {
  const factory MatchMakeInitial() = _$MatchMakeInitial;
}

/// @nodoc
abstract class _$$MatchMakeLoadingCopyWith<$Res> {
  factory _$$MatchMakeLoadingCopyWith(
          _$MatchMakeLoading value, $Res Function(_$MatchMakeLoading) then) =
      __$$MatchMakeLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MatchMakeLoadingCopyWithImpl<$Res>
    extends _$MatchMakeStateCopyWithImpl<$Res, _$MatchMakeLoading>
    implements _$$MatchMakeLoadingCopyWith<$Res> {
  __$$MatchMakeLoadingCopyWithImpl(
      _$MatchMakeLoading _value, $Res Function(_$MatchMakeLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MatchMakeLoading implements MatchMakeLoading {
  const _$MatchMakeLoading();

  @override
  String toString() {
    return 'MatchMakeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MatchMakeLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() waiting,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? waiting,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? waiting,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MatchMakeInitial value) initial,
    required TResult Function(MatchMakeLoading value) loading,
    required TResult Function(MatchMakeWaiting value) waiting,
    required TResult Function(MatchMakeError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MatchMakeInitial value)? initial,
    TResult? Function(MatchMakeLoading value)? loading,
    TResult? Function(MatchMakeWaiting value)? waiting,
    TResult? Function(MatchMakeError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MatchMakeInitial value)? initial,
    TResult Function(MatchMakeLoading value)? loading,
    TResult Function(MatchMakeWaiting value)? waiting,
    TResult Function(MatchMakeError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class MatchMakeLoading implements MatchMakeState {
  const factory MatchMakeLoading() = _$MatchMakeLoading;
}

/// @nodoc
abstract class _$$MatchMakeWaitingCopyWith<$Res> {
  factory _$$MatchMakeWaitingCopyWith(
          _$MatchMakeWaiting value, $Res Function(_$MatchMakeWaiting) then) =
      __$$MatchMakeWaitingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MatchMakeWaitingCopyWithImpl<$Res>
    extends _$MatchMakeStateCopyWithImpl<$Res, _$MatchMakeWaiting>
    implements _$$MatchMakeWaitingCopyWith<$Res> {
  __$$MatchMakeWaitingCopyWithImpl(
      _$MatchMakeWaiting _value, $Res Function(_$MatchMakeWaiting) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MatchMakeWaiting implements MatchMakeWaiting {
  const _$MatchMakeWaiting();

  @override
  String toString() {
    return 'MatchMakeState.waiting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MatchMakeWaiting);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() waiting,
    required TResult Function(String message) error,
  }) {
    return waiting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? waiting,
    TResult? Function(String message)? error,
  }) {
    return waiting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? waiting,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (waiting != null) {
      return waiting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MatchMakeInitial value) initial,
    required TResult Function(MatchMakeLoading value) loading,
    required TResult Function(MatchMakeWaiting value) waiting,
    required TResult Function(MatchMakeError value) error,
  }) {
    return waiting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MatchMakeInitial value)? initial,
    TResult? Function(MatchMakeLoading value)? loading,
    TResult? Function(MatchMakeWaiting value)? waiting,
    TResult? Function(MatchMakeError value)? error,
  }) {
    return waiting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MatchMakeInitial value)? initial,
    TResult Function(MatchMakeLoading value)? loading,
    TResult Function(MatchMakeWaiting value)? waiting,
    TResult Function(MatchMakeError value)? error,
    required TResult orElse(),
  }) {
    if (waiting != null) {
      return waiting(this);
    }
    return orElse();
  }
}

abstract class MatchMakeWaiting implements MatchMakeState {
  const factory MatchMakeWaiting() = _$MatchMakeWaiting;
}

/// @nodoc
abstract class _$$MatchMakeErrorCopyWith<$Res> {
  factory _$$MatchMakeErrorCopyWith(
          _$MatchMakeError value, $Res Function(_$MatchMakeError) then) =
      __$$MatchMakeErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$MatchMakeErrorCopyWithImpl<$Res>
    extends _$MatchMakeStateCopyWithImpl<$Res, _$MatchMakeError>
    implements _$$MatchMakeErrorCopyWith<$Res> {
  __$$MatchMakeErrorCopyWithImpl(
      _$MatchMakeError _value, $Res Function(_$MatchMakeError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$MatchMakeError(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MatchMakeError implements MatchMakeError {
  const _$MatchMakeError(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'MatchMakeState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MatchMakeError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MatchMakeErrorCopyWith<_$MatchMakeError> get copyWith =>
      __$$MatchMakeErrorCopyWithImpl<_$MatchMakeError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() waiting,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? waiting,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? waiting,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MatchMakeInitial value) initial,
    required TResult Function(MatchMakeLoading value) loading,
    required TResult Function(MatchMakeWaiting value) waiting,
    required TResult Function(MatchMakeError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(MatchMakeInitial value)? initial,
    TResult? Function(MatchMakeLoading value)? loading,
    TResult? Function(MatchMakeWaiting value)? waiting,
    TResult? Function(MatchMakeError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MatchMakeInitial value)? initial,
    TResult Function(MatchMakeLoading value)? loading,
    TResult Function(MatchMakeWaiting value)? waiting,
    TResult Function(MatchMakeError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class MatchMakeError implements MatchMakeState {
  const factory MatchMakeError(final String message) = _$MatchMakeError;

  String get message;
  @JsonKey(ignore: true)
  _$$MatchMakeErrorCopyWith<_$MatchMakeError> get copyWith =>
      throw _privateConstructorUsedError;
}
