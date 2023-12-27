import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/6_riverpod_generator/providers/greeting_provider.dart';
import 'package:riverpod_example/6_riverpod_generator/providers/numbers_provider.dart';
import 'package:riverpod_example/6_riverpod_generator/providers/title_provider.dart';

class MainPage extends ConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ref.watch(titleProvider)),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Future Provider :'),
            Text(ref.watch(greetingProvider(personName: 'Levicubs')).when(
                  data: (data) => data,
                  error: (error, stackTrace) => error.toString(),
                  loading: () => 'Loading',
                )),
            const SizedBox(height: 40),
            const Text('Stream Provider :'),
            Text(ref.watch(numbersProvider).when(
                  data: (data) => data.toString(),
                  error: (error, stackTrace) => error.toString(),
                  loading: () => 'Loading..',
                ))
          ],
        ),
      ),
    );
  }
}
