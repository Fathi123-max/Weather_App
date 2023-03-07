


class Coord {
    Coord(
             this.lon,
             this.lat,
    );

    double lon,lat;
    

    factory Coord.fromJson(Map<String, dynamic> json) => Coord(
     json["lon"]?.toDouble(),
     json["lat"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "lon": lon,
        "lat": lat,
    };
}
