import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';

part 'kriterium.freezed.dart';
part 'kriterium.g.dart';

/// Datenmodell für Bewertungskriterien.
/// Wird für die Gewichtung, Darstellung und Bewertung von Unternehmen genutzt.
@freezed
class Kriterium with _$Kriterium {
  const Kriterium._(); // Ermöglicht Custom-Getter

  const factory Kriterium({
    required int id,
    required String name,
    String? beschreibung,

    /// Wertigkeit des Kriteriums (z. B. "k.o.", "wichtig", "mindestanforderung", "extra")
    required String wertigkeit,

    /// Faktor zur Berechnung der gewichteten Punkte
    required double faktor,

    /// Maximale Punkte, die für dieses Kriterium vergeben werden können
    @JsonKey(name: "max_punkte") @Default(20) int maxPunkte,

    /// Ob das Kriterium aktiv genutzt wird
    @Default(true) bool aktiv,
  }) = _Kriterium;

  factory Kriterium.fromJson(Map<String, dynamic> json) =>
      _$KriteriumFromJson(json);

  /// Liefert eine Farbe basierend auf der Wertigkeit.
  /// Nutzt lowerCase, damit API-Werte flexibel sind.
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

  /// Liefert ein Icon basierend auf der Wertigkeit.
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
