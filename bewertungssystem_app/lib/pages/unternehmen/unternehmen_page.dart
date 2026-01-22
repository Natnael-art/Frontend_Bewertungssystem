import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:bewertungssystem_app/providers/unternehmen_provider.dart';

import 'package:bewertungssystem_app/widgets/unternehmen/unternehmen_card.dart';
import 'package:bewertungssystem_app/widgets/unternehmen/add_unternehmen_dialog.dart';
import '../../widgets/unternehmen/unternehmen_details_dialog.dart';

class UnternehmenPage extends ConsumerWidget {
  const UnternehmenPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final unternehmenAsync = ref.watch(unternehmenListProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Unternehmen"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.go('/'),
        ),
      ),
      body: unternehmenAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, _) => _buildError(context, ref, err.toString()),
        data: (unternehmen) {
          if (unternehmen.isEmpty) {
            return _buildEmpty(context, ref);
          }

          return RefreshIndicator(
            onRefresh: () async {
              ref.invalidate(unternehmenListProvider);
            },
            child: ListView(
              padding: const EdgeInsets.symmetric(vertical: 8),
              children: unternehmen.map((u) {
                return UnternehmenCard(
                  unternehmen: u,
                  onTap: () => showDialog(
                    context: context,
                    builder: (_) => UnternehmenDetailsDialog(unternehmen: u),
                  ),
                  onInfo: () => showDialog(
                    context: context,
                    builder: (_) => UnternehmenDetailsDialog(unternehmen: u),
                  ),
                );
              }).toList(),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showDialog(
          context: context,
          builder: (_) => AddUnternehmenDialog(
            onUnternehmenAdded: () => ref.invalidate(unternehmenListProvider),
          ),
        ),
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildError(BuildContext context, WidgetRef ref, String msg) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(msg, style: const TextStyle(color: Colors.red)),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => ref.invalidate(unternehmenListProvider),
            child: const Text("Erneut versuchen"),
          ),
        ],
      ),
    );
  }

  Widget _buildEmpty(BuildContext context, WidgetRef ref) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.business_center, size: 64, color: Colors.grey),
          const SizedBox(height: 16),
          const Text("Keine Unternehmen vorhanden"),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => ref.invalidate(unternehmenListProvider),
            child: const Text("Aktualisieren"),
          ),
        ],
      ),
    );
  }
}
