import '../../core/domain/model/pokemon.dart';
import '../../core/domain/repository/pokemon_repository.dart';
import '../../core/util/network_info.dart';

class PokemonRepositoryImpl implements PokemonRepository {
  final NetworkInfo networkInfo;

  PokemonRepositoryImpl(this.networkInfo);

  @override
  Future<List<Pokemon>> getAllPokemons() async {
    if (await networkInfo.isConnected) {
      // Implementar chamada à API para obter Pokémons
      return [];
    } else {
      throw Exception('Sem conexão com a internet');
    }
  }
}
