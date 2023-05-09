import 'package:geolocator/geolocator.dart' as gl;

class Location {
  Location({this.latitude, this.longitude});

  double latitude;
  double longitude;

  Future<void> getCurrentLocation() async {
    gl.LocationPermission permission;
    permission = await gl.Geolocator.requestPermission();

    try {
      gl.Position position = await gl.Geolocator.getCurrentPosition(
          desiredAccuracy: gl.LocationAccuracy.high);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (exception) {
      print(exception);
    }
  }
}
