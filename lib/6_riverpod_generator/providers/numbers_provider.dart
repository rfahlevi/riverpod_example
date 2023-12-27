import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'numbers_provider.g.dart';

// method keepAlive berfungsi untuk mempertahankan state.
// karena dengan menggunakan riverpod generator,
// secara default akan memasang autoDispose
@Riverpod(keepAlive: true)
Stream<int> numbers(NumbersRef ref) async* {
  int number = 1;

  while (true) {
    await Future.delayed(const Duration(seconds: 1));
    yield number++;
  }
}
