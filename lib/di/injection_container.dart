import 'package:get_it/get_it.dart';
import '../controller/pokedex_controller.dart';
import '../core/domain/usecase/get_all_pokemons.dart';
import '../core/domain/repository/pokemon_repository.dart';
import '../data/repository/pokemon_repository_impl.dart';
import '../core/util/network_info.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Core
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl());

  // Repository
  sl.registerLazySingleton<PokemonRepository>(
    () => PokemonRepositoryImpl(sl()),
  );

  // Usecases
  sl.registerLazySingleton<GetAllPokemons>(
    () => GetAllPokemons(sl()),
  );

  // Controllers
  sl.registerFactory<PokedexController>(
    () => PokedexController(sl()),
  );
}
