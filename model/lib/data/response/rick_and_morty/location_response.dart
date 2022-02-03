import 'dart:convert';

class LocationResponse {
  /// The id of the location.
  final int id;

  /// The name of the location.
  final String? name;

  /// The type of the location.
  final String? type;

  /// The dimension in which the location is located.
  final String? dimension;

  /// List of character who have been last seen in the location.
  final List<String>? residents;

  /// Link to the location's own endpoint.
  final String? url;

  /// Time at which the location was created in the database.
  final String? created;

  const LocationResponse({
    required this.id,
    this.name,
    this.type,
    this.dimension,
    this.residents,
    this.url,
    this.created,
  });

  factory LocationResponse.fromJson(Map<String, dynamic> json) {
    return LocationResponse(
      id: int.parse(json["id"]),
      name: json["name"],
      type: json["type"],
      dimension: json["dimension"],
      residents: json["residents"] as List<String>,
      url: json["url"],
      created: json["created"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": this.id,
      "name": this.name,
      "type": this.type,
      "dimension": this.dimension,
      "residents": jsonEncode(this.residents),
      "url": this.url,
      "created": this.created,
    };
  }
}
