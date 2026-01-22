import 'package:flutter/material.dart';

class AppError extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;

  const AppError({super.key, required this.message, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.error_outline, size: 64, color: Colors.red),
          const SizedBox(height: 16),
          Text(message),
          const SizedBox(height: 16),
          ElevatedButton(onPressed: onRetry, child: const Text("Erneut versuchen")),
        ],
      ),
    );
  }
}
