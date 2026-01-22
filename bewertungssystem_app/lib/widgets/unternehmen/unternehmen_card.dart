import 'package:flutter/material.dart';
import '../../models/unternehmen.dart';

class UnternehmenCard extends StatelessWidget {
  final Unternehmen unternehmen;
  final VoidCallback? onTap;
  final VoidCallback? onInfo;
  final VoidCallback? onLongPress;

  const UnternehmenCard({
    super.key,
    required this.unternehmen,
    this.onTap,
    this.onInfo,
    this.onLongPress,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: ListTile(
        title: Text(unternehmen.name),
        subtitle: Text(unternehmen.branche),
        onTap: onTap,
        onLongPress: onLongPress,
        trailing: IconButton(
          icon: const Icon(Icons.info_outline),
          onPressed: onInfo,
        ),
      ),
    );
  }
}
