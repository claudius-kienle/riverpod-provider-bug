import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_test/test_future_provider.dart';
import 'package:riverpod_test/test_state_notifier_provider.dart';

class DetailsPage extends ConsumerWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fInteger = ref.watch(defaultProvider);
    final snInteger = ref.watch(stateNotifierProvider);
    return Scaffold(
        body: Column(
      children: [
        Text("Future $fInteger"),
        Text("State Notifier $snInteger"),
      ],
    ));
  }
}
