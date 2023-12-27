import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/7_async_notifier_provider/providers/counter_provider.dart';

class CounterPage extends ConsumerWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('title'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              // Parameter initialValue harus dibuat sama
              // agar value tetap didalam state yang sama
              ref.watch(counterProvider).when(
                    data: (data) => '$data',
                    error: (error, stackTrace) => error.toString(),
                    loading: () => 'Loading',
                  ),
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
                onPressed: () => ref.read(counterProvider.notifier).increment(),
                child: const Text('Increment'))
          ],
        ),
      ),
    );
  }
}
