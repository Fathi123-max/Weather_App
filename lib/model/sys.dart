
class Sys {
    Sys(
               this.type,
               this.id,
               this.country,
               this.sunrise,
               this.sunset,
    );

    int type,id,sunrise,sunset;
    String country;
  
    factory Sys.fromJson(Map<String, dynamic> json) => Sys(
     json["type"],
     json["id"],
     json["country"],
     json["sunrise"],
     json["sunset"],
    );

    Map<String, dynamic> toJson() => {
        "type": type,
        "id": id,
        "country": country,
        "sunrise": sunrise,
        "sunset": sunset,
    };
}
