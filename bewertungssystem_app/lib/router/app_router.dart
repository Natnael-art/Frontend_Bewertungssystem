import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:bewertungssystem_app/providers/auth_provider.dart';

import 'package:bewertungssystem_app/pages/home_page.dart';
import 'package:bewertungssystem_app/pages/login_page.dart';
import 'package:bewertungssystem_app/pages/onboarding_page.dart';

import 'package:bewertungssystem_app/pages/admin/admin_shell.dart';
import 'package:bewertungssystem_app/pages/admin/admin_dashboard_page.dart';
import 'package:bewertungssystem_app/pages/admin/admin_unternehmen_page.dart';
import 'package:bewertungssystem_app/pages/admin/admin_kriterien_page.dart';
import 'package:bewertungssystem_app/pages/admin/admin_user_page.dart';

import 'package:bewertungssystem_app/pages/unternehmen/unternehmen_page.dart';
import 'package:bewertungssystem_app/pages/bewertungen/bewertung_page.dart';
import 'package:bewertungssystem_app/pages/ranking/ranking_page.dart';
import 'package:bewertungssystem_app/pages/vergleich/vergleich_page.dart';

class AppRouter {
  static GoRouter createRouter(WidgetRef ref) {
    return GoRouter(
      initialLocation: '/login',

      redirect: (context, state) {
        final auth = ref.read(authProvider);

        final location = state.uri.toString();

        final loggingIn = location == '/login';
        final onboarding = location == '/onboarding';

        // Nicht eingeloggt → Login
        if (!auth.isLoggedIn && !loggingIn && !onboarding) {
          return '/login';
        }

        // Admin-Bereich schützen
        if (location.startsWith('/admin') && !auth.isAdmin) {
          return '/';
        }

        return null;
      },

      routes: [
        GoRoute(
          path: '/login',
          builder: (_, __) => const LoginPage(),
        ),
        GoRoute(
          path: '/onboarding',
          builder: (_, __) => const OnboardingPage(),
        ),
        GoRoute(
          path: '/',
          builder: (_, __) => const HomePage(),
        ),
        GoRoute(
          path: '/unternehmen',
          builder: (_, __) => const UnternehmenPage(),
        ),
        GoRoute(
          path: '/bewertungen',
          builder: (_, __) => const BewertungenPage(),
        ),
        GoRoute(
          path: '/ranking',
          builder: (_, __) => const RankingPage(),
        ),
        GoRoute(
          path: '/vergleich',
          builder: (_, __) => const VergleichPage(),
        ),

        // ADMIN SHELL
        ShellRoute(
          builder: (context, state, child) => AdminShell(child: child),
          routes: [
            GoRoute(
              path: '/admin',
              builder: (_, __) => const AdminDashboardPage(),
            ),
            GoRoute(
              path: '/admin/unternehmen',
              builder: (_, __) => const AdminUnternehmenPage(),
            ),
            GoRoute(
              path: '/admin/kriterien',
              builder: (_, __) => const AdminKriterienPage(),
            ),
            GoRoute(
              path: '/admin/user',
              builder: (_, __) => const AdminUserPage(),
            ),
          ],
        ),
      ],
    );
  }
}
