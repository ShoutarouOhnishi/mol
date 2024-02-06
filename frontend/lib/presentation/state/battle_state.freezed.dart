// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'battle_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BattleState {
  MolCard? get temporarilySelectedCard => throw _privateConstructorUsedError;
  MolCard? get selectedCard => throw _privateConstructorUsedError;
  DisclosedUser? get player => throw _privateConstructorUsedError;
  DisclosedUser? get opponent => throw _privateConstructorUsedError;
  int get playerHp => throw _privateConstructorUsedError;
  int get opponentHp => throw _privateConstructorUsedError;
  int get playerMp => throw _privateConstructorUsedError;
  int get opponentMp => throw _privateConstructorUsedError;
  BattlePhase get battlePhase => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BattleStateCopyWith<BattleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BattleStateCopyWith<$Res> {
  factory $BattleStateCopyWith(
          BattleState value, $Res Function(BattleState) then) =
      _$BattleStateCopyWithImpl<$Res, BattleState>;
  @useResult
  $Res call(
      {MolCard? temporarilySelectedCard,
      MolCard? selectedCard,
      DisclosedUser? player,
      DisclosedUser? opponent,
      int playerHp,
      int opponentHp,
      int playerMp,
      int opponentMp,
      BattlePhase battlePhase});

  $MolCardCopyWith<$Res>? get temporarilySelectedCard;
  $MolCardCopyWith<$Res>? get selectedCard;
  $BattlePhaseCopyWith<$Res> get battlePhase;
}

