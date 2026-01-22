import 'package:flutter/material.dart';
import '../../models/unternehmen.dart';

class UnternehmenDetailsPage extends StatelessWidget {
  final Unternehmen unternehmen;

  const UnternehmenDetailsPage({super.key, required this.unternehmen});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(unternehmen.name)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Branche: ${unternehmen.branche}"),
            if (unternehmen.website != null)
              Text("Website: ${unternehmen.website}"),
            if (unternehmen.mitarbeiterRange != null)
              Text("Mitarbeiter: ${unternehmen.mitarbeiterRange}"),
          ],
        ),
      ),
    );
  }
}
