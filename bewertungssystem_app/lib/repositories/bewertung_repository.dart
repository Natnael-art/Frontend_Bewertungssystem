import 'package:flutter/foundation.dart';
import '../models/bewertung.dart';
import '../services/api_service.dart';

class BewertungRepository {
  final ApiService api;

  BewertungRepository({required this.api});

  Future<List<BewertungDetail>> getBewertungenByUnternehmen(int unternehmenId) async {
    try {
      return await api.getBewertungenByUnternehmen(unternehmenId);
    } catch (e, stack) {
      debugPrint("❌ BewertungRepository.getBewertungenByUnternehmen: $e");
      debugPrint(stack.toString());
      rethrow;
    }
  }

  Future<List<BewertungDetail>> getByUnternehmen(int unternehmenId) async {
    return await getBewertungenByUnternehmen(unternehmenId);
  }

  Future<void> saveBewertung(BewertungCreate bewertung) async {
    try {
      await api.saveBewertung(bewertung);
    } catch (e, stack) {
      debugPrint("❌ BewertungRepository.saveBewertung: $e");
      debugPrint(stack.toString());
      rethrow;
    }
  }

  Future<void> saveAll(List<BewertungCreate> bewertungen) async {
    for (final b in bewertungen) {
      await saveBewertung(b);
    }
  }
}
