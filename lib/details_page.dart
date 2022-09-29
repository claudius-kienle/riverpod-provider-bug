import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_test/test_future_provider.dart';
import 'package:riverpod_test/test_state_notifier_provider.dart';

class DetailsPage extends ConsumerWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fInteger = ref.watch(futureProvider);
    final snInteger = ref.watch(stateNotifierProvider);

    final fIntegerValue = fInteger.when(
        data: (d) => d, error: (_, __) => "error", loading: () => "loading");

    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Future Provider: $fIntegerValue"),
        Text("State Notifier Provider: $snInteger"),
      ],
    )));
  }
}
