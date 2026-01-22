import '../services/auth_service.dart';
import '../models/user.dart';

class AuthRepository {
  final AuthService service;

  AuthRepository({required this.service});

  Future<User> login(String email, String password) {
    return service.login(email, password);
  }

  Future<List<User>> getAllUsers() async {
    return service.getAllUsers();
  }

  Future<void> updateRole(int userId, String role) async {
    return service.updateRole(userId, role);
  }
}
