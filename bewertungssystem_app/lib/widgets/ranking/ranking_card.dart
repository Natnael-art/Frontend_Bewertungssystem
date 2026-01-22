import 'package:flutter/material.dart';

class RankingCard extends StatelessWidget {
  final Map<String, dynamic> data;
  final int rang;

  const RankingCard({
    super.key,
    required this.data,
    required this.rang,
  });

  @override
  Widget build(BuildContext context) {
    final name = data['name'];
    final score = (data['gesamt_score'] ?? 0.0).toDouble();
    final bestanden = data['bestanden'] ?? false;

    return Card(
      elevation: 2,
      margin: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            _rankBadge(),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold)),
                  Row(
                    children: [
                      Icon(
                        bestanden ? Icons.check_circle : Icons.cancel,
                        color: bestanden ? Colors.green : Colors.red,
                        size: 16,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        bestanden ? "Bestanden" : "Durchgefallen",
                        style: TextStyle(
                          color: bestanden ? Colors.green : Colors.red,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            _scoreCircle(score),
          ],
        ),
      ),
    );
  }

  Widget _rankBadge() {
    return CircleAvatar(
      radius: 22,
      backgroundColor: _rankColor(rang),
      child: Text(
        rang.toString(),
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _scoreCircle(double score) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(
          width: 60,
          height: 60,
          child: CircularProgressIndicator(
            value: score / 100,
            strokeWidth: 6,
            backgroundColor: Colors.grey[300],
            valueColor:
                AlwaysStoppedAnimation<Color>(_scoreColor(score)),
          ),
        ),
        Text("${score.toStringAsFixed(0)}%"),
      ],
    );
  }

  Color _rankColor(int r) {
    switch (r) {
      case 1:
        return Colors.amber;
      case 2:
        return Colors.grey;
      case 3:
        return Colors.brown;
      default:
        return Colors.blue;
    }
  }

  Color _scoreColor(double s) {
    if (s >= 80) return Colors.green;
    if (s >= 60) return Colors.lightGreen;
    if (s >= 40) return Colors.orange;
    if (s >= 20) return Colors.amber;
    return Colors.red;
  }
}
