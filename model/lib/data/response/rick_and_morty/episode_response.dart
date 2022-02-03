import 'dart:convert';

class EpisodeResponse {

  /// The id of the episode.
  final String id;

  /// The name of the episode.
  final String name;

  /// The air date of the episode.
  final String airDate;

  /// The code of the episode.
  final String episode;

  /// List of characters who have been seen in the episode.
  final List<String> characters;

  /// Link to the episode's own endpoint.
  final String url;

  /// Time at which the episode was created in the database.
  final String created;

  const EpisodeResponse({
    required this.id,
    required this.name,
    required this.airDate,
    required this.episode,
    required this.characters,
    required this.url,
    required this.created,
  });

  factory EpisodeResponse.fromJson(Map<String, dynamic> json) {
    return EpisodeResponse(
      id: json["id"],
      name: json["name"],
      airDate: json["airDate"],
      episode: json["episode"],
      characters: json["characters"] as List<String>,
      url: json["url"],
      created: json["created"],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": this.id,
      "name": this.name,
      "airDate": this.airDate,
      "episode": this.episode,
      "characters": jsonEncode(this.characters),
      "url": this.url,
      "created": this.created,
    };
  }
}