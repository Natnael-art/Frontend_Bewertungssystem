import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:bewertungssystem_app/providers/ranking_provider.dart';

import 'package:bewertungssystem_app/widgets/ranking/ranking_card.dart';
import 'package:bewertungssystem_app/widgets/ranking/ranking_stats_header.dart';

import 'package:go_router/go_router.dart';


class RankingPage extends ConsumerWidget {
  const RankingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rankingAsync = ref.watch(rankingProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Ranking"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
      ),

      body: rankingAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, _) => Center(child: Text("Fehler: $err")),
        data: (data) {
          final ranking = data['ranking'] as List? ?? [];

          if (ranking.isEmpty) {
            return const Center(child: Text("Noch kein Ranking verfügbar"));
          }

          return Column(
            children: [
              RankingStatsHeader(
                anzahlUnternehmen: data['anzahl_unternehmen'],
                durchschnittScore: data['durchschnitts_score'],
                besterScore: "${ranking.first['gesamt_score']}%",
              ),
              Expanded(
                child: RefreshIndicator(
                  onRefresh: () => ref.refresh(rankingProvider.future),
                  child: ListView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: ranking.length,
                    itemBuilder: (context, index) {
                      return RankingCard(
                        data: ranking[index],
                        rang: index + 1,
                      );
                    },
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
