import 'dart:convert';

import 'location_response.dart';

class CharacterResponse {
  /// The id of the character.
  final String id;

  /// The name of the character.
  final String name;

  /// The status of the character ('Alive', 'Dead' or 'unknown')
  final String status;

  /// The species of the character.
  final String species;

  /// The type or subspecies of the character.
  final String type;

  /// The gender of the character ('Female', 'Male', 'Genderless' or 'unknown').
  final String gender;

  /// Name and link to the character's origin location.
  final Object origin;

  /// Name and link to the character's last known location endpoint.
  final LocationResponse? locationResponse;

  /// String (url)	Link to the character's image.
  /// All images are 300x300px and most are medium shots or portraits
  /// since they are intended to be used as avatars.
  final String image;

  /// List of episodes in which this character appeared.
  final List<String> episodes;

  /// (url) Link to the character's own URL endpoint.
  final String url;

  ///  Time at which the character was created in the database.
  final String created;

  const CharacterResponse({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.type,
    required this.gender,
    required this.origin,
    this.locationResponse,
    required this.image,
    required this.episodes,
    required this.url,
    required this.created,
  });

  factory CharacterResponse.fromJson(Map<String, dynamic> json) {
    return CharacterResponse(
      id: json["id"],
      name: json["name"],
      status: json["status"],
      species: json["species"],
      type: json["type"],
      gender: json["gender"],
      origin: json["origin"],
      locationResponse: LocationResponse.fromJson(jsonDecode(json["locationResponse"])),
      image: json["image"],
      episodes: json["episodes"] as List<String>,
      url: json["url"],
      created: json["created"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": this.id,
      "name": this.name,
      "status": this.status,
      "species": this.species,
      "type": this.type,
      "gender": this.gender,
      "origin": this.origin,
      "locationResponse": this.locationResponse,
      "image": this.image,
      "episodes": jsonEncode(this.episodes),
      "url": this.url,
      "created": this.created,
    };
  }
}
