import 'dart:convert';

class User {
  String? name;
  String? celdaID;
  String? towerID;
  String? latitude;
  String? longitude;
  bool? isActive;
  String? url;
  DateTime? date;

  User({
    this.name,
    this.celdaID,
    this.towerID,
    this.latitude,
    this.longitude,
    this.isActive,
    this.url,
    this.date,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'celdaID': celdaID,
      'towerID': towerID,
      'latitude': latitude,
      'longitude': longitude,
      'isActive': isActive,
      'url': url,
      'date': date?.millisecondsSinceEpoch,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      name: map['name'],
      celdaID: map['celdaID'],
      towerID: map['towerID'],
      latitude: map['latitude'],
      longitude: map['longitude'],
      isActive: map['isActive'],
      url: map['url'],
      date: map['date'] != null
          ? DateTime.fromMillisecondsSinceEpoch(map['date'])
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));
}
