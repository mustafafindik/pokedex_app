import 'dart:ui';

import 'package:pokedex_app/models/evolution_chain.dart';
import 'package:pokedex_app/models/stat.dart';

class Pokemon{
  late String id;
  late String name;
  late String image;
  late List<String> types;
  late Color? color;
  late String species;
  late String about;
  late Stat stat;
  late String height;
  late String weight;
  late List<String> weakness;
  late List<EvolutionChain> evolutionChain;

  Pokemon(this.id, this.name, this.image, this.types, this.color,this.species,this.about,this.height,this.weight,this.stat,this.weakness,this.evolutionChain);
}