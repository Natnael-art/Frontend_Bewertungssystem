import 'package:flutter/material.dart';

class VergleichKategorieTable extends StatelessWidget {
  final List<dynamic> vergleich;

  const VergleichKategorieTable({super.key, required this.vergleich});

  @override
  Widget build(BuildContext context) {
    final kategorien = ["K.O.", "wichtig", "Mindestanforderung", "extra"];

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: DataTable(
        columns: [
          const DataColumn(label: Text("Kategorie")),
          ...vergleich.map((u) {
            return DataColumn(
              label: Text(
                (u['name'] as String).split(" ").first,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            );
          }),
        ],
        rows: kategorien.map((k) {
          return DataRow(
            cells: [
              DataCell(Text(k)),
              ...vergleich.map((u) {
                final score =
                    (u['kategorie_scores'][k]?['score'] ?? 0.0).toDouble();
                return DataCell(
                  Center(
                    child: Text(
                      score > 0 ? score.toStringAsFixed(1) : "-",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: _color(score),
                      ),
                    ),
                  ),
                );
              }),
            ],
          );
        }).toList(),
      ),
    );
  }

  Color _color(double s) {
    if (s >= 80) return Colors.green;
    if (s >= 60) return Colors.lightGreen;
    if (s >= 40) return Colors.orange;
    if (s >= 20) return Colors.amber;
    return Colors.red;
  }
}
