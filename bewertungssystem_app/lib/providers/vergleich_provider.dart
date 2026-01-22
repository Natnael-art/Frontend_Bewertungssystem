import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../repositories/vergleich_repository.dart';
import '../providers/api_service_provider.dart';

class VergleichState {
  final List<int> selectedIds;
  final Map<String, dynamic>? result;
  final bool loading;

  VergleichState({
    this.selectedIds = const [],
    this.result,
    this.loading = false,
  });

  VergleichState copyWith({
    List<int>? selectedIds,
    Map<String, dynamic>? result,
    bool? loading,
  }) {
    return VergleichState(
      selectedIds: selectedIds ?? this.selectedIds,
      result: result ?? this.result,
      loading: loading ?? this.loading,
    );
  }
}

class VergleichNotifier extends StateNotifier<VergleichState> {
  final VergleichRepository repo;

  VergleichNotifier(this.repo) : super(VergleichState());

  void toggle(int id) {
    final list = List<int>.from(state.selectedIds);

    if (list.contains(id)) {
      list.remove(id);
    } else {
      if (list.length < 5) list.add(id);
    }

    state = state.copyWith(selectedIds: list, result: null);
  }

  Future<void> compare() async {
    if (state.selectedIds.length < 2) return;

    state = state.copyWith(loading: true);

    try {
      final result = await repo.compareUnternehmen(state.selectedIds);
      state = state.copyWith(result: result, loading: false);
    } catch (_) {
      state = state.copyWith(loading: false);
    }
  }

  void reset() {
    state = VergleichState();
  }
}

final vergleichRepositoryProvider = Provider<VergleichRepository>((ref) {
  final api = ref.watch(apiServiceProvider);
  return VergleichRepository(api: api);
}); 

final vergleichProvider =
    StateNotifierProvider<VergleichNotifier, VergleichState>((ref) {
  final repo = ref.watch(vergleichRepositoryProvider);
  return VergleichNotifier(repo);
});