/// @nodoc
class _$BattleStateCopyWithImpl<$Res, $Val extends BattleState>
    implements $BattleStateCopyWith<$Res> {
  _$BattleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temporarilySelectedCard = freezed,
    Object? selectedCard = freezed,
    Object? player = freezed,
    Object? opponent = freezed,
    Object? playerHp = null,
    Object? opponentHp = null,
    Object? playerMp = null,
    Object? opponentMp = null,
    Object? battlePhase = null,
  }) {
    return _then(_value.copyWith(
      temporarilySelectedCard: freezed == temporarilySelectedCard
          ? _value.temporarilySelectedCard
          : temporarilySelectedCard // ignore: cast_nullable_to_non_nullable
              as MolCard?,
      selectedCard: freezed == selectedCard
          ? _value.selectedCard
          : selectedCard // ignore: cast_nullable_to_non_nullable
              as MolCard?,
      player: freezed == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as DisclosedUser?,
      opponent: freezed == opponent
          ? _value.opponent
          : opponent // ignore: cast_nullable_to_non_nullable
              as DisclosedUser?,
      playerHp: null == playerHp
          ? _value.playerHp
          : playerHp // ignore: cast_nullable_to_non_nullable
              as int,
      opponentHp: null == opponentHp
          ? _value.opponentHp
          : opponentHp // ignore: cast_nullable_to_non_nullable
              as int,
      playerMp: null == playerMp
          ? _value.playerMp
          : playerMp // ignore: cast_nullable_to_non_nullable
              as int,
      opponentMp: null == opponentMp
          ? _value.opponentMp
          : opponentMp // ignore: cast_nullable_to_non_nullable
              as int,
      battlePhase: null == battlePhase
          ? _value.battlePhase
          : battlePhase // ignore: cast_nullable_to_non_nullable
              as BattlePhase,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MolCardCopyWith<$Res>? get temporarilySelectedCard {
    if (_value.temporarilySelectedCard == null) {
      return null;
    }

    return $MolCardCopyWith<$Res>(_value.temporarilySelectedCard!, (value) {
      return _then(_value.copyWith(temporarilySelectedCard: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MolCardCopyWith<$Res>? get selectedCard {
    if (_value.selectedCard == null) {
      return null;
    }

    return $MolCardCopyWith<$Res>(_value.selectedCard!, (value) {
      return _then(_value.copyWith(selectedCard: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BattlePhaseCopyWith<$Res> get battlePhase {
    return $BattlePhaseCopyWith<$Res>(_value.battlePhase, (value) {
      return _then(_value.copyWith(battlePhase: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BattleStateCopyWith<$Res>
    implements $BattleStateCopyWith<$Res> {
  factory _$$_BattleStateCopyWith(
          _$_BattleState value, $Res Function(_$_BattleState) then) =
      __$$_BattleStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MolCard? temporarilySelectedCard,
      MolCard? selectedCard,
      DisclosedUser? player,
      DisclosedUser? opponent,
      int playerHp,
      int opponentHp,
      int playerMp,
      int opponentMp,
      BattlePhase battlePhase});

  @override
  $MolCardCopyWith<$Res>? get temporarilySelectedCard;
  @override
  $MolCardCopyWith<$Res>? get selectedCard;
  @override
  $BattlePhaseCopyWith<$Res> get battlePhase;
}

/// @nodoc
class __$$_BattleStateCopyWithImpl<$Res>
    extends _$BattleStateCopyWithImpl<$Res, _$_BattleState>
    implements _$$_BattleStateCopyWith<$Res> {
  __$$_BattleStateCopyWithImpl(
      _$_BattleState _value, $Res Function(_$_BattleState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temporarilySelectedCard = freezed,
    Object? selectedCard = freezed,
    Object? player = freezed,
    Object? opponent = freezed,
    Object? playerHp = null,
    Object? opponentHp = null,
    Object? playerMp = null,
    Object? opponentMp = null,
    Object? battlePhase = null,
  }) {
    return _then(_$_BattleState(
      temporarilySelectedCard: freezed == temporarilySelectedCard
          ? _value.temporarilySelectedCard
          : temporarilySelectedCard // ignore: cast_nullable_to_non_nullable
              as MolCard?,
      selectedCard: freezed == selectedCard
          ? _value.selectedCard
          : selectedCard // ignore: cast_nullable_to_non_nullable
              as MolCard?,
      player: freezed == player
          ? _value.player
          : player // ignore: cast_nullable_to_non_nullable
              as DisclosedUser?,
      opponent: freezed == opponent
          ? _value.opponent
          : opponent // ignore: cast_nullable_to_non_nullable
              as DisclosedUser?,
      playerHp: null == playerHp
          ? _value.playerHp
          : playerHp // ignore: cast_nullable_to_non_nullable
              as int,
      opponentHp: null == opponentHp
          ? _value.opponentHp
          : opponentHp // ignore: cast_nullable_to_non_nullable
              as int,
      playerMp: null == playerMp
          ? _value.playerMp
          : playerMp // ignore: cast_nullable_to_non_nullable
              as int,
      opponentMp: null == opponentMp
          ? _value.opponentMp
          : opponentMp // ignore: cast_nullable_to_non_nullable
              as int,
      battlePhase: null == battlePhase
          ? _value.battlePhase
          : battlePhase // ignore: cast_nullable_to_non_nullable
              as BattlePhase,
    ));
  }
}

/// @nodoc

class _$_BattleState implements _BattleState {
  const _$_BattleState(
      {this.temporarilySelectedCard,
      this.selectedCard,
      this.player,
      this.opponent,
      required this.playerHp,
      required this.opponentHp,
      required this.playerMp,
      required this.opponentMp,
      this.battlePhase = const BattlePhase.playerCardSelectable()});

  @override
  final MolCard? temporarilySelectedCard;
  @override
  final MolCard? selectedCard;
  @override
  final DisclosedUser? player;
  @override
  final DisclosedUser? opponent;
  @override
  final int playerHp;
  @override
  final int opponentHp;
  @override
  final int playerMp;
  @override
  final int opponentMp;
  @override
  @JsonKey()
  final BattlePhase battlePhase;

  @override
  String toString() {
    return 'BattleState(temporarilySelectedCard: $temporarilySelectedCard, selectedCard: $selectedCard, player: $player, opponent: $opponent, playerHp: $playerHp, opponentHp: $opponentHp, playerMp: $playerMp, opponentMp: $opponentMp, battlePhase: $battlePhase)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BattleState &&
            (identical(
                    other.temporarilySelectedCard, temporarilySelectedCard) ||
                other.temporarilySelectedCard == temporarilySelectedCard) &&
            (identical(other.selectedCard, selectedCard) ||
                other.selectedCard == selectedCard) &&
            (identical(other.player, player) || other.player == player) &&
            (identical(other.opponent, opponent) ||
                other.opponent == opponent) &&
            (identical(other.playerHp, playerHp) ||
                other.playerHp == playerHp) &&
            (identical(other.opponentHp, opponentHp) ||
                other.opponentHp == opponentHp) &&
            (identical(other.playerMp, playerMp) ||
                other.playerMp == playerMp) &&
            (identical(other.opponentMp, opponentMp) ||
                other.opponentMp == opponentMp) &&
            (identical(other.battlePhase, battlePhase) ||
                other.battlePhase == battlePhase));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      temporarilySelectedCard,
      selectedCard,
      player,
      opponent,
      playerHp,
      opponentHp,
      playerMp,
      opponentMp,
      battlePhase);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BattleStateCopyWith<_$_BattleState> get copyWith =>
      __$$_BattleStateCopyWithImpl<_$_BattleState>(this, _$identity);
}

abstract class _BattleState implements BattleState {
  const factory _BattleState(
      {final MolCard? temporarilySelectedCard,
      final MolCard? selectedCard,
      final DisclosedUser? player,
      final DisclosedUser? opponent,
      required final int playerHp,
      required final int opponentHp,
      required final int playerMp,
      required final int opponentMp,
      final BattlePhase battlePhase}) = _$_BattleState;

  @override
  MolCard? get temporarilySelectedCard;
  @override
  MolCard? get selectedCard;
  @override
  DisclosedUser? get player;
  @override
  DisclosedUser? get opponent;
  @override
  int get playerHp;
  @override
  int get opponentHp;
  @override
  int get playerMp;
  @override
  int get opponentMp;
  @override
  BattlePhase get battlePhase;
  @override
  @JsonKey(ignore: true)
  _$$_BattleStateCopyWith<_$_BattleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BattlePhase {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() opponentTurnStarted,
    required TResult Function() opponentTurnFinished,
    required TResult Function() playerTurnStarted,
    required TResult Function() playerTurnFinished,
    required TResult Function() playerCardSelectable,
    required TResult Function() playerCardTemporarilySelected,
    required TResult Function() playerCardSelected,
    required TResult Function() playerCounterCardSelectable,
    required TResult Function() playerCounterCardSelected,
    required TResult Function() opponentCounterCardSelectable,
    required TResult Function() opponentCounterCardSelected,
    required TResult Function() opponentCardSelectable,
    required TResult Function() opponentCardSelected,
    required TResult Function(Exception e) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? opponentTurnStarted,
    TResult? Function()? opponentTurnFinished,
    TResult? Function()? playerTurnStarted,
    TResult? Function()? playerTurnFinished,
    TResult? Function()? playerCardSelectable,
    TResult? Function()? playerCardTemporarilySelected,
    TResult? Function()? playerCardSelected,
    TResult? Function()? playerCounterCardSelectable,
    TResult? Function()? playerCounterCardSelected,
    TResult? Function()? opponentCounterCardSelectable,
    TResult? Function()? opponentCounterCardSelected,
    TResult? Function()? opponentCardSelectable,
    TResult? Function()? opponentCardSelected,
    TResult? Function(Exception e)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? opponentTurnStarted,
    TResult Function()? opponentTurnFinished,
    TResult Function()? playerTurnStarted,
    TResult Function()? playerTurnFinished,
    TResult Function()? playerCardSelectable,
    TResult Function()? playerCardTemporarilySelected,
    TResult Function()? playerCardSelected,
    TResult Function()? playerCounterCardSelectable,
    TResult Function()? playerCounterCardSelected,
    TResult Function()? opponentCounterCardSelectable,
    TResult Function()? opponentCounterCardSelected,
    TResult Function()? opponentCardSelectable,
    TResult Function()? opponentCardSelected,
    TResult Function(Exception e)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OpponentTurnStarted value) opponentTurnStarted,
    required TResult Function(_OpponentTurnFinished value) opponentTurnFinished,
    required TResult Function(_PlayerTurnStarted value) playerTurnStarted,
    required TResult Function(_PlayerTurnFinished value) playerTurnFinished,
    required TResult Function(_PlayerCardSelectable value) playerCardSelectable,
    required TResult Function(_CardTemporarilySelected value)
        playerCardTemporarilySelected,
    required TResult Function(_PlayerCardSelected value) playerCardSelected,
    required TResult Function(_PlayerCounterCardSelectable value)
        playerCounterCardSelectable,
    required TResult Function(_PlayerCounterCardSelected value)
        playerCounterCardSelected,
    required TResult Function(_OpponentCounterCardSelectable value)
        opponentCounterCardSelectable,
    required TResult Function(_OpponentCounterCardSelected value)
        opponentCounterCardSelected,
    required TResult Function(_OpponentCardSelectable value)
        opponentCardSelectable,
    required TResult Function(_OpponentCardSelected value) opponentCardSelected,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OpponentTurnStarted value)? opponentTurnStarted,
    TResult? Function(_OpponentTurnFinished value)? opponentTurnFinished,
    TResult? Function(_PlayerTurnStarted value)? playerTurnStarted,
    TResult? Function(_PlayerTurnFinished value)? playerTurnFinished,
    TResult? Function(_PlayerCardSelectable value)? playerCardSelectable,
    TResult? Function(_CardTemporarilySelected value)?
        playerCardTemporarilySelected,
    TResult? Function(_PlayerCardSelected value)? playerCardSelected,
    TResult? Function(_PlayerCounterCardSelectable value)?
        playerCounterCardSelectable,
    TResult? Function(_PlayerCounterCardSelected value)?
        playerCounterCardSelected,
    TResult? Function(_OpponentCounterCardSelectable value)?
        opponentCounterCardSelectable,
    TResult? Function(_OpponentCounterCardSelected value)?
        opponentCounterCardSelected,
    TResult? Function(_OpponentCardSelectable value)? opponentCardSelectable,
    TResult? Function(_OpponentCardSelected value)? opponentCardSelected,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OpponentTurnStarted value)? opponentTurnStarted,
    TResult Function(_OpponentTurnFinished value)? opponentTurnFinished,
    TResult Function(_PlayerTurnStarted value)? playerTurnStarted,
    TResult Function(_PlayerTurnFinished value)? playerTurnFinished,
    TResult Function(_PlayerCardSelectable value)? playerCardSelectable,
    TResult Function(_CardTemporarilySelected value)?
        playerCardTemporarilySelected,
    TResult Function(_PlayerCardSelected value)? playerCardSelected,
    TResult Function(_PlayerCounterCardSelectable value)?
        playerCounterCardSelectable,
    TResult Function(_PlayerCounterCardSelected value)?
        playerCounterCardSelected,
    TResult Function(_OpponentCounterCardSelectable value)?
        opponentCounterCardSelectable,
    TResult Function(_OpponentCounterCardSelected value)?
        opponentCounterCardSelected,
    TResult Function(_OpponentCardSelectable value)? opponentCardSelectable,
    TResult Function(_OpponentCardSelected value)? opponentCardSelected,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BattlePhaseCopyWith<$Res> {
  factory $BattlePhaseCopyWith(
          BattlePhase value, $Res Function(BattlePhase) then) =
      _$BattlePhaseCopyWithImpl<$Res, BattlePhase>;
}

/// @nodoc
class _$BattlePhaseCopyWithImpl<$Res, $Val extends BattlePhase>
    implements $BattlePhaseCopyWith<$Res> {
  _$BattlePhaseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$BattlePhaseCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'BattlePhase.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() opponentTurnStarted,
    required TResult Function() opponentTurnFinished,
    required TResult Function() playerTurnStarted,
    required TResult Function() playerTurnFinished,
    required TResult Function() playerCardSelectable,
    required TResult Function() playerCardTemporarilySelected,
    required TResult Function() playerCardSelected,
    required TResult Function() playerCounterCardSelectable,
    required TResult Function() playerCounterCardSelected,
    required TResult Function() opponentCounterCardSelectable,
    required TResult Function() opponentCounterCardSelected,
    required TResult Function() opponentCardSelectable,
    required TResult Function() opponentCardSelected,
    required TResult Function(Exception e) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? opponentTurnStarted,
    TResult? Function()? opponentTurnFinished,
    TResult? Function()? playerTurnStarted,
    TResult? Function()? playerTurnFinished,
    TResult? Function()? playerCardSelectable,
    TResult? Function()? playerCardTemporarilySelected,
    TResult? Function()? playerCardSelected,
    TResult? Function()? playerCounterCardSelectable,
    TResult? Function()? playerCounterCardSelected,
    TResult? Function()? opponentCounterCardSelectable,
    TResult? Function()? opponentCounterCardSelected,
    TResult? Function()? opponentCardSelectable,
    TResult? Function()? opponentCardSelected,
    TResult? Function(Exception e)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? opponentTurnStarted,
    TResult Function()? opponentTurnFinished,
    TResult Function()? playerTurnStarted,
    TResult Function()? playerTurnFinished,
    TResult Function()? playerCardSelectable,
    TResult Function()? playerCardTemporarilySelected,
    TResult Function()? playerCardSelected,
    TResult Function()? playerCounterCardSelectable,
    TResult Function()? playerCounterCardSelected,
    TResult Function()? opponentCounterCardSelectable,
    TResult Function()? opponentCounterCardSelected,
    TResult Function()? opponentCardSelectable,
    TResult Function()? opponentCardSelected,
    TResult Function(Exception e)? error,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_OpponentTurnStarted value) opponentTurnStarted,
    required TResult Function(_OpponentTurnFinished value) opponentTurnFinished,
    required TResult Function(_PlayerTurnStarted value) playerTurnStarted,
    required TResult Function(_PlayerTurnFinished value) playerTurnFinished,
    required TResult Function(_PlayerCardSelectable value) playerCardSelectable,
    required TResult Function(_CardTemporarilySelected value)
        playerCardTemporarilySelected,
    required TResult Function(_PlayerCardSelected value) playerCardSelected,
    required TResult Function(_PlayerCounterCardSelectable value)
        playerCounterCardSelectable,
    required TResult Function(_PlayerCounterCardSelected value)
        playerCounterCardSelected,
    required TResult Function(_OpponentCounterCardSelectable value)
        opponentCounterCardSelectable,
    required TResult Function(_OpponentCounterCardSelected value)
        opponentCounterCardSelected,
    required TResult Function(_OpponentCardSelectable value)
        opponentCardSelectable,
    required TResult Function(_OpponentCardSelected value) opponentCardSelected,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OpponentTurnStarted value)? opponentTurnStarted,
    TResult? Function(_OpponentTurnFinished value)? opponentTurnFinished,
    TResult? Function(_PlayerTurnStarted value)? playerTurnStarted,
    TResult? Function(_PlayerTurnFinished value)? playerTurnFinished,
    TResult? Function(_PlayerCardSelectable value)? playerCardSelectable,
    TResult? Function(_CardTemporarilySelected value)?
        playerCardTemporarilySelected,
    TResult? Function(_PlayerCardSelected value)? playerCardSelected,
    TResult? Function(_PlayerCounterCardSelectable value)?
        playerCounterCardSelectable,
    TResult? Function(_PlayerCounterCardSelected value)?
        playerCounterCardSelected,
    TResult? Function(_OpponentCounterCardSelectable value)?
        opponentCounterCardSelectable,
    TResult? Function(_OpponentCounterCardSelected value)?
        opponentCounterCardSelected,
    TResult? Function(_OpponentCardSelectable value)? opponentCardSelectable,
    TResult? Function(_OpponentCardSelected value)? opponentCardSelected,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OpponentTurnStarted value)? opponentTurnStarted,
    TResult Function(_OpponentTurnFinished value)? opponentTurnFinished,
    TResult Function(_PlayerTurnStarted value)? playerTurnStarted,
    TResult Function(_PlayerTurnFinished value)? playerTurnFinished,
    TResult Function(_PlayerCardSelectable value)? playerCardSelectable,
    TResult Function(_CardTemporarilySelected value)?
        playerCardTemporarilySelected,
    TResult Function(_PlayerCardSelected value)? playerCardSelected,
    TResult Function(_PlayerCounterCardSelectable value)?
        playerCounterCardSelectable,
    TResult Function(_PlayerCounterCardSelected value)?
        playerCounterCardSelected,
    TResult Function(_OpponentCounterCardSelectable value)?
        opponentCounterCardSelectable,
    TResult Function(_OpponentCounterCardSelected value)?
        opponentCounterCardSelected,
    TResult Function(_OpponentCardSelectable value)? opponentCardSelectable,
    TResult Function(_OpponentCardSelected value)? opponentCardSelected,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements BattlePhase {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_OpponentTurnStartedCopyWith<$Res> {
  factory _$$_OpponentTurnStartedCopyWith(_$_OpponentTurnStarted value,
          $Res Function(_$_OpponentTurnStarted) then) =
      __$$_OpponentTurnStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OpponentTurnStartedCopyWithImpl<$Res>
    extends _$BattlePhaseCopyWithImpl<$Res, _$_OpponentTurnStarted>
    implements _$$_OpponentTurnStartedCopyWith<$Res> {
  __$$_OpponentTurnStartedCopyWithImpl(_$_OpponentTurnStarted _value,
      $Res Function(_$_OpponentTurnStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OpponentTurnStarted implements _OpponentTurnStarted {
  const _$_OpponentTurnStarted();

  @override
  String toString() {
    return 'BattlePhase.opponentTurnStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OpponentTurnStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() opponentTurnStarted,
    required TResult Function() opponentTurnFinished,
    required TResult Function() playerTurnStarted,
    required TResult Function() playerTurnFinished,
    required TResult Function() playerCardSelectable,
    required TResult Function() playerCardTemporarilySelected,
    required TResult Function() playerCardSelected,
    required TResult Function() playerCounterCardSelectable,
    required TResult Function() playerCounterCardSelected,
    required TResult Function() opponentCounterCardSelectable,
    required TResult Function() opponentCounterCardSelected,
    required TResult Function() opponentCardSelectable,
    required TResult Function() opponentCardSelected,
    required TResult Function(Exception e) error,
  }) {
    return opponentTurnStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? opponentTurnStarted,
    TResult? Function()? opponentTurnFinished,
    TResult? Function()? playerTurnStarted,
    TResult? Function()? playerTurnFinished,
    TResult? Function()? playerCardSelectable,
    TResult? Function()? playerCardTemporarilySelected,
    TResult? Function()? playerCardSelected,
    TResult? Function()? playerCounterCardSelectable,
    TResult? Function()? playerCounterCardSelected,
    TResult? Function()? opponentCounterCardSelectable,
    TResult? Function()? opponentCounterCardSelected,
    TResult? Function()? opponentCardSelectable,
    TResult? Function()? opponentCardSelected,
    TResult? Function(Exception e)? error,
  }) {
    return opponentTurnStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? opponentTurnStarted,
    TResult Function()? opponentTurnFinished,
    TResult Function()? playerTurnStarted,
    TResult Function()? playerTurnFinished,
    TResult Function()? playerCardSelectable,
    TResult Function()? playerCardTemporarilySelected,
    TResult Function()? playerCardSelected,
    TResult Function()? playerCounterCardSelectable,
    TResult Function()? playerCounterCardSelected,
    TResult Function()? opponentCounterCardSelectable,
    TResult Function()? opponentCounterCardSelected,
    TResult Function()? opponentCardSelectable,
    TResult Function()? opponentCardSelected,
    TResult Function(Exception e)? error,
    required TResult orElse(),
  }) {
    if (opponentTurnStarted != null) {
      return opponentTurnStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OpponentTurnStarted value) opponentTurnStarted,
    required TResult Function(_OpponentTurnFinished value) opponentTurnFinished,
    required TResult Function(_PlayerTurnStarted value) playerTurnStarted,
    required TResult Function(_PlayerTurnFinished value) playerTurnFinished,
    required TResult Function(_PlayerCardSelectable value) playerCardSelectable,
    required TResult Function(_CardTemporarilySelected value)
        playerCardTemporarilySelected,
    required TResult Function(_PlayerCardSelected value) playerCardSelected,
    required TResult Function(_PlayerCounterCardSelectable value)
        playerCounterCardSelectable,
    required TResult Function(_PlayerCounterCardSelected value)
        playerCounterCardSelected,
    required TResult Function(_OpponentCounterCardSelectable value)
        opponentCounterCardSelectable,
    required TResult Function(_OpponentCounterCardSelected value)
        opponentCounterCardSelected,
    required TResult Function(_OpponentCardSelectable value)
        opponentCardSelectable,
    required TResult Function(_OpponentCardSelected value) opponentCardSelected,
    required TResult Function(_Error value) error,
  }) {
    return opponentTurnStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OpponentTurnStarted value)? opponentTurnStarted,
    TResult? Function(_OpponentTurnFinished value)? opponentTurnFinished,
    TResult? Function(_PlayerTurnStarted value)? playerTurnStarted,
    TResult? Function(_PlayerTurnFinished value)? playerTurnFinished,
    TResult? Function(_PlayerCardSelectable value)? playerCardSelectable,
    TResult? Function(_CardTemporarilySelected value)?
        playerCardTemporarilySelected,
    TResult? Function(_PlayerCardSelected value)? playerCardSelected,
    TResult? Function(_PlayerCounterCardSelectable value)?
        playerCounterCardSelectable,
    TResult? Function(_PlayerCounterCardSelected value)?
        playerCounterCardSelected,
    TResult? Function(_OpponentCounterCardSelectable value)?
        opponentCounterCardSelectable,
    TResult? Function(_OpponentCounterCardSelected value)?
        opponentCounterCardSelected,
    TResult? Function(_OpponentCardSelectable value)? opponentCardSelectable,
    TResult? Function(_OpponentCardSelected value)? opponentCardSelected,
    TResult? Function(_Error value)? error,
  }) {
    return opponentTurnStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OpponentTurnStarted value)? opponentTurnStarted,
    TResult Function(_OpponentTurnFinished value)? opponentTurnFinished,
    TResult Function(_PlayerTurnStarted value)? playerTurnStarted,
    TResult Function(_PlayerTurnFinished value)? playerTurnFinished,
    TResult Function(_PlayerCardSelectable value)? playerCardSelectable,
    TResult Function(_CardTemporarilySelected value)?
        playerCardTemporarilySelected,
    TResult Function(_PlayerCardSelected value)? playerCardSelected,
    TResult Function(_PlayerCounterCardSelectable value)?
        playerCounterCardSelectable,
    TResult Function(_PlayerCounterCardSelected value)?
        playerCounterCardSelected,
    TResult Function(_OpponentCounterCardSelectable value)?
        opponentCounterCardSelectable,
    TResult Function(_OpponentCounterCardSelected value)?
        opponentCounterCardSelected,
    TResult Function(_OpponentCardSelectable value)? opponentCardSelectable,
    TResult Function(_OpponentCardSelected value)? opponentCardSelected,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (opponentTurnStarted != null) {
      return opponentTurnStarted(this);
    }
    return orElse();
  }
}

abstract class _OpponentTurnStarted implements BattlePhase {
  const factory _OpponentTurnStarted() = _$_OpponentTurnStarted;
}

/// @nodoc
abstract class _$$_OpponentTurnFinishedCopyWith<$Res> {
  factory _$$_OpponentTurnFinishedCopyWith(_$_OpponentTurnFinished value,
          $Res Function(_$_OpponentTurnFinished) then) =
      __$$_OpponentTurnFinishedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OpponentTurnFinishedCopyWithImpl<$Res>
    extends _$BattlePhaseCopyWithImpl<$Res, _$_OpponentTurnFinished>
    implements _$$_OpponentTurnFinishedCopyWith<$Res> {
  __$$_OpponentTurnFinishedCopyWithImpl(_$_OpponentTurnFinished _value,
      $Res Function(_$_OpponentTurnFinished) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OpponentTurnFinished implements _OpponentTurnFinished {
  const _$_OpponentTurnFinished();

  @override
  String toString() {
    return 'BattlePhase.opponentTurnFinished()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OpponentTurnFinished);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() opponentTurnStarted,
    required TResult Function() opponentTurnFinished,
    required TResult Function() playerTurnStarted,
    required TResult Function() playerTurnFinished,
    required TResult Function() playerCardSelectable,
    required TResult Function() playerCardTemporarilySelected,
    required TResult Function() playerCardSelected,
    required TResult Function() playerCounterCardSelectable,
    required TResult Function() playerCounterCardSelected,
    required TResult Function() opponentCounterCardSelectable,
    required TResult Function() opponentCounterCardSelected,
    required TResult Function() opponentCardSelectable,
    required TResult Function() opponentCardSelected,
    required TResult Function(Exception e) error,
  }) {
    return opponentTurnFinished();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? opponentTurnStarted,
    TResult? Function()? opponentTurnFinished,
    TResult? Function()? playerTurnStarted,
    TResult? Function()? playerTurnFinished,
    TResult? Function()? playerCardSelectable,
    TResult? Function()? playerCardTemporarilySelected,
    TResult? Function()? playerCardSelected,
    TResult? Function()? playerCounterCardSelectable,
    TResult? Function()? playerCounterCardSelected,
    TResult? Function()? opponentCounterCardSelectable,
    TResult? Function()? opponentCounterCardSelected,
    TResult? Function()? opponentCardSelectable,
    TResult? Function()? opponentCardSelected,
    TResult? Function(Exception e)? error,
  }) {
    return opponentTurnFinished?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? opponentTurnStarted,
    TResult Function()? opponentTurnFinished,
    TResult Function()? playerTurnStarted,
    TResult Function()? playerTurnFinished,
    TResult Function()? playerCardSelectable,
    TResult Function()? playerCardTemporarilySelected,
    TResult Function()? playerCardSelected,
    TResult Function()? playerCounterCardSelectable,
    TResult Function()? playerCounterCardSelected,
    TResult Function()? opponentCounterCardSelectable,
    TResult Function()? opponentCounterCardSelected,
    TResult Function()? opponentCardSelectable,
    TResult Function()? opponentCardSelected,
    TResult Function(Exception e)? error,
    required TResult orElse(),
  }) {
    if (opponentTurnFinished != null) {
      return opponentTurnFinished();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OpponentTurnStarted value) opponentTurnStarted,
    required TResult Function(_OpponentTurnFinished value) opponentTurnFinished,
    required TResult Function(_PlayerTurnStarted value) playerTurnStarted,
    required TResult Function(_PlayerTurnFinished value) playerTurnFinished,
    required TResult Function(_PlayerCardSelectable value) playerCardSelectable,
    required TResult Function(_CardTemporarilySelected value)
        playerCardTemporarilySelected,
    required TResult Function(_PlayerCardSelected value) playerCardSelected,
    required TResult Function(_PlayerCounterCardSelectable value)
        playerCounterCardSelectable,
    required TResult Function(_PlayerCounterCardSelected value)
        playerCounterCardSelected,
    required TResult Function(_OpponentCounterCardSelectable value)
        opponentCounterCardSelectable,
    required TResult Function(_OpponentCounterCardSelected value)
        opponentCounterCardSelected,
    required TResult Function(_OpponentCardSelectable value)
        opponentCardSelectable,
    required TResult Function(_OpponentCardSelected value) opponentCardSelected,
    required TResult Function(_Error value) error,
  }) {
    return opponentTurnFinished(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OpponentTurnStarted value)? opponentTurnStarted,
    TResult? Function(_OpponentTurnFinished value)? opponentTurnFinished,
    TResult? Function(_PlayerTurnStarted value)? playerTurnStarted,
    TResult? Function(_PlayerTurnFinished value)? playerTurnFinished,
    TResult? Function(_PlayerCardSelectable value)? playerCardSelectable,
    TResult? Function(_CardTemporarilySelected value)?
        playerCardTemporarilySelected,
    TResult? Function(_PlayerCardSelected value)? playerCardSelected,
    TResult? Function(_PlayerCounterCardSelectable value)?
        playerCounterCardSelectable,
    TResult? Function(_PlayerCounterCardSelected value)?
        playerCounterCardSelected,
    TResult? Function(_OpponentCounterCardSelectable value)?
        opponentCounterCardSelectable,
    TResult? Function(_OpponentCounterCardSelected value)?
        opponentCounterCardSelected,
    TResult? Function(_OpponentCardSelectable value)? opponentCardSelectable,
    TResult? Function(_OpponentCardSelected value)? opponentCardSelected,
    TResult? Function(_Error value)? error,
  }) {
    return opponentTurnFinished?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OpponentTurnStarted value)? opponentTurnStarted,
    TResult Function(_OpponentTurnFinished value)? opponentTurnFinished,
    TResult Function(_PlayerTurnStarted value)? playerTurnStarted,
    TResult Function(_PlayerTurnFinished value)? playerTurnFinished,
    TResult Function(_PlayerCardSelectable value)? playerCardSelectable,
    TResult Function(_CardTemporarilySelected value)?
        playerCardTemporarilySelected,
    TResult Function(_PlayerCardSelected value)? playerCardSelected,
    TResult Function(_PlayerCounterCardSelectable value)?
        playerCounterCardSelectable,
    TResult Function(_PlayerCounterCardSelected value)?
        playerCounterCardSelected,
    TResult Function(_OpponentCounterCardSelectable value)?
        opponentCounterCardSelectable,
    TResult Function(_OpponentCounterCardSelected value)?
        opponentCounterCardSelected,
    TResult Function(_OpponentCardSelectable value)? opponentCardSelectable,
    TResult Function(_OpponentCardSelected value)? opponentCardSelected,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (opponentTurnFinished != null) {
      return opponentTurnFinished(this);
    }
    return orElse();
  }
}

abstract class _OpponentTurnFinished implements BattlePhase {
  const factory _OpponentTurnFinished() = _$_OpponentTurnFinished;
}

/// @nodoc
abstract class _$$_PlayerTurnStartedCopyWith<$Res> {
  factory _$$_PlayerTurnStartedCopyWith(_$_PlayerTurnStarted value,
          $Res Function(_$_PlayerTurnStarted) then) =
      __$$_PlayerTurnStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PlayerTurnStartedCopyWithImpl<$Res>
    extends _$BattlePhaseCopyWithImpl<$Res, _$_PlayerTurnStarted>
    implements _$$_PlayerTurnStartedCopyWith<$Res> {
  __$$_PlayerTurnStartedCopyWithImpl(
      _$_PlayerTurnStarted _value, $Res Function(_$_PlayerTurnStarted) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PlayerTurnStarted implements _PlayerTurnStarted {
  const _$_PlayerTurnStarted();

  @override
  String toString() {
    return 'BattlePhase.playerTurnStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PlayerTurnStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() opponentTurnStarted,
    required TResult Function() opponentTurnFinished,
    required TResult Function() playerTurnStarted,
    required TResult Function() playerTurnFinished,
    required TResult Function() playerCardSelectable,
    required TResult Function() playerCardTemporarilySelected,
    required TResult Function() playerCardSelected,
    required TResult Function() playerCounterCardSelectable,
    required TResult Function() playerCounterCardSelected,
    required TResult Function() opponentCounterCardSelectable,
    required TResult Function() opponentCounterCardSelected,
    required TResult Function() opponentCardSelectable,
    required TResult Function() opponentCardSelected,
    required TResult Function(Exception e) error,
  }) {
    return playerTurnStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? opponentTurnStarted,
    TResult? Function()? opponentTurnFinished,
    TResult? Function()? playerTurnStarted,
    TResult? Function()? playerTurnFinished,
    TResult? Function()? playerCardSelectable,
    TResult? Function()? playerCardTemporarilySelected,
    TResult? Function()? playerCardSelected,
    TResult? Function()? playerCounterCardSelectable,
    TResult? Function()? playerCounterCardSelected,
    TResult? Function()? opponentCounterCardSelectable,
    TResult? Function()? opponentCounterCardSelected,
    TResult? Function()? opponentCardSelectable,
    TResult? Function()? opponentCardSelected,
    TResult? Function(Exception e)? error,
  }) {
    return playerTurnStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? opponentTurnStarted,
    TResult Function()? opponentTurnFinished,
    TResult Function()? playerTurnStarted,
    TResult Function()? playerTurnFinished,
    TResult Function()? playerCardSelectable,
    TResult Function()? playerCardTemporarilySelected,
    TResult Function()? playerCardSelected,
    TResult Function()? playerCounterCardSelectable,
    TResult Function()? playerCounterCardSelected,
    TResult Function()? opponentCounterCardSelectable,
    TResult Function()? opponentCounterCardSelected,
    TResult Function()? opponentCardSelectable,
    TResult Function()? opponentCardSelected,
    TResult Function(Exception e)? error,
    required TResult orElse(),
  }) {
    if (playerTurnStarted != null) {
      return playerTurnStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OpponentTurnStarted value) opponentTurnStarted,
    required TResult Function(_OpponentTurnFinished value) opponentTurnFinished,
    required TResult Function(_PlayerTurnStarted value) playerTurnStarted,
    required TResult Function(_PlayerTurnFinished value) playerTurnFinished,
    required TResult Function(_PlayerCardSelectable value) playerCardSelectable,
    required TResult Function(_CardTemporarilySelected value)
        playerCardTemporarilySelected,
    required TResult Function(_PlayerCardSelected value) playerCardSelected,
    required TResult Function(_PlayerCounterCardSelectable value)
        playerCounterCardSelectable,
    required TResult Function(_PlayerCounterCardSelected value)
        playerCounterCardSelected,
    required TResult Function(_OpponentCounterCardSelectable value)
        opponentCounterCardSelectable,
    required TResult Function(_OpponentCounterCardSelected value)
        opponentCounterCardSelected,
    required TResult Function(_OpponentCardSelectable value)
        opponentCardSelectable,
    required TResult Function(_OpponentCardSelected value) opponentCardSelected,
    required TResult Function(_Error value) error,
  }) {
    return playerTurnStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OpponentTurnStarted value)? opponentTurnStarted,
    TResult? Function(_OpponentTurnFinished value)? opponentTurnFinished,
    TResult? Function(_PlayerTurnStarted value)? playerTurnStarted,
    TResult? Function(_PlayerTurnFinished value)? playerTurnFinished,
    TResult? Function(_PlayerCardSelectable value)? playerCardSelectable,
    TResult? Function(_CardTemporarilySelected value)?
        playerCardTemporarilySelected,
    TResult? Function(_PlayerCardSelected value)? playerCardSelected,
    TResult? Function(_PlayerCounterCardSelectable value)?
        playerCounterCardSelectable,
    TResult? Function(_PlayerCounterCardSelected value)?
        playerCounterCardSelected,
    TResult? Function(_OpponentCounterCardSelectable value)?
        opponentCounterCardSelectable,
    TResult? Function(_OpponentCounterCardSelected value)?
        opponentCounterCardSelected,
    TResult? Function(_OpponentCardSelectable value)? opponentCardSelectable,
    TResult? Function(_OpponentCardSelected value)? opponentCardSelected,
    TResult? Function(_Error value)? error,
  }) {
    return playerTurnStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OpponentTurnStarted value)? opponentTurnStarted,
    TResult Function(_OpponentTurnFinished value)? opponentTurnFinished,
    TResult Function(_PlayerTurnStarted value)? playerTurnStarted,
    TResult Function(_PlayerTurnFinished value)? playerTurnFinished,
    TResult Function(_PlayerCardSelectable value)? playerCardSelectable,
    TResult Function(_CardTemporarilySelected value)?
        playerCardTemporarilySelected,
    TResult Function(_PlayerCardSelected value)? playerCardSelected,
    TResult Function(_PlayerCounterCardSelectable value)?
        playerCounterCardSelectable,
    TResult Function(_PlayerCounterCardSelected value)?
        playerCounterCardSelected,
    TResult Function(_OpponentCounterCardSelectable value)?
        opponentCounterCardSelectable,
    TResult Function(_OpponentCounterCardSelected value)?
        opponentCounterCardSelected,
    TResult Function(_OpponentCardSelectable value)? opponentCardSelectable,
    TResult Function(_OpponentCardSelected value)? opponentCardSelected,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (playerTurnStarted != null) {
      return playerTurnStarted(this);
    }
    return orElse();
  }
}

abstract class _PlayerTurnStarted implements BattlePhase {
  const factory _PlayerTurnStarted() = _$_PlayerTurnStarted;
}

/// @nodoc
abstract class _$$_PlayerTurnFinishedCopyWith<$Res> {
  factory _$$_PlayerTurnFinishedCopyWith(_$_PlayerTurnFinished value,
          $Res Function(_$_PlayerTurnFinished) then) =
      __$$_PlayerTurnFinishedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PlayerTurnFinishedCopyWithImpl<$Res>
    extends _$BattlePhaseCopyWithImpl<$Res, _$_PlayerTurnFinished>
    implements _$$_PlayerTurnFinishedCopyWith<$Res> {
  __$$_PlayerTurnFinishedCopyWithImpl(
      _$_PlayerTurnFinished _value, $Res Function(_$_PlayerTurnFinished) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PlayerTurnFinished implements _PlayerTurnFinished {
  const _$_PlayerTurnFinished();

  @override
  String toString() {
    return 'BattlePhase.playerTurnFinished()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PlayerTurnFinished);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() opponentTurnStarted,
    required TResult Function() opponentTurnFinished,
    required TResult Function() playerTurnStarted,
    required TResult Function() playerTurnFinished,
    required TResult Function() playerCardSelectable,
    required TResult Function() playerCardTemporarilySelected,
    required TResult Function() playerCardSelected,
    required TResult Function() playerCounterCardSelectable,
    required TResult Function() playerCounterCardSelected,
    required TResult Function() opponentCounterCardSelectable,
    required TResult Function() opponentCounterCardSelected,
    required TResult Function() opponentCardSelectable,
    required TResult Function() opponentCardSelected,
    required TResult Function(Exception e) error,
  }) {
    return playerTurnFinished();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? opponentTurnStarted,
    TResult? Function()? opponentTurnFinished,
    TResult? Function()? playerTurnStarted,
    TResult? Function()? playerTurnFinished,
    TResult? Function()? playerCardSelectable,
    TResult? Function()? playerCardTemporarilySelected,
    TResult? Function()? playerCardSelected,
    TResult? Function()? playerCounterCardSelectable,
    TResult? Function()? playerCounterCardSelected,
    TResult? Function()? opponentCounterCardSelectable,
    TResult? Function()? opponentCounterCardSelected,
    TResult? Function()? opponentCardSelectable,
    TResult? Function()? opponentCardSelected,
    TResult? Function(Exception e)? error,
  }) {
    return playerTurnFinished?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? opponentTurnStarted,
    TResult Function()? opponentTurnFinished,
    TResult Function()? playerTurnStarted,
    TResult Function()? playerTurnFinished,
    TResult Function()? playerCardSelectable,
    TResult Function()? playerCardTemporarilySelected,
    TResult Function()? playerCardSelected,
    TResult Function()? playerCounterCardSelectable,
    TResult Function()? playerCounterCardSelected,
    TResult Function()? opponentCounterCardSelectable,
    TResult Function()? opponentCounterCardSelected,
    TResult Function()? opponentCardSelectable,
    TResult Function()? opponentCardSelected,
    TResult Function(Exception e)? error,
    required TResult orElse(),
  }) {
    if (playerTurnFinished != null) {
      return playerTurnFinished();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OpponentTurnStarted value) opponentTurnStarted,
    required TResult Function(_OpponentTurnFinished value) opponentTurnFinished,
    required TResult Function(_PlayerTurnStarted value) playerTurnStarted,
    required TResult Function(_PlayerTurnFinished value) playerTurnFinished,
    required TResult Function(_PlayerCardSelectable value) playerCardSelectable,
    required TResult Function(_CardTemporarilySelected value)
        playerCardTemporarilySelected,
    required TResult Function(_PlayerCardSelected value) playerCardSelected,
    required TResult Function(_PlayerCounterCardSelectable value)
        playerCounterCardSelectable,
    required TResult Function(_PlayerCounterCardSelected value)
        playerCounterCardSelected,
    required TResult Function(_OpponentCounterCardSelectable value)
        opponentCounterCardSelectable,
    required TResult Function(_OpponentCounterCardSelected value)
        opponentCounterCardSelected,
    required TResult Function(_OpponentCardSelectable value)
        opponentCardSelectable,
    required TResult Function(_OpponentCardSelected value) opponentCardSelected,
    required TResult Function(_Error value) error,
  }) {
    return playerTurnFinished(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OpponentTurnStarted value)? opponentTurnStarted,
    TResult? Function(_OpponentTurnFinished value)? opponentTurnFinished,
    TResult? Function(_PlayerTurnStarted value)? playerTurnStarted,
    TResult? Function(_PlayerTurnFinished value)? playerTurnFinished,
    TResult? Function(_PlayerCardSelectable value)? playerCardSelectable,
    TResult? Function(_CardTemporarilySelected value)?
        playerCardTemporarilySelected,
    TResult? Function(_PlayerCardSelected value)? playerCardSelected,
    TResult? Function(_PlayerCounterCardSelectable value)?
        playerCounterCardSelectable,
    TResult? Function(_PlayerCounterCardSelected value)?
        playerCounterCardSelected,
    TResult? Function(_OpponentCounterCardSelectable value)?
        opponentCounterCardSelectable,
    TResult? Function(_OpponentCounterCardSelected value)?
        opponentCounterCardSelected,
    TResult? Function(_OpponentCardSelectable value)? opponentCardSelectable,
    TResult? Function(_OpponentCardSelected value)? opponentCardSelected,
    TResult? Function(_Error value)? error,
  }) {
    return playerTurnFinished?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OpponentTurnStarted value)? opponentTurnStarted,
    TResult Function(_OpponentTurnFinished value)? opponentTurnFinished,
    TResult Function(_PlayerTurnStarted value)? playerTurnStarted,
    TResult Function(_PlayerTurnFinished value)? playerTurnFinished,
    TResult Function(_PlayerCardSelectable value)? playerCardSelectable,
    TResult Function(_CardTemporarilySelected value)?
        playerCardTemporarilySelected,
    TResult Function(_PlayerCardSelected value)? playerCardSelected,
    TResult Function(_PlayerCounterCardSelectable value)?
        playerCounterCardSelectable,
    TResult Function(_PlayerCounterCardSelected value)?
        playerCounterCardSelected,
    TResult Function(_OpponentCounterCardSelectable value)?
        opponentCounterCardSelectable,
    TResult Function(_OpponentCounterCardSelected value)?
        opponentCounterCardSelected,
    TResult Function(_OpponentCardSelectable value)? opponentCardSelectable,
    TResult Function(_OpponentCardSelected value)? opponentCardSelected,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (playerTurnFinished != null) {
      return playerTurnFinished(this);
    }
    return orElse();
  }
}

