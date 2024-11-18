import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './providers/weather_provider.dart';
import './screens/home_screen.dart';
import './screens/weather_details_screen.dart';
import './screens/error_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => WeatherProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather App',
      theme: ThemeData(
        primarySwatch: Colors.red,
        scaffoldBackgroundColor: Color(0xFFB3C6E6), // light cloudy sky color
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/details': (context) => const WeatherDetailsScreen(),
        '/error': (context) => const ErrorScreen(),
      },
    );
  }
}
