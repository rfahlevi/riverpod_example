import 'package:flutter_riverpod/flutter_riverpod.dart';

// Semua jenis provider memiliki build in modifier
// yang dapat menambahkan fungsionalitas ekstra
// pada provider yang kita gunakan
// 1. autodispose, untuk menghancurkan state didalam provider secara otomatis
// ketika sudah tidak ada lagi yang menggunakan state didalam provider tersebut
// autodispose dapat digunakan untuk reset state, setiap kali user keluar dan masuk kembali kedalam sebuah screen
// final counterProvider = StateProvider.autoDispose(
//   (ref) => 0,
// );

final counterProvider = StateProvider(
  (ref) => 0,
);
