import 'package:flutter/material.dart';
import 'package:weather_calculation_app/services/weather_api.dart';

class WeatherScreen extends StatefulWidget {
  final String city;
  const WeatherScreen({super.key, required this.city});

  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  final WeatherApiService _weatherService = WeatherApiService();
  late Future<Map<String, dynamic>?>
      _weatherData; // Allow null for error handling

  @override
  void initState() {
    super.initState();
    _weatherData = _weatherService.fetchWeather(widget.city);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.city} Weather'),
      ),
      body: FutureBuilder<Map<String, dynamic>?>(
        future: _weatherData,
        builder: (context, snapshot) {
          // Handle waiting state
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          // Handle error state
          else if (snapshot.hasError || !snapshot.hasData) {
            return Center(
                child: Text('Error: ${snapshot.error ?? 'No data available'}'));
          }

          // Handle data state
          else if (snapshot.hasData) {
            final weather = snapshot.data!; // This will never be null
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'City: ${weather['city']}',
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Temperature: ${weather['temperature']}°C',
                    style: const TextStyle(fontSize: 24),
                  ),
                  Text(
                    'Description: ${weather['description']}',
                    style: const TextStyle(fontSize: 18),
                  ),
                  Text(
                    'Humidity: ${weather['humidity']}%',
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              ),
            );
          }

          // Fallback if no data is available
          return const Center(child: Text('No data available'));
        },
      ),
    );
  }
}
