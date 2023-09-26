// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'initial_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$InitialViewState {
  bool get isLoading => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InitialViewStateCopyWith<InitialViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitialViewStateCopyWith<$Res> {
  factory $InitialViewStateCopyWith(
          InitialViewState value, $Res Function(InitialViewState) then) =
      _$InitialViewStateCopyWithImpl<$Res, InitialViewState>;
  @useResult
  $Res call({bool isLoading, String userName});
}

/// @nodoc
class _$InitialViewStateCopyWithImpl<$Res, $Val extends InitialViewState>
    implements $InitialViewStateCopyWith<$Res> {
  _$InitialViewStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_InitialViewStateCopyWith<$Res>
    implements $InitialViewStateCopyWith<$Res> {
  factory _$$_InitialViewStateCopyWith(
          _$_InitialViewState value, $Res Function(_$_InitialViewState) then) =
      __$$_InitialViewStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isLoading, String userName});
}

/// @nodoc
class __$$_InitialViewStateCopyWithImpl<$Res>
    extends _$InitialViewStateCopyWithImpl<$Res, _$_InitialViewState>
    implements _$$_InitialViewStateCopyWith<$Res> {
  __$$_InitialViewStateCopyWithImpl(
      _$_InitialViewState _value, $Res Function(_$_InitialViewState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? userName = null,
  }) {
    return _then(_$_InitialViewState(
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

class _$_InitialViewState implements _InitialViewState {
  const _$_InitialViewState({this.isLoading = false, this.userName = 'ゲスト'});

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String userName;

  @override
  String toString() {
    return 'InitialViewState(isLoading: $isLoading, userName: $userName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitialViewState &&
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
  _$$_InitialViewStateCopyWith<_$_InitialViewState> get copyWith =>
      __$$_InitialViewStateCopyWithImpl<_$_InitialViewState>(this, _$identity);
}

abstract class _InitialViewState implements InitialViewState {
  const factory _InitialViewState(
      {final bool isLoading, final String userName}) = _$_InitialViewState;

  @override
  bool get isLoading;
  @override
  String get userName;
  @override
  @JsonKey(ignore: true)
  _$$_InitialViewStateCopyWith<_$_InitialViewState> get copyWith =>
      throw _privateConstructorUsedError;
}
