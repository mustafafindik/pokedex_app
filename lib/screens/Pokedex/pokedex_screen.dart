import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokedex_app/constants.dart';

class PokedexPage extends StatelessWidget  {
  const PokedexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.red,
            width: size.width,
            height: size.height * 0.35,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: <Widget>[
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      icon: const Icon(CupertinoIcons.arrow_left, color: Colors.black),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                    IconButton(
                      icon: const Icon(CupertinoIcons.list_bullet,color:Colors.black),
                      onPressed: () => print("Menu"),
                    )
                  ],
                )


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
        ],
      ),
    );
  }
}
