/// dataState model
class DogBreed {
  int id;
  String name;
  String imageUrl;
  bool isDangerous;

  DogBreed({
    required this.id,
    required this.name,
    required this.imageUrl,
    this.isDangerous = false,
  });

  DogBreed copyWith({
    int? id,
    String? name,
    String? imageUrl,
    bool? isDangerous,
  }) {
    return DogBreed(
      id: id ?? this.id,
      name: name ?? this.name,
      imageUrl: imageUrl ?? this.imageUrl,
      isDangerous: isDangerous ?? this.isDangerous,
    );
  }
}
