import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/2_state_provider/provider/counter_provider.dart';

// Didalam riverpod tidak menggunakan Stateless/Stateful Widget
// tetapi menggunakan ConsumerWidget/ConsumerStatefulWidget
// untuk mendapatkan WidgetRef yang akan mengakses provider
class CounterPage extends ConsumerWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Jika melakukan read/watch pada sebuah provider
    // maka yg didapatkan adalah nilainya
    int number = ref.watch(counterProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$number',
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(
              height: 14,
            ),
            ElevatedButton(
              onPressed: () {
                // jika kita melakukan read pada notifier provider
                // maka yg didapat adalah object notifier nya
                // dengan object notifier kita dapat mengubah state didalam sebuah provider
                // sekaligus memberitahukan kepada semua widget yg watch, agar melakukan build ulang
                // karena state sudah berubah
                ref.read(counterProvider.notifier).state += 1;
              },
              child: const Text('Increament'),
            ),
            const SizedBox(
              height: 7,
            ),
            ElevatedButton(
              // Method invalidate digunakan untuk me-reset state secara manual
              onPressed: () => ref.invalidate(counterProvider),
              child: const Text('Reset (Invalidate)'),
            ),
          ],
        ),
      ),
    );
  }
}
