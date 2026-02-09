import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../providers/auth_provider.dart';

class AdminShell extends ConsumerWidget {
  final Widget child;

  const AdminShell({super.key, required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.watch(authProvider);

    // Guard: nur Admin
    if (!auth.isAdmin) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (context.mounted) context.go('/');
      });
      return const SizedBox.shrink();
    }

    final locations = ['/admin', '/admin/unternehmen', '/admin/kriterien', '/admin/user'];
    final current = GoRouterState.of(context).uri.toString();
    final index = locations.indexOf(current);

    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            selectedIndex: index < 0 ? 0 : index,
            onDestinationSelected: (i) => context.go(locations[i]),
            labelType: NavigationRailLabelType.all,
            destinations: const [
              NavigationRailDestination(
                icon: Icon(Icons.dashboard),
                label: Text('Dashboard'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.business),
                label: Text('Unternehmen'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.rule),
                label: Text('Kriterien'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.people),
                label: Text('User'),
              ),
            ],
          ),
          const VerticalDivider(width: 1),
          Expanded(
            child: Column(
              children: [
                _AdminTopBar(onLogout: () {
                  ref.read(authProvider.notifier).logout();
                  context.go('/login');
                }),
                const Divider(height: 1),
                Expanded(child: child),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _AdminTopBar extends StatelessWidget {
  final VoidCallback onLogout;

  const _AdminTopBar({required this.onLogout});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      alignment: Alignment.centerRight,
      child: TextButton.icon(
        onPressed: onLogout,
        icon: const Icon(Icons.logout),
        label: const Text("Logout"),
      ),
    );
  }
}
