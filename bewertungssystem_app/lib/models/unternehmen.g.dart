// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unternehmen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Unternehmen _$UnternehmenFromJson(Map<String, dynamic> json) => _Unternehmen(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  branche: json['branche'] as String?,
  mitarbeiterRange: json['mitarbeiter_range'] as String?,
  website: json['website'] as String?,
  erstelltAm: json['erstellt_am'] == null
      ? null
      : DateTime.parse(json['erstellt_am'] as String),
);

Map<String, dynamic> _$UnternehmenToJson(_Unternehmen instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'branche': instance.branche,
      'mitarbeiter_range': instance.mitarbeiterRange,
      'website': instance.website,
      'erstellt_am': instance.erstelltAm?.toIso8601String(),
    };
