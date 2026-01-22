import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../repositories/unternehmen_repository.dart';
import '../models/unternehmen.dart';

/// Repository Provider
final unternehmenRepositoryProvider = Provider<UnternehmenRepository>((ref) {
  return UnternehmenRepository(); // KEIN apiServiceProvider mehr
});

/// Holt alle Unternehmen (FutureProvider)
final unternehmenListProvider = FutureProvider<List<Unternehmen>>((ref) async {
  final repo = ref.watch(unternehmenRepositoryProvider);
  return repo.getAll(); // Methode heißt jetzt getAll()
});

/// Ausgewähltes Unternehmen (z. B. für Bewertungen)
final selectedUnternehmenProvider = StateProvider<Unternehmen?>((ref) => null);
