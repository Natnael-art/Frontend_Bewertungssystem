import 'package:flutter/material.dart';
import '../../widgets/global/section_header.dart';

class AdminDashboardPage extends StatelessWidget {
  const AdminDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Admin Dashboard")),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const SectionHeader(title: "Übersicht", icon: Icons.dashboard),
          const SizedBox(height: 16),

          Row(
            children: [
              Expanded(
                child: _KpiCard(
                  label: "Unternehmen",
                  value: "42",
                  icon: Icons.business,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: _KpiCard(
                  label: "Kriterien",
                  value: "18",
                  icon: Icons.rule,
                ),
              ),
            ],
          ),

          const SizedBox(height: 24),
          const SectionHeader(title: "Verwaltung", icon: Icons.settings),
          const SizedBox(height: 16),

          _AdminAction(
            title: "Unternehmen verwalten",
            icon: Icons.business_center,
            onTap: () => Navigator.pushNamed(context, "/admin/unternehmen"),
          ),
          _AdminAction(
            title: "Kriterien verwalten",
            icon: Icons.rule,
            onTap: () => Navigator.pushNamed(context, "/admin/kriterien"),
          ),
        ],
      ),
    );
  }
}

class _KpiCard extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;

  const _KpiCard({
    required this.label,
    required this.value,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      surfaceTintColor: Theme.of(context).colorScheme.primary,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Icon(icon, size: 32, color: Theme.of(context).colorScheme.primary),
            const SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(value,
                    style: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.bold)),
                Text(label, style: const TextStyle(color: Colors.grey)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _AdminAction extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const _AdminAction({
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: ListTile(
        leading: Icon(icon, color: Theme.of(context).colorScheme.primary),
        title: Text(title),
        trailing: const Icon(Icons.chevron_right),
        onTap: onTap,
      ),
    );
  }
}
