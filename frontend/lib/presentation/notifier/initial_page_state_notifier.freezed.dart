// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'initial_page_state_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InitialPageState {
  bool get isLoading => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InitialPageStateCopyWith<InitialPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitialPageStateCopyWith<$Res> {
  factory $InitialPageStateCopyWith(
          InitialPageState value, $Res Function(InitialPageState) then) =
      _$InitialPageStateCopyWithImpl<$Res, InitialPageState>;
  @useResult
  $Res call({bool isLoading, String userName});
}

/// @nodoc
class _$InitialPageStateCopyWithImpl<$Res, $Val extends InitialPageState>
    implements $InitialPageStateCopyWith<$Res> {
  _$InitialPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? userName = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialPageStateCopyWith<$Res>
    implements $InitialPageStateCopyWith<$Res> {
  factory _$$_InitialPageStateCopyWith(
          _$_InitialPageState value, $Res Function(_$_InitialPageState) then) =
      __$$_InitialPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, String userName});
}

/// @nodoc
class __$$_InitialPageStateCopyWithImpl<$Res>
    extends _$InitialPageStateCopyWithImpl<$Res, _$_InitialPageState>
    implements _$$_InitialPageStateCopyWith<$Res> {
  __$$_InitialPageStateCopyWithImpl(
      _$_InitialPageState _value, $Res Function(_$_InitialPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? userName = null,
  }) {
    return _then(_$_InitialPageState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InitialPageState implements _InitialPageState {
  const _$_InitialPageState({this.isLoading = false, this.userName = 'ゲスト'});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String userName;

  @override
  String toString() {
    return 'InitialPageState(isLoading: $isLoading, userName: $userName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitialPageState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.userName, userName) ||
                other.userName == userName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, userName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialPageStateCopyWith<_$_InitialPageState> get copyWith =>
      __$$_InitialPageStateCopyWithImpl<_$_InitialPageState>(this, _$identity);
}

abstract class _InitialPageState implements InitialPageState {
  const factory _InitialPageState(
      {final bool isLoading, final String userName}) = _$_InitialPageState;

  @override
  bool get isLoading;
  @override
  String get userName;
  @override
  @JsonKey(ignore: true)
  _$$_InitialPageStateCopyWith<_$_InitialPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
