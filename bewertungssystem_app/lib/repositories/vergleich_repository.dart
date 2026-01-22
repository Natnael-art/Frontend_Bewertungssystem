import 'package:flutter/foundation.dart';
import '../services/api_service.dart';

class VergleichRepository {
  final ApiService api;

  VergleichRepository({required this.api});

  Future<Map<String, dynamic>> compareUnternehmen(List<int> ids) async {
    try {
      return await api.compareUnternehmen(ids);
    } catch (e, stack) {
      debugPrint("❌ VergleichRepository.compareUnternehmen: $e");
      debugPrint(stack.toString());
      rethrow;
    }
  }
}
