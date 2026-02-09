// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';

part 'kriterium.freezed.dart';
part 'kriterium.g.dart';

@freezed
abstract class Kriterium with _$Kriterium {
  const Kriterium._();

  const factory Kriterium({
    required int id,
    required String name,
    required String kategorie,
    String? beschreibung,
    required String wertigkeit,
    required double faktor,
    @JsonKey(name: "max_punkte") @Default(10) int maxPunkte,
    @Default(true) bool aktiv,
  }) = _Kriterium;

  factory Kriterium.fromJson(Map<String, dynamic> json) =>
      _$KriteriumFromJson(json);

  Color get color {
    final w = wertigkeit.toLowerCase();
    switch (w) {
      case 'k.o.':
      case 'ko':
      case 'k.o':
        return Colors.red;
      case 'wichtig':
        return Colors.orange;
      case 'mindestanforderung':
        return Colors.blue;
      case 'extra':
        return Colors.green;
      default:
        return Colors.grey;
    }
  }

  IconData get icon {
    final w = wertigkeit.toLowerCase();
    switch (w) {
      case 'k.o.':
      case 'ko':
      case 'k.o':
        return Icons.warning;
      case 'wichtig':
        return Icons.star;
      case 'mindestanforderung':
        return Icons.check_circle;
      case 'extra':
        return Icons.celebration;
      default:
        return Icons.help;
    }
  }
}
