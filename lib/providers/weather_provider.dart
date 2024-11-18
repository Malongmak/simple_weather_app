import 'package:flutter/material.dart';
import '../services/weather_api.dart';

class WeatherProvider extends ChangeNotifier {
  final WeatherApiService apiService = WeatherApiService();
  Map<String, dynamic>? weatherData;

  Future<void> getWeather(String city) async {
    try {
      weatherData = await apiService.fetchWeather(city);
      notifyListeners();
    } catch (e) {
      weatherData = null;
      notifyListeners();
    }
  }
}
