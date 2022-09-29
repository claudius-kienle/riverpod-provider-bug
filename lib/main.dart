import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'details_page.dart';
import 'first_page.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      title: "Riverpod Test",
    );
  }

  final GoRouter _router = GoRouter(routes: [
    GoRoute(
        path: "/",
        builder: ((context, state) => const FirstPage()),
        routes: [
          GoRoute(
              path: "details",
              builder: ((context, state) => const DetailsPage()))
        ]),
  ]);
}
