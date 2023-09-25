import 'package:clean_test/core/utiles/constant.dart';
import 'package:clean_test/weather/data/models/weather_model.dart';
import 'package:dio/dio.dart';

abstract class WeatherDataSource {
  Future<WeatherModel> getWeather(String city);
}

class RemoteDataSource implements WeatherDataSource {
  final dio = Dio();
  late final WeatherModel weatheIfNull;
  @override
  Future<WeatherModel> getWeather(String city) async {
    Response response;
    try {
      response = await dio.get(
          '${AppConstant.baseUrl}/weather?q=$city&appid=${AppConstant.apiKey}');
      // final data = json.decode(response.data);
      final weatherData = WeatherModel.fromJson(response.data);
      print(weatherData.toString());
      return weatherData;
    } on Exception catch (e) {
      print(e.toString());
      return weatheIfNull;
    }
  }
}
