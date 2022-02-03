import 'package:model/entity/rick_and_morty/episode.dart';

abstract class EpisodeRepository {
  ///Adds RickAndMorty episode
  Future<Episode?> addEpisode(final Episode newEpisode);

  ///Adds RickAndMorty episode
  Future<Episode?> updateEpisode(final id, final Episode newEpisode);

  ///Gets RickAndMorty episode 1 or n
  ///return [List] of [Episode]
  Future<List<Episode>?> getEpisodes(final int requestedPage);

  ///Removes one RickAndMorty episode
  ///return true -> delete ok
  Future<bool?> deleteEpisode(final id);
}
