import 'dart:developer';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class TestStateNotifierProvider extends StateNotifier<int> {
  TestStateNotifierProvider(super.create);
}

final stateNotifierProvider =
    StateNotifierProvider.autoDispose<TestStateNotifierProvider, int>((ref) {
  log("state notifier provider initialized");
  return TestStateNotifierProvider(5);
});
