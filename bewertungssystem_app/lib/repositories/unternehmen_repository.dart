import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/unternehmen.dart';
import '../services/api_config.dart';

class UnternehmenRepository {
  Future<List<Unternehmen>> getAll() async {
    final res = await http.get(
      Uri.parse(ApiConfig.endpoint('unternehmen')),
    );
    if (res.statusCode != 200) throw Exception('Fehler beim Laden');
    final list = jsonDecode(res.body) as List;
    return list.map((e) => Unternehmen.fromJson(e)).toList();
  }

  Future<void> createUnternehmen(Unternehmen u) async {
    final res = await http.post(
      Uri.parse(ApiConfig.endpoint('unternehmen')),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(u.toJson()),
    );
    if (res.statusCode != 201) throw Exception('Erstellen fehlgeschlagen');
  }

  Future<void> updateUnternehmen(Unternehmen u) async {
    final res = await http.put(
      Uri.parse(ApiConfig.endpoint('unternehmen/${u.id}')),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(u.toJson()),
    );
    if (res.statusCode != 200) throw Exception('Update fehlgeschlagen');
  }

  Future<void> deleteUnternehmen(int id) async {
    final res = await http.delete(
      Uri.parse(ApiConfig.endpoint('unternehmen/$id')),
    );
    if (res.statusCode != 204) throw Exception('Löschen fehlgeschlagen');
  }
}
