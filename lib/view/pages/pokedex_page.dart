import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../controller/pokedex_controller.dart';
import '../widgets/pokemon_card.dart';

class PokedexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<PokedexController>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Pokédex')),
      body: controller.isLoading
          ? Center(child: CircularProgressIndicator())
          : controller.error.isNotEmpty
              ? Center(child: Text(controller.error))
              : ListView.builder(
                  itemCount: controller.pokemons.length,
                  itemBuilder: (context, index) {
                    final pokemon = controller.pokemons[index];
                    return PokemonCard(pokemon: pokemon);
                  },
                ),
    );
  }
}
