import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokedex_app/constants.dart';
import 'package:pokedex_app/models/evolution_chain.dart';
import 'package:pokedex_app/models/pokemon.dart';

class EvolutionView extends StatelessWidget {
  const EvolutionView({Key? key, required this.pokemon}) : super(key: key);
  final Pokemon pokemon;
  @override
  Widget build(BuildContext context) {
    var ori = MediaQuery.of(context).orientation;

    return SingleChildScrollView(
      child: Container(
        color: Colors.white70,
        child: Container(
          padding:  EdgeInsets.symmetric(horizontal: ori == Orientation.portrait? kDefaultPadding:kDefaultPadding*5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: kDefaultPadding*1.5),
                child: Text("Evolution Chain",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: pokemon.evolutionChain.map(
                        (evo) => ChainCard(evolutionChain: evo, color: pokemon.color,)).toList(),
              )

            ],
          ),
        ),
      ),
    );
  }
}

class ChainCard extends StatelessWidget {
  const ChainCard({
    Key? key,
    required this.evolutionChain, required this.color
  }) : super(key: key);
  final EvolutionChain evolutionChain;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 100,
            width: 100,
            child: CircleAvatar(
              backgroundColor: color!.withOpacity(0.15),
              child: SizedBox(
                  height: 80,
                  width: 80,
                  child: Image.asset(
                    evolutionChain.to,
                  )),
            ),
          ),
          SizedBox(
            width: 30,
            child: SvgPicture.asset(
              "assets/icons/right-arrow.svg",
              color: color,
            ),
          ),
          SizedBox(
            height: 100,
            width: 100,
            child: CircleAvatar(
              backgroundColor: color!.withOpacity(0.15),
              child: SizedBox(
                  height: 80,
                  width: 80,
                  child: Image.asset(
                    evolutionChain.from,
                  )),
            ),
          ),

        ],
      ),
    );
  }
}
