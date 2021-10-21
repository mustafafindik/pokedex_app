import 'package:flutter/material.dart';
import 'package:pokedex_app/constants.dart';
import 'package:pokedex_app/models/pokemon.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key? key,required this.pokemon}) : super(key: key);

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
              child: Text(
                pokemon.about,
                style: const TextStyle(color: kTextColor, fontSize: 14),
              ),

            ),
            Container(
              decoration:  BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                color:Colors.white70,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.6),
                    blurRadius: 30,
                    offset: const Offset(0, 5), // changes position of shadow
                  ),
                ],
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:  [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10,),
                      const Text("Height",style: TextStyle(color:kLightTextColor)),
                      const SizedBox(height: 10,),
                      Text(pokemon.height),
                      const SizedBox(height: 10,),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10,),
                      const Text("Weight",style: TextStyle(color:kLightTextColor),),
                      const SizedBox(height: 10,),
                      Text(pokemon.weight),
                      const SizedBox(height: 10,),
                    ],
                  ),


                ],
              ),

            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
              child: Text(
                "Weakness",
                style: TextStyle(
                    color:kTextColor,
                    fontWeight: FontWeight.w600
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: pokemon.weakness.map(
                      (weakness) => Padding(
                        padding: const EdgeInsets.only(right: kDefaultPadding),
                        child: Image.asset(weakness),
                      )).toList(),
            )
          ],
          ),
        ),
      ),
    );
  }
}
