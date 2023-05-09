import '../services/location.dart';
import '../services/networking.dart';

String appid = 'c8d1d8969b6b0fa1eaede2cd1c7f3de0';
const openWeatherUrl = 'https://api.openweathermap.org/data/2.5/weather/';

class WeatherModel {
  Future<dynamic> getPlaceWeather(String placeName) async {
    NetworkHelper networkHelper =
        NetworkHelper('$openWeatherUrl?q=$placeName&appid=$appid&units=metric');
    var jData = await networkHelper.getData();
    return jData;
  }

  Future<dynamic> getLocationWeather() async {
    Location location = Location();
    await location.getCurrentLocation();

    NetworkHelper networkHelper = NetworkHelper(
        '$openWeatherUrl?lat=${location.latitude}&lon=${location.longitude}&appid=$appid&units=metric');
    var jData = await networkHelper.getData();
    return jData;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
