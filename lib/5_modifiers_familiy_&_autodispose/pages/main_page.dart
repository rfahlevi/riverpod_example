import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/5_modifiers_familiy_&_autodispose/pages/user_page.dart';

class MainPage extends ConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverpod Modifiers'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return const UserPage();
            },
          )),
          child: const Text('Go to user page'),
        ),
      ),
    );
  }
}
