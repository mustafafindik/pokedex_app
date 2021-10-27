import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokedex_app/constants.dart';
import 'package:pokedex_app/screens/home/widgets/search_bar.dart';

class TitleAndSearchBar extends StatelessWidget {
  const TitleAndSearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var ori = MediaQuery.of(context).orientation;

    return Stack(
      children: <Widget>[
        Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          width: size.width,
          height: ori == Orientation.portrait? size.height * 0.35 : size.height * 0.65 ,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 125,
              ),
              Text(
                "What Pokemon \nare you looking for?",
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              const SearchBar(),
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
    );
  }
}
