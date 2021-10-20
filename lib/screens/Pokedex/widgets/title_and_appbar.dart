import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokedex_app/constants.dart';

class TitleAndAppBar extends StatelessWidget {
  const TitleAndAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Stack(
      children: <Widget>[
        Container(
          color: Colors.white,
          width: size.width,
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
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
              padding:
                  const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
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
    );
  }
}
