import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      _NavItem("Unternehmen", Icons.business, "/unternehmen"),
      _NavItem("Bewertungen", Icons.rate_review, "/bewertungen"),
      _NavItem("Ranking", Icons.leaderboard, "/ranking"),
      _NavItem("Vergleich", Icons.compare, "/vergleich"),
      _NavItem("Admin Dashboard", Icons.dashboard, "/admin"),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("HR Bewertungssystem"),
        centerTitle: true,
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(24),
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        children: items.map((item) => _HomeCard(item: item)).toList(),
      ),
    );
  }
}

class _NavItem {
  final String title;
  final IconData icon;
  final String route;

  _NavItem(this.title, this.icon, this.route);
}

class _HomeCard extends StatelessWidget {
  final _NavItem item;

  const _HomeCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () => context.push(item.route),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(item.icon, size: 48, color: Theme.of(context).colorScheme.primary),
              const SizedBox(height: 16),
              Text(
                item.title,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
