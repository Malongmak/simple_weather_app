# Weather App 🌦️
![Alt text for the image](./lib/assets/images/logo%20(1).jpg)
The **Weather App** is a Flutter-based mobile application that fetches and displays real-time weather information for cities around the world. Using the OpenWeatherMap API, users can see current temperature, weather conditions, humidity levels, and local time based on the city they search for.

## Features
- **Search for City Weather**: Users can enter any city name and get the current weather information.
- **Real-time Weather Data**: Displays temperature, weather description, humidity, and more.
- **City Time Zones**: The app adjusts to the time zone of each city and displays the current local time.
- **Simple Navigation**: The app uses a clean and intuitive interface for easy navigation.

## Screenshots
![Alt text for the image](./lib/assets/images/iPhone-13-PRO-localhost%20(1).png)

## Tech Stack
- **Flutter**: Cross-platform framework for mobile app development.
- **Dart**: Programming language used by Flutter.
- **Provider**: For state management.
- **HTTP**: For making network requests.
- **OpenWeatherMap API**: External API to retrieve real-time weather information.
![Alt text for the image](./lib/assets/images/logo%20(2).jpg)
## Getting Started

### Prerequisites
- **Flutter SDK**: Install the latest version of Flutter [here](https://flutter.dev/docs/get-started/install).
- **API Key**: Sign up at [OpenWeatherMap](https://home.openweathermap.org/users/sign_up) to get your API key.

### Installation
1. **Clone the Repository**
   ```bash
   git clone https://github.com/yourusername/weather_calculation_app.git
   cd weather_calculation_app
   ```

2. **Install Dependencies**
   ```bash
   flutter pub get
   ```

3. **Configure API Key**
   - In the `lib/services/weather_api.dart` file, replace `'YOUR_API_KEY_HERE'` with your actual API key:
     ```dart
     final String apiKey = 'YOUR_API_KEY_HERE';
     ```

4. **Run the App**
   ```bash
   flutter run
   ```

## App Structure

- **lib/**: Main directory for all app source code.
  - **main.dart**: Entry point of the application.
  - **services/**: Contains `weather_api.dart`, the service responsible for fetching data from the OpenWeatherMap API.
  - **screens/**: Contains screens, such as `HomeScreen` for city selection and `WeatherScreen` for weather details.
  - **providers/**: Contains the Provider (`WeatherProvider`) for state management.

## Usage

1. **Search for a City**: On the home screen, type a city name and submit to view the current weather data.
2. **Weather Details**: On the weather screen, see details like temperature, description, humidity, and the city's local time.
3. **Navigation**: Navigate back to search for another city's weather data as needed.

## Code Overview

### API Service (`weather_api.dart`)
Handles fetching weather data from the OpenWeatherMap API. It retrieves the temperature, weather description, humidity, and time zone data, which are then displayed on the UI.

### Screens
- **HomeScreen**: The main screen where users can type a city name and request weather data.
- **WeatherScreen**: Displays the weather details, including temperature, humidity, weather description, and local time based on the time zone.

## Dependencies

- `flutter`: For building the UI and handling interactions.
- `provider`: For managing state across screens.
- `http`: To make HTTP requests to the OpenWeatherMap API.

## Contributing
1. Fork the repository.
2. Create a new branch for your feature:
   ```bash
   git checkout -b feature-name
   ```
3. Commit your changes:
   ```bash
   git commit -m 'Add new feature'
   ```
4. Push to the branch:
   ```bash
   git push origin feature-name
   ```
5. Open a Pull Request.

## License
This project is licensed under the MIT License.

## Acknowledgements
- **OpenWeatherMap** for providing the weather data.
- **Flutter & Dart** communities for creating such a versatile cross-platform framework.

This README will help users understand the app’s purpose, usage, and setup requirements. Adjust it as needed to include any new features or additional instructions!# Weather App 🌦️

The **Weather App** is a Flutter-based mobile application that fetches and displays real-time weather information for cities around the world. Using the OpenWeatherMap API, users can see current temperature, weather conditions, humidity levels, and local time based on the city they search for.

## Features
- **Search for City Weather**: Users can enter any city name and get the current weather information.
- **Real-time Weather Data**: Displays temperature, weather description, humidity, and more.
- **City Time Zones**: The app adjusts to the time zone of each city and displays the current local time.
- **Simple Navigation**: The app uses a clean and intuitive interface for easy navigation.

## Screenshots
*(Add screenshots of your app here)*

## Tech Stack
- **Flutter**: Cross-platform framework for mobile app development.
- **Dart**: Programming language used by Flutter.
- **Provider**: For state management.
- **HTTP**: For making network requests.
- **OpenWeatherMap API**: External API to retrieve real-time weather information.

## Getting Started

### Prerequisites
- **Flutter SDK**: Install the latest version of Flutter [here](https://flutter.dev/docs/get-started/install).
- **API Key**: Sign up at [OpenWeatherMap](https://home.openweathermap.org/users/sign_up) to get your API key.

### Installation
1. **Clone the Repository**
   ```bash
   git clone https://github.com/yourusername/weather_calculation_app.git
   cd weather_calculation_app
   ```

2. **Install Dependencies**
   ```bash
   flutter pub get
   ```

3. **Configure API Key**
   - In the `lib/services/weather_api.dart` file, replace `'YOUR_API_KEY_HERE'` with your actual API key:
     ```dart
     final String apiKey = 'YOUR_API_KEY_HERE';
     ```

4. **Run the App**
   ```bash
   flutter run
   ```

## App Structure

- **lib/**: Main directory for all app source code.
  - **main.dart**: Entry point of the application.
  - **services/**: Contains `weather_api.dart`, the service responsible for fetching data from the OpenWeatherMap API.
  - **screens/**: Contains screens, such as `HomeScreen` for city selection and `WeatherScreen` for weather details.
  - **providers/**: Contains the Provider (`WeatherProvider`) for state management.

## Usage

1. **Search for a City**: On the home screen, type a city name and submit to view the current weather data.
2. **Weather Details**: On the weather screen, see details like temperature, description, humidity, and the city's local time.
3. **Navigation**: Navigate back to search for another city's weather data as needed.

## Code Overview

### API Service (`weather_api.dart`)
Handles fetching weather data from the OpenWeatherMap API. It retrieves the temperature, weather description, humidity, and time zone data, which are then displayed on the UI.

### Screens
- **HomeScreen**: The main screen where users can type a city name and request weather data.
- **WeatherScreen**: Displays the weather details, including temperature, humidity, weather description, and local time based on the time zone.

## Dependencies

- `flutter`: For building the UI and handling interactions.
- `provider`: For managing state across screens.
- `http`: To make HTTP requests to the OpenWeatherMap API.

## Contributing
1. Fork the repository.
2. Create a new branch for your feature:
   ```bash
   git checkout -b feature-name
   ```
3. Commit your changes:
   ```bash
   git commit -m 'Add new feature'
   ```
4. Push to the branch:
   ```bash
   git push origin feature-name
   ```
5. Open a Pull Request.

## License
This project is licensed under the MIT License.

## Acknowledgements
- **OpenWeatherMap** for providing the weather data.
- **Flutter & Dart** communities for creating such a versatile cross-platform framework.