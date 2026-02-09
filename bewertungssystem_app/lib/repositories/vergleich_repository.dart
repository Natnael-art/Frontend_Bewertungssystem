import '../services/api_service.dart';
import '../models/vergleich.dart';

class VergleichRepository {
  final ApiService api;

  VergleichRepository({required this.api});

  Future<VergleichResponse> compareUnternehmen(List<int> ids) async {
    final data = await api.compareUnternehmen(ids);
    return VergleichResponse.fromJson(data);
  }
}
