// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bewertung.freezed.dart';
part 'bewertung.g.dart';

@freezed
abstract class BewertungCreate with _$BewertungCreate {
  const factory BewertungCreate({
    required int unternehmenId,
    required int kriteriumId,
    required double punkte,
    String? kommentar,
    String? benutzer,
  }) = _BewertungCreate;

  factory BewertungCreate.fromJson(Map<String, dynamic> json) =>
      _$BewertungCreateFromJson(json);
}

@freezed
abstract class Bewertung with _$Bewertung {
  const factory Bewertung({
    required int id,
    required int unternehmenId,
    required int kriteriumId,
    required double punkte,
    String? kommentar,
    String? benutzer,
    @JsonKey(name: 'bewertet_am') required DateTime bewertetAm,
  }) = _Bewertung;

  factory Bewertung.fromJson(Map<String, dynamic> json) =>
      _$BewertungFromJson(json);
}

@freezed
abstract class BewertungDetail with _$BewertungDetail {
  const factory BewertungDetail({
    required int id,
    required int unternehmenId,
    required int kriteriumId,
    required double punkte,
    String? kommentar,
    String? benutzer,
    @JsonKey(name: 'bewertet_am') required DateTime bewertetAm,
    @JsonKey(name: 'kriterium_name') required String kriteriumName,
    @JsonKey(name: 'kriterium_kategorie') required String kriteriumKategorie,
    @JsonKey(name: 'kriterium_wertigkeit') required String kriteriumWertigkeit,
    @JsonKey(name: 'kriterium_faktor') required double kriteriumFaktor,
  }) = _BewertungDetail;

  factory BewertungDetail.fromJson(Map<String, dynamic> json) =>
      _$BewertungDetailFromJson(json);
}
