import 'package:clean_test/weather/domain/repositories/weather_repositry.dart';

import '../entities/weather.dart';

class GetWeatherUseCase {
  final BaseWeatherRepository baseWeatherRepository;

  GetWeatherUseCase(this.baseWeatherRepository);

  Future<Weather> execute(String city) async {
    return baseWeatherRepository.getWeatherByCity(city);
  }
}
