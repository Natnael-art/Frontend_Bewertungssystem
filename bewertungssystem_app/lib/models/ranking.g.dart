// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ranking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RankingEntryImpl _$$RankingEntryImplFromJson(Map<String, dynamic> json) =>
    _$RankingEntryImpl(
      name: json['name'] as String,
      gesamtScore: (json['gesamtScore'] as num).toDouble(),
      bestanden: json['bestanden'] as bool,
      kategorieScores: (json['kategorieScores'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, KategorieScore.fromJson(e as Map<String, dynamic>)),
      ),
      analysis: Analysis.fromJson(json['analysis'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RankingEntryImplToJson(_$RankingEntryImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'gesamtScore': instance.gesamtScore,
      'bestanden': instance.bestanden,
      'kategorieScores': instance.kategorieScores,
      'analysis': instance.analysis,
    };

_$KategorieScoreImpl _$$KategorieScoreImplFromJson(Map<String, dynamic> json) =>
    _$KategorieScoreImpl(score: (json['score'] as num).toDouble());

Map<String, dynamic> _$$KategorieScoreImplToJson(
  _$KategorieScoreImpl instance,
) => <String, dynamic>{'score': instance.score};

_$AnalysisImpl _$$AnalysisImplFromJson(Map<String, dynamic> json) =>
    _$AnalysisImpl(
      staerken: (json['staerken'] as List<dynamic>)
          .map((e) => AnalysisItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      schwachen: (json['schwachen'] as List<dynamic>)
          .map((e) => AnalysisItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AnalysisImplToJson(_$AnalysisImpl instance) =>
    <String, dynamic>{
      'staerken': instance.staerken,
      'schwachen': instance.schwachen,
    };

_$AnalysisItemImpl _$$AnalysisItemImplFromJson(Map<String, dynamic> json) =>
    _$AnalysisItemImpl(
      kriterium: json['kriterium'] as String,
      punkte: (json['punkte'] as num).toDouble(),
    );

Map<String, dynamic> _$$AnalysisItemImplToJson(_$AnalysisItemImpl instance) =>
    <String, dynamic>{
      'kriterium': instance.kriterium,
      'punkte': instance.punkte,
    };
