import 'package:model/entity/rick_and_morty/location.dart';

enum Status { ALIVE, DEAD, UNKNOWN }

enum Gender { FEMALE, MALE, GENDERLESS, UNKNOWN }

class Character {
  /// The id of the character.
  final String id;

  /// The name of the character.
  final String name;

  /// The status of the character
  final Status status;

  /// The species of the character.
  final String species;

  /// The type or subspecies of the character.
  final String type;

  /// The gender of the character.
  final Gender gender;

  /// Name and link to the character's origin location.
  final Object origin;

  /// Name and link to the character's last known location endpoint.
  final Location? location;

  /// String (url)	Link to the character's image.
  /// All images are 300x300px and most are medium shots or portraits
  /// since they are intended to be used as avatars.
  final String image;

  /// List of episodes in which this character appeared.
  final List<String> episode;

  const Character({
    required this.id,
    required this.name,
    required this.status,
    required this.species,
    required this.type,
    required this.gender,
    required this.origin,
    this.location,
    required this.image,
    required this.episode,
  });

  Character copyWith({
    String? id,
    String? name,
    Status? status,
    String? species,
    String? type,
    Gender? gender,
    Object? origin,
    Location? location,
    String? image,
    List<String>? episode,
  }) {
    return Character(
      id: id ?? this.id,
      name: name ?? this.name,
      status: status ?? this.status,
      species: species ?? this.species,
      type: type ?? this.type,
      gender: gender ?? this.gender,
      origin: origin ?? this.origin,
      location: location ?? this.location,
      image: image ?? this.image,
      episode: episode ?? this.episode,
    );
  }
}
