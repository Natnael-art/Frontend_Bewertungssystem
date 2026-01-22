import 'package:freezed_annotation/freezed_annotation.dart';

part 'bewertung.freezed.dart';
part 'bewertung.g.dart';

@freezed
class BewertungCreate with _$BewertungCreate {
  const factory BewertungCreate({
    @JsonKey(name: 'unternehmen_id') required int unternehmenId,
    @JsonKey(name: 'kriterium_id') required int kriteriumId,
    required double punkte,
    String? kommentar,
    @Default("System") String benutzer,
  }) = _BewertungCreate;

  factory BewertungCreate.fromJson(Map<String, dynamic> json)
      => _$BewertungCreateFromJson(json);
}

@freezed
class Bewertung with _$Bewertung {
  const factory Bewertung({
    required int id,
    @JsonKey(name: 'unternehmen_id') required int unternehmenId,
    @JsonKey(name: 'kriterium_id') required int kriteriumId,
    required double punkte,
    String? kommentar,
    @Default("System") String benutzer,
    @JsonKey(name: 'bewertet_am') required DateTime bewertetAm,
  }) = _Bewertung;

  factory Bewertung.fromJson(Map<String, dynamic> json)
      => _$BewertungFromJson(json);
}

@freezed
class BewertungDetail with _$BewertungDetail {
  const BewertungDetail._();

  const factory BewertungDetail({
    required int id,
    @JsonKey(name: 'unternehmen_id') required int unternehmenId,
    @JsonKey(name: 'kriterium_id') required int kriteriumId,
    required double punkte,
    String? kommentar,
    @Default("System") String benutzer,
    @JsonKey(name: 'bewertet_am') required DateTime bewertetAm,
    @JsonKey(name: 'kriterium_name') required String kriteriumName,
    @JsonKey(name: 'kriterium_wertigkeit') required String kriteriumWertigkeit,
    @JsonKey(name: 'kriterium_faktor') required double kriteriumFaktor,
  }) = _BewertungDetail;

  factory BewertungDetail.fromJson(Map<String, dynamic> json)
      => _$BewertungDetailFromJson(json);

  double get gewichtetePunkte => punkte * kriteriumFaktor;
}