abstract class _PlayerTurnFinished implements BattlePhase {
  const factory _PlayerTurnFinished() = _$_PlayerTurnFinished;
}

/// @nodoc
abstract class _$$_PlayerCardSelectableCopyWith<$Res> {
  factory _$$_PlayerCardSelectableCopyWith(_$_PlayerCardSelectable value,
          $Res Function(_$_PlayerCardSelectable) then) =
      __$$_PlayerCardSelectableCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PlayerCardSelectableCopyWithImpl<$Res>
    extends _$BattlePhaseCopyWithImpl<$Res, _$_PlayerCardSelectable>
    implements _$$_PlayerCardSelectableCopyWith<$Res> {
  __$$_PlayerCardSelectableCopyWithImpl(_$_PlayerCardSelectable _value,
      $Res Function(_$_PlayerCardSelectable) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PlayerCardSelectable implements _PlayerCardSelectable {
  const _$_PlayerCardSelectable();

  @override
  String toString() {
    return 'BattlePhase.playerCardSelectable()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PlayerCardSelectable);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() opponentTurnStarted,
    required TResult Function() opponentTurnFinished,
    required TResult Function() playerTurnStarted,
    required TResult Function() playerTurnFinished,
    required TResult Function() playerCardSelectable,
    required TResult Function() playerCardTemporarilySelected,
    required TResult Function() playerCardSelected,
    required TResult Function() playerCounterCardSelectable,
    required TResult Function() playerCounterCardSelected,
    required TResult Function() opponentCounterCardSelectable,
    required TResult Function() opponentCounterCardSelected,
    required TResult Function() opponentCardSelectable,
    required TResult Function() opponentCardSelected,
    required TResult Function(Exception e) error,
  }) {
    return playerCardSelectable();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? opponentTurnStarted,
    TResult? Function()? opponentTurnFinished,
    TResult? Function()? playerTurnStarted,
    TResult? Function()? playerTurnFinished,
    TResult? Function()? playerCardSelectable,
    TResult? Function()? playerCardTemporarilySelected,
    TResult? Function()? playerCardSelected,
    TResult? Function()? playerCounterCardSelectable,
    TResult? Function()? playerCounterCardSelected,
    TResult? Function()? opponentCounterCardSelectable,
    TResult? Function()? opponentCounterCardSelected,
    TResult? Function()? opponentCardSelectable,
    TResult? Function()? opponentCardSelected,
    TResult? Function(Exception e)? error,
  }) {
    return playerCardSelectable?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? opponentTurnStarted,
    TResult Function()? opponentTurnFinished,
    TResult Function()? playerTurnStarted,
    TResult Function()? playerTurnFinished,
    TResult Function()? playerCardSelectable,
    TResult Function()? playerCardTemporarilySelected,
    TResult Function()? playerCardSelected,
    TResult Function()? playerCounterCardSelectable,
    TResult Function()? playerCounterCardSelected,
    TResult Function()? opponentCounterCardSelectable,
    TResult Function()? opponentCounterCardSelected,
    TResult Function()? opponentCardSelectable,
    TResult Function()? opponentCardSelected,
    TResult Function(Exception e)? error,
    required TResult orElse(),
  }) {
    if (playerCardSelectable != null) {
      return playerCardSelectable();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OpponentTurnStarted value) opponentTurnStarted,
    required TResult Function(_OpponentTurnFinished value) opponentTurnFinished,
    required TResult Function(_PlayerTurnStarted value) playerTurnStarted,
    required TResult Function(_PlayerTurnFinished value) playerTurnFinished,
    required TResult Function(_PlayerCardSelectable value) playerCardSelectable,
    required TResult Function(_CardTemporarilySelected value)
        playerCardTemporarilySelected,
    required TResult Function(_PlayerCardSelected value) playerCardSelected,
    required TResult Function(_PlayerCounterCardSelectable value)
        playerCounterCardSelectable,
    required TResult Function(_PlayerCounterCardSelected value)
        playerCounterCardSelected,
    required TResult Function(_OpponentCounterCardSelectable value)
        opponentCounterCardSelectable,
    required TResult Function(_OpponentCounterCardSelected value)
        opponentCounterCardSelected,
    required TResult Function(_OpponentCardSelectable value)
        opponentCardSelectable,
    required TResult Function(_OpponentCardSelected value) opponentCardSelected,
    required TResult Function(_Error value) error,
  }) {
    return playerCardSelectable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OpponentTurnStarted value)? opponentTurnStarted,
    TResult? Function(_OpponentTurnFinished value)? opponentTurnFinished,
    TResult? Function(_PlayerTurnStarted value)? playerTurnStarted,
    TResult? Function(_PlayerTurnFinished value)? playerTurnFinished,
    TResult? Function(_PlayerCardSelectable value)? playerCardSelectable,
    TResult? Function(_CardTemporarilySelected value)?
        playerCardTemporarilySelected,
    TResult? Function(_PlayerCardSelected value)? playerCardSelected,
    TResult? Function(_PlayerCounterCardSelectable value)?
        playerCounterCardSelectable,
    TResult? Function(_PlayerCounterCardSelected value)?
        playerCounterCardSelected,
    TResult? Function(_OpponentCounterCardSelectable value)?
        opponentCounterCardSelectable,
    TResult? Function(_OpponentCounterCardSelected value)?
        opponentCounterCardSelected,
    TResult? Function(_OpponentCardSelectable value)? opponentCardSelectable,
    TResult? Function(_OpponentCardSelected value)? opponentCardSelected,
    TResult? Function(_Error value)? error,
  }) {
    return playerCardSelectable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OpponentTurnStarted value)? opponentTurnStarted,
    TResult Function(_OpponentTurnFinished value)? opponentTurnFinished,
    TResult Function(_PlayerTurnStarted value)? playerTurnStarted,
    TResult Function(_PlayerTurnFinished value)? playerTurnFinished,
    TResult Function(_PlayerCardSelectable value)? playerCardSelectable,
    TResult Function(_CardTemporarilySelected value)?
        playerCardTemporarilySelected,
    TResult Function(_PlayerCardSelected value)? playerCardSelected,
    TResult Function(_PlayerCounterCardSelectable value)?
        playerCounterCardSelectable,
    TResult Function(_PlayerCounterCardSelected value)?
        playerCounterCardSelected,
    TResult Function(_OpponentCounterCardSelectable value)?
        opponentCounterCardSelectable,
    TResult Function(_OpponentCounterCardSelected value)?
        opponentCounterCardSelected,
    TResult Function(_OpponentCardSelectable value)? opponentCardSelectable,
    TResult Function(_OpponentCardSelected value)? opponentCardSelected,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (playerCardSelectable != null) {
      return playerCardSelectable(this);
    }
    return orElse();
  }
}

