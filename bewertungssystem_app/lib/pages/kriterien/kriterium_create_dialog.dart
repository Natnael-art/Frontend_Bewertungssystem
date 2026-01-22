import 'package:flutter/material.dart';

class KriteriumCreateDialog extends StatelessWidget {
  const KriteriumCreateDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final name = TextEditingController();
    final max = TextEditingController();
    final wertigkeit = TextEditingController();

    return AlertDialog(
      title: const Text("Neues Kriterium"),
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
