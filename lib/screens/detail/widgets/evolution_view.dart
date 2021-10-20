import 'package:flutter/material.dart';
import 'package:pokedex_app/constants.dart';
import 'package:pokedex_app/models/pokemon.dart';

class EvolutionView extends StatelessWidget {
  const EvolutionView({Key? key, required this.pokemon}) : super(key: key);
  final Pokemon pokemon;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white70,
      child: Center(
        child: Text("Evolution Page",
            style: TextStyle(color: kLightTextColor, fontSize: 32)),
      ),
    );
  }
}
