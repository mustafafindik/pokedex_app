import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokedex_app/components/my_tabbar.dart';
import 'package:pokedex_app/components/type_card.dart';
import 'package:pokedex_app/constants.dart';
import 'package:pokedex_app/models/pokemon.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key, required this.pokemon}) : super(key: key);
  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: pokemon.color,
      appBar: AppBar(
        backgroundColor: pokemon.color,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(CupertinoIcons.arrow_left, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          IconButton(
            icon: const Icon(CupertinoIcons.heart, color: Colors.white),
            onPressed: () => print("Liked!"),
          ),
        ],
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: size.height * .25 + 50,
                width: size.width,
                color: pokemon.color,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: kDefaultPadding / 4,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            pokemon.name,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(pokemon.id,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding:
                                const EdgeInsets.only(top: kDefaultPadding / 4),
                            height: kDefaultPadding * 2,
                            width: size.width / 2.5,
                            child: GridView.builder(
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  childAspectRatio: 2.75,
                                ),
                                physics: const NeverScrollableScrollPhysics(),
                                padding: const EdgeInsets.all(0),
                                itemCount: pokemon.types.length,
                                itemBuilder: (context, i) {
                                  return TypeCard(type: pokemon.types[i]);
                                }),
                          ),
                          Text(pokemon.species,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                  bottom: 0,
                  child: Container(
                    height: 50,
                    width: size.width,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                      color: Colors.white,
                    ),
                  ),
              ),
              Positioned(
                bottom: -15,
                child: SizedBox(
                  width: size.width,
                  child: SvgPicture.asset(
                    'assets/icons/pokeball.svg',
                    color: Colors.white.withOpacity(0.2),
                    height: 200,
                  ),
                ),
              ),
              Positioned(
                bottom: 25,
                child: SizedBox(
                  width: size.width,
                  child: Hero(
                    tag:pokemon.id,
                    child: SizedBox(
                      height: 150,
                        width: 150,
                        child: Image.asset(pokemon.image)),
                  ),
                ),
              )
            ],
          ),
          Expanded(
            child: Container(
              width: size.width,
              color: Colors.white,
              //child: MyTabBar(),
            ),
          ),
        ],
      ),
    );
  }
}
