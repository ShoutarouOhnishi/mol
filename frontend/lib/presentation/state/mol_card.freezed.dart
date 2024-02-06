// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mol_card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MolCard {
  String get cardName => throw _privateConstructorUsedError;
  String get cardImage => throw _privateConstructorUsedError;
  String get cardType => throw _privateConstructorUsedError;
  String get cardEffect => throw _privateConstructorUsedError;
  String get cardDescription => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MolCardCopyWith<MolCard> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MolCardCopyWith<$Res> {
  factory $MolCardCopyWith(MolCard value, $Res Function(MolCard) then) =
      _$MolCardCopyWithImpl<$Res, MolCard>;
  @useResult
  $Res call(
      {String cardName,
      String cardImage,
      String cardType,
      String cardEffect,
      String cardDescription});
}

/// @nodoc
class _$MolCardCopyWithImpl<$Res, $Val extends MolCard>
    implements $MolCardCopyWith<$Res> {
  _$MolCardCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardName = null,
    Object? cardImage = null,
    Object? cardType = null,
    Object? cardEffect = null,
    Object? cardDescription = null,
  }) {
    return _then(_value.copyWith(
      cardName: null == cardName
          ? _value.cardName
          : cardName // ignore: cast_nullable_to_non_nullable
              as String,
      cardImage: null == cardImage
          ? _value.cardImage
          : cardImage // ignore: cast_nullable_to_non_nullable
              as String,
      cardType: null == cardType
          ? _value.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as String,
      cardEffect: null == cardEffect
          ? _value.cardEffect
          : cardEffect // ignore: cast_nullable_to_non_nullable
              as String,
      cardDescription: null == cardDescription
          ? _value.cardDescription
          : cardDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MolCardCopyWith<$Res> implements $MolCardCopyWith<$Res> {
  factory _$$_MolCardCopyWith(
          _$_MolCard value, $Res Function(_$_MolCard) then) =
      __$$_MolCardCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String cardName,
      String cardImage,
      String cardType,
      String cardEffect,
      String cardDescription});
}

/// @nodoc
class __$$_MolCardCopyWithImpl<$Res>
    extends _$MolCardCopyWithImpl<$Res, _$_MolCard>
    implements _$$_MolCardCopyWith<$Res> {
  __$$_MolCardCopyWithImpl(_$_MolCard _value, $Res Function(_$_MolCard) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cardName = null,
    Object? cardImage = null,
    Object? cardType = null,
    Object? cardEffect = null,
    Object? cardDescription = null,
  }) {
    return _then(_$_MolCard(
      cardName: null == cardName
          ? _value.cardName
          : cardName // ignore: cast_nullable_to_non_nullable
              as String,
      cardImage: null == cardImage
          ? _value.cardImage
          : cardImage // ignore: cast_nullable_to_non_nullable
              as String,
      cardType: null == cardType
          ? _value.cardType
          : cardType // ignore: cast_nullable_to_non_nullable
              as String,
      cardEffect: null == cardEffect
          ? _value.cardEffect
          : cardEffect // ignore: cast_nullable_to_non_nullable
              as String,
      cardDescription: null == cardDescription
          ? _value.cardDescription
          : cardDescription // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MolCard implements _MolCard {
  const _$_MolCard(
      {required this.cardName,
      required this.cardImage,
      required this.cardType,
      required this.cardEffect,
      required this.cardDescription});

  @override
  final String cardName;
  @override
  final String cardImage;
  @override
  final String cardType;
  @override
  final String cardEffect;
  @override
  final String cardDescription;

  @override
  String toString() {
    return 'MolCard(cardName: $cardName, cardImage: $cardImage, cardType: $cardType, cardEffect: $cardEffect, cardDescription: $cardDescription)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MolCard &&
            (identical(other.cardName, cardName) ||
                other.cardName == cardName) &&
            (identical(other.cardImage, cardImage) ||
                other.cardImage == cardImage) &&
            (identical(other.cardType, cardType) ||
                other.cardType == cardType) &&
            (identical(other.cardEffect, cardEffect) ||
                other.cardEffect == cardEffect) &&
            (identical(other.cardDescription, cardDescription) ||
                other.cardDescription == cardDescription));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, cardName, cardImage, cardType, cardEffect, cardDescription);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MolCardCopyWith<_$_MolCard> get copyWith =>
      __$$_MolCardCopyWithImpl<_$_MolCard>(this, _$identity);
}

abstract class _MolCard implements MolCard {
  const factory _MolCard(
      {required final String cardName,
      required final String cardImage,
      required final String cardType,
      required final String cardEffect,
      required final String cardDescription}) = _$_MolCard;

  @override
  String get cardName;
  @override
  String get cardImage;
  @override
  String get cardType;
  @override
  String get cardEffect;
  @override
  String get cardDescription;
  @override
  @JsonKey(ignore: true)
  _$$_MolCardCopyWith<_$_MolCard> get copyWith =>
      throw _privateConstructorUsedError;
}
