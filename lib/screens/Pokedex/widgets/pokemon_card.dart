import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokedex_app/components/type_card.dart';
import 'package:pokedex_app/constants.dart';
import 'package:pokedex_app/models/pokemon.dart';
import 'package:pokedex_app/screens/detail/detail_screen.dart';

class PokemonCard extends StatelessWidget {
  const PokemonCard({
    Key? key,
    required this.pokemon,
  }) : super(key: key);

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailPage(pokemon: pokemon,)));
      },
      child: Hero(
        tag: pokemon.id,
        child: Card(
          elevation: 8,
          shadowColor: pokemon.color!.withOpacity(0.7),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: pokemon.color,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(kDefaultPadding / 2),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            pokemon.id,
                            style: TextStyle(
                                color: Colors.black.withOpacity(0.1),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Text(
                        pokemon.name,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                      FractionallySizedBox(
                        widthFactor: 0.44,
                        child: ListView.builder(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true, //just set this property
                            padding: const EdgeInsets.all(0),
                            itemCount: pokemon.types.length,
                            itemBuilder: (context, i) {
                              return TypeCard(type: pokemon.types[i]);
                            }),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: -20,
                right: -20,
                child: SvgPicture.asset(
                  'assets/icons/pokeball.svg',
                  color: Colors.white.withOpacity(0.15),
                  height: 120,
                ),
              ),
              Positioned(
                bottom: 8,
                right: 10,
                child: SizedBox(
                  height: 70,
                  width: 70,
                  child: Image.asset(pokemon.image),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}