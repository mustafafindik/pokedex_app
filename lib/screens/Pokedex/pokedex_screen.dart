import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokedex_app/constants.dart';
import 'package:pokedex_app/data/pokemon_data.dart';
import 'package:pokedex_app/screens/detail/detail_screen.dart';

class PokedexPage extends StatelessWidget {
  const PokedexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var pokemonList = getPokemonList();

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: <Widget>[
              Container(
                color: Colors.white,
                width: size.width,
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                height: size.height * 0.25,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(
                      height: 125,
                    ),
                    Text(
                      "Pokedex",
                      style: Theme.of(context)
                          .textTheme
                          .headline5!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: -50,
                right: -90,
                child: SvgPicture.asset(
                  'assets/icons/pokeball.svg',
                  color: Colors.grey.shade200,
                  height: 250,
                ),
              ),
              Positioned(
                  width: size.width,
                  top: 50,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPadding / 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: const Icon(CupertinoIcons.arrow_left,
                              color: Colors.black),
                          onPressed: () => Navigator.of(context).pop(),
                        ),
                        IconButton(
                          icon: const Icon(CupertinoIcons.list_bullet,
                              color: Colors.black),
                          onPressed: () => print("Menu"),
                        )
                      ],
                    ),
                  ))
            ],
          ),
          Container(
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
                childAspectRatio: 1.25,
              ),
              itemCount: pokemonList.length,
              itemBuilder: (context, index) {
                var pokemon = pokemonList[index];
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
                                    widthFactor: 0.4,
                                    child: ListView.builder(
                                        physics: const NeverScrollableScrollPhysics(),
                                        shrinkWrap: true, //just set this property
                                        padding: const EdgeInsets.all(0),
                                        itemCount: pokemon.types.length,
                                        itemBuilder: (context, i) {
                                          return Container(
                                            margin: EdgeInsets.symmetric(vertical: kDefaultPadding/4)
                                              ,decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                color: Colors.white.withOpacity(0.2),
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding/4,horizontal: kDefaultPadding/3),
                                                child: Text(pokemon.types[i],style: TextStyle(color: Colors.white,fontSize: 10),),
                                              ));
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
              },
            ),
          )
        ],
      ),
    );
  }
}
