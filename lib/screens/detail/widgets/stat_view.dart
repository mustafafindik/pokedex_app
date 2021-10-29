import 'package:flutter/material.dart';
import 'package:pokedex_app/components/stat_card.dart';
import 'package:pokedex_app/constants.dart';
import 'package:pokedex_app/models/pokemon.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class StatView extends StatelessWidget {
  const StatView({Key? key,required this.pokemon}) : super(key: key);
  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    var ori = MediaQuery.of(context).orientation;

    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: ori ==Orientation.portrait? kDefaultPadding*2:kDefaultPadding*5 ),
          child: Column(
            children: [
              const SizedBox(height: 40,),
              StatCard(title: AppLocalizations.of(context)!.hp,statValue: pokemon.stat.hp,),
              StatCard(title: AppLocalizations.of(context)!.attack,statValue: pokemon.stat.attack,),
              StatCard(title: AppLocalizations.of(context)!.defence,statValue: pokemon.stat.defense,),
              StatCard(title: AppLocalizations.of(context)!.spAttack,statValue: pokemon.stat.spAtk,),
              StatCard(title: AppLocalizations.of(context)!.spDefence,statValue: pokemon.stat.spDef,),
              StatCard(title: AppLocalizations.of(context)!.speed,statValue: pokemon.stat.speed,),
              StatCard(title: AppLocalizations.of(context)!.total,statValue: pokemon.stat.getTotal(),),
            ],
          ),

        ),
      ),
    );
  }
}









