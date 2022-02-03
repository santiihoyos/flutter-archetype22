import 'package:model/entity/rick_and_morty/location.dart';

abstract class LocationRepository {
  ///Adds RickAndMorty location
  Future<Location?> addLocation(final Location newLocation);

  ///Adds RickAndMorty location
  Future<Location?> updateLocation(final id, final Location newLocation);

  ///Gets RickAndMorty location 1 or n
  ///return [List] of [Location]
  Future<List<Location>?> getLocations(final int requestedPage);

  ///Removes one RickAndMorty location
  ///return true -> delete ok
  Future<bool?> deleteLocation(final id);
}
