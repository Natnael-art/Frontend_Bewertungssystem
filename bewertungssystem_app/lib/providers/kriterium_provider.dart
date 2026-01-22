import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../repositories/kriterium_repository.dart';
import '../models/kriterium.dart';

/// Repository Provider
final kriteriumRepositoryProvider = Provider<KriteriumRepository>((ref) {
  return KriteriumRepository(); // Kein apiServiceProvider mehr
});

/// Holt alle Kriterien
final kriterienProvider = FutureProvider<List<Kriterium>>((ref) async {
  final repo = ref.watch(kriteriumRepositoryProvider);
  return repo.getAll(); // Methode heißt jetzt getAll()
});
