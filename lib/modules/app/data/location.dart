class Location {
  double latitude;
  double longitude;
  Location({this.latitude = 0, this.longitude = 0});

  Location.parseJson(Map<String, dynamic> response) {
    latitude = double.parse(response['lat'] ?? 0);
    longitude = double.parse(response['lng'] ?? 0);
  }
}
