import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/weather_provider.dart';

class WeatherDetailsScreen extends StatelessWidget {
  const WeatherDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final weatherData = context.watch<WeatherProvider>().weatherData;

    if (weatherData == null) {
      return const Scaffold(
        body: Center(
          child: Text("Could not retrieve data, try again."),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(title: const Text("Weather Details")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("City: ${weatherData['name']}"),
            Text("Temperature: ${weatherData['main']['temp']}°C"),
            Text("Weather: ${weatherData['weather'][0]['description']}"),
          ],
        ),
      ),
    );
  }
}
