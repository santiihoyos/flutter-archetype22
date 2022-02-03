import 'package:drift/drift.dart';

class Booking extends Table {
  String name;
  String description;
  DateTime startDataTime;

  Booking({
    required this.name,
    required this.description,
    required this.startDataTime,
  });

  factory Booking.fromJson(Map<String, dynamic> json) {
    return Booking(
      name: json["name"],
      description: json["description"],
      startDataTime: DateTime.parse(json["startDataTime"]),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "name": this.name,
      "description": this.description,
      "startDataTime": this.startDataTime.toIso8601String(),
    };
  }
}
