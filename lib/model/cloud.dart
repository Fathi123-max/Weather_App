

class Cloud {
    Cloud(
              this.all,
    );

    int all;

    factory Cloud.fromJson(Map<String, dynamic> json) => Cloud(
     json["all"],
    );

    Map<String, dynamic> toJson() => {
        "all": all,
    };
}
