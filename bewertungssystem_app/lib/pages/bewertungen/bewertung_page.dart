import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../models/kriterium.dart';
import '../../models/unternehmen.dart';
import '../../providers/unternehmen_provider.dart';
import '../../providers/kriterium_provider.dart';
import '../../providers/bewertung_provider.dart';
import 'package:go_router/go_router.dart';

class BewertungenPage extends ConsumerWidget {
  const BewertungenPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final unternehmenAsync = ref.watch(unternehmenListProvider);
    final selected = ref.watch(selectedUnternehmenProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Bewertungen"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
      ),

      body: unternehmenAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, _) => Center(child: Text("Fehler: $err")),
        data: (unternehmen) {
          return Column(
            children: [
              _buildUnternehmenSelector(context, ref, unternehmen),
              if (selected != null)
                Expanded(child: _buildBewertungsForm(context, ref)),
            ],
          );
        },
      ),
    );
  }

  Widget _buildUnternehmenSelector(
    BuildContext context,
    WidgetRef ref,
    List<Unternehmen> unternehmen,
  ) {
    final selected = ref.watch(selectedUnternehmenProvider);

    return Card(
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: DropdownButton(
          value: selected,
          isExpanded: true,
          hint: const Text("Unternehmen auswählen..."),
          items: unternehmen.map<DropdownMenuItem<Unternehmen>>((u) {
            return DropdownMenuItem<Unternehmen>(value: u, child: Text(u.name));
          }).toList(),
          onChanged: (u) {
            ref.read(selectedUnternehmenProvider.notifier).state = u;
            ref.read(bewertungProvider.notifier).load(u!.id);
          },
        ),
      ),
    );
  }

  Widget _buildBewertungsForm(BuildContext context, WidgetRef ref) {
    final kriterienAsync = ref.watch(kriterienProvider);
    final state = ref.watch(bewertungProvider);

    return kriterienAsync.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (err, _) => Center(child: Text("Fehler: $err")),
      data: (kriterien) {
        return Column(
          children: [
            if (state.hasChanges)
              _buildUnsavedChangesBar(context, ref, kriterien),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: _group(kriterien).entries.map((entry) {
                  return _buildWertigkeitSection(ref, entry.key, entry.value);
                }).toList(),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildUnsavedChangesBar(
    BuildContext context,
    WidgetRef ref,
    List<Kriterium> kriterien,
  ) {
    final selected = ref.watch(selectedUnternehmenProvider);

    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.orange[50],
      child: Row(
        children: [
          const Icon(Icons.warning, color: Colors.orange),
          const SizedBox(width: 8),
          const Expanded(child: Text("Ungespeicherte Änderungen")),
          ElevatedButton.icon(
            onPressed: () => ref
                .read(bewertungProvider.notifier)
                .save(selected!.id, kriterien),
            icon: const Icon(Icons.save),
            label: const Text("Speichern"),
          ),
        ],
      ),
    );
  }

  Map<String, List<Kriterium>> _group(List<Kriterium> list) {
    final map = <String, List<Kriterium>>{};
    for (final k in list) {
      map.putIfAbsent(k.wertigkeit, () => []);
      map[k.wertigkeit]!.add(k);
    }
    return map;
  }

  Widget _buildWertigkeitSection(
    WidgetRef ref,
    String wertigkeit,
    List<Kriterium> list,
  ) {
    final state = ref.watch(bewertungProvider);

    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              wertigkeit,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            ...list.map((k) {
              final punkte = state.punkte[k.id] ?? 0.0;
              final kommentar = state.kommentare[k.id] ?? "";

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    k.name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Slider(
                    value: punkte,
                    min: 0,
                    max: k.maxPunkte.toDouble(),
                    divisions: k.maxPunkte,
                    onChanged: (v) =>
                        ref.read(bewertungProvider.notifier).setPunkte(k.id, v),
                  ),
                  TextFormField(
                    initialValue: kommentar,
                    onChanged: (v) => ref
                        .read(bewertungProvider.notifier)
                        .setKommentar(k.id, v),
                    decoration: const InputDecoration(
                      labelText: "Kommentar",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}
