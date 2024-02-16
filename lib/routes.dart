import 'package:flutter_riverpod_api/app/screens/pages/home.dart';
import 'package:flutter_riverpod_api/app/screens/pages/profile.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
      routes: [
        GoRoute(
          path: 'profile',
          name: 'profile',
          builder: (context, state) {
            Map<String, dynamic> args = state.extra as Map<String, dynamic>;
            return ProfilePage(
              userId: args['userId'],
            );
          },
        ),
      ],
    ),
  ],
);
