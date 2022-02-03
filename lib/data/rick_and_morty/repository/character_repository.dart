import 'package:model/entity/rick_and_morty/character.dart';

abstract class CharacterRepository {
  ///Adds RickAndMorty character
  Future<Character?> addCharacter(final Character newCharacter);

  ///Adds RickAndMorty character
  Future<Character?> updateCharacter(final id, final Character newCharacter);

  ///Gets RickAndMorty character 1 or n
  ///return [List] of [Character]
  Future<List<Character>?> getCharacters(final int requestedPage);

  ///Removes one RickAndMorty character
  ///return true -> delete ok
  Future<bool?> deleteCharacter(final id);
}
