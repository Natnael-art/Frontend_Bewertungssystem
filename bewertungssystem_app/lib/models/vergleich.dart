import 'package:freezed_annotation/freezed_annotation.dart';
import 'ranking.dart';

part 'vergleich.freezed.dart';
part 'vergleich.g.dart';

@freezed
class VergleichEntry with _$VergleichEntry {
  const factory VergleichEntry({
    required String name,
    required double gesamtScore,
    required bool bestanden,
    required Map<String, KategorieScore> kategorieScores,
  }) = _VergleichEntry;

  factory VergleichEntry.fromJson(Map<String, dynamic> json) =>
      _$VergleichEntryFromJson(json);
}
