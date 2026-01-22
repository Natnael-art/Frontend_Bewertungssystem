import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/unternehmen.dart';
import '../models/kriterium.dart';
import '../models/bewertung.dart';
import '../providers/api_service_provider.dart';
import '../repositories/bewertung_repository.dart';

class BewertungState {
  final Map<int, double> punkte;
  final Map<int, String> kommentare;
  final bool hasChanges;

  const BewertungState({
    this.punkte = const {},
    this.kommentare = const {},
    this.hasChanges = false,
  });

  BewertungState copyWith({
    Map<int, double>? punkte,
    Map<int, String>? kommentare,
    bool? hasChanges,
  }) {
    return BewertungState(
      punkte: punkte ?? this.punkte,
      kommentare: kommentare ?? this.kommentare,
      hasChanges: hasChanges ?? this.hasChanges,
    );
  }
}

class BewertungNotifier extends StateNotifier<BewertungState> {
  final BewertungRepository _repository;

  BewertungNotifier(this._repository) : super(const BewertungState());

  Future<void> load(int unternehmenId) async {
    final bewertungen = await _repository.getByUnternehmen(unternehmenId);
    final punkte = <int, double>{};
    final kommentare = <int, String>{};

    for (final b in bewertungen) {
      punkte[b.kriteriumId] = b.punkte;
      kommentare[b.kriteriumId] = b.kommentar ?? '';
    }

    state = BewertungState(
      punkte: punkte,
      kommentare: kommentare,
      hasChanges: false,
    );
  }

  void setPunkte(int kriteriumId, double punkte) {
    final newPunkte = Map<int, double>.from(state.punkte);
    newPunkte[kriteriumId] = punkte;
    state = state.copyWith(punkte: newPunkte, hasChanges: true);
  }

  void setKommentar(int kriteriumId, String kommentar) {
    final newKommentare = Map<int, String>.from(state.kommentare);
    newKommentare[kriteriumId] = kommentar;
    state = state.copyWith(kommentare: newKommentare, hasChanges: true);
  }

  Future<void> save(int unternehmenId, List<Kriterium> kriterien) async {
    final bewertungen = <BewertungCreate>[];

    for (final k in kriterien) {
      final punkte = state.punkte[k.id] ?? 0.0;
      final kommentar = state.kommentare[k.id] ?? '';

      bewertungen.add(BewertungCreate(
        unternehmenId: unternehmenId,
        kriteriumId: k.id,
        punkte: punkte,
        kommentar: kommentar.isEmpty ? null : kommentar,
      ));
    }

    await _repository.saveAll(bewertungen);
    state = state.copyWith(hasChanges: false);
  }
}

final bewertungRepositoryProvider = Provider<BewertungRepository>((ref) {
  final api = ref.watch(apiServiceProvider);
  return BewertungRepository(api: api);
});

final bewertungProvider = StateNotifierProvider<BewertungNotifier, BewertungState>((ref) {
  final repo = ref.watch(bewertungRepositoryProvider);
  return BewertungNotifier(repo);
});
