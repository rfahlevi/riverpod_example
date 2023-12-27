import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/5_modifiers_familiy_&_autodispose/providers/provider.dart';

class UserPage extends ConsumerWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod Modifiers'),
        centerTitle: true,
      ),
      body: Center(
        child: ref.watch(userProvider(5)).when(
              data: (user) => Text('$user'),
              error: (error, stackTrace) => Text('$error'),
              loading: () => const Text('Loading'),
            ),
      ),
    );
  }
}
