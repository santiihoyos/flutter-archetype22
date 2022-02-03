import 'package:model/entity/rick_and_morty/location.dart';

abstract class RickAndMortyGetLocationUseCase {
  Future<List<Location>> getPage(int number);
}

abstract class RickAndMortyAddLocationUseCase {
  Future<Location> addLocation(final Location location);
}

abstract class RickAndMortyEditLocationUseCase {
  Future<Location> editLocation(final Location location);
}

abstract class RickAndMortyDeleteLocationUseCase {
  Future<Location> deleteLocation(final Location location);
}
