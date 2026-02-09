import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/vergleich_provider.dart';
import '../../providers/unternehmen_provider.dart';
import '../../models/unternehmen.dart';
import '../../models/vergleich.dart';

import 'package:go_router/go_router.dart';

class VergleichPage extends ConsumerWidget {
  const VergleichPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(vergleichProvider);

    // WICHTIG: dein existierender Provider-Name
    final unternehmenAsync = ref.watch(unternehmenListProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Vergleich"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
      ),

      body: unternehmenAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, _) => Center(child: Text("Fehler: $err")),
        data: (List<Unternehmen> unternehmenList) {
          return Column(
            children: [
              _buildSelection(context, ref, unternehmenList),

              if (state.loading)
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: CircularProgressIndicator(),
                ),

              if (state.result != null)
                Expanded(child: _buildResults(state.result!)),
            ],
          );
        },
      ),
    );
  }

  Widget _buildSelection(
    BuildContext context,
    WidgetRef ref,
    List<Unternehmen> unternehmen,
  ) {
    final state = ref.watch(vergleichProvider);
    final notifier = ref.read(vergleichProvider.notifier);

    return Card(
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text(
              "Unternehmen auswählen",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),

            SizedBox(
              height: 220,
              child: ListView(
                children: unternehmen.map((u) {
                  final selected = state.selectedIds.contains(u.id);
                  return CheckboxListTile(
                    value: selected,
                    title: Text(u.name),
                    subtitle: Text(u.branche ?? 'Unbekannt'),
                    onChanged: (_) => ref.read(vergleichProvider.notifier).toggle(u.id),
                  );
                }).toList(),
              ),
            ),

            const SizedBox(height: 16),

            ElevatedButton.icon(
              onPressed: state.selectedIds.length >= 2 && !state.loading
                  ? () => notifier.compare()
                  : null,
              icon: const Icon(Icons.compare),
              label: const Text("Vergleich starten"),
            ),

            TextButton(
              onPressed: () => notifier.reset(),
              child: const Text("Zurücksetzen"),
            ),
          ],
        ),
      ),
    );
  }

Widget _buildResults(VergleichResponse result) {
  final list = result.vergleich;

  return ListView(
    padding: const EdgeInsets.all(16),
    children: [
      const Text(
        "Vergleichsergebnisse",
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 16),

      ...list.map((u) {
        final name = u.name;
        final score = u.gesamtScore.toString();

        return Card(
          child: ListTile(
            title: Text(name),
            subtitle: Text("Score: $score Punkte"),
          ),
        );
      }),
    ],
  );
}
}