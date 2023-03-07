
class MainWeather {
    MainWeather({
        required this.temp,
        required this.feelsLike,
        required this.tempMin,
        required this.tempMax,
        required this.pressure,
        required this.humidity,
    });

    double temp;
    double feelsLike;
    double tempMin;
    double tempMax;
    int pressure;
    int humidity;

    factory MainWeather.fromJson(Map<String, dynamic> json) => MainWeather(
        temp: json["temp"]?.toDouble(),
        feelsLike: json["feels_like"]?.toDouble(),
        tempMin: json["temp_min"]?.toDouble(),
        tempMax: json["temp_max"]?.toDouble(),
        pressure: json["pressure"],
        humidity: json["humidity"],
    );

    Map<String, dynamic> toJson() => {
        "temp": temp,
        "feels_like": feelsLike,
        "temp_min": tempMin,
        "temp_max": tempMax,
        "pressure": pressure,
        "humidity": humidity,
    };
}
