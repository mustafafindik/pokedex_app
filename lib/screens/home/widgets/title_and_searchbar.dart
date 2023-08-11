import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokedex_app/constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
          height: ori == Orientation.portrait? size.height * 0.35 : size.height * 0.75 ,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
               SizedBox(
                height: ori == Orientation.portrait?  size.height*0.13 :size.width*0.13 ,
              ),
          Text(
                AppLocalizations.of(context)!.title,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
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
            height: ori == Orientation.portrait?  size.height*0.30:size.height*0.55,
          ),
        ),
      ],
    );
  }
}
