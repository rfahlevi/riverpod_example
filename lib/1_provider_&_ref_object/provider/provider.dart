// Riverpod merupakan penyempurnaan dari Provider
// Jadi, konsep dasar nya sama seperti provider

import 'package:flutter_riverpod/flutter_riverpod.dart';

// Provider merupakan jenis provider yang paling dasar
// Provider harus bersifat final
// karena provider hanya mengembalikan nilai yang bersifat tetap / tidak dapat berubag
final nameProvider = Provider((ref) => 'Levicubs');

// Provider dapat saling berinteraksi dengan provider lainnya
// Seperti contoh dibawah ini
// greetingProvider memantau nameProvider
final greetingProvider = Provider((ref) => 'Hello ${ref.watch(nameProvider)}');
