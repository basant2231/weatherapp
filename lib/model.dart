class Weather {
  String cityName;
  double temp;
  int pressure;
  double windSpeed;
  int humidity;
  double feelsLike;

  Weather(
      {required this.cityName,
      required this.temp,
      required this.pressure,
      required this.windSpeed,
      required this.humidity,
      required this.feelsLike});

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      cityName: json['name'],
      temp: json['main']['temp'].toDouble(),
      pressure: json['main']['pressure'],
      windSpeed: json['wind']['speed'].toDouble(),
      humidity: json['main']['humidity'],
      feelsLike: json['main']['feels_like'].toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'cityName': cityName,
      'temp': temp,
      'pressure': pressure,
      'windSpeed': windSpeed,
      'humidity': humidity,
      'feelsLike': feelsLike,
    };
  }
}
