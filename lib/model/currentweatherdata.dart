
import 'package:wether_application/model/cloud.dart';
import 'package:wether_application/model/coord.dart';
import 'package:wether_application/model/main_weather.dart';
import 'package:wether_application/model/sys.dart';
import 'package:wether_application/model/weather.dart';
import 'package:wether_application/model/wind.dart';

class CurrentWeatherData {
    CurrentWeatherData({
        required this.coord,
        required this.weather,
        required this.base,
        required this.main,
        required this.visibility,
        required this.wind,
        required this.clouds,
        required this.dt,
        required this.sys,
        required this.timezone,
        required this.id,
        required this.name,
        required this.cod,
    });

    Coord coord;
    List<Weather> weather;
    String base;
    MainWeather main;
    int visibility;
    Wind wind;
    Cloud clouds;
    int dt;
    Sys sys;
    int timezone;
    int id;
    String name;
    int cod;

    factory CurrentWeatherData.fromJson(Map<String, dynamic> json) => CurrentWeatherData(
        coord: Coord.fromJson(json["coord"]),
        weather: List<Weather>.from(json["weather"].map((x) => Weather.fromJson(x))),
        base: json["base"],
        main: MainWeather.fromJson(json["main"]),
        visibility: json["visibility"],
        wind: Wind.fromJson(json["wind"]),
        clouds: Cloud.fromJson(json["clouds"]),
        dt: json["dt"],
        sys: Sys.fromJson(json["sys"]),
        timezone: json["timezone"],
        id: json["id"],
        name: json["name"],
        cod: json["cod"],
    );

    Map<String, dynamic> toJson() => {
        "coord": coord.toJson(),
        "weather": List<dynamic>.from(weather.map((x) => x.toJson())),
        "base": base,
        "main": main.toJson(),
        "visibility": visibility,
        "wind": wind.toJson(),
        "clouds": clouds.toJson(),
        "dt": dt,
        "sys": sys.toJson(),
        "timezone": timezone,
        "id": id,
        "name": name,
        "cod": cod,
    };
}
