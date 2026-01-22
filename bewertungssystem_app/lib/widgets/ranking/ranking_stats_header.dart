import 'package:flutter/material.dart';

class RankingStatsHeader extends StatelessWidget {
  final int anzahlUnternehmen;
  final double durchschnittScore;
  final String besterScore;

  const RankingStatsHeader({
    super.key,
    required this.anzahlUnternehmen,
    required this.durchschnittScore,
    required this.besterScore,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _item(Icons.business, "Unternehmen", "$anzahlUnternehmen"),
            _item(Icons.assessment, "Durchschnitt",
                "${durchschnittScore.toStringAsFixed(1)}%"),
            _item(Icons.emoji_events, "Bester", besterScore),
          ],
        ),
      ),
    );
  }

  Widget _item(IconData icon, String label, String value) {
    return Column(
      children: [
        Icon(icon, size: 32, color: Colors.blue),
        const SizedBox(height: 8),
        Text(value,
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold)),
        Text(label, style: const TextStyle(color: Colors.grey)),
      ],
    );
  }
}
