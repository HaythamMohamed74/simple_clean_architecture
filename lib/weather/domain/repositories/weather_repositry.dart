import '../entities/weather.dart';

abstract class BaseWeatherRepository {
  Future<Weather> getWeatherByCity(String city);
}
