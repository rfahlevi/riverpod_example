import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '7_async_notifier_provider/pages/main_page.dart';

void main() {
  runApp(
    // Bungkus MyApp dengan ProviderScope agar riverpod dapat berjalan dengan baik
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Riverpod',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        useMaterial3: false,
      ),
      home: const MainPage(),
    );
  }
}
