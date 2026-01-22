// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unternehmen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UnternehmenImpl _$$UnternehmenImplFromJson(Map<String, dynamic> json) =>
    _$UnternehmenImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      branche: json['branche'] as String? ?? 'HR-Software',
      mitarbeiterRange: json['mitarbeiter_range'] as String?,
      website: json['website'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$UnternehmenImplToJson(_$UnternehmenImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'branche': instance.branche,
      'mitarbeiter_range': instance.mitarbeiterRange,
      'website': instance.website,
      'created_at': instance.createdAt.toIso8601String(),
    };
