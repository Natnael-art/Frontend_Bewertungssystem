import 'package:flutter/material.dart';
import '../../models/unternehmen.dart';

class UnternehmenEditPage extends StatefulWidget {
  final Unternehmen unternehmen;

  const UnternehmenEditPage({super.key, required this.unternehmen});

  @override
  State<UnternehmenEditPage> createState() => _UnternehmenEditPageState();
}

class _UnternehmenEditPageState extends State<UnternehmenEditPage> {
  late TextEditingController name;
  late TextEditingController branche;

  @override
  void initState() {
    super.initState();
    name = TextEditingController(text: widget.unternehmen.name);
    branche = TextEditingController(text: widget.unternehmen.branche);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Unternehmen bearbeiten")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(controller: name, decoration: const InputDecoration(labelText: "Name")),
            const SizedBox(height: 16),
            TextField(controller: branche, decoration: const InputDecoration(labelText: "Branche")),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // TODO: speichern
              },
              child: const Text("Speichern"),
            ),
          ],
        ),
      ),
    );
  }
}
