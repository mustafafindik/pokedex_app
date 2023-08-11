import 'package:flutter/material.dart';
import 'package:pokedex_app/screens/home/widgets/category_grid.dart';
import 'title_and_searchbar.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          TitleAndSearchBar(),
          CategoryGrid(),

        ],
      ),
    );
  }
}