abstract class _PlayerCardSelectable implements BattlePhase {
  const factory _PlayerCardSelectable() = _$_PlayerCardSelectable;
}

/// @nodoc
abstract class _$$_CardTemporarilySelectedCopyWith<$Res> {
  factory _$$_CardTemporarilySelectedCopyWith(_$_CardTemporarilySelected value,
          $Res Function(_$_CardTemporarilySelected) then) =
      __$$_CardTemporarilySelectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CardTemporarilySelectedCopyWithImpl<$Res>
    extends _$BattlePhaseCopyWithImpl<$Res, _$_CardTemporarilySelected>
    implements _$$_CardTemporarilySelectedCopyWith<$Res> {
  __$$_CardTemporarilySelectedCopyWithImpl(_$_CardTemporarilySelected _value,
      $Res Function(_$_CardTemporarilySelected) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CardTemporarilySelected implements _CardTemporarilySelected {
  const _$_CardTemporarilySelected();

  @override
  String toString() {
    return 'BattlePhase.playerCardTemporarilySelected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CardTemporarilySelected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() opponentTurnStarted,
    required TResult Function() opponentTurnFinished,
    required TResult Function() playerTurnStarted,
    required TResult Function() playerTurnFinished,
    required TResult Function() playerCardSelectable,
    required TResult Function() playerCardTemporarilySelected,
    required TResult Function() playerCardSelected,
    required TResult Function() playerCounterCardSelectable,
    required TResult Function() playerCounterCardSelected,
    required TResult Function() opponentCounterCardSelectable,
    required TResult Function() opponentCounterCardSelected,
    required TResult Function() opponentCardSelectable,
    required TResult Function() opponentCardSelected,
    required TResult Function(Exception e) error,
  }) {
    return playerCardTemporarilySelected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? opponentTurnStarted,
    TResult? Function()? opponentTurnFinished,
    TResult? Function()? playerTurnStarted,
    TResult? Function()? playerTurnFinished,
    TResult? Function()? playerCardSelectable,
    TResult? Function()? playerCardTemporarilySelected,
    TResult? Function()? playerCardSelected,
    TResult? Function()? playerCounterCardSelectable,
    TResult? Function()? playerCounterCardSelected,
    TResult? Function()? opponentCounterCardSelectable,
    TResult? Function()? opponentCounterCardSelected,
    TResult? Function()? opponentCardSelectable,
    TResult? Function()? opponentCardSelected,
    TResult? Function(Exception e)? error,
  }) {
    return playerCardTemporarilySelected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? opponentTurnStarted,
    TResult Function()? opponentTurnFinished,
    TResult Function()? playerTurnStarted,
    TResult Function()? playerTurnFinished,
    TResult Function()? playerCardSelectable,
    TResult Function()? playerCardTemporarilySelected,
    TResult Function()? playerCardSelected,
    TResult Function()? playerCounterCardSelectable,
    TResult Function()? playerCounterCardSelected,
    TResult Function()? opponentCounterCardSelectable,
    TResult Function()? opponentCounterCardSelected,
    TResult Function()? opponentCardSelectable,
    TResult Function()? opponentCardSelected,
    TResult Function(Exception e)? error,
    required TResult orElse(),
  }) {
    if (playerCardTemporarilySelected != null) {
      return playerCardTemporarilySelected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OpponentTurnStarted value) opponentTurnStarted,
    required TResult Function(_OpponentTurnFinished value) opponentTurnFinished,
    required TResult Function(_PlayerTurnStarted value) playerTurnStarted,
    required TResult Function(_PlayerTurnFinished value) playerTurnFinished,
    required TResult Function(_PlayerCardSelectable value) playerCardSelectable,
    required TResult Function(_CardTemporarilySelected value)
        playerCardTemporarilySelected,
    required TResult Function(_PlayerCardSelected value) playerCardSelected,
    required TResult Function(_PlayerCounterCardSelectable value)
        playerCounterCardSelectable,
    required TResult Function(_PlayerCounterCardSelected value)
        playerCounterCardSelected,
    required TResult Function(_OpponentCounterCardSelectable value)
        opponentCounterCardSelectable,
    required TResult Function(_OpponentCounterCardSelected value)
        opponentCounterCardSelected,
    required TResult Function(_OpponentCardSelectable value)
        opponentCardSelectable,
    required TResult Function(_OpponentCardSelected value) opponentCardSelected,
    required TResult Function(_Error value) error,
  }) {
    return playerCardTemporarilySelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OpponentTurnStarted value)? opponentTurnStarted,
    TResult? Function(_OpponentTurnFinished value)? opponentTurnFinished,
    TResult? Function(_PlayerTurnStarted value)? playerTurnStarted,
    TResult? Function(_PlayerTurnFinished value)? playerTurnFinished,
    TResult? Function(_PlayerCardSelectable value)? playerCardSelectable,
    TResult? Function(_CardTemporarilySelected value)?
        playerCardTemporarilySelected,
    TResult? Function(_PlayerCardSelected value)? playerCardSelected,
    TResult? Function(_PlayerCounterCardSelectable value)?
        playerCounterCardSelectable,
    TResult? Function(_PlayerCounterCardSelected value)?
        playerCounterCardSelected,
    TResult? Function(_OpponentCounterCardSelectable value)?
        opponentCounterCardSelectable,
    TResult? Function(_OpponentCounterCardSelected value)?
        opponentCounterCardSelected,
    TResult? Function(_OpponentCardSelectable value)? opponentCardSelectable,
    TResult? Function(_OpponentCardSelected value)? opponentCardSelected,
    TResult? Function(_Error value)? error,
  }) {
    return playerCardTemporarilySelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OpponentTurnStarted value)? opponentTurnStarted,
    TResult Function(_OpponentTurnFinished value)? opponentTurnFinished,
    TResult Function(_PlayerTurnStarted value)? playerTurnStarted,
    TResult Function(_PlayerTurnFinished value)? playerTurnFinished,
    TResult Function(_PlayerCardSelectable value)? playerCardSelectable,
    TResult Function(_CardTemporarilySelected value)?
        playerCardTemporarilySelected,
    TResult Function(_PlayerCardSelected value)? playerCardSelected,
    TResult Function(_PlayerCounterCardSelectable value)?
        playerCounterCardSelectable,
    TResult Function(_PlayerCounterCardSelected value)?
        playerCounterCardSelected,
    TResult Function(_OpponentCounterCardSelectable value)?
        opponentCounterCardSelectable,
    TResult Function(_OpponentCounterCardSelected value)?
        opponentCounterCardSelected,
    TResult Function(_OpponentCardSelectable value)? opponentCardSelectable,
    TResult Function(_OpponentCardSelected value)? opponentCardSelected,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (playerCardTemporarilySelected != null) {
      return playerCardTemporarilySelected(this);
    }
    return orElse();
  }
}

