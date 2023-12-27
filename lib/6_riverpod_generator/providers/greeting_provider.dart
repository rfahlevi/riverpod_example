import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'greeting_provider.g.dart';

// Cara membuat futureProvider dengan parameter tambahan
// menggunakan Riverpod Generator
@riverpod
Future<String> greeting(GreetingRef ref, {required String personName}) async {
  await Future.delayed(const Duration(seconds: 2));

  return 'Hello $personName';
}
