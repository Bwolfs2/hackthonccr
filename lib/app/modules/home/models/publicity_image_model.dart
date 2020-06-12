import 'dart:convert';

class PublicityImageModel {
  PublicityImageModel({
    this.url,
    this.id,
    this.action,
  });

  String url;
  int id;
  String action;

  PublicityImageModel copyWith({
    String url,
    int id,
    String action,
  }) =>
      PublicityImageModel(
        url: url ?? this.url,
        id: id ?? this.id,
        action: action ?? this.action,
      );

  static PublicityImageModel fromJson(String str) =>
      PublicityImageModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  static PublicityImageModel fromMap(dynamic json) => PublicityImageModel(
        url: json["url"],
        id: json["id"],
        action: json["action"],
      );

  Map<String, dynamic> toMap() => {
        "url": url,
        "id": id,
        "action": action,
      };

  static List<PublicityImageModel> fromJsonList(List list) {
    if (list == null) return null;
    return list.map<PublicityImageModel>(PublicityImageModel.fromMap).toList();
  }
}
