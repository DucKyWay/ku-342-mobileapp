class Weather {
  final String city;
  final double temp;
  final String weather;
  final String icon;

  Weather({required this.city, required this.temp, required this.weather, required this.icon});

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      city: json["name"],
      temp: (json["main"]["temp"] as num).toDouble(),
      weather: json["weather"][0]["main"],
      icon: json["weather"][0]["icon"],
    );
  }
}