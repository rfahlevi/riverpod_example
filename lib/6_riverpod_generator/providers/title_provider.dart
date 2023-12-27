import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'title_provider.g.dart';

// Cara membuat riverpod generator
@riverpod
String title(TitleRef ref) => 'Riverpod Generator Demo';
