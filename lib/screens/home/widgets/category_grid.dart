import 'package:flutter/material.dart';
import 'package:pokedex_app/constants.dart';
import 'package:pokedex_app/data/category_data.dart';
import 'package:pokedex_app/screens/home/widgets/category_card.dart';

class CategoryGrid extends StatelessWidget {
  const CategoryGrid({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var categories = getCategories();
    Size size = MediaQuery.of(context).size;
    var ori = MediaQuery.of(context).orientation;

    print(ori);
    return Container(
      height: ori == Orientation.portrait ? size.height * 0.35 : size.height*0.35,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(30), bottomLeft: Radius.circular(30)),
        color: Colors.white,
      ),
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
      child: GridView.builder(
        padding: const EdgeInsets.all(0),
        shrinkWrap: ori == Orientation.portrait ? true : false,
        physics: ori == Orientation.portrait ? const NeverScrollableScrollPhysics() : const ScrollPhysics(),
        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: ori == Orientation.portrait? 2 : 6,
          childAspectRatio: 2.25,
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(category: categories[index]);
        },
      ),
    );
  }
}
