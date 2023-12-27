import 'package:flutter/material.dart';
import 'package:riverpod_example/7_async_notifier_provider/pages/counter_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('(Async) Notifier Provider'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return const CounterPage();
            },
          )),
          child: const Text('Go to counter page'),
        ),
      ),
    );
  }
}
