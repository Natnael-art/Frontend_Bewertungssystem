import 'package:flutter/material.dart';
import '../../models/unternehmen.dart';

class UnternehmenDetailsDialog extends StatelessWidget {
  final Unternehmen unternehmen;

  const UnternehmenDetailsDialog({super.key, required this.unternehmen});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        unternehmen.name,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (unternehmen.branche != null)
              _row("Branche", unternehmen.branche!),

            if (_hasValue(unternehmen.mitarbeiterRange))
              _row("Mitarbeiter", unternehmen.mitarbeiterRange!),

            if (_hasValue(unternehmen.website))
              _row("Website", unternehmen.website!),

            if (unternehmen.erstelltAm != null)
              _row("Hinzugefügt", _formatDate(unternehmen.erstelltAm!)),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text("Schließen"),
        ),
      ],
    );
  }

  bool _hasValue(String? v) => v != null && v.trim().isNotEmpty;

  Widget _row(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 110,
            child: Text(
              "$label:",
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          Expanded(
            child: Text(value),
          ),
        ],
      ),
    );
  }

  String _formatDate(DateTime d) =>
      "${d.day.toString().padLeft(2, '0')}.${d.month.toString().padLeft(2, '0')}.${d.year}";
}
