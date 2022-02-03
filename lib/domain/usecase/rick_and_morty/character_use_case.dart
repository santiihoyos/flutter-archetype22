import 'package:model/entity/rick_and_morty/character.dart';

abstract class RickAndMortyGetCharacterUseCase {
  Future<List<Character>> getPage(int pageNumber);
}

abstract class RickAndMortyAddCharacterUseCase {
  Future<Character> addCharacter(final Character character);
}

abstract class RickAndMortyEditCharacterUseCase {
  Future<Character> editCharacter(final Character character);
}

abstract class RickAndMortyDeleteCharacterUseCase {
  Future<Character> deleteCharacter(final Character character);
}
