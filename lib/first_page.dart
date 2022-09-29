import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_test/test_future_provider.dart';
import 'package:riverpod_test/test_state_notifier_provider.dart';

class FirstPage extends ConsumerWidget {
  const FirstPage({super.key});

  void onPressed(BuildContext context) {
    context.go("/details");
  }

  void clearProvider(WidgetRef ref) {
    ref.invalidate(stateNotifierProvider);
    ref.invalidate(futureProvider);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        ElevatedButton(
            onPressed: () => onPressed(context),
            child: const Text("Open Details")),
        ElevatedButton(
            onPressed: () => clearProvider(ref),
            child: const Text("Invalidate Providers"))
      ])),
    );
  }
}
