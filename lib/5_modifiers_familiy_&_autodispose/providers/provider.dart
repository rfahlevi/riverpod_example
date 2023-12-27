import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/5_modifiers_familiy_&_autodispose/entities/user.dart';
import 'package:riverpod_example/5_modifiers_familiy_&_autodispose/repositories/user_repository.dart';

// Modifier familiy dibawah ini digunakan untuk mengembalikan UserRepository
// dan menambahkan 1 parameter CancelToken untuk digunakan pada method onDispose((){})
var userRepositoryProvider = Provider.family<UserRepository, CancelToken>(
  (ref, cancelToken) => UserRepository(cancelToken: cancelToken),
);

// Modifier family digunakan untuk membuat 1 param tambahan pada Provider
// seperti contoh dibawah ini, Provider mengembalikan Object User
// dan juga membutuhkan param int id untuk menjalankan getUser
var userProvider = FutureProvider.family.autoDispose<User?, int>(
  (ref, id) async {
    CancelToken cancelToken = CancelToken();
    // Ketika state dibatalkan, maka akan menjalankan cancel token
    // dari dio package
    ref.onDispose(() {
      cancelToken.cancel();
    });

    // ambil data user dari API
    var user = await ref.watch(userRepositoryProvider(cancelToken)).getUser(id);

    // Beritahu bahwa data user diatas tetap dipertahankan ketika state autodispose
    ref.keepAlive();
    return user;
  },
);
