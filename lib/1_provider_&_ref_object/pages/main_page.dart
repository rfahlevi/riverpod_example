import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/1_provider_&_ref_object/provider/provider.dart';

import 'second_page.dart';

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
            Text(
              // ref.watch digunakan untuk memantau dan mengambil nilai didalam provider
              // jika nilai tersebut berubah, maka widget yg memantau nilai tsb akan di build ulang
              ref.watch(nameProvider),

              // ref.listen digunakan untuk melakukan sesuatu ketika nilai didalam provider berubah

              // ref.read digunakan untuk menjalankan atau mengambil nilai didalam provider 1x saja
              // yaitu state saat read ini dijalankan
              style: const TextStyle(fontSize: 24),
            ),
            const SizedBox(
              height: 14,
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const SecondPage(),
              )),
              child: const Text('Go to second page'),
            ),
          ],
        ),
      ),
    );
  }
}
