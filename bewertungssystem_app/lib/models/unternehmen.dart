import 'package:freezed_annotation/freezed_annotation.dart';

part 'unternehmen.freezed.dart';
part 'unternehmen.g.dart';

@freezed
abstract class Unternehmen with _$Unternehmen {
  const factory Unternehmen({
    required int id,
    required String name,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'branche') String? branche,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'mitarbeiter_range') String? mitarbeiterRange,
    String? website,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'erstellt_am') DateTime? erstelltAm,
  }) = _Unternehmen;

  factory Unternehmen.fromJson(Map<String, dynamic> json) =>
      _$UnternehmenFromJson(json);
}
