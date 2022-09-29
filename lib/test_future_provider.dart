import 'dart:developer';

import 'package:hooks_riverpod/hooks_riverpod.dart';

final futureProvider = FutureProvider<int>((ref) {
  log("future provider initialized");
  return 5;
});
