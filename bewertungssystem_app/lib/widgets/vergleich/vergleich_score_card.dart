import 'package:flutter/material.dart';

class VergleichScoreCard extends StatelessWidget {
  final String name;
  final double score;
  final bool bestanden;

  const VergleichScoreCard({
    super.key,
    required this.name,
    required this.score,
    required this.bestanden,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Expanded(child: Text(name)),
            Text(
              "${score.toStringAsFixed(1)}%",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: _color(score),
              ),
            ),
            const SizedBox(width: 8),
            Icon(
              bestanden ? Icons.check_circle : Icons.cancel,
              color: bestanden ? Colors.green : Colors.red,
            ),
          ],
        ),
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
