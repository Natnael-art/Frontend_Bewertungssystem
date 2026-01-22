import 'package:flutter/material.dart';

class AddUnternehmenDialog extends StatefulWidget {
  final VoidCallback onUnternehmenAdded;

  const AddUnternehmenDialog({
    super.key,
    required this.onUnternehmenAdded,
  });

  @override
  State<AddUnternehmenDialog> createState() => _AddUnternehmenDialogState();
}

class _AddUnternehmenDialogState extends State<AddUnternehmenDialog> {
  final nameCtrl = TextEditingController();
  final brancheCtrl = TextEditingController();
  final mitarbeiterCtrl = TextEditingController();
  final websiteCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("Neues Unternehmen"),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: nameCtrl,
              decoration: const InputDecoration(labelText: "Name"),
            ),
            TextField(
              controller: brancheCtrl,
              decoration: const InputDecoration(labelText: "Branche"),
            ),
            TextField(
              controller: mitarbeiterCtrl,
              decoration: const InputDecoration(labelText: "Mitarbeiterbereich"),
            ),
            TextField(
              controller: websiteCtrl,
              decoration: const InputDecoration(labelText: "Website"),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text("Abbrechen"),
        ),
        ElevatedButton(
          onPressed: () {
            // Hier würdest du dein Repository aufrufen
            widget.onUnternehmenAdded();
            Navigator.pop(context);
          },
          child: const Text("Speichern"),
        ),
      ],
    );
  }
}
