
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'pantallas/P1.dart';
import 'pantallas/P2.dart';

void main() {
  runApp(const AppLogin());
}

class AppLogin extends StatelessWidget {
  const AppLogin({super.key});

  static final GoRouter rutas = GoRouter(
    routes: [

      GoRoute(
        path: '/',
        builder: (context, state) => const P1(),
      ),

      GoRoute(
        path: '/P2',
        builder: (context, state) => const P2(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: rutas,
      debugShowCheckedModeBanner: false,
    );
  }
}