abstract class _CardTemporarilySelected implements BattlePhase {
  const factory _CardTemporarilySelected() = _$_CardTemporarilySelected;
}

/// @nodoc
abstract class _$$_PlayerCardSelectedCopyWith<$Res> {
  factory _$$_PlayerCardSelectedCopyWith(_$_PlayerCardSelected value,
          $Res Function(_$_PlayerCardSelected) then) =
      __$$_PlayerCardSelectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PlayerCardSelectedCopyWithImpl<$Res>
    extends _$BattlePhaseCopyWithImpl<$Res, _$_PlayerCardSelected>
    implements _$$_PlayerCardSelectedCopyWith<$Res> {
  __$$_PlayerCardSelectedCopyWithImpl(
      _$_PlayerCardSelected _value, $Res Function(_$_PlayerCardSelected) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PlayerCardSelected implements _PlayerCardSelected {
  const _$_PlayerCardSelected();

  @override
  String toString() {
    return 'BattlePhase.playerCardSelected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_PlayerCardSelected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() opponentTurnStarted,
    required TResult Function() opponentTurnFinished,
    required TResult Function() playerTurnStarted,
    required TResult Function() playerTurnFinished,
    required TResult Function() playerCardSelectable,
    required TResult Function() playerCardTemporarilySelected,
    required TResult Function() playerCardSelected,
    required TResult Function() playerCounterCardSelectable,
    required TResult Function() playerCounterCardSelected,
    required TResult Function() opponentCounterCardSelectable,
    required TResult Function() opponentCounterCardSelected,
    required TResult Function() opponentCardSelectable,
    required TResult Function() opponentCardSelected,
    required TResult Function(Exception e) error,
  }) {
    return playerCardSelected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? opponentTurnStarted,
    TResult? Function()? opponentTurnFinished,
    TResult? Function()? playerTurnStarted,
    TResult? Function()? playerTurnFinished,
    TResult? Function()? playerCardSelectable,
    TResult? Function()? playerCardTemporarilySelected,
    TResult? Function()? playerCardSelected,
    TResult? Function()? playerCounterCardSelectable,
    TResult? Function()? playerCounterCardSelected,
    TResult? Function()? opponentCounterCardSelectable,
    TResult? Function()? opponentCounterCardSelected,
    TResult? Function()? opponentCardSelectable,
    TResult? Function()? opponentCardSelected,
    TResult? Function(Exception e)? error,
  }) {
    return playerCardSelected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? opponentTurnStarted,
    TResult Function()? opponentTurnFinished,
    TResult Function()? playerTurnStarted,
    TResult Function()? playerTurnFinished,
    TResult Function()? playerCardSelectable,
    TResult Function()? playerCardTemporarilySelected,
    TResult Function()? playerCardSelected,
    TResult Function()? playerCounterCardSelectable,
    TResult Function()? playerCounterCardSelected,
    TResult Function()? opponentCounterCardSelectable,
    TResult Function()? opponentCounterCardSelected,
    TResult Function()? opponentCardSelectable,
    TResult Function()? opponentCardSelected,
    TResult Function(Exception e)? error,
    required TResult orElse(),
  }) {
    if (playerCardSelected != null) {
      return playerCardSelected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OpponentTurnStarted value) opponentTurnStarted,
    required TResult Function(_OpponentTurnFinished value) opponentTurnFinished,
    required TResult Function(_PlayerTurnStarted value) playerTurnStarted,
    required TResult Function(_PlayerTurnFinished value) playerTurnFinished,
    required TResult Function(_PlayerCardSelectable value) playerCardSelectable,
    required TResult Function(_CardTemporarilySelected value)
        playerCardTemporarilySelected,
    required TResult Function(_PlayerCardSelected value) playerCardSelected,
    required TResult Function(_PlayerCounterCardSelectable value)
        playerCounterCardSelectable,
    required TResult Function(_PlayerCounterCardSelected value)
        playerCounterCardSelected,
    required TResult Function(_OpponentCounterCardSelectable value)
        opponentCounterCardSelectable,
    required TResult Function(_OpponentCounterCardSelected value)
        opponentCounterCardSelected,
    required TResult Function(_OpponentCardSelectable value)
        opponentCardSelectable,
    required TResult Function(_OpponentCardSelected value) opponentCardSelected,
    required TResult Function(_Error value) error,
  }) {
    return playerCardSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OpponentTurnStarted value)? opponentTurnStarted,
    TResult? Function(_OpponentTurnFinished value)? opponentTurnFinished,
    TResult? Function(_PlayerTurnStarted value)? playerTurnStarted,
    TResult? Function(_PlayerTurnFinished value)? playerTurnFinished,
    TResult? Function(_PlayerCardSelectable value)? playerCardSelectable,
    TResult? Function(_CardTemporarilySelected value)?
        playerCardTemporarilySelected,
    TResult? Function(_PlayerCardSelected value)? playerCardSelected,
    TResult? Function(_PlayerCounterCardSelectable value)?
        playerCounterCardSelectable,
    TResult? Function(_PlayerCounterCardSelected value)?
        playerCounterCardSelected,
    TResult? Function(_OpponentCounterCardSelectable value)?
        opponentCounterCardSelectable,
    TResult? Function(_OpponentCounterCardSelected value)?
        opponentCounterCardSelected,
    TResult? Function(_OpponentCardSelectable value)? opponentCardSelectable,
    TResult? Function(_OpponentCardSelected value)? opponentCardSelected,
    TResult? Function(_Error value)? error,
  }) {
    return playerCardSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OpponentTurnStarted value)? opponentTurnStarted,
    TResult Function(_OpponentTurnFinished value)? opponentTurnFinished,
    TResult Function(_PlayerTurnStarted value)? playerTurnStarted,
    TResult Function(_PlayerTurnFinished value)? playerTurnFinished,
    TResult Function(_PlayerCardSelectable value)? playerCardSelectable,
    TResult Function(_CardTemporarilySelected value)?
        playerCardTemporarilySelected,
    TResult Function(_PlayerCardSelected value)? playerCardSelected,
    TResult Function(_PlayerCounterCardSelectable value)?
        playerCounterCardSelectable,
    TResult Function(_PlayerCounterCardSelected value)?
        playerCounterCardSelected,
    TResult Function(_OpponentCounterCardSelectable value)?
        opponentCounterCardSelectable,
    TResult Function(_OpponentCounterCardSelected value)?
        opponentCounterCardSelected,
    TResult Function(_OpponentCardSelectable value)? opponentCardSelectable,
    TResult Function(_OpponentCardSelected value)? opponentCardSelected,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (playerCardSelected != null) {
      return playerCardSelected(this);
    }
    return orElse();
  }
}

abstract class _PlayerCardSelected implements BattlePhase {
  const factory _PlayerCardSelected() = _$_PlayerCardSelected;
}

/// @nodoc
abstract class _$$_PlayerCounterCardSelectableCopyWith<$Res> {
  factory _$$_PlayerCounterCardSelectableCopyWith(
          _$_PlayerCounterCardSelectable value,
          $Res Function(_$_PlayerCounterCardSelectable) then) =
      __$$_PlayerCounterCardSelectableCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PlayerCounterCardSelectableCopyWithImpl<$Res>
    extends _$BattlePhaseCopyWithImpl<$Res, _$_PlayerCounterCardSelectable>
    implements _$$_PlayerCounterCardSelectableCopyWith<$Res> {
  __$$_PlayerCounterCardSelectableCopyWithImpl(
      _$_PlayerCounterCardSelectable _value,
      $Res Function(_$_PlayerCounterCardSelectable) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PlayerCounterCardSelectable implements _PlayerCounterCardSelectable {
  const _$_PlayerCounterCardSelectable();

  @override
  String toString() {
    return 'BattlePhase.playerCounterCardSelectable()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlayerCounterCardSelectable);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() opponentTurnStarted,
    required TResult Function() opponentTurnFinished,
    required TResult Function() playerTurnStarted,
    required TResult Function() playerTurnFinished,
    required TResult Function() playerCardSelectable,
    required TResult Function() playerCardTemporarilySelected,
    required TResult Function() playerCardSelected,
    required TResult Function() playerCounterCardSelectable,
    required TResult Function() playerCounterCardSelected,
    required TResult Function() opponentCounterCardSelectable,
    required TResult Function() opponentCounterCardSelected,
    required TResult Function() opponentCardSelectable,
    required TResult Function() opponentCardSelected,
    required TResult Function(Exception e) error,
  }) {
    return playerCounterCardSelectable();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? opponentTurnStarted,
    TResult? Function()? opponentTurnFinished,
    TResult? Function()? playerTurnStarted,
    TResult? Function()? playerTurnFinished,
    TResult? Function()? playerCardSelectable,
    TResult? Function()? playerCardTemporarilySelected,
    TResult? Function()? playerCardSelected,
    TResult? Function()? playerCounterCardSelectable,
    TResult? Function()? playerCounterCardSelected,
    TResult? Function()? opponentCounterCardSelectable,
    TResult? Function()? opponentCounterCardSelected,
    TResult? Function()? opponentCardSelectable,
    TResult? Function()? opponentCardSelected,
    TResult? Function(Exception e)? error,
  }) {
    return playerCounterCardSelectable?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? opponentTurnStarted,
    TResult Function()? opponentTurnFinished,
    TResult Function()? playerTurnStarted,
    TResult Function()? playerTurnFinished,
    TResult Function()? playerCardSelectable,
    TResult Function()? playerCardTemporarilySelected,
    TResult Function()? playerCardSelected,
    TResult Function()? playerCounterCardSelectable,
    TResult Function()? playerCounterCardSelected,
    TResult Function()? opponentCounterCardSelectable,
    TResult Function()? opponentCounterCardSelected,
    TResult Function()? opponentCardSelectable,
    TResult Function()? opponentCardSelected,
    TResult Function(Exception e)? error,
    required TResult orElse(),
  }) {
    if (playerCounterCardSelectable != null) {
      return playerCounterCardSelectable();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OpponentTurnStarted value) opponentTurnStarted,
    required TResult Function(_OpponentTurnFinished value) opponentTurnFinished,
    required TResult Function(_PlayerTurnStarted value) playerTurnStarted,
    required TResult Function(_PlayerTurnFinished value) playerTurnFinished,
    required TResult Function(_PlayerCardSelectable value) playerCardSelectable,
    required TResult Function(_CardTemporarilySelected value)
        playerCardTemporarilySelected,
    required TResult Function(_PlayerCardSelected value) playerCardSelected,
    required TResult Function(_PlayerCounterCardSelectable value)
        playerCounterCardSelectable,
    required TResult Function(_PlayerCounterCardSelected value)
        playerCounterCardSelected,
    required TResult Function(_OpponentCounterCardSelectable value)
        opponentCounterCardSelectable,
    required TResult Function(_OpponentCounterCardSelected value)
        opponentCounterCardSelected,
    required TResult Function(_OpponentCardSelectable value)
        opponentCardSelectable,
    required TResult Function(_OpponentCardSelected value) opponentCardSelected,
    required TResult Function(_Error value) error,
  }) {
    return playerCounterCardSelectable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OpponentTurnStarted value)? opponentTurnStarted,
    TResult? Function(_OpponentTurnFinished value)? opponentTurnFinished,
    TResult? Function(_PlayerTurnStarted value)? playerTurnStarted,
    TResult? Function(_PlayerTurnFinished value)? playerTurnFinished,
    TResult? Function(_PlayerCardSelectable value)? playerCardSelectable,
    TResult? Function(_CardTemporarilySelected value)?
        playerCardTemporarilySelected,
    TResult? Function(_PlayerCardSelected value)? playerCardSelected,
    TResult? Function(_PlayerCounterCardSelectable value)?
        playerCounterCardSelectable,
    TResult? Function(_PlayerCounterCardSelected value)?
        playerCounterCardSelected,
    TResult? Function(_OpponentCounterCardSelectable value)?
        opponentCounterCardSelectable,
    TResult? Function(_OpponentCounterCardSelected value)?
        opponentCounterCardSelected,
    TResult? Function(_OpponentCardSelectable value)? opponentCardSelectable,
    TResult? Function(_OpponentCardSelected value)? opponentCardSelected,
    TResult? Function(_Error value)? error,
  }) {
    return playerCounterCardSelectable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OpponentTurnStarted value)? opponentTurnStarted,
    TResult Function(_OpponentTurnFinished value)? opponentTurnFinished,
    TResult Function(_PlayerTurnStarted value)? playerTurnStarted,
    TResult Function(_PlayerTurnFinished value)? playerTurnFinished,
    TResult Function(_PlayerCardSelectable value)? playerCardSelectable,
    TResult Function(_CardTemporarilySelected value)?
        playerCardTemporarilySelected,
    TResult Function(_PlayerCardSelected value)? playerCardSelected,
    TResult Function(_PlayerCounterCardSelectable value)?
        playerCounterCardSelectable,
    TResult Function(_PlayerCounterCardSelected value)?
        playerCounterCardSelected,
    TResult Function(_OpponentCounterCardSelectable value)?
        opponentCounterCardSelectable,
    TResult Function(_OpponentCounterCardSelected value)?
        opponentCounterCardSelected,
    TResult Function(_OpponentCardSelectable value)? opponentCardSelectable,
    TResult Function(_OpponentCardSelected value)? opponentCardSelected,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (playerCounterCardSelectable != null) {
      return playerCounterCardSelectable(this);
    }
    return orElse();
  }
}

