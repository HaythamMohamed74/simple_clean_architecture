import 'package:clean_test/weather/data/data_sources/weather_data_source.dart';
import 'package:clean_test/weather/domain/entities/weather.dart';
import 'package:clean_test/weather/domain/repositories/weather_repositry.dart';

class WeatherRepository implements BaseWeatherRepository {
  final WeatherDataSource weatherDataSource;

  WeatherRepository(this.weatherDataSource);

  @override
  Future<Weather> getWeatherByCity(String city) async {
    return await weatherDataSource.getWeather(city);
  }
}
