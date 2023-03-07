
import 'package:wether_application/model/cloud.dart';
import 'package:wether_application/model/coord.dart';
import 'package:wether_application/model/main_weather.dart';
import 'package:wether_application/model/sys.dart';
import 'package:wether_application/model/weather.dart';
import 'package:wether_application/model/wind.dart';

class CurrentWeatherData {
    CurrentWeatherData(
        [ this.coord,
           this.weather,
           this.base,
           this.main,
           this.visibility,
           this.wind,
           this.clouds,
           this.dt,
           this.sys,
           this.timezone,
           this.id,
           this.name,
           this.cod
    ]);

    Coord? coord;
    List<Weather>? weather;
    String? base;
    MainWeather? main;
    int? visibility;
    Wind? wind;
    Cloud? clouds;
    int? dt;
    Sys? sys;
    int? timezone;
    int? id;
    String? name;
    int? cod;

  factory CurrentWeatherData.fromJson(dynamic json) {
    if (json == null) {
      return CurrentWeatherData();
    }

    return CurrentWeatherData(
       Coord.fromJson(json['coord']),
       (json['weather'] as List)
              .map((w) => Weather.fromJson(w))
              .toList() ,
       json['base'],
       MainWeather.fromJson(json['main']),
       json['visibility'],
       Wind.fromJson(json['wind']),
       Cloud.fromJson(json['clouds']),
       json['dt'],
       Sys.fromJson(json['sys']),
       json['timezone'],
       json['id'],
       json['name'],
       json['cod'],
    );
  }
}
