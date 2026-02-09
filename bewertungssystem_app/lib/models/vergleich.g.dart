// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vergleich.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VergleichEintrag _$VergleichEintragFromJson(Map<String, dynamic> json) =>
    _VergleichEintrag(
      unternehmenId: (json['unternehmenId'] as num).toInt(),
      name: json['name'] as String,
      branche: json['branche'] as String?,
      gesamtScore: (json['gesamt_score'] as num).toDouble(),
      bestanden: json['bestanden'] as bool,
      kategorieScores: (json['kategorie_scores'] as Map<String, dynamic>).map(
        (k, e) =>
            MapEntry(k, KategorieScore.fromJson(e as Map<String, dynamic>)),
      ),
      analyse: Analyse.fromJson(json['analyse'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VergleichEintragToJson(_VergleichEintrag instance) =>
    <String, dynamic>{
      'unternehmenId': instance.unternehmenId,
      'name': instance.name,
      'branche': instance.branche,
      'gesamt_score': instance.gesamtScore,
      'bestanden': instance.bestanden,
      'kategorie_scores': instance.kategorieScores,
      'analyse': instance.analyse,
    };

_KategorieScore _$KategorieScoreFromJson(Map<String, dynamic> json) =>
    _KategorieScore(
      score: (json['score'] as num).toDouble(),
      gewichtung: (json['gewichtung'] as num).toDouble(),
      anzahlKriterien: (json['anzahl_kriterien'] as num).toInt(),
    );

Map<String, dynamic> _$KategorieScoreToJson(_KategorieScore instance) =>
    <String, dynamic>{
      'score': instance.score,
      'gewichtung': instance.gewichtung,
      'anzahl_kriterien': instance.anzahlKriterien,
    };

_Analyse _$AnalyseFromJson(Map<String, dynamic> json) => _Analyse(
  staerken: (json['staerken'] as List<dynamic>)
      .map((e) => StaerkeSchwaeche.fromJson(e as Map<String, dynamic>))
      .toList(),
  schwaechen: (json['schwaechen'] as List<dynamic>)
      .map((e) => StaerkeSchwaeche.fromJson(e as Map<String, dynamic>))
      .toList(),
  kritischeKo: (json['kritische_ko'] as List<dynamic>)
      .map((e) => KOKriterium.fromJson(e as Map<String, dynamic>))
      .toList(),
  anzahlStaerken: (json['anzahl_staerken'] as num).toInt(),
  anzahlSchwaechen: (json['anzahl_schwaechen'] as num).toInt(),
);

Map<String, dynamic> _$AnalyseToJson(_Analyse instance) => <String, dynamic>{
  'staerken': instance.staerken,
  'schwaechen': instance.schwaechen,
  'kritische_ko': instance.kritischeKo,
  'anzahl_staerken': instance.anzahlStaerken,
  'anzahl_schwaechen': instance.anzahlSchwaechen,
};

_StaerkeSchwaeche _$StaerkeSchwaecheFromJson(Map<String, dynamic> json) =>
    _StaerkeSchwaeche(
      kriterium: json['kriterium'] as String,
      punkte: (json['punkte'] as num).toDouble(),
      wertigkeit: json['wertigkeit'] as String,
    );

Map<String, dynamic> _$StaerkeSchwaecheToJson(_StaerkeSchwaeche instance) =>
    <String, dynamic>{
      'kriterium': instance.kriterium,
      'punkte': instance.punkte,
      'wertigkeit': instance.wertigkeit,
    };

_KOKriterium _$KOKriteriumFromJson(Map<String, dynamic> json) => _KOKriterium(
  kriterium: json['kriterium'] as String,
  punkte: (json['punkte'] as num).toDouble(),
  grund: json['grund'] as String,
);

Map<String, dynamic> _$KOKriteriumToJson(_KOKriterium instance) =>
    <String, dynamic>{
      'kriterium': instance.kriterium,
      'punkte': instance.punkte,
      'grund': instance.grund,
    };

_VergleichResponse _$VergleichResponseFromJson(Map<String, dynamic> json) =>
    _VergleichResponse(
      vergleich: (json['vergleich'] as List<dynamic>)
          .map((e) => VergleichEintrag.fromJson(e as Map<String, dynamic>))
          .toList(),
      kriterienVergleich: (json['kriterienVergleich'] as List<dynamic>?)
          ?.map((e) => KriterienVergleich.fromJson(e as Map<String, dynamic>))
          .toList(),
      besterScore: (json['bester_score'] as num).toDouble(),
      anzahlUnternehmen: (json['anzahl_unternehmen'] as num).toInt(),
    );

Map<String, dynamic> _$VergleichResponseToJson(_VergleichResponse instance) =>
    <String, dynamic>{
      'vergleich': instance.vergleich,
      'kriterienVergleich': instance.kriterienVergleich,
      'bester_score': instance.besterScore,
      'anzahl_unternehmen': instance.anzahlUnternehmen,
    };

_KriterienVergleich _$KriterienVergleichFromJson(Map<String, dynamic> json) =>
    _KriterienVergleich(
      kriterium: json['kriterium'] as String,
      unternehmenScores: (json['unternehmen_scores'] as Map<String, dynamic>)
          .map((k, e) => MapEntry(k, (e as num).toDouble())),
    );

Map<String, dynamic> _$KriterienVergleichToJson(_KriterienVergleich instance) =>
    <String, dynamic>{
      'kriterium': instance.kriterium,
      'unternehmen_scores': instance.unternehmenScores,
    };
