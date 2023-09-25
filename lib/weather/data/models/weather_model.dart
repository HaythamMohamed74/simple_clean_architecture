import 'package:clean_test/weather/domain/entities/weather.dart';

class WeatherModel extends Weather {
  WeatherModel(super.id, super.main, super.pressure, super.name);
  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(json['id'], json['weather'][0]['main'],
        json['main']['pressure'], json['name']);
  }
}
