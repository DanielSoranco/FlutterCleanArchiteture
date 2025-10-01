import 'package:flutter/material.dart';
import '../../core/domain/model/pokemon.dart';

class PokemonCard extends StatelessWidget {
  final Pokemon pokemon;

  const PokemonCard({required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.network(pokemon.imageUrl),
        title: Text(pokemon.name),
        subtitle: Text('#${pokemon.id}'),
      ),
    );
  }
}