abstract class _PlayerCounterCardSelectable implements BattlePhase {
  const factory _PlayerCounterCardSelectable() = _$_PlayerCounterCardSelectable;
}

/// @nodoc
abstract class _$$_PlayerCounterCardSelectedCopyWith<$Res> {
  factory _$$_PlayerCounterCardSelectedCopyWith(
          _$_PlayerCounterCardSelected value,
          $Res Function(_$_PlayerCounterCardSelected) then) =
      __$$_PlayerCounterCardSelectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_PlayerCounterCardSelectedCopyWithImpl<$Res>
    extends _$BattlePhaseCopyWithImpl<$Res, _$_PlayerCounterCardSelected>
    implements _$$_PlayerCounterCardSelectedCopyWith<$Res> {
  __$$_PlayerCounterCardSelectedCopyWithImpl(
      _$_PlayerCounterCardSelected _value,
      $Res Function(_$_PlayerCounterCardSelected) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_PlayerCounterCardSelected implements _PlayerCounterCardSelected {
  const _$_PlayerCounterCardSelected();

  @override
  String toString() {
    return 'BattlePhase.playerCounterCardSelected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlayerCounterCardSelected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() opponentTurnStarted,
    required TResult Function() opponentTurnFinished,
    required TResult Function() playerTurnStarted,
    required TResult Function() playerTurnFinished,
    required TResult Function() playerCardSelectable,
    required TResult Function() playerCardTemporarilySelected,
    required TResult Function() playerCardSelected,
    required TResult Function() playerCounterCardSelectable,
    required TResult Function() playerCounterCardSelected,
    required TResult Function() opponentCounterCardSelectable,
    required TResult Function() opponentCounterCardSelected,
    required TResult Function() opponentCardSelectable,
    required TResult Function() opponentCardSelected,
    required TResult Function(Exception e) error,
  }) {
    return playerCounterCardSelected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? opponentTurnStarted,
    TResult? Function()? opponentTurnFinished,
    TResult? Function()? playerTurnStarted,
    TResult? Function()? playerTurnFinished,
    TResult? Function()? playerCardSelectable,
    TResult? Function()? playerCardTemporarilySelected,
    TResult? Function()? playerCardSelected,
    TResult? Function()? playerCounterCardSelectable,
    TResult? Function()? playerCounterCardSelected,
    TResult? Function()? opponentCounterCardSelectable,
    TResult? Function()? opponentCounterCardSelected,
    TResult? Function()? opponentCardSelectable,
    TResult? Function()? opponentCardSelected,
    TResult? Function(Exception e)? error,
  }) {
    return playerCounterCardSelected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? opponentTurnStarted,
    TResult Function()? opponentTurnFinished,
    TResult Function()? playerTurnStarted,
    TResult Function()? playerTurnFinished,
    TResult Function()? playerCardSelectable,
    TResult Function()? playerCardTemporarilySelected,
    TResult Function()? playerCardSelected,
    TResult Function()? playerCounterCardSelectable,
    TResult Function()? playerCounterCardSelected,
    TResult Function()? opponentCounterCardSelectable,
    TResult Function()? opponentCounterCardSelected,
    TResult Function()? opponentCardSelectable,
    TResult Function()? opponentCardSelected,
    TResult Function(Exception e)? error,
    required TResult orElse(),
  }) {
    if (playerCounterCardSelected != null) {
      return playerCounterCardSelected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OpponentTurnStarted value) opponentTurnStarted,
    required TResult Function(_OpponentTurnFinished value) opponentTurnFinished,
    required TResult Function(_PlayerTurnStarted value) playerTurnStarted,
    required TResult Function(_PlayerTurnFinished value) playerTurnFinished,
    required TResult Function(_PlayerCardSelectable value) playerCardSelectable,
    required TResult Function(_CardTemporarilySelected value)
        playerCardTemporarilySelected,
    required TResult Function(_PlayerCardSelected value) playerCardSelected,
    required TResult Function(_PlayerCounterCardSelectable value)
        playerCounterCardSelectable,
    required TResult Function(_PlayerCounterCardSelected value)
        playerCounterCardSelected,
    required TResult Function(_OpponentCounterCardSelectable value)
        opponentCounterCardSelectable,
    required TResult Function(_OpponentCounterCardSelected value)
        opponentCounterCardSelected,
    required TResult Function(_OpponentCardSelectable value)
        opponentCardSelectable,
    required TResult Function(_OpponentCardSelected value) opponentCardSelected,
    required TResult Function(_Error value) error,
  }) {
    return playerCounterCardSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OpponentTurnStarted value)? opponentTurnStarted,
    TResult? Function(_OpponentTurnFinished value)? opponentTurnFinished,
    TResult? Function(_PlayerTurnStarted value)? playerTurnStarted,
    TResult? Function(_PlayerTurnFinished value)? playerTurnFinished,
    TResult? Function(_PlayerCardSelectable value)? playerCardSelectable,
    TResult? Function(_CardTemporarilySelected value)?
        playerCardTemporarilySelected,
    TResult? Function(_PlayerCardSelected value)? playerCardSelected,
    TResult? Function(_PlayerCounterCardSelectable value)?
        playerCounterCardSelectable,
    TResult? Function(_PlayerCounterCardSelected value)?
        playerCounterCardSelected,
    TResult? Function(_OpponentCounterCardSelectable value)?
        opponentCounterCardSelectable,
    TResult? Function(_OpponentCounterCardSelected value)?
        opponentCounterCardSelected,
    TResult? Function(_OpponentCardSelectable value)? opponentCardSelectable,
    TResult? Function(_OpponentCardSelected value)? opponentCardSelected,
    TResult? Function(_Error value)? error,
  }) {
    return playerCounterCardSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OpponentTurnStarted value)? opponentTurnStarted,
    TResult Function(_OpponentTurnFinished value)? opponentTurnFinished,
    TResult Function(_PlayerTurnStarted value)? playerTurnStarted,
    TResult Function(_PlayerTurnFinished value)? playerTurnFinished,
    TResult Function(_PlayerCardSelectable value)? playerCardSelectable,
    TResult Function(_CardTemporarilySelected value)?
        playerCardTemporarilySelected,
    TResult Function(_PlayerCardSelected value)? playerCardSelected,
    TResult Function(_PlayerCounterCardSelectable value)?
        playerCounterCardSelectable,
    TResult Function(_PlayerCounterCardSelected value)?
        playerCounterCardSelected,
    TResult Function(_OpponentCounterCardSelectable value)?
        opponentCounterCardSelectable,
    TResult Function(_OpponentCounterCardSelected value)?
        opponentCounterCardSelected,
    TResult Function(_OpponentCardSelectable value)? opponentCardSelectable,
    TResult Function(_OpponentCardSelected value)? opponentCardSelected,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (playerCounterCardSelected != null) {
      return playerCounterCardSelected(this);
    }
    return orElse();
  }
}

abstract class _PlayerCounterCardSelected implements BattlePhase {
  const factory _PlayerCounterCardSelected() = _$_PlayerCounterCardSelected;
}

/// @nodoc
abstract class _$$_OpponentCounterCardSelectableCopyWith<$Res> {
  factory _$$_OpponentCounterCardSelectableCopyWith(
          _$_OpponentCounterCardSelectable value,
          $Res Function(_$_OpponentCounterCardSelectable) then) =
      __$$_OpponentCounterCardSelectableCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OpponentCounterCardSelectableCopyWithImpl<$Res>
    extends _$BattlePhaseCopyWithImpl<$Res, _$_OpponentCounterCardSelectable>
    implements _$$_OpponentCounterCardSelectableCopyWith<$Res> {
  __$$_OpponentCounterCardSelectableCopyWithImpl(
      _$_OpponentCounterCardSelectable _value,
      $Res Function(_$_OpponentCounterCardSelectable) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OpponentCounterCardSelectable
    implements _OpponentCounterCardSelectable {
  const _$_OpponentCounterCardSelectable();

  @override
  String toString() {
    return 'BattlePhase.opponentCounterCardSelectable()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpponentCounterCardSelectable);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() opponentTurnStarted,
    required TResult Function() opponentTurnFinished,
    required TResult Function() playerTurnStarted,
    required TResult Function() playerTurnFinished,
    required TResult Function() playerCardSelectable,
    required TResult Function() playerCardTemporarilySelected,
    required TResult Function() playerCardSelected,
    required TResult Function() playerCounterCardSelectable,
    required TResult Function() playerCounterCardSelected,
    required TResult Function() opponentCounterCardSelectable,
    required TResult Function() opponentCounterCardSelected,
    required TResult Function() opponentCardSelectable,
    required TResult Function() opponentCardSelected,
    required TResult Function(Exception e) error,
  }) {
    return opponentCounterCardSelectable();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? opponentTurnStarted,
    TResult? Function()? opponentTurnFinished,
    TResult? Function()? playerTurnStarted,
    TResult? Function()? playerTurnFinished,
    TResult? Function()? playerCardSelectable,
    TResult? Function()? playerCardTemporarilySelected,
    TResult? Function()? playerCardSelected,
    TResult? Function()? playerCounterCardSelectable,
    TResult? Function()? playerCounterCardSelected,
    TResult? Function()? opponentCounterCardSelectable,
    TResult? Function()? opponentCounterCardSelected,
    TResult? Function()? opponentCardSelectable,
    TResult? Function()? opponentCardSelected,
    TResult? Function(Exception e)? error,
  }) {
    return opponentCounterCardSelectable?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? opponentTurnStarted,
    TResult Function()? opponentTurnFinished,
    TResult Function()? playerTurnStarted,
    TResult Function()? playerTurnFinished,
    TResult Function()? playerCardSelectable,
    TResult Function()? playerCardTemporarilySelected,
    TResult Function()? playerCardSelected,
    TResult Function()? playerCounterCardSelectable,
    TResult Function()? playerCounterCardSelected,
    TResult Function()? opponentCounterCardSelectable,
    TResult Function()? opponentCounterCardSelected,
    TResult Function()? opponentCardSelectable,
    TResult Function()? opponentCardSelected,
    TResult Function(Exception e)? error,
    required TResult orElse(),
  }) {
    if (opponentCounterCardSelectable != null) {
      return opponentCounterCardSelectable();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OpponentTurnStarted value) opponentTurnStarted,
    required TResult Function(_OpponentTurnFinished value) opponentTurnFinished,
    required TResult Function(_PlayerTurnStarted value) playerTurnStarted,
    required TResult Function(_PlayerTurnFinished value) playerTurnFinished,
    required TResult Function(_PlayerCardSelectable value) playerCardSelectable,
    required TResult Function(_CardTemporarilySelected value)
        playerCardTemporarilySelected,
    required TResult Function(_PlayerCardSelected value) playerCardSelected,
    required TResult Function(_PlayerCounterCardSelectable value)
        playerCounterCardSelectable,
    required TResult Function(_PlayerCounterCardSelected value)
        playerCounterCardSelected,
    required TResult Function(_OpponentCounterCardSelectable value)
        opponentCounterCardSelectable,
    required TResult Function(_OpponentCounterCardSelected value)
        opponentCounterCardSelected,
    required TResult Function(_OpponentCardSelectable value)
        opponentCardSelectable,
    required TResult Function(_OpponentCardSelected value) opponentCardSelected,
    required TResult Function(_Error value) error,
  }) {
    return opponentCounterCardSelectable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OpponentTurnStarted value)? opponentTurnStarted,
    TResult? Function(_OpponentTurnFinished value)? opponentTurnFinished,
    TResult? Function(_PlayerTurnStarted value)? playerTurnStarted,
    TResult? Function(_PlayerTurnFinished value)? playerTurnFinished,
    TResult? Function(_PlayerCardSelectable value)? playerCardSelectable,
    TResult? Function(_CardTemporarilySelected value)?
        playerCardTemporarilySelected,
    TResult? Function(_PlayerCardSelected value)? playerCardSelected,
    TResult? Function(_PlayerCounterCardSelectable value)?
        playerCounterCardSelectable,
    TResult? Function(_PlayerCounterCardSelected value)?
        playerCounterCardSelected,
    TResult? Function(_OpponentCounterCardSelectable value)?
        opponentCounterCardSelectable,
    TResult? Function(_OpponentCounterCardSelected value)?
        opponentCounterCardSelected,
    TResult? Function(_OpponentCardSelectable value)? opponentCardSelectable,
    TResult? Function(_OpponentCardSelected value)? opponentCardSelected,
    TResult? Function(_Error value)? error,
  }) {
    return opponentCounterCardSelectable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OpponentTurnStarted value)? opponentTurnStarted,
    TResult Function(_OpponentTurnFinished value)? opponentTurnFinished,
    TResult Function(_PlayerTurnStarted value)? playerTurnStarted,
    TResult Function(_PlayerTurnFinished value)? playerTurnFinished,
    TResult Function(_PlayerCardSelectable value)? playerCardSelectable,
    TResult Function(_CardTemporarilySelected value)?
        playerCardTemporarilySelected,
    TResult Function(_PlayerCardSelected value)? playerCardSelected,
    TResult Function(_PlayerCounterCardSelectable value)?
        playerCounterCardSelectable,
    TResult Function(_PlayerCounterCardSelected value)?
        playerCounterCardSelected,
    TResult Function(_OpponentCounterCardSelectable value)?
        opponentCounterCardSelectable,
    TResult Function(_OpponentCounterCardSelected value)?
        opponentCounterCardSelected,
    TResult Function(_OpponentCardSelectable value)? opponentCardSelectable,
    TResult Function(_OpponentCardSelected value)? opponentCardSelected,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (opponentCounterCardSelectable != null) {
      return opponentCounterCardSelectable(this);
    }
    return orElse();
  }
}

