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
    var ori = MediaQuery.of(context).orientation;
    var pokemonList = getPokemonList();

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      height: ori == Orientation.portrait? size.height * 0.75 : size.height * 0.55,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(30),
            bottomLeft: Radius.circular(30)),
        color: Colors.white,
      ),
      child: GridView.builder(
        padding: const EdgeInsets.all(0),
        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: ori == Orientation.portrait? 2 :5,
          childAspectRatio: ori == Orientation.portrait?  1.15:1,
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

