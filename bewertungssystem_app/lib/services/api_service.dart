import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/unternehmen.dart';
import '../models/kriterium.dart';
import '../models/bewertung.dart';
import 'api_config.dart';

class ApiService {
  final String baseUrl = ApiConfig.baseUrl;
  final _storage = const FlutterSecureStorage();

  Future<dynamic> _get(String endpoint) async {
    final token = await _storage.read(key: "access_token");

    final response = await http.get(
      Uri.parse('$baseUrl$endpoint'),
      headers: {
        'Content-Type': 'application/json',
        if (token != null) 'Authorization': 'Bearer $token',
      },
    ).timeout(const Duration(seconds: 10));

    if (response.statusCode >= 200 && response.statusCode < 300) {
      return json.decode(response.body);
    } else {
      throw Exception(
        'GET $endpoint fehlgeschlagen: ${response.statusCode} – ${response.body}',
      );
    }
  }

  Future<dynamic> _post(String endpoint, dynamic body) async {
    final token = await _storage.read(key: "access_token");

    final response = await http.post(
      Uri.parse('$baseUrl$endpoint'),
      headers: {
        'Content-Type': 'application/json',
        if (token != null) 'Authorization': 'Bearer $token',
      },
      body: json.encode(body),
    ).timeout(const Duration(seconds: 10));

    if (response.statusCode >= 200 && response.statusCode < 300) {
      return json.decode(response.body);
    } else {
      throw Exception(
        'POST $endpoint fehlgeschlagen: ${response.statusCode} – ${response.body}',
      );
    }
  }

  Future<List<Unternehmen>> getUnternehmen() async {
    final data = await _get('/unternehmen');
    return (data as List).map((json) => Unternehmen.fromJson(json)).toList();
  }

  Future<Unternehmen> createUnternehmen(Unternehmen unternehmen) async {
    final data = await _post('/unternehmen', unternehmen.toJson());
    return Unternehmen.fromJson(data);
  }

  Future<List<Kriterium>> getKriterien() async {
    final data = await _get('/kriterien');
    return (data as List).map((json) => Kriterium.fromJson(json)).toList();
  }

  Future<List<Kriterium>> getKriterienByWertigkeit(String wertigkeit) async {
    final data = await _get('/kriterien/$wertigkeit');
    return (data as List).map((json) => Kriterium.fromJson(json)).toList();
  }

  Future<List<BewertungDetail>> getBewertungenByUnternehmen(int id) async {
    final data = await _get('/bewertungen/unternehmen/$id');
    return (data as List)
        .map((json) => BewertungDetail.fromJson(json))
        .toList();
  }

  Future<Bewertung> saveBewertung(BewertungCreate bewertung) async {
    final data = await _post('/bewertungen', {
      'unternehmen_id': bewertung.unternehmenId,
      'kriterium_id': bewertung.kriteriumId,
      'punkte': bewertung.punkte,
      'kommentar': bewertung.kommentar,
      'benutzer': bewertung.benutzer,
    });
    return Bewertung.fromJson(data);
  }

  Future<Map<String, dynamic>> getUnternehmenScore(int id) async {
    return await _get('/scores/unternehmen/$id');
  }

  Future<Map<String, dynamic>> compareUnternehmen(List<int> ids) async {
    return await _post('/scores/vergleich', ids);
  }

  Future<Map<String, dynamic>> getRanking() async {
    return await _get('/scores/ranking');
  }
}

// Provider für Riverpod
final apiServiceProvider = Provider<ApiService>((ref) {
  return ApiService();
});
