import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_routers/screens/home_screen.dart';
import 'package:go_routers/screens/tela_dois.dart';
import 'package:go_routers/screens/tela_tres.dart';
import 'package:go_routers/screens/tela_um.dart';

void main() => runApp(const MyApp());

/// The route configuration.
final GoRouter _router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'tela1',
          builder: (BuildContext context, GoRouterState state) {
            return const TelaUm();
          },
        ),
        GoRoute(
          path: 'tela2',
          builder: (BuildContext context, GoRouterState state) {
            return const TelaDois();
          },
        ),
        GoRoute(
          path: 'tela3',
          builder: (BuildContext context, GoRouterState state) {
            return const TelaTres();
          },
        ),
      ],
    ),
  ],
);

/// The main app.
class MyApp extends StatelessWidget {
  /// Constructs a [MyApp]
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
    );
  }
}
