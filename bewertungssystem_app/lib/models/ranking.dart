// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ranking.freezed.dart';
part 'ranking.g.dart';

@freezed
abstract class RankingEntry with _$RankingEntry {
  const factory RankingEntry({
    required String name,
    @JsonKey(name: 'gesamt_score') required double gesamtScore,
    required bool bestanden,
    @JsonKey(name: 'kategorie_scores')
    required Map<String, KategorieScore> kategorieScores,
    required Analysis analysis,
  }) = _RankingEntry;

  factory RankingEntry.fromJson(Map<String, dynamic> json) =>
      _$RankingEntryFromJson(json);
}

@freezed
abstract class KategorieScore with _$KategorieScore {
  const factory KategorieScore({
    required double score,
  }) = _KategorieScore;

  factory KategorieScore.fromJson(Map<String, dynamic> json) =>
      _$KategorieScoreFromJson(json);
}

@freezed
abstract class Analysis with _$Analysis {
  const factory Analysis({
    required List<AnalysisItem> staerken,
    required List<AnalysisItem> schwaechen,
  }) = _Analysis;

  factory Analysis.fromJson(Map<String, dynamic> json) =>
      _$AnalysisFromJson(json);
}

@freezed
abstract class AnalysisItem with _$AnalysisItem {
  const factory AnalysisItem({
    required String kriterium,
    required double punkte,
  }) = _AnalysisItem;

  factory AnalysisItem.fromJson(Map<String, dynamic> json) =>
      _$AnalysisItemFromJson(json);
}
