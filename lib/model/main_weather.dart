
class MainWeather {
    MainWeather(
       this.temp,
       this.feelsLike,
       this.tempMin,
       this.tempMax,
       this.pressure,
       this.humidity,
    );

    double temp,feelsLike,tempMin,tempMax;
    
    int pressure,humidity;
    

    factory MainWeather.fromJson(Map<String, dynamic> json) => MainWeather(
       json["temp"].toDouble(),
       json["feels_like"].toDouble(),
       json["temp_min"].toDouble(),
       json["temp_max"].toDouble(),
       json["pressure"],
       json["humidity"],
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
