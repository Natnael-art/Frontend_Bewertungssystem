import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../providers/auth_provider.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  final email = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final auth = ref.watch(authProvider);

    if (auth.user != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        GoRouter.of(context).go('/');
      });
    }

    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: email,
              decoration: const InputDecoration(labelText: "E-Mail"),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: password,
              obscureText: true,
              decoration: const InputDecoration(labelText: "Passwort"),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: auth.loading
                  ? null
                  : () => ref
                      .read(authProvider.notifier)
                      .login(email.text, password.text),
              child: auth.loading
                  ? const CircularProgressIndicator()
                  : const Text("Login"),
            ),
            if (auth.error != null) ...[
              const SizedBox(height: 16),
              Text(auth.error!, style: const TextStyle(color: Colors.red)),
            ]
          ],
        ),
      ),
    );
  }
}
