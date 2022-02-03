import 'package:model/entity/rick_and_morty/location.dart';

import '../location_reposiotry.dart';

class LocationRepositoryImpl extends LocationRepository {
  @override
  Future<Location> addLocation(final Location newLocation) {
    throw Exception("Not implemented yet!");
  }

  @override
  Future<bool> deleteLocation(final id) {
    throw Exception("Not implemented yet!");
  }

  @override
  Future<List<Location>> getLocations(final int requestedPage) {
    throw Exception("Not implemented yet!");
  }

  @override
  Future<Location> updateLocation(final id, final Location newLocation) {
    throw Exception("Not implemented yet!");
  }
}
