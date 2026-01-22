// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kriterium.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KriteriumImpl _$$KriteriumImplFromJson(Map<String, dynamic> json) =>
    _$KriteriumImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      beschreibung: json['beschreibung'] as String?,
      wertigkeit: json['wertigkeit'] as String,
      faktor: (json['faktor'] as num).toDouble(),
      maxPunkte: (json['max_punkte'] as num?)?.toInt() ?? 20,
      aktiv: json['aktiv'] as bool? ?? true,
    );

Map<String, dynamic> _$$KriteriumImplToJson(_$KriteriumImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'beschreibung': instance.beschreibung,
      'wertigkeit': instance.wertigkeit,
      'faktor': instance.faktor,
      'max_punkte': instance.maxPunkte,
      'aktiv': instance.aktiv,
    };
