import 'package:flutter_poc/domain/usecase/rick_and_morty/character_use_case.dart';
import 'package:model/entity/rick_and_morty/character.dart';

class CharacterGetUseCaseImpl implements RickAndMortyGetCharacterUseCase {

  @override
  Future<List<Character>> getPage(int pageNumber) {
    return Future.value(
        List.empty()
    );
  }
}