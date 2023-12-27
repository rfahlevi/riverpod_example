import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/3_state_notifier_provider/entities/person.dart';

class PersonNotifier extends StateNotifier<Person> {
  PersonNotifier() : super(const Person(name: 'No Name', age: 0));

  void changeName(String name) => state = state.copyWith(name: name);

  void birthday() => state = state.copyWith(age: state.age + 1);
}

final personProvider = StateNotifierProvider<PersonNotifier, Person>((ref) => PersonNotifier());
