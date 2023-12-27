import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/2_state_provider/pages/counter_page.dart';

// Didalam riverpod tidak menggunakan Stateless/Stateful Widget
// tetapi menggunakan ConsumerWidget/ConsumerStatefulWidget
// untuk mendapatkan WidgetRef yang akan mengakses provider
class MainPage extends ConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const CounterPage(),
              )),
              child: const Text('Go to counter page'),
            ),
          ],
        ),
      ),
    );
  }
}
