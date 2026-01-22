import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../repositories/auth_repository.dart';
import '../services/auth_service.dart';
import '../models/user.dart';

final authServiceProvider = Provider<AuthService>((ref) {
  return AuthService();
});

final userRepositoryProvider = Provider<AuthRepository>((ref) {
  final service = ref.watch(authServiceProvider);
  return AuthRepository(service: service);
});

final userListProvider = FutureProvider<List<User>>((ref) async {
  final repo = ref.watch(userRepositoryProvider);
  return repo.getAllUsers();
});