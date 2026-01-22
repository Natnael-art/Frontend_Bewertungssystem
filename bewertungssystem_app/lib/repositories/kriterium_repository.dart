import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/kriterium.dart';
import '../services/api_config.dart';

class KriteriumRepository {
  Future<List<Kriterium>> getAll() async {
    final res = await http.get(
      Uri.parse(ApiConfig.endpoint('kriterien')),
    );
    if (res.statusCode != 200) throw Exception('Fehler beim Laden');
    final list = jsonDecode(res.body) as List;
    return list.map((e) => Kriterium.fromJson(e)).toList();
  }

  Future<void> create(Kriterium k) async {
    final res = await http.post(
      Uri.parse(ApiConfig.endpoint('kriterien')),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(k.toJson()),
    );
    if (res.statusCode != 201) throw Exception('Erstellen fehlgeschlagen');
  }

  Future<void> update(Kriterium k) async {
    final res = await http.put(
      Uri.parse(ApiConfig.endpoint('kriterien/${k.id}')),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode(k.toJson()),
    );
    if (res.statusCode != 200) throw Exception('Update fehlgeschlagen');
  }

  Future<void> delete(int id) async {
    final res = await http.delete(
      Uri.parse(ApiConfig.endpoint('kriterien/$id')),
    );
    if (res.statusCode != 204) throw Exception('Löschen fehlgeschlagen');
  }
}
