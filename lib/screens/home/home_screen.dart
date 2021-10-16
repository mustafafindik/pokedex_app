import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokedex_app/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return  Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: -50,
            right: -90,
            child: SvgPicture.asset(
              'assets/icons/pokeball.svg',
              color: Colors.grey.shade200,
              height: 250,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            width: size.width ,
            height: size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  <Widget>[
                const SizedBox(height: 80,),
                 Text("What Pokemon \nare you looking for?",
                style: Theme.of(context).textTheme.headline5!.copyWith(fontWeight: FontWeight.bold),),

              ],
            ),
          ),
        ],
      ),
    );

  }
}
