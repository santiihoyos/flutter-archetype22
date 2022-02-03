import 'package:model/entity/rick_and_morty/episode.dart';

import '../episode_reposiotry.dart';

class EpisodeRepositoryImpl extends EpisodeRepository {
  @override
  Future<Episode> addEpisode(final Episode newEpisode) {
    throw Exception("Not implemented yet!");
  }

  @override
  Future<bool> deleteEpisode(final id) {
    throw Exception("Not implemented yet!");
  }

  @override
  Future<List<Episode>> getEpisodes(final int requestedPage) {
    throw Exception("Not implemented yet!");
  }

  @override
  Future<Episode> updateEpisode(final id, final Episode newEpisode) {
    throw Exception("Not implemented yet!");
  }
}
