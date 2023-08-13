// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Room _$$_RoomFromJson(Map<String, dynamic> json) => _$_Room(
      id: json['id'] as String,
      name: json['name'] as String,
      isFull: json['isFull'] as bool? ?? false,
      player1: json['player1'] as String?,
      player2: json['player2'] as String?,
    );

Map<String, dynamic> _$$_RoomToJson(_$_Room instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'isFull': instance.isFull,
      'player1': instance.player1,
      'player2': instance.player2,
    };
