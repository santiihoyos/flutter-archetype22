import 'package:model/entity/rick_and_morty/character.dart';

import '../character_repository.dart';

class CharacterRepositoryImpl implements CharacterRepository {

  @override
  Future<Character> addCharacter(final Character newCharacter) {
    throw Exception("Not implemented yet!");
  }

  @override
  Future<bool> deleteCharacter(final id) {
    throw Exception("Not implemented yet!");
  }

  @override
  Future<List<Character>> getCharacters(final int requestedPage) {
    throw Exception("Not implemented yet!");
  }

  @override
  Future<Character> updateCharacter(final id, final Character newCharacter) {
    throw Exception("Not implemented yet!");
  }
}