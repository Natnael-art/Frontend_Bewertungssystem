// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kriterium.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Kriterium _$KriteriumFromJson(Map<String, dynamic> json) => _Kriterium(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  kategorie: json['kategorie'] as String,
  beschreibung: json['beschreibung'] as String?,
  wertigkeit: json['wertigkeit'] as String,
  faktor: (json['faktor'] as num).toDouble(),
  maxPunkte: (json['max_punkte'] as num?)?.toInt() ?? 10,
  aktiv: json['aktiv'] as bool? ?? true,
);

Map<String, dynamic> _$KriteriumToJson(_Kriterium instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'kategorie': instance.kategorie,
      'beschreibung': instance.beschreibung,
      'wertigkeit': instance.wertigkeit,
      'faktor': instance.faktor,
      'max_punkte': instance.maxPunkte,
      'aktiv': instance.aktiv,
    };
