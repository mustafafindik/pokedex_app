import 'package:flutter/material.dart';
import 'package:pokedex_app/constants.dart';
import 'package:pokedex_app/data/pokemon_data.dart';

import 'pokemon_card.dart';

class PokemonGrid extends StatelessWidget {
  const PokemonGrid({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var pokemonList = getPokemonList();

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      height: size.height * 0.75,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(30),
            bottomLeft: Radius.circular(30)),
        color: Colors.white,
      ),
      child: GridView.builder(
        padding: const EdgeInsets.all(0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.15,
        ),
        itemCount: pokemonList.length,
        itemBuilder: (context, index) {
          var pokemon = pokemonList[index];
          return PokemonCard(pokemon: pokemon);
        },
      ),
    );
  }
}

