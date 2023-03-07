
class FiveDaysData {
    FiveDaysData(
       this.datetime,
       this.temp,
    );

    String datetime;
    double temp;

    factory FiveDaysData.fromJson(Map<String, dynamic> json) => FiveDaysData(
       json["datetime"],
       json["temp"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "datetime": datetime,
        "temp": temp,
    };
}
