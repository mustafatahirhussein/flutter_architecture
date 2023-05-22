// To parse this JSON data, do
//
//     final userJson = userJsonFromMap(jsonString);

import 'dart:convert';

import 'package:flutter_architecture/domain/entities/user.dart';

List<UserJson> userJsonFromMap(String str) =>
    List<UserJson>.from(json.decode(str).map((x) => UserJson.fromMap(x)));

String userJsonToMap(List<UserJson> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class UserJson {
  int id;
  String name;
  String username;
  String email;
  String phone;
  String website;

  UserJson({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.phone,
    required this.website,
  });

  factory UserJson.fromMap(Map<String, dynamic> json) => UserJson(
        id: json["id"],
        name: json["name"],
        username: json["username"],
        email: json["email"],
        phone: json["phone"],
        website: json["website"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "username": username,
        "email": email,
        "phone": phone,
        "website": website,
      };

  User toDomain() => User(
      id: id,
      name: name,
      username: username,
      email: email,
      phone: phone,
      website: website);
}
