import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'counter_provider.g.dart';

// Cara membuat Async Notifier prodvider
@riverpod
class Counter extends _$Counter {
  // Method build berfungsi untuk memberikan nilai awal
  // pada sebuah Async Notifier
  @override
  Future<int> build() async {
    await Future.delayed(const Duration(seconds: 2));
    return 0;
  }

  void increment() async {
    int? value = state.valueOrNull;

    if (value != null) {
      state = AsyncData(value + 1);
    }
  }
}
