// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vergleich.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VergleichEntryImpl _$$VergleichEntryImplFromJson(Map<String, dynamic> json) =>
    _$VergleichEntryImpl(
      name: json['name'] as String,
      gesamtScore: (json['gesamtScore'] as num).toDouble(),
      bestanden: json['bestanden'] as bool,
      kategorieScores: (json['kategorieScores'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, KategorieScore.fromJson(e as Map<String, dynamic>)),
      ),
    );

Map<String, dynamic> _$$VergleichEntryImplToJson(
  _$VergleichEntryImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'gesamtScore': instance.gesamtScore,
  'bestanden': instance.bestanden,
  'kategorieScores': instance.kategorieScores,
};
