import 'package:flutter/foundation.dart';
import '../services/api_service.dart';

class RankingRepository {
  final ApiService api;

  RankingRepository({required this.api});

  Future<Map<String, dynamic>> getRanking() async {
    try {
      return await api.getRanking();
    } catch (e, stack) {
      debugPrint("❌ RankingRepository.getRanking: $e");
      debugPrint(stack.toString());
      rethrow;
    }
  }
}