abstract class _OpponentCounterCardSelectable implements BattlePhase {
  const factory _OpponentCounterCardSelectable() =
      _$_OpponentCounterCardSelectable;
}

/// @nodoc
abstract class _$$_OpponentCounterCardSelectedCopyWith<$Res> {
  factory _$$_OpponentCounterCardSelectedCopyWith(
          _$_OpponentCounterCardSelected value,
          $Res Function(_$_OpponentCounterCardSelected) then) =
      __$$_OpponentCounterCardSelectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OpponentCounterCardSelectedCopyWithImpl<$Res>
    extends _$BattlePhaseCopyWithImpl<$Res, _$_OpponentCounterCardSelected>
    implements _$$_OpponentCounterCardSelectedCopyWith<$Res> {
  __$$_OpponentCounterCardSelectedCopyWithImpl(
      _$_OpponentCounterCardSelected _value,
      $Res Function(_$_OpponentCounterCardSelected) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OpponentCounterCardSelected implements _OpponentCounterCardSelected {
  const _$_OpponentCounterCardSelected();

  @override
  String toString() {
    return 'BattlePhase.opponentCounterCardSelected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpponentCounterCardSelected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() opponentTurnStarted,
    required TResult Function() opponentTurnFinished,
    required TResult Function() playerTurnStarted,
    required TResult Function() playerTurnFinished,
    required TResult Function() playerCardSelectable,
    required TResult Function() playerCardTemporarilySelected,
    required TResult Function() playerCardSelected,
    required TResult Function() playerCounterCardSelectable,
    required TResult Function() playerCounterCardSelected,
    required TResult Function() opponentCounterCardSelectable,
    required TResult Function() opponentCounterCardSelected,
    required TResult Function() opponentCardSelectable,
    required TResult Function() opponentCardSelected,
    required TResult Function(Exception e) error,
  }) {
    return opponentCounterCardSelected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? opponentTurnStarted,
    TResult? Function()? opponentTurnFinished,
    TResult? Function()? playerTurnStarted,
    TResult? Function()? playerTurnFinished,
    TResult? Function()? playerCardSelectable,
    TResult? Function()? playerCardTemporarilySelected,
    TResult? Function()? playerCardSelected,
    TResult? Function()? playerCounterCardSelectable,
    TResult? Function()? playerCounterCardSelected,
    TResult? Function()? opponentCounterCardSelectable,
    TResult? Function()? opponentCounterCardSelected,
    TResult? Function()? opponentCardSelectable,
    TResult? Function()? opponentCardSelected,
    TResult? Function(Exception e)? error,
  }) {
    return opponentCounterCardSelected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? opponentTurnStarted,
    TResult Function()? opponentTurnFinished,
    TResult Function()? playerTurnStarted,
    TResult Function()? playerTurnFinished,
    TResult Function()? playerCardSelectable,
    TResult Function()? playerCardTemporarilySelected,
    TResult Function()? playerCardSelected,
    TResult Function()? playerCounterCardSelectable,
    TResult Function()? playerCounterCardSelected,
    TResult Function()? opponentCounterCardSelectable,
    TResult Function()? opponentCounterCardSelected,
    TResult Function()? opponentCardSelectable,
    TResult Function()? opponentCardSelected,
    TResult Function(Exception e)? error,
    required TResult orElse(),
  }) {
    if (opponentCounterCardSelected != null) {
      return opponentCounterCardSelected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OpponentTurnStarted value) opponentTurnStarted,
    required TResult Function(_OpponentTurnFinished value) opponentTurnFinished,
    required TResult Function(_PlayerTurnStarted value) playerTurnStarted,
    required TResult Function(_PlayerTurnFinished value) playerTurnFinished,
    required TResult Function(_PlayerCardSelectable value) playerCardSelectable,
    required TResult Function(_CardTemporarilySelected value)
        playerCardTemporarilySelected,
    required TResult Function(_PlayerCardSelected value) playerCardSelected,
    required TResult Function(_PlayerCounterCardSelectable value)
        playerCounterCardSelectable,
    required TResult Function(_PlayerCounterCardSelected value)
        playerCounterCardSelected,
    required TResult Function(_OpponentCounterCardSelectable value)
        opponentCounterCardSelectable,
    required TResult Function(_OpponentCounterCardSelected value)
        opponentCounterCardSelected,
    required TResult Function(_OpponentCardSelectable value)
        opponentCardSelectable,
    required TResult Function(_OpponentCardSelected value) opponentCardSelected,
    required TResult Function(_Error value) error,
  }) {
    return opponentCounterCardSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OpponentTurnStarted value)? opponentTurnStarted,
    TResult? Function(_OpponentTurnFinished value)? opponentTurnFinished,
    TResult? Function(_PlayerTurnStarted value)? playerTurnStarted,
    TResult? Function(_PlayerTurnFinished value)? playerTurnFinished,
    TResult? Function(_PlayerCardSelectable value)? playerCardSelectable,
    TResult? Function(_CardTemporarilySelected value)?
        playerCardTemporarilySelected,
    TResult? Function(_PlayerCardSelected value)? playerCardSelected,
    TResult? Function(_PlayerCounterCardSelectable value)?
        playerCounterCardSelectable,
    TResult? Function(_PlayerCounterCardSelected value)?
        playerCounterCardSelected,
    TResult? Function(_OpponentCounterCardSelectable value)?
        opponentCounterCardSelectable,
    TResult? Function(_OpponentCounterCardSelected value)?
        opponentCounterCardSelected,
    TResult? Function(_OpponentCardSelectable value)? opponentCardSelectable,
    TResult? Function(_OpponentCardSelected value)? opponentCardSelected,
    TResult? Function(_Error value)? error,
  }) {
    return opponentCounterCardSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OpponentTurnStarted value)? opponentTurnStarted,
    TResult Function(_OpponentTurnFinished value)? opponentTurnFinished,
    TResult Function(_PlayerTurnStarted value)? playerTurnStarted,
    TResult Function(_PlayerTurnFinished value)? playerTurnFinished,
    TResult Function(_PlayerCardSelectable value)? playerCardSelectable,
    TResult Function(_CardTemporarilySelected value)?
        playerCardTemporarilySelected,
    TResult Function(_PlayerCardSelected value)? playerCardSelected,
    TResult Function(_PlayerCounterCardSelectable value)?
        playerCounterCardSelectable,
    TResult Function(_PlayerCounterCardSelected value)?
        playerCounterCardSelected,
    TResult Function(_OpponentCounterCardSelectable value)?
        opponentCounterCardSelectable,
    TResult Function(_OpponentCounterCardSelected value)?
        opponentCounterCardSelected,
    TResult Function(_OpponentCardSelectable value)? opponentCardSelectable,
    TResult Function(_OpponentCardSelected value)? opponentCardSelected,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (opponentCounterCardSelected != null) {
      return opponentCounterCardSelected(this);
    }
    return orElse();
  }
}

abstract class _OpponentCounterCardSelected implements BattlePhase {
  const factory _OpponentCounterCardSelected() = _$_OpponentCounterCardSelected;
}

/// @nodoc
abstract class _$$_OpponentCardSelectableCopyWith<$Res> {
  factory _$$_OpponentCardSelectableCopyWith(_$_OpponentCardSelectable value,
          $Res Function(_$_OpponentCardSelectable) then) =
      __$$_OpponentCardSelectableCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OpponentCardSelectableCopyWithImpl<$Res>
    extends _$BattlePhaseCopyWithImpl<$Res, _$_OpponentCardSelectable>
    implements _$$_OpponentCardSelectableCopyWith<$Res> {
  __$$_OpponentCardSelectableCopyWithImpl(_$_OpponentCardSelectable _value,
      $Res Function(_$_OpponentCardSelectable) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OpponentCardSelectable implements _OpponentCardSelectable {
  const _$_OpponentCardSelectable();

  @override
  String toString() {
    return 'BattlePhase.opponentCardSelectable()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpponentCardSelectable);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() opponentTurnStarted,
    required TResult Function() opponentTurnFinished,
    required TResult Function() playerTurnStarted,
    required TResult Function() playerTurnFinished,
    required TResult Function() playerCardSelectable,
    required TResult Function() playerCardTemporarilySelected,
    required TResult Function() playerCardSelected,
    required TResult Function() playerCounterCardSelectable,
    required TResult Function() playerCounterCardSelected,
    required TResult Function() opponentCounterCardSelectable,
    required TResult Function() opponentCounterCardSelected,
    required TResult Function() opponentCardSelectable,
    required TResult Function() opponentCardSelected,
    required TResult Function(Exception e) error,
  }) {
    return opponentCardSelectable();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? opponentTurnStarted,
    TResult? Function()? opponentTurnFinished,
    TResult? Function()? playerTurnStarted,
    TResult? Function()? playerTurnFinished,
    TResult? Function()? playerCardSelectable,
    TResult? Function()? playerCardTemporarilySelected,
    TResult? Function()? playerCardSelected,
    TResult? Function()? playerCounterCardSelectable,
    TResult? Function()? playerCounterCardSelected,
    TResult? Function()? opponentCounterCardSelectable,
    TResult? Function()? opponentCounterCardSelected,
    TResult? Function()? opponentCardSelectable,
    TResult? Function()? opponentCardSelected,
    TResult? Function(Exception e)? error,
  }) {
    return opponentCardSelectable?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? opponentTurnStarted,
    TResult Function()? opponentTurnFinished,
    TResult Function()? playerTurnStarted,
    TResult Function()? playerTurnFinished,
    TResult Function()? playerCardSelectable,
    TResult Function()? playerCardTemporarilySelected,
    TResult Function()? playerCardSelected,
    TResult Function()? playerCounterCardSelectable,
    TResult Function()? playerCounterCardSelected,
    TResult Function()? opponentCounterCardSelectable,
    TResult Function()? opponentCounterCardSelected,
    TResult Function()? opponentCardSelectable,
    TResult Function()? opponentCardSelected,
    TResult Function(Exception e)? error,
    required TResult orElse(),
  }) {
    if (opponentCardSelectable != null) {
      return opponentCardSelectable();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OpponentTurnStarted value) opponentTurnStarted,
    required TResult Function(_OpponentTurnFinished value) opponentTurnFinished,
    required TResult Function(_PlayerTurnStarted value) playerTurnStarted,
    required TResult Function(_PlayerTurnFinished value) playerTurnFinished,
    required TResult Function(_PlayerCardSelectable value) playerCardSelectable,
    required TResult Function(_CardTemporarilySelected value)
        playerCardTemporarilySelected,
    required TResult Function(_PlayerCardSelected value) playerCardSelected,
    required TResult Function(_PlayerCounterCardSelectable value)
        playerCounterCardSelectable,
    required TResult Function(_PlayerCounterCardSelected value)
        playerCounterCardSelected,
    required TResult Function(_OpponentCounterCardSelectable value)
        opponentCounterCardSelectable,
    required TResult Function(_OpponentCounterCardSelected value)
        opponentCounterCardSelected,
    required TResult Function(_OpponentCardSelectable value)
        opponentCardSelectable,
    required TResult Function(_OpponentCardSelected value) opponentCardSelected,
    required TResult Function(_Error value) error,
  }) {
    return opponentCardSelectable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OpponentTurnStarted value)? opponentTurnStarted,
    TResult? Function(_OpponentTurnFinished value)? opponentTurnFinished,
    TResult? Function(_PlayerTurnStarted value)? playerTurnStarted,
    TResult? Function(_PlayerTurnFinished value)? playerTurnFinished,
    TResult? Function(_PlayerCardSelectable value)? playerCardSelectable,
    TResult? Function(_CardTemporarilySelected value)?
        playerCardTemporarilySelected,
    TResult? Function(_PlayerCardSelected value)? playerCardSelected,
    TResult? Function(_PlayerCounterCardSelectable value)?
        playerCounterCardSelectable,
    TResult? Function(_PlayerCounterCardSelected value)?
        playerCounterCardSelected,
    TResult? Function(_OpponentCounterCardSelectable value)?
        opponentCounterCardSelectable,
    TResult? Function(_OpponentCounterCardSelected value)?
        opponentCounterCardSelected,
    TResult? Function(_OpponentCardSelectable value)? opponentCardSelectable,
    TResult? Function(_OpponentCardSelected value)? opponentCardSelected,
    TResult? Function(_Error value)? error,
  }) {
    return opponentCardSelectable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OpponentTurnStarted value)? opponentTurnStarted,
    TResult Function(_OpponentTurnFinished value)? opponentTurnFinished,
    TResult Function(_PlayerTurnStarted value)? playerTurnStarted,
    TResult Function(_PlayerTurnFinished value)? playerTurnFinished,
    TResult Function(_PlayerCardSelectable value)? playerCardSelectable,
    TResult Function(_CardTemporarilySelected value)?
        playerCardTemporarilySelected,
    TResult Function(_PlayerCardSelected value)? playerCardSelected,
    TResult Function(_PlayerCounterCardSelectable value)?
        playerCounterCardSelectable,
    TResult Function(_PlayerCounterCardSelected value)?
        playerCounterCardSelected,
    TResult Function(_OpponentCounterCardSelectable value)?
        opponentCounterCardSelectable,
    TResult Function(_OpponentCounterCardSelected value)?
        opponentCounterCardSelected,
    TResult Function(_OpponentCardSelectable value)? opponentCardSelectable,
    TResult Function(_OpponentCardSelected value)? opponentCardSelected,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (opponentCardSelectable != null) {
      return opponentCardSelectable(this);
    }
    return orElse();
  }
}

