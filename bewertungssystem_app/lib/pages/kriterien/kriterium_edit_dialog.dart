import 'package:flutter/material.dart';
import '../../models/kriterium.dart';

class KriteriumEditDialog extends StatelessWidget {
  final Kriterium kriterium;

  const KriteriumEditDialog({super.key, required this.kriterium});

  @override
  Widget build(BuildContext context) {
    final name = TextEditingController(text: kriterium.name);
    final wertigkeit = TextEditingController(text: kriterium.wertigkeit);
    final max = TextEditingController(text: kriterium.maxPunkte.toString());

    return AlertDialog(
      title: const Text("Kriterium bearbeiten"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(controller: name, decoration: const InputDecoration(labelText: "Name")),
          TextField(controller: wertigkeit, decoration: const InputDecoration(labelText: "Wertigkeit")),
          TextField(controller: max, decoration: const InputDecoration(labelText: "Max Punkte")),
        ],
      ),
      actions: [
        TextButton(onPressed: () => Navigator.pop(context), child: const Text("Abbrechen")),
        ElevatedButton(onPressed: () {}, child: const Text("Speichern")),
      ],
    );
  }
}
