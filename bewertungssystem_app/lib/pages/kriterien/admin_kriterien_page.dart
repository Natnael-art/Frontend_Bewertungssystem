import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/kriterium_provider.dart';
import 'kriterium_create_dialog.dart';
import 'kriterium_edit_dialog.dart';

class AdminKriterienPage extends ConsumerWidget {
  const AdminKriterienPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final kriterien = ref.watch(kriterienProvider);

    return Scaffold(
      appBar: AppBar(title: const Text("Kriterienverwaltung")),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showDialog(
          context: context,
          builder: (_) => const KriteriumCreateDialog(),
        ),
        child: const Icon(Icons.add),
      ),
      body: kriterien.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, _) => Center(child: Text("Fehler: $err")),
        data: (list) => ListView.builder(
          itemCount: list.length,
          itemBuilder: (_, i) {
            final k = list[i];
            return ListTile(
              title: Text(k.name),
              subtitle: Text("${k.wertigkeit} • max ${k.maxPunkte} Punkte"),
              trailing: IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () => showDialog(
                  context: context,
                  builder: (_) => KriteriumEditDialog(kriterium: k),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
