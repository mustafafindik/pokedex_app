import 'package:flutter/material.dart';
import 'widgets/pokemon_grid.dart';
import 'widgets/title_and_appbar.dart';

class PokedexPage extends StatelessWidget {
  const PokedexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [TitleAndAppBar(), PokemonGrid()],
      ),
    );
  }
}
