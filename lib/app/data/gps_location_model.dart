class LocalizacaoGPS {
  double latitude;
  double longitude;

  LocalizacaoGPS({required this.latitude, required this.longitude});

  factory LocalizacaoGPS.fromMap(Map<String, dynamic> map) {
    return LocalizacaoGPS(
      latitude: map['latitude'],
      longitude: map['longitude'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'latitude': latitude,
      'longitude': longitude,
    };
  }

  @override
  String toString() {
    return 'LocalizacaoGPS(latitude: $latitude, longitude: $longitude)';
  }
}