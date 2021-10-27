import 'package:flutter/cupertino.dart';
import 'package:pokedex_app/models/category.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../constants.dart';

List<Category> getCategories(BuildContext context){
  List<Category> categories = <Category>[];

    categories.add(Category(AppLocalizations.of(context)!.pokedex, kGrass));
    categories.add(Category(AppLocalizations.of(context)!.moves, kFire));
    categories.add(Category(AppLocalizations.of(context)!.abilities, kWater));
    categories.add(Category(AppLocalizations.of(context)!.items, kElectric));
    categories.add(Category(AppLocalizations.of(context)!.locations, kPoison));
    categories.add(Category(AppLocalizations.of(context)!.type, kEarth));

  return categories;
}