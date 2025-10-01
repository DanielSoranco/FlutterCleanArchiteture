import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../core/domain/usecase/get_all_pokemons.dart';
import '../core/domain/model/pokemon.dart';

class PokedexController extends ChangeNotifier {
  final GetAllPokemons _getAllPokemons;
  List<Pokemon> _pokemons = [];
  bool _isLoading = false;
  String _error = '';

  PokedexController(this._getAllPokemons);

  List<Pokemon> get pokemons => _pokemons;
  bool get isLoading => _isLoading;
  String get error => _error;

  Future<void> fetchPokemons() async {
    _isLoading = true;
    _error = '';
    notifyListeners();

    try {
      _pokemons = await _getAllPokemons();
    } catch (e) {
      _error = 'Erro ao carregar Pokémons';
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
