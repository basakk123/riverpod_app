import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'counter_repository.dart';

final counterProvider = StateNotifierProvider<CounterRepository, int>((ref) {
  return CounterRepository();
});
