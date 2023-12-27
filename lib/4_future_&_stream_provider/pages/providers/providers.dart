import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/4_future_&_stream_provider/repositories/weather_repository.dart';

// Membuat Provider dari Weather Respository
var weatherRepositoryProvider = Provider<WeatherRepository>((ref) => WeatherRepository());

// Memantau weatherRepositoryProvider.getCurrentWeather dengan FutureProvider
var weatherFutureProvider = FutureProvider<Weathers>(
    (ref) => ref.watch(weatherRepositoryProvider).getCurrentWeather('Bekasi'));

var weatherStreamProvider = StreamProvider<Weathers>(
    (ref) => ref.watch(weatherRepositoryProvider).getWeatherStream('Bekasi'));
