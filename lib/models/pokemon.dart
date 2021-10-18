import 'dart:ui';

class Pokemon{
  late String id;
  late String name;
  late String image;
  late List<String> types;
  late Color? color;

  Pokemon(this.id, this.name, this.image, this.types, this.color);
}