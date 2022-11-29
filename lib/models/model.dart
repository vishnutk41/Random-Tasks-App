// To parse this JSON data, do
//
//     final randomActivity = randomActivityFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

RandomActivity randomActivityFromJson(String str) => RandomActivity.fromJson(json.decode(str));

String randomActivityToJson(RandomActivity data) => json.encode(data.toJson());

class RandomActivity {
    RandomActivity({
        required this.activity,
        required this.type,
        required this.participants,
        required this.price,
        required this.link,
        required this.key,
        required this.accessibility,
    });

    String activity;
    String type;
    int participants;
    int price;
    String link;
    String key;
    double accessibility;

    factory RandomActivity.fromJson(Map<String, dynamic> json) => RandomActivity(
        activity: json["activity"],
        type: json["type"],
        participants: json["participants"],
        price: json["price"],
        link: json["link"],
        key: json["key"],
        accessibility: json["accessibility"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "activity": activity,
        "type": type,
        "participants": participants,
        "price": price,
        "link": link,
        "key": key,
        "accessibility": accessibility,
    };
}
