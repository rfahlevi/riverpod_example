import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/3_state_notifier_provider/provider/person_provider.dart';

class MainPage extends ConsumerStatefulWidget {
  const MainPage({super.key});

  @override
  ConsumerState<MainPage> createState() => _MainPageState();
}

class _MainPageState extends ConsumerState<MainPage> {
  TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // State akan dibuild ulang
    // setiap ada perubahan pada salah satu atau semua nilai yang ada didalam provider
    var person = ref.watch(personProvider);

    // State yang akan dibuild ulang hanya state yang diselect saja
    var age = ref.watch(personProvider.select((person) => person.age));

    ref.listen(personProvider, (previous, next) => log('State Person Berubah'));
    ref.listen(
        personProvider.select((person) => person.age), (previous, next) => log('Age Berubah'));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Person Provider Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 45,
              width: 300,
              padding: const EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.deepOrange)),
              child: TextField(
                controller: controller,
                decoration: const InputDecoration(border: InputBorder.none, hintText: 'New Name'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              person.name,
              style: const TextStyle(fontSize: 30),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              '$age',
              style: const TextStyle(fontSize: 30),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () => ref.read(personProvider.notifier).changeName(controller.text),
                child: const Text('Change Name')),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () => ref.read(personProvider.notifier).birthday(),
                child: const Text('Birthday')),
          ],
        ),
      ),
    );
  }
}
