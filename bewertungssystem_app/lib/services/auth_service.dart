import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/user.dart';
import 'api_config.dart';

class AuthService {
  Future<User> login(String email, String password) async {
    final url = ApiConfig.endpoint("auth/login");

    try {
      final response = await http
          .post(
            Uri.parse(url),
            headers: {"Content-Type": "application/json"},
            body: jsonEncode({
              "email": email,
              "password": password,
            }),
          )
          .timeout(ApiConfig.timeout);

      if (response.statusCode != 200) {
        throw Exception("Login fehlgeschlagen: ${response.body}");
      }

      final data = jsonDecode(response.body);

      // Backend liefert direkt: { "id": 1, "email": "...", "role": "admin" }
      return User.fromJson(data);
    } catch (e) {
      throw Exception("Login Fehler: $e");
    }
  }

  Future<List<User>> getAllUsers() async {
    final url = ApiConfig.endpoint("users");

    try {
      final response = await http
          .get(Uri.parse(url))
          .timeout(ApiConfig.timeout);

      if (response.statusCode != 200) {
        throw Exception("Fehler beim Laden der Benutzer: ${response.body}");
      }

      final data = jsonDecode(response.body) as List;

      return data.map((json) => User.fromJson(json)).toList();
    } catch (e) {
      throw Exception("Fehler beim Laden der Benutzer: $e");
    }
  }

  Future<void> updateRole(int userId, String role) async {
    final url = ApiConfig.endpoint("users/$userId/role");

    try {
      final response = await http
          .put(
            Uri.parse(url),
            headers: {"Content-Type": "application/json"},
            body: jsonEncode({"role": role}),
          )
          .timeout(ApiConfig.timeout);

      if (response.statusCode != 200) {
        throw Exception("Fehler beim Aktualisieren der Rolle: ${response.body}");
      }
    } catch (e) {
      throw Exception("Fehler beim Aktualisieren der Rolle: $e");
    }
  }
}
