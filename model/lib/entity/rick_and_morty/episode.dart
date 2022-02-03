class Episode {
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

  const Episode({
    required this.id,
    required this.name,
    required this.airDate,
    required this.episode,
    required this.characters,
    required this.url,
    required this.created,
  });

  Episode copyWith({
    String? id,
    String? name,
    String? airDate,
    String? episode,
    List<String>? characters,
    String? url,
    String? created,
  }) {
    return Episode(
      id: id ?? this.id,
      name: name ?? this.name,
      airDate: airDate ?? this.airDate,
      episode: episode ?? this.episode,
      characters: characters ?? this.characters,
      url: url ?? this.url,
      created: created ?? this.created,
    );
  }
}
