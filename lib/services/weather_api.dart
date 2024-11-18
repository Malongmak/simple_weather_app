import 'dart:convert';
import 'package:http/http.dart' as http;

class WeatherApiService {
  final String apiKey = 'ccb08b4ee2702a28706d62de04ba1ede'; // Your API key

  Future<Map<String, dynamic>?> fetchWeather(String city) async {
    final encodedCity = Uri.encodeComponent(city);

    final url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=$encodedCity&units=metric&appid=$apiKey');

    try {
      final response = await http.get(url);

      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);

        // Return relevant weather data
        return {
          'city': data['name'],
          'temperature': data['main']['temp'],
          'description': data['weather'][0]['description'],
          'humidity': data['main']['humidity'],
        };
      } else {
        // If the status code is not 200, return null or an empty map
        return null;
      }
    } catch (e) {
      // In case of an error, return null to avoid crashing
      return null;
    }
  }
}
