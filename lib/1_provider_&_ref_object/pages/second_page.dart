import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/1_provider_&_ref_object/provider/provider.dart';

class SecondPage extends ConsumerStatefulWidget {
  const SecondPage({super.key});

  @override
  ConsumerState<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends ConsumerState<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              // ref.watch digunakan untuk memantau dan mengambil nilai didalam provider
              // jika nilai tersebut berubah, maka widget yg memantau nilai tsb akan di build ulang
              ref.watch(greetingProvider),

              // ref.listen digunakan untuk melakukan sesuatu ketika nilai didalam provider berubah

              // ref.read digunakan untuk menjalankan atau mengambil nilai didalam provider 1x saja
              // yaitu state saat read ini dijalankan
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(
              height: 14,
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Back to main page'),
            ),
          ],
        ),
      ),
    );
  }
}
