import 'package:freezed_annotation/freezed_annotation.dart';

part 'unternehmen.freezed.dart';
part 'unternehmen.g.dart';

@freezed
class Unternehmen with _$Unternehmen {
  const Unternehmen._();

  const factory Unternehmen({
    required int id,
    required String name,
    @Default('HR-Software') String branche,
    @JsonKey(name: "mitarbeiter_range") String? mitarbeiterRange,
    String? website,
    @JsonKey(name: "created_at") required DateTime createdAt,
  }) = _Unternehmen;

  factory Unternehmen.fromJson(Map<String, dynamic> json) => 
  _$UnternehmenFromJson(json);
}