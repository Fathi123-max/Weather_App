

class Cloud {
    Cloud({
        required this.all,
    });

    int all;

    factory Cloud.fromJson(Map<String, dynamic> json) => Cloud(
        all: json["all"],
    );

    Map<String, dynamic> toJson() => {
        "all": all,
    };
}
