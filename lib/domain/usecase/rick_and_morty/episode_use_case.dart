import 'package:model/entity/rick_and_morty/episode.dart';

abstract class RickAndMortyGetEpisodeUseCase {
  Future<List<Episode>> getPage(int number);
}

abstract class RickAndMortyAddEpisodeUseCase {
  Future<Episode> addEpisode(final Episode episode);
}

abstract class RickAndMortyEditEpisodeUseCase {
  Future<Episode> editEpisode(final Episode episode);
}

abstract class RickAndMortyDeleteEpisodeUseCase {
  Future<Episode> deleteEpisode(final Episode episode);
}
