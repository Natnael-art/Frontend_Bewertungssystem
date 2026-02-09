// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ranking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RankingEntry _$RankingEntryFromJson(Map<String, dynamic> json) =>
    _RankingEntry(
      name: json['name'] as String,
      gesamtScore: (json['gesamt_score'] as num).toDouble(),
      bestanden: json['bestanden'] as bool,
      kategorieScores: (json['kategorie_scores'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, KategorieScore.fromJson(e as Map<String, dynamic>)),
      ),
      analysis: Analysis.fromJson(json['analysis'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RankingEntryToJson(_RankingEntry instance) =>
    <String, dynamic>{
      'name': instance.name,
      'gesamt_score': instance.gesamtScore,
      'bestanden': instance.bestanden,
      'kategorie_scores': instance.kategorieScores,
      'analysis': instance.analysis,
    };

_KategorieScore _$KategorieScoreFromJson(Map<String, dynamic> json) =>
    _KategorieScore(score: (json['score'] as num).toDouble());

Map<String, dynamic> _$KategorieScoreToJson(_KategorieScore instance) =>
    <String, dynamic>{'score': instance.score};

_Analysis _$AnalysisFromJson(Map<String, dynamic> json) => _Analysis(
  staerken: (json['staerken'] as List<dynamic>)
      .map((e) => AnalysisItem.fromJson(e as Map<String, dynamic>))
      .toList(),
  schwaechen: (json['schwaechen'] as List<dynamic>)
      .map((e) => AnalysisItem.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$AnalysisToJson(_Analysis instance) => <String, dynamic>{
  'staerken': instance.staerken,
  'schwaechen': instance.schwaechen,
};

_AnalysisItem _$AnalysisItemFromJson(Map<String, dynamic> json) =>
    _AnalysisItem(
      kriterium: json['kriterium'] as String,
      punkte: (json['punkte'] as num).toDouble(),
    );

Map<String, dynamic> _$AnalysisItemToJson(_AnalysisItem instance) =>
    <String, dynamic>{
      'kriterium': instance.kriterium,
      'punkte': instance.punkte,
    };
