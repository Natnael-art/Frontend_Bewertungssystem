// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bewertung.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BewertungCreateImpl _$$BewertungCreateImplFromJson(
  Map<String, dynamic> json,
) => _$BewertungCreateImpl(
  unternehmenId: (json['unternehmen_id'] as num).toInt(),
  kriteriumId: (json['kriterium_id'] as num).toInt(),
  punkte: (json['punkte'] as num).toDouble(),
  kommentar: json['kommentar'] as String?,
  benutzer: json['benutzer'] as String? ?? "System",
);

Map<String, dynamic> _$$BewertungCreateImplToJson(
  _$BewertungCreateImpl instance,
) => <String, dynamic>{
  'unternehmen_id': instance.unternehmenId,
  'kriterium_id': instance.kriteriumId,
  'punkte': instance.punkte,
  'kommentar': instance.kommentar,
  'benutzer': instance.benutzer,
};

_$BewertungImpl _$$BewertungImplFromJson(Map<String, dynamic> json) =>
    _$BewertungImpl(
      id: (json['id'] as num).toInt(),
      unternehmenId: (json['unternehmen_id'] as num).toInt(),
      kriteriumId: (json['kriterium_id'] as num).toInt(),
      punkte: (json['punkte'] as num).toDouble(),
      kommentar: json['kommentar'] as String?,
      benutzer: json['benutzer'] as String? ?? "System",
      bewertetAm: DateTime.parse(json['bewertet_am'] as String),
    );

Map<String, dynamic> _$$BewertungImplToJson(_$BewertungImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'unternehmen_id': instance.unternehmenId,
      'kriterium_id': instance.kriteriumId,
      'punkte': instance.punkte,
      'kommentar': instance.kommentar,
      'benutzer': instance.benutzer,
      'bewertet_am': instance.bewertetAm.toIso8601String(),
    };

_$BewertungDetailImpl _$$BewertungDetailImplFromJson(
  Map<String, dynamic> json,
) => _$BewertungDetailImpl(
  id: (json['id'] as num).toInt(),
  unternehmenId: (json['unternehmen_id'] as num).toInt(),
  kriteriumId: (json['kriterium_id'] as num).toInt(),
  punkte: (json['punkte'] as num).toDouble(),
  kommentar: json['kommentar'] as String?,
  benutzer: json['benutzer'] as String? ?? "System",
  bewertetAm: DateTime.parse(json['bewertet_am'] as String),
  kriteriumName: json['kriterium_name'] as String,
  kriteriumWertigkeit: json['kriterium_wertigkeit'] as String,
  kriteriumFaktor: (json['kriterium_faktor'] as num).toDouble(),
);

Map<String, dynamic> _$$BewertungDetailImplToJson(
  _$BewertungDetailImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'unternehmen_id': instance.unternehmenId,
  'kriterium_id': instance.kriteriumId,
  'punkte': instance.punkte,
  'kommentar': instance.kommentar,
  'benutzer': instance.benutzer,
  'bewertet_am': instance.bewertetAm.toIso8601String(),
  'kriterium_name': instance.kriteriumName,
  'kriterium_wertigkeit': instance.kriteriumWertigkeit,
  'kriterium_faktor': instance.kriteriumFaktor,
};
