import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:riverpod_example/5_modifiers_familiy_&_autodispose/entities/user.dart';

class UserRepository {
  final Dio _dio;
  final CancelToken? _cancelToken;

  UserRepository({Dio? dio, CancelToken? cancelToken})
      : _dio = dio ?? Dio(),
        _cancelToken = cancelToken;

  Future<User?> getUser(int id) async {
    log('Ambil data user');

    await Future.delayed(const Duration(seconds: 1));

    try {
      var response = await _dio.get(
        'https://reqres.in/api/users/$id',
        cancelToken: _cancelToken,
      );

      log('Kembalikan data user');
      return User.fromJson(response.data['data']);
    } catch (e) {
      return null;
    }
  }
}
