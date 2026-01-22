import 'package:freezed_annotation/freezed_annotation.dart';

part 'ranking.freezed.dart';
part 'ranking.g.dart';

@freezed
class RankingEntry with _$RankingEntry {
  const factory RankingEntry({
    required String name,
    required double gesamtScore,
    required bool bestanden,
    required Map<String, KategorieScore> kategorieScores,
    required Analysis analysis,
  }) = _RankingEntry;

  factory RankingEntry.fromJson(Map<String, dynamic> json) =>
      _$RankingEntryFromJson(json);
}

@freezed
class KategorieScore with _$KategorieScore {
  const factory KategorieScore({
    required double score,
  }) = _KategorieScore;

  factory KategorieScore.fromJson(Map<String, dynamic> json) =>
      _$KategorieScoreFromJson(json);
}

@freezed
class Analysis with _$Analysis {
  const factory Analysis({
    required List<AnalysisItem> staerken,
    required List<AnalysisItem> schwachen,
  }) = _Analysis;

  factory Analysis.fromJson(Map<String, dynamic> json) =>
      _$AnalysisFromJson(json);
}

@freezed
class AnalysisItem with _$AnalysisItem {
  const factory AnalysisItem({
    required String kriterium,
    required double punkte,
  }) = _AnalysisItem;

  factory AnalysisItem.fromJson(Map<String, dynamic> json) =>
      _$AnalysisItemFromJson(json);
}
