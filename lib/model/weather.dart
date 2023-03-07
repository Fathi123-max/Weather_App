
class Weather {
    Weather(
                this.id,
                this.main,
                this.description,
                this.icon,
    );

    int id;
    String main,description,icon;
  

    factory Weather.fromJson(Map<String, dynamic> json) => Weather(
         json["id"],
         json["main"],
         json["description"],
         json["icon"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "main": main,
        "description": description,
        "icon": icon,
    };
}
