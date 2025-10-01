import '../repository/pokemon_repository.dart';
import '../model/pokemon.dart';
class GetAllPokemons {
  final PokemonRepository repository;

  GetAllPokemons(this.repository);

  Future<List<Pokemon>> call() {
    return repository.getAllPokemons();
  }
}
