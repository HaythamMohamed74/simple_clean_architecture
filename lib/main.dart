import 'package:clean_test/weather/data/data_sources/weather_data_source.dart';
import 'package:clean_test/weather/data/repositories/data_repository.dart';
import 'package:clean_test/weather/domain/entities/weather.dart';
import 'package:clean_test/weather/domain/repositories/weather_repositry.dart';
import 'package:clean_test/weather/domain/use_cases/get_weather_by_city.dart';
import 'package:flutter/material.dart';

void main() async {
  WeatherDataSource weatherDataSource = RemoteDataSource();
  BaseWeatherRepository baseWeatherRepository =
      WeatherRepository(weatherDataSource);
  Weather weather =
      await GetWeatherUseCase(baseWeatherRepository).execute('cairo');
  debugPrint(weather.toString());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clean Architecture ',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
