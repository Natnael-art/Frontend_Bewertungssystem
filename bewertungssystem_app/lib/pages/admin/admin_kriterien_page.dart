import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:bewertungssystem_app/providers/kriterium_provider.dart';

import 'package:bewertungssystem_app/pages/kriterien/kriterium_create_dialog.dart';
import 'package:bewertungssystem_app/pages/kriterien/kriterium_edit_dialog.dart';


class AdminKriterienPage extends ConsumerStatefulWidget {
  const AdminKriterienPage({super.key});

  @override
  ConsumerState<AdminKriterienPage> createState() => _AdminKriterienPageState();
}

class _AdminKriterienPageState extends ConsumerState<AdminKriterienPage> {
  @override
  Widget build(BuildContext context) {
    final kriterienAsync = ref.watch(kriterienProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Kriterien verwalten"),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => ref.invalidate(kriterienProvider),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showDialog(
          context: context,
          builder: (_) => const KriteriumCreateDialog(),
        ),
        child: const Icon(Icons.add),
      ),
      body: kriterienAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, _) => Center(child: Text("Fehler: $err")),
        data: (kriterien) {
          if (kriterien.isEmpty) {
            return const Center(child: Text("Keine Kriterien vorhanden"));
          }

          return ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: kriterien.length,
            itemBuilder: (_, i) {
              final k = kriterien[i];

              return Card(
                child: ListTile(
                  title: Text(k.name),
                  subtitle: Text("${k.wertigkeit} • max ${k.maxPunkte} Punkte"),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: () => showDialog(
                          context: context,
                          builder: (_) => KriteriumEditDialog(kriterium: k),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete, color: Colors.red),
                        onPressed: () => _confirmDelete(context, ref, k.id),
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  void _confirmDelete(BuildContext context, WidgetRef ref, int kriteriumId) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("Kriterium löschen"),
        content: const Text(
            "Möchtest du dieses Kriterium wirklich löschen? Dieser Vorgang kann nicht rückgängig gemacht werden."),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Abbrechen"),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            onPressed: () async {
              Navigator.pop(context);

              final repo = ref.read(kriteriumRepositoryProvider);

              try {
                await repo.delete(kriteriumId);
                ref.invalidate(kriterienProvider);

                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Kriterium gelöscht")),
                  );
                }
              } catch (e) {
                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Fehler: $e")),
                  );
                }
              }
            },
            child: const Text("Löschen"),
          ),
        ],
      ),
    );
  }
}
