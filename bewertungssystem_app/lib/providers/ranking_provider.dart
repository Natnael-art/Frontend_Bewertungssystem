import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../repositories/kriterium_repository.dart';
import '../models/kriterium.dart';

// ...existing code...

/// Repository Provider
final kriteriumRepositoryProvider = Provider<KriteriumRepository>((ref) {
  return KriteriumRepository(); // Kein apiServiceProvider mehr
});

/// Holt alle Kriterien
final kriterienProvider = FutureProvider<List<Kriterium>>((ref) async {
  final repo = ref.watch(kriteriumRepositoryProvider);
  return repo.getAll(); // Methode heißt jetzt getAll()
});

/// Beispielhafter Ranking Provider
final rankingProvider = FutureProvider<Map<String, dynamic>>((ref) async {
  // Hier echte Logik für das Ranking einfügen!
  // Beispielhafte Rückgabe:
  return {
    'ranking': [],
    'anzahl_unternehmen': 0,
    'durchschnitts_score': 0.0,
  };
});