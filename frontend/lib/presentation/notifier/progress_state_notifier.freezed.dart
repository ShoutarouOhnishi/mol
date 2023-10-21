// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'progress_state_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProgressState {
  int get referenceCounter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProgressStateCopyWith<ProgressState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgressStateCopyWith<$Res> {
  factory $ProgressStateCopyWith(
          ProgressState value, $Res Function(ProgressState) then) =
      _$ProgressStateCopyWithImpl<$Res, ProgressState>;
  @useResult
  $Res call({int referenceCounter});
}

/// @nodoc
class _$ProgressStateCopyWithImpl<$Res, $Val extends ProgressState>
    implements $ProgressStateCopyWith<$Res> {
  _$ProgressStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? referenceCounter = null,
  }) {
    return _then(_value.copyWith(
      referenceCounter: null == referenceCounter
          ? _value.referenceCounter
          : referenceCounter // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProgressStateCopyWith<$Res>
    implements $ProgressStateCopyWith<$Res> {
  factory _$$_ProgressStateCopyWith(
          _$_ProgressState value, $Res Function(_$_ProgressState) then) =
      __$$_ProgressStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int referenceCounter});
}

/// @nodoc
class __$$_ProgressStateCopyWithImpl<$Res>
    extends _$ProgressStateCopyWithImpl<$Res, _$_ProgressState>
    implements _$$_ProgressStateCopyWith<$Res> {
  __$$_ProgressStateCopyWithImpl(
      _$_ProgressState _value, $Res Function(_$_ProgressState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? referenceCounter = null,
  }) {
    return _then(_$_ProgressState(
      referenceCounter: null == referenceCounter
          ? _value.referenceCounter
          : referenceCounter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ProgressState implements _ProgressState {
  const _$_ProgressState({this.referenceCounter = 0});

  @override
  @JsonKey()
  final int referenceCounter;

  @override
  String toString() {
    return 'ProgressState(referenceCounter: $referenceCounter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProgressState &&
            (identical(other.referenceCounter, referenceCounter) ||
                other.referenceCounter == referenceCounter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, referenceCounter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProgressStateCopyWith<_$_ProgressState> get copyWith =>
      __$$_ProgressStateCopyWithImpl<_$_ProgressState>(this, _$identity);
}

abstract class _ProgressState implements ProgressState {
  const factory _ProgressState({final int referenceCounter}) = _$_ProgressState;

  @override
  int get referenceCounter;
  @override
  @JsonKey(ignore: true)
  _$$_ProgressStateCopyWith<_$_ProgressState> get copyWith =>
      throw _privateConstructorUsedError;
}
