// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vergleich.freezed.dart';
part 'vergleich.g.dart';

@freezed
abstract class VergleichEintrag with _$VergleichEintrag {
  const factory VergleichEintrag({
    required int unternehmenId,
    required String name,
    String? branche,
    @JsonKey(name: 'gesamt_score') required double gesamtScore,
    required bool bestanden,
    @JsonKey(name: 'kategorie_scores')
    required Map<String, KategorieScore> kategorieScores,
    required Analyse analyse,
  }) = _VergleichEintrag;

  factory VergleichEintrag.fromJson(Map<String, dynamic> json) =>
      _$VergleichEintragFromJson(json);
}

@freezed
abstract class KategorieScore with _$KategorieScore {
  const factory KategorieScore({
    required double score,
    required double gewichtung,
    @JsonKey(name: 'anzahl_kriterien') required int anzahlKriterien,
  }) = _KategorieScore;

  factory KategorieScore.fromJson(Map<String, dynamic> json) =>
      _$KategorieScoreFromJson(json);
}

@freezed
abstract class Analyse with _$Analyse {
  const factory Analyse({
    required List<StaerkeSchwaeche> staerken,
    required List<StaerkeSchwaeche> schwaechen,
    @JsonKey(name: 'kritische_ko') required List<KOKriterium> kritischeKo,
    @JsonKey(name: 'anzahl_staerken') required int anzahlStaerken,
    @JsonKey(name: 'anzahl_schwaechen') required int anzahlSchwaechen,
  }) = _Analyse;

  factory Analyse.fromJson(Map<String, dynamic> json) =>
      _$AnalyseFromJson(json);
}

@freezed
abstract class StaerkeSchwaeche with _$StaerkeSchwaeche {
  const factory StaerkeSchwaeche({
    required String kriterium,
    required double punkte,
    required String wertigkeit,
  }) = _StaerkeSchwaeche;

  factory StaerkeSchwaeche.fromJson(Map<String, dynamic> json) =>
      _$StaerkeSchwaecheFromJson(json);
}

@freezed
abstract class KOKriterium with _$KOKriterium {
  const factory KOKriterium({
    required String kriterium,
    required double punkte,
    required String grund,
  }) = _KOKriterium;

  factory KOKriterium.fromJson(Map<String, dynamic> json) =>
      _$KOKriteriumFromJson(json);
}

@freezed
abstract class VergleichResponse with _$VergleichResponse {
  const factory VergleichResponse({
    required List<VergleichEintrag> vergleich,
    List<KriterienVergleich>? kriterienVergleich,
    @JsonKey(name: 'bester_score') required double besterScore,
    @JsonKey(name: 'anzahl_unternehmen') required int anzahlUnternehmen,
  }) = _VergleichResponse;

  factory VergleichResponse.fromJson(Map<String, dynamic> json) =>
      _$VergleichResponseFromJson(json);
}

@freezed
abstract class KriterienVergleich with _$KriterienVergleich {
  const factory KriterienVergleich({
    required String kriterium,
    @JsonKey(name: 'unternehmen_scores')
    required Map<String, double> unternehmenScores,
  }) = _KriterienVergleich;

  factory KriterienVergleich.fromJson(Map<String, dynamic> json) =>
      _$KriterienVergleichFromJson(json);
}
