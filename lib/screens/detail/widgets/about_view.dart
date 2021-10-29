import 'package:flutter/material.dart';
import 'package:pokedex_app/constants.dart';
import 'package:pokedex_app/models/pokemon.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key? key,required this.pokemon}) : super(key: key);

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    var ori = MediaQuery.of(context).orientation;
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: ori ==Orientation.portrait? kDefaultPadding :kDefaultPadding* 2),
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
                      Text(AppLocalizations.of(context)!.height,style: const TextStyle(color:kLightTextColor)),
                      const SizedBox(height: 10,),
                      Text(pokemon.height),
                      const SizedBox(height: 10,),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10,),
                      Text(AppLocalizations.of(context)!.weight,style: const TextStyle(color:kLightTextColor),),
                      const SizedBox(height: 10,),
                      Text(pokemon.weight),
                      const SizedBox(height: 10,),
                    ],
                  ),


                ],
              ),

            ),
             Padding(
              padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
              child: Text(
                AppLocalizations.of(context)!.weakness,
                style: const TextStyle(
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
