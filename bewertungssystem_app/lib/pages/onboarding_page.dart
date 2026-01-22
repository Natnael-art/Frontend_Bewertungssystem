import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/onboarding_provider.dart';

class OnboardingPage extends ConsumerWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: PageView(
        children: [
          _slide("Unternehmen bewerten", Icons.business),
          _slide("Ranking analysieren", Icons.leaderboard),
          _slide("Vergleiche durchführen", Icons.compare),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          ref.read(onboardingProvider.notifier).state = true;
          Navigator.pushReplacementNamed(context, "/");
        },
        label: const Text("Starten"),
        icon: const Icon(Icons.arrow_forward),
      ),
    );
  }

  Widget _slide(String text, IconData icon) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 120),
          const SizedBox(height: 24),
          Text(text, style: const TextStyle(fontSize: 24)),
        ],
      ),
    );
  }
}
