import 'package:freezed_annotation/freezed_annotation.dart';

part 'mol_card.freezed.dart';

@freezed
class MolCard with _$MolCard {
  const factory MolCard({
    required String cardName,
    required String cardImage,
    required String cardType,
    required String cardEffect,
    required String cardDescription,
  }) = _MolCard;
}
