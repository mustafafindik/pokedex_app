import 'package:flutter/material.dart';
import 'package:pokedex_app/components/stat_card.dart';
import 'package:pokedex_app/constants.dart';
import 'package:pokedex_app/models/pokemon.dart';


class StatView extends StatelessWidget {
  const StatView({Key? key,required this.pokemon}) : super(key: key);
  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {

    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding*2),
        child: Column(
          children: [
            const SizedBox(height: 40,),
            StatCard(title: "HP",statValue: pokemon.stat.hp,),
            StatCard(title: "Attack",statValue: pokemon.stat.attack,),
            StatCard(title: "Defence",statValue: pokemon.stat.defense,),
            StatCard(title: "Sp. Atk",statValue: pokemon.stat.spAtk,),
            StatCard(title: "Sp. Def",statValue: pokemon.stat.spDef,),
            StatCard(title: "Speed",statValue: pokemon.stat.speed,),
            StatCard(title: "Total",statValue: pokemon.stat.getTotal(),),
          ],
        ),

      ),
    );
  }
}









