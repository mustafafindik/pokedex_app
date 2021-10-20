import 'package:flutter/material.dart';
import 'package:pokedex_app/constants.dart';
import 'package:pokedex_app/models/pokemon.dart';

class StatView extends StatelessWidget {
  const StatView({Key? key, required this.pokemon}) : super(key: key);
  final Pokemon pokemon;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text("Stats Page",
            style: TextStyle(color: kLightTextColor, fontSize: 32)),
      ),
    );
  }
}
