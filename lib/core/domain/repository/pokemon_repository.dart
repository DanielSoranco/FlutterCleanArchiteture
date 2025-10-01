import '../model/pokemon.dart';

abstract class PokemonRepository {
  Future<List<Pokemon>> getAllPokemons();
}
