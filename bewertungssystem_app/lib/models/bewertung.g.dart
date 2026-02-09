// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bewertung.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BewertungCreate _$BewertungCreateFromJson(Map<String, dynamic> json) =>
    _BewertungCreate(
      unternehmenId: (json['unternehmenId'] as num).toInt(),
      kriteriumId: (json['kriteriumId'] as num).toInt(),
      punkte: (json['punkte'] as num).toDouble(),
      kommentar: json['kommentar'] as String?,
      benutzer: json['benutzer'] as String?,
    );

Map<String, dynamic> _$BewertungCreateToJson(_BewertungCreate instance) =>
    <String, dynamic>{
      'unternehmenId': instance.unternehmenId,
      'kriteriumId': instance.kriteriumId,
      'punkte': instance.punkte,
      'kommentar': instance.kommentar,
      'benutzer': instance.benutzer,
    };

_Bewertung _$BewertungFromJson(Map<String, dynamic> json) => _Bewertung(
  id: (json['id'] as num).toInt(),
  unternehmenId: (json['unternehmenId'] as num).toInt(),
  kriteriumId: (json['kriteriumId'] as num).toInt(),
  punkte: (json['punkte'] as num).toDouble(),
  kommentar: json['kommentar'] as String?,
  benutzer: json['benutzer'] as String?,
  bewertetAm: DateTime.parse(json['bewertet_am'] as String),
);

Map<String, dynamic> _$BewertungToJson(_Bewertung instance) =>
    <String, dynamic>{
      'id': instance.id,
      'unternehmenId': instance.unternehmenId,
      'kriteriumId': instance.kriteriumId,
      'punkte': instance.punkte,
      'kommentar': instance.kommentar,
      'benutzer': instance.benutzer,
      'bewertet_am': instance.bewertetAm.toIso8601String(),
    };

_BewertungDetail _$BewertungDetailFromJson(Map<String, dynamic> json) =>
    _BewertungDetail(
      id: (json['id'] as num).toInt(),
      unternehmenId: (json['unternehmenId'] as num).toInt(),
      kriteriumId: (json['kriteriumId'] as num).toInt(),
      punkte: (json['punkte'] as num).toDouble(),
      kommentar: json['kommentar'] as String?,
      benutzer: json['benutzer'] as String?,
      bewertetAm: DateTime.parse(json['bewertet_am'] as String),
      kriteriumName: json['kriterium_name'] as String,
      kriteriumKategorie: json['kriterium_kategorie'] as String,
      kriteriumWertigkeit: json['kriterium_wertigkeit'] as String,
      kriteriumFaktor: (json['kriterium_faktor'] as num).toDouble(),
    );

Map<String, dynamic> _$BewertungDetailToJson(_BewertungDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'unternehmenId': instance.unternehmenId,
      'kriteriumId': instance.kriteriumId,
      'punkte': instance.punkte,
      'kommentar': instance.kommentar,
      'benutzer': instance.benutzer,
      'bewertet_am': instance.bewertetAm.toIso8601String(),
      'kriterium_name': instance.kriteriumName,
      'kriterium_kategorie': instance.kriteriumKategorie,
      'kriterium_wertigkeit': instance.kriteriumWertigkeit,
      'kriterium_faktor': instance.kriteriumFaktor,
    };