abstract class _OpponentCardSelectable implements BattlePhase {
  const factory _OpponentCardSelectable() = _$_OpponentCardSelectable;
}

/// @nodoc
abstract class _$$_OpponentCardSelectedCopyWith<$Res> {
  factory _$$_OpponentCardSelectedCopyWith(_$_OpponentCardSelected value,
          $Res Function(_$_OpponentCardSelected) then) =
      __$$_OpponentCardSelectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OpponentCardSelectedCopyWithImpl<$Res>
    extends _$BattlePhaseCopyWithImpl<$Res, _$_OpponentCardSelected>
    implements _$$_OpponentCardSelectedCopyWith<$Res> {
  __$$_OpponentCardSelectedCopyWithImpl(_$_OpponentCardSelected _value,
      $Res Function(_$_OpponentCardSelected) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_OpponentCardSelected implements _OpponentCardSelected {
  const _$_OpponentCardSelected();

  @override
  String toString() {
    return 'BattlePhase.opponentCardSelected()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_OpponentCardSelected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() opponentTurnStarted,
    required TResult Function() opponentTurnFinished,
    required TResult Function() playerTurnStarted,
    required TResult Function() playerTurnFinished,
    required TResult Function() playerCardSelectable,
    required TResult Function() playerCardTemporarilySelected,
    required TResult Function() playerCardSelected,
    required TResult Function() playerCounterCardSelectable,
    required TResult Function() playerCounterCardSelected,
    required TResult Function() opponentCounterCardSelectable,
    required TResult Function() opponentCounterCardSelected,
    required TResult Function() opponentCardSelectable,
    required TResult Function() opponentCardSelected,
    required TResult Function(Exception e) error,
  }) {
    return opponentCardSelected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? opponentTurnStarted,
    TResult? Function()? opponentTurnFinished,
    TResult? Function()? playerTurnStarted,
    TResult? Function()? playerTurnFinished,
    TResult? Function()? playerCardSelectable,
    TResult? Function()? playerCardTemporarilySelected,
    TResult? Function()? playerCardSelected,
    TResult? Function()? playerCounterCardSelectable,
    TResult? Function()? playerCounterCardSelected,
    TResult? Function()? opponentCounterCardSelectable,
    TResult? Function()? opponentCounterCardSelected,
    TResult? Function()? opponentCardSelectable,
    TResult? Function()? opponentCardSelected,
    TResult? Function(Exception e)? error,
  }) {
    return opponentCardSelected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? opponentTurnStarted,
    TResult Function()? opponentTurnFinished,
    TResult Function()? playerTurnStarted,
    TResult Function()? playerTurnFinished,
    TResult Function()? playerCardSelectable,
    TResult Function()? playerCardTemporarilySelected,
    TResult Function()? playerCardSelected,
    TResult Function()? playerCounterCardSelectable,
    TResult Function()? playerCounterCardSelected,
    TResult Function()? opponentCounterCardSelectable,
    TResult Function()? opponentCounterCardSelected,
    TResult Function()? opponentCardSelectable,
    TResult Function()? opponentCardSelected,
    TResult Function(Exception e)? error,
    required TResult orElse(),
  }) {
    if (opponentCardSelected != null) {
      return opponentCardSelected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OpponentTurnStarted value) opponentTurnStarted,
    required TResult Function(_OpponentTurnFinished value) opponentTurnFinished,
    required TResult Function(_PlayerTurnStarted value) playerTurnStarted,
    required TResult Function(_PlayerTurnFinished value) playerTurnFinished,
    required TResult Function(_PlayerCardSelectable value) playerCardSelectable,
    required TResult Function(_CardTemporarilySelected value)
        playerCardTemporarilySelected,
    required TResult Function(_PlayerCardSelected value) playerCardSelected,
    required TResult Function(_PlayerCounterCardSelectable value)
        playerCounterCardSelectable,
    required TResult Function(_PlayerCounterCardSelected value)
        playerCounterCardSelected,
    required TResult Function(_OpponentCounterCardSelectable value)
        opponentCounterCardSelectable,
    required TResult Function(_OpponentCounterCardSelected value)
        opponentCounterCardSelected,
    required TResult Function(_OpponentCardSelectable value)
        opponentCardSelectable,
    required TResult Function(_OpponentCardSelected value) opponentCardSelected,
    required TResult Function(_Error value) error,
  }) {
    return opponentCardSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OpponentTurnStarted value)? opponentTurnStarted,
    TResult? Function(_OpponentTurnFinished value)? opponentTurnFinished,
    TResult? Function(_PlayerTurnStarted value)? playerTurnStarted,
    TResult? Function(_PlayerTurnFinished value)? playerTurnFinished,
    TResult? Function(_PlayerCardSelectable value)? playerCardSelectable,
    TResult? Function(_CardTemporarilySelected value)?
        playerCardTemporarilySelected,
    TResult? Function(_PlayerCardSelected value)? playerCardSelected,
    TResult? Function(_PlayerCounterCardSelectable value)?
        playerCounterCardSelectable,
    TResult? Function(_PlayerCounterCardSelected value)?
        playerCounterCardSelected,
    TResult? Function(_OpponentCounterCardSelectable value)?
        opponentCounterCardSelectable,
    TResult? Function(_OpponentCounterCardSelected value)?
        opponentCounterCardSelected,
    TResult? Function(_OpponentCardSelectable value)? opponentCardSelectable,
    TResult? Function(_OpponentCardSelected value)? opponentCardSelected,
    TResult? Function(_Error value)? error,
  }) {
    return opponentCardSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OpponentTurnStarted value)? opponentTurnStarted,
    TResult Function(_OpponentTurnFinished value)? opponentTurnFinished,
    TResult Function(_PlayerTurnStarted value)? playerTurnStarted,
    TResult Function(_PlayerTurnFinished value)? playerTurnFinished,
    TResult Function(_PlayerCardSelectable value)? playerCardSelectable,
    TResult Function(_CardTemporarilySelected value)?
        playerCardTemporarilySelected,
    TResult Function(_PlayerCardSelected value)? playerCardSelected,
    TResult Function(_PlayerCounterCardSelectable value)?
        playerCounterCardSelectable,
    TResult Function(_PlayerCounterCardSelected value)?
        playerCounterCardSelected,
    TResult Function(_OpponentCounterCardSelectable value)?
        opponentCounterCardSelectable,
    TResult Function(_OpponentCounterCardSelected value)?
        opponentCounterCardSelected,
    TResult Function(_OpponentCardSelectable value)? opponentCardSelectable,
    TResult Function(_OpponentCardSelected value)? opponentCardSelected,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (opponentCardSelected != null) {
      return opponentCardSelected(this);
    }
    return orElse();
  }
}

abstract class _OpponentCardSelected implements BattlePhase {
  const factory _OpponentCardSelected() = _$_OpponentCardSelected;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception e});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$BattlePhaseCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? e = null,
  }) {
    return _then(_$_Error(
      null == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.e);

  @override
  final Exception e;

  @override
  String toString() {
    return 'BattlePhase.error(e: $e)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.e, e) || other.e == e));
  }

  @override
  int get hashCode => Object.hash(runtimeType, e);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() opponentTurnStarted,
    required TResult Function() opponentTurnFinished,
    required TResult Function() playerTurnStarted,
    required TResult Function() playerTurnFinished,
    required TResult Function() playerCardSelectable,
    required TResult Function() playerCardTemporarilySelected,
    required TResult Function() playerCardSelected,
    required TResult Function() playerCounterCardSelectable,
    required TResult Function() playerCounterCardSelected,
    required TResult Function() opponentCounterCardSelectable,
    required TResult Function() opponentCounterCardSelected,
    required TResult Function() opponentCardSelectable,
    required TResult Function() opponentCardSelected,
    required TResult Function(Exception e) error,
  }) {
    return error(e);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? opponentTurnStarted,
    TResult? Function()? opponentTurnFinished,
    TResult? Function()? playerTurnStarted,
    TResult? Function()? playerTurnFinished,
    TResult? Function()? playerCardSelectable,
    TResult? Function()? playerCardTemporarilySelected,
    TResult? Function()? playerCardSelected,
    TResult? Function()? playerCounterCardSelectable,
    TResult? Function()? playerCounterCardSelected,
    TResult? Function()? opponentCounterCardSelectable,
    TResult? Function()? opponentCounterCardSelected,
    TResult? Function()? opponentCardSelectable,
    TResult? Function()? opponentCardSelected,
    TResult? Function(Exception e)? error,
  }) {
    return error?.call(e);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? opponentTurnStarted,
    TResult Function()? opponentTurnFinished,
    TResult Function()? playerTurnStarted,
    TResult Function()? playerTurnFinished,
    TResult Function()? playerCardSelectable,
    TResult Function()? playerCardTemporarilySelected,
    TResult Function()? playerCardSelected,
    TResult Function()? playerCounterCardSelectable,
    TResult Function()? playerCounterCardSelected,
    TResult Function()? opponentCounterCardSelectable,
    TResult Function()? opponentCounterCardSelected,
    TResult Function()? opponentCardSelectable,
    TResult Function()? opponentCardSelected,
    TResult Function(Exception e)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(e);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_OpponentTurnStarted value) opponentTurnStarted,
    required TResult Function(_OpponentTurnFinished value) opponentTurnFinished,
    required TResult Function(_PlayerTurnStarted value) playerTurnStarted,
    required TResult Function(_PlayerTurnFinished value) playerTurnFinished,
    required TResult Function(_PlayerCardSelectable value) playerCardSelectable,
    required TResult Function(_CardTemporarilySelected value)
        playerCardTemporarilySelected,
    required TResult Function(_PlayerCardSelected value) playerCardSelected,
    required TResult Function(_PlayerCounterCardSelectable value)
        playerCounterCardSelectable,
    required TResult Function(_PlayerCounterCardSelected value)
        playerCounterCardSelected,
    required TResult Function(_OpponentCounterCardSelectable value)
        opponentCounterCardSelectable,
    required TResult Function(_OpponentCounterCardSelected value)
        opponentCounterCardSelected,
    required TResult Function(_OpponentCardSelectable value)
        opponentCardSelectable,
    required TResult Function(_OpponentCardSelected value) opponentCardSelected,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_OpponentTurnStarted value)? opponentTurnStarted,
    TResult? Function(_OpponentTurnFinished value)? opponentTurnFinished,
    TResult? Function(_PlayerTurnStarted value)? playerTurnStarted,
    TResult? Function(_PlayerTurnFinished value)? playerTurnFinished,
    TResult? Function(_PlayerCardSelectable value)? playerCardSelectable,
    TResult? Function(_CardTemporarilySelected value)?
        playerCardTemporarilySelected,
    TResult? Function(_PlayerCardSelected value)? playerCardSelected,
    TResult? Function(_PlayerCounterCardSelectable value)?
        playerCounterCardSelectable,
    TResult? Function(_PlayerCounterCardSelected value)?
        playerCounterCardSelected,
    TResult? Function(_OpponentCounterCardSelectable value)?
        opponentCounterCardSelectable,
    TResult? Function(_OpponentCounterCardSelected value)?
        opponentCounterCardSelected,
    TResult? Function(_OpponentCardSelectable value)? opponentCardSelectable,
    TResult? Function(_OpponentCardSelected value)? opponentCardSelected,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_OpponentTurnStarted value)? opponentTurnStarted,
    TResult Function(_OpponentTurnFinished value)? opponentTurnFinished,
    TResult Function(_PlayerTurnStarted value)? playerTurnStarted,
    TResult Function(_PlayerTurnFinished value)? playerTurnFinished,
    TResult Function(_PlayerCardSelectable value)? playerCardSelectable,
    TResult Function(_CardTemporarilySelected value)?
        playerCardTemporarilySelected,
    TResult Function(_PlayerCardSelected value)? playerCardSelected,
    TResult Function(_PlayerCounterCardSelectable value)?
        playerCounterCardSelectable,
    TResult Function(_PlayerCounterCardSelected value)?
        playerCounterCardSelected,
    TResult Function(_OpponentCounterCardSelectable value)?
        opponentCounterCardSelectable,
    TResult Function(_OpponentCounterCardSelected value)?
        opponentCounterCardSelected,
    TResult Function(_OpponentCardSelectable value)? opponentCardSelectable,
    TResult Function(_OpponentCardSelected value)? opponentCardSelected,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements BattlePhase {
  const factory _Error(final Exception e) = _$_Error;

  Exception get e;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
