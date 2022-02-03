class Location {
  /// The id of the location.
  final int id;

  /// The name of the location.
  final String name;

  /// The type of the location.
  final String type;

  /// The dimension in which the location is located.
  final String dimension;

  /// List of character who have been last seen in the location.
  final List<String> residents;

  /// Link to the location's own endpoint.
  final String url;

  const Location({
    required this.id,
    required this.name,
    required this.type,
    required this.dimension,
    required this.residents,
    required this.url,
  });

  Location copyWith({
    int? id,
    String? name,
    String? type,
    String? dimension,
    List<String>? residents,
    String? url,
  }) {
    return Location(
      id: id ?? this.id,
      name: name ?? this.name,
      type: type ?? this.type,
      dimension: dimension ?? this.dimension,
      residents: residents ?? this.residents,
      url: url ?? this.url,
    );
  }

  @override
  String toString() {
    return 'Location{id: $id, name: $name, type: $type, dimension: $dimension, residents: $residents, url: $url}';
  }
}
