import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;
  Future getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.best);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print("position error: " + e.toString());
    }
  }
}
