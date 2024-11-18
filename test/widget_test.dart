import 'package:flutter_test/flutter_test.dart';
import 'package:weather_calculation_app/main.dart';
import 'package:weather_calculation_app/screens/home_screen.dart'
    as home_screen;

void main() {
  testWidgets('Weather App smoke test', (WidgetTester tester) async {
    // Build the app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify the app shows the main screen with "Weather App" in the AppBar.
    expect(find.text('Weather App'), findsOneWidget);

    // Check for the presence of HomeScreen widget
    expect(find.byType(home_screen.HomeScreen), findsOneWidget);
  });
}
