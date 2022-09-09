import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pokedex_app/constants.dart';
import 'package:pokedex_app/models/category.dart';
import 'package:pokedex_app/screens/Pokedex/pokedex_screen.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.category,
  }) : super(key: key);

  final Category category;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (category.name == "Pokedex") {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const PokedexPage()));
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(kDefaultPadding / 4),
        child: Card(
          elevation: 8,
          shadowColor: category.color!.withOpacity(0.7),
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
                  color: category.color,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: kDefaultPadding / 2),
                  child: Row(
                    children: [
                      Text(
                        category.name,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: -20,
                right: -20,
                child: SvgPicture.asset(
                  'assets/icons/pokeball.svg',
                  color: Colors.white.withOpacity(0.1),
                  height: 100,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
