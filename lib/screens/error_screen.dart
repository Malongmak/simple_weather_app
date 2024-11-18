import 'package:flutter/material.dart';

// widgets
class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Error: Unable to fetch data")),
    );
  }
}
