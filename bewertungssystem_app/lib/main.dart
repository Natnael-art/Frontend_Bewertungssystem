import 'package:bewertungssystem_app/router/app_router.dart';
import 'package:bewertungssystem_app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = AppRouter.createRouter(ref);

    return MaterialApp.router(
      title: 'Bewertungssystem',
      theme: AppTheme.light,
      routerConfig: router,
    );
  }
}
