import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../providers/user_provider.dart';
import '../../widgets/global/app_loading.dart';
import '../../widgets/global/app_error.dart';


class AdminUserPage extends ConsumerWidget {
  const AdminUserPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final usersAsync = ref.watch(userListProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("User verwalten"),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () => ref.invalidate(userListProvider),
          ),
        ],
      ),
      body: usersAsync.when(
        loading: () => const AppLoading(),
        error: (e, _) => AppError(
          message: e.toString(),
          onRetry: () => ref.invalidate(userListProvider),
        ),
        data: (users) {
          if (users.isEmpty) {
            return const Center(child: Text("Keine User vorhanden"));
          }

          return ListView.separated(
            itemCount: users.length,
            separatorBuilder: (_, __) => const Divider(height: 1),
            itemBuilder: (_, i) {
              final u = users[i];

              return ListTile(
                leading: CircleAvatar(
                  child: Text(
                    u.email.isNotEmpty
                        ? u.email[0].toUpperCase()
                        : "?",
                  ),
                ),
                title: Text(u.email),
                subtitle: Text("Rolle: ${u.role}"),
                trailing: IconButton(
                  icon: const Icon(Icons.admin_panel_settings),
                  onPressed: () => _openRoleDialog(context, ref, u.id, u.role),
                ),
              );
            },
          );
        },
      ),
    );
  }

  void _openRoleDialog(
      BuildContext context, WidgetRef ref, int userId, String currentRole) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("Rolle ändern"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _roleButton(context, ref, userId, currentRole, "admin"),
            _roleButton(context, ref, userId, currentRole, "user"),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Schließen"),
          ),
        ],
      ),
    );
  }

  Widget _roleButton(BuildContext context, WidgetRef ref, int userId,
      String currentRole, String newRole) {
    final isActive = currentRole == newRole;

    return ListTile(
      title: Text(newRole),
      trailing: isActive ? const Icon(Icons.check, color: Colors.green) : null,
      onTap: () async {
        if (isActive) return;

        final repo = ref.read(userRepositoryProvider);

        try {
          await repo.updateRole(userId, newRole);
          ref.invalidate(userListProvider);

          if (context.mounted) {
            Navigator.pop(context);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Rolle geändert zu '$newRole'")),
            );
          }
        } catch (e) {
          if (context.mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Fehler: $e")),
            );
          }
        }
      },
    );
  }
}
