import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/user.dart';
import 'api_config.dart';

class AuthService {
  Future<User> login(String email, String password) async {
    final url = ApiConfig.endpoint("auth/login");

    final response = await http
        .post(
          Uri.parse(url),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode({"email": email, "password": password}),
        )
        .timeout(ApiConfig.timeout);

    if (response.statusCode != 200) {
      throw Exception("Login fehlgeschlagen");
    }

    final data = jsonDecode(response.body);
    return User.fromJson(data);
  }

  Future<List<User>> getAllUsers() async {
    final url = ApiConfig.endpoint("users");

    final response = await http
        .get(Uri.parse(url))
        .timeout(ApiConfig.timeout);

    if (response.statusCode != 200) {
      throw Exception("Fehler beim Laden der Benutzer");
    }

    final data = jsonDecode(response.body) as List;
    return data.map((json) => User.fromJson(json)).toList();
  }

  Future<void> updateRole(int userId, String role) async {
    final url = ApiConfig.endpoint("users/$userId/role");

    final response = await http
        .put(
          Uri.parse(url),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode({"role": role}),
        )
        .timeout(ApiConfig.timeout);

    if (response.statusCode != 200) {
      throw Exception("Fehler beim Aktualisieren der Rolle");
    }
  }
}
