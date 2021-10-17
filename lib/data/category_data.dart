import 'package:pokedex_app/models/category.dart';

import '../constants.dart';

List<Category> getCategories(){
  List<Category> categories = <Category>[];
  categories.add(Category("Pokedex", kGrass));
  categories.add(Category("Moves", kFire));
  categories.add(Category("Abilities", kWater));
  categories.add(Category("Items", kElectric));
  categories.add(Category("Locations", kPoison));
  categories.add(Category("Type Charts", kEarth));

  return categories;
}