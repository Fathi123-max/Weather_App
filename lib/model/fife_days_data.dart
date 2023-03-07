
class FiveDaysData {
    FiveDaysData({
        required this.datetime,
        required this.temp,
    });

    String datetime;
    double temp;

    factory FiveDaysData.fromJson(Map<String, dynamic> json) => FiveDaysData(
        datetime: json["datetime"],
        temp: json["temp"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "datetime": datetime,
        "temp": temp,
    };
}
