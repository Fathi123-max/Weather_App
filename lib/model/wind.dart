
class Wind {
    Wind(
                 this.speed,
                 this.deg,
    );

    double speed;
    int deg;

    factory Wind.fromJson(Map<String, dynamic> json) => Wind(
     json["speed"]?.toDouble(),
     json["deg"],
    );

    Map<String, dynamic> toJson() => {
        "speed": speed,
        "deg": deg,
    };
}
