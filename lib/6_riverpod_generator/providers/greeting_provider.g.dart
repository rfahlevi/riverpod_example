// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'greeting_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$greetingHash() => r'10c3fcfc14f9ccbff80b9cb5dc6454fa468fd10e';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [greeting].
@ProviderFor(greeting)
const greetingProvider = GreetingFamily();

/// See also [greeting].
class GreetingFamily extends Family<AsyncValue<String>> {
  /// See also [greeting].
  const GreetingFamily();

  /// See also [greeting].
  GreetingProvider call({
    required String personName,
  }) {
    return GreetingProvider(
      personName: personName,
    );
  }

  @override
  GreetingProvider getProviderOverride(
    covariant GreetingProvider provider,
  ) {
    return call(
      personName: provider.personName,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'greetingProvider';
}

/// See also [greeting].
class GreetingProvider extends AutoDisposeFutureProvider<String> {
  /// See also [greeting].
  GreetingProvider({
    required String personName,
  }) : this._internal(
          (ref) => greeting(
            ref as GreetingRef,
            personName: personName,
          ),
          from: greetingProvider,
          name: r'greetingProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$greetingHash,
          dependencies: GreetingFamily._dependencies,
          allTransitiveDependencies: GreetingFamily._allTransitiveDependencies,
          personName: personName,
        );

  GreetingProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.personName,
  }) : super.internal();

  final String personName;

  @override
  Override overrideWith(
    FutureOr<String> Function(GreetingRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GreetingProvider._internal(
        (ref) => create(ref as GreetingRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        personName: personName,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<String> createElement() {
    return _GreetingProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GreetingProvider && other.personName == personName;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, personName.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GreetingRef on AutoDisposeFutureProviderRef<String> {
  /// The parameter `personName` of this provider.
  String get personName;
}

class _GreetingProviderElement extends AutoDisposeFutureProviderElement<String>
    with GreetingRef {
  _GreetingProviderElement(super.provider);

  @override
  String get personName => (origin as GreetingProvider).personName;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
