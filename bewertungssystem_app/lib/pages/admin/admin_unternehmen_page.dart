import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../models/unternehmen.dart';
import '../../providers/unternehmen_provider.dart';
import '../../widgets/unternehmen/unternehmen_card.dart';
import '../../widgets/unternehmen/add_unternehmen_dialog.dart';
import '../../widgets/unternehmen/unternehmen_details_dialog.dart';

class AdminUnternehmenPage extends ConsumerStatefulWidget {
  const AdminUnternehmenPage({super.key});

  @override
  ConsumerState<AdminUnternehmenPage> createState() => _AdminUnternehmenPageState();
}

class _AdminUnternehmenPageState extends ConsumerState<AdminUnternehmenPage> {
  @override
  Widget build(BuildContext context) {
    final unternehmenAsync = ref.watch(unternehmenListProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Unternehmen verwalten"),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => ref.invalidate(unternehmenListProvider),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showDialog(
          context: context,
          builder: (_) => AddUnternehmenDialog(
            onUnternehmenAdded: () =>
                ref.invalidate(unternehmenListProvider),
          ),
        ),
        child: const Icon(Icons.add),
      ),
      body: unternehmenAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, _) => Center(child: Text("Fehler: $err")),
        data: (unternehmen) {
          if (unternehmen.isEmpty) {
            return const Center(child: Text("Keine Unternehmen vorhanden"));
          }

          return ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: unternehmen.length,
            itemBuilder: (_, i) {
              final u = unternehmen[i];

              return UnternehmenCard(
                unternehmen: u,
                onTap: () => _openDetails(context, u),
                onInfo: () => _openDetails(context, u),
                onLongPress: () => _confirmDelete(context, ref, u),
              );
            },
          );
        },
      ),
    );
  }

  void _openDetails(BuildContext context, Unternehmen u) {
    showDialog(
      context: context,
      builder: (_) => UnternehmenDetailsDialog(unternehmen: u),
    );
  }

  void _confirmDelete(BuildContext context, WidgetRef ref, Unternehmen u) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("Unternehmen löschen"),
        content: Text(
          "Möchtest du '${u.name}' wirklich löschen? "
          "Dieser Vorgang kann nicht rückgängig gemacht werden.",
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Abbrechen"),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
            ),
            onPressed: () async {
              Navigator.pop(context);

              final repo = ref.read(unternehmenRepositoryProvider);

              try {
                await repo.deleteUnternehmen(u.id);
                ref.invalidate(unternehmenListProvider);

                if (context.mounted) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("${u.name} wurde gelöscht")),
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
