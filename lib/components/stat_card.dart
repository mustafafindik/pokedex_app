
import 'package:flutter/material.dart';
import 'package:pokedex_app/components/stat_bar.dart';

import '../constants.dart';

class StatCard extends StatelessWidget {
  const StatCard({
    Key? key, required this.title, required this.statValue,
  }) : super(key: key);

  final String title;
  final int statValue;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding/3),
      child: Row(
        children: [
          SizedBox(
              width: size.width*0.2,
              child:  Text(title,style: const TextStyle(color: kLightTextColor,fontWeight: FontWeight.w600),)),
          SizedBox( width: size.width*0.125,
              child: Text(statValue.toString(),style: const TextStyle(fontWeight: FontWeight.w600),)),
          StatBar(statRatio: statValue/100,)

        ],
      ),
    );
  }
}
