import 'package:pokedex_app/constants.dart';
import 'package:pokedex_app/models/pokemon.dart';
import 'package:pokedex_app/models/stat.dart';

List<Pokemon> getPokemonList() {
  List<Pokemon> pokemonList = <Pokemon>[];
  pokemonList.add(Pokemon("#001", "Bulbasaur", "assets/images/Bulbasaur.png",
      ["Grass", "Poison"], kGrass, "Seed Pokemon",
      "Bulbasaur resembles a small amphibian/frog, but it bears three claws on each of its feet and has no tail. It also has large, red eyes and small, sharp teeth. Its skin is a light, turquoise color with dark, green spots. It has three claws on all four of its legs. Its most notable feature, however, is the aforementioned bulb on its back, which according to its entry in the Pokédex, was planted there at birth.","2’4” (71.1 cm)",
      "15.2 lb (6.9 kg)",Stat(45, 49, 49, 65, 65, 45)));

  pokemonList.add(Pokemon("#002", "Ivysaur", "assets/images/Ivysaur.png",
      ["Grass", "Poison"], kGrass, "Seed Pokemon",
      "",
      "3’03” (100 cm)","28.7 lb (13 kg)",Stat(60, 62, 63, 80, 80, 60)));

  pokemonList.add(Pokemon("#003", "Venusaur", "assets/images/Venusaur.png",
      ["Grass", "Poison"], kGrass, "Seed Pokemon",
      "",
      "6’07” (200.1 cm)","220.5 lb (100 kg)",Stat(80, 82, 83, 100, 100, 80)));

  pokemonList.add(Pokemon("#004", "Charmander", "assets/images/Charmander.png",
      ["Fire"], kFire, "Lizard Pokemon",
      "",
      "2’0” (61 cm)","18.7 lb (8.5 kg)",Stat(39, 52, 43, 60, 50, 65)));

  pokemonList.add(Pokemon("#005", "Charmeleon", "assets/images/Charmeleon.png",
      ["Fire"], kFire, "Flame Pokemon",
      "",
      "3’07” (110 cm)","41.9 lb (19 kg)",Stat(58, 64, 58, 80, 65, 80)));

  pokemonList.add(Pokemon("#006", "Charizard", "assets/images/Charizard.png",
      ["Fire", "Fly"], kFire, "Flame Pokemon",
      "",
      "5’7” (170.2 cm)","199.5 lb (90.5 kg)",Stat(78, 84, 78, 109, 85, 100)));

  pokemonList.add(Pokemon("#007", "Squirtle", "assets/images/Squirtle.png",
      ["Water"], kWater, "Tiny Turtle Pokemon",
      "",
      "1’8” (50.8 cm)","19.8 lb (9 kg)",Stat(44, 48, 65, 50, 64, 43)));

  pokemonList.add(Pokemon("#008", "Wartortle", "assets/images/Wartortle.png",
      ["Water"], kWater, " Turtle Pokemon",
      "",
      "3’03” (100 cm)","49.6 lb (22.5 kg)",Stat(59, 63, 80, 65, 80, 58)));

  pokemonList.add(Pokemon("#009", "Blastoise", "assets/images/Blastoise.png",
      ["Water"], kWater, " Shellfish Pokemon",
      "",
      "5’03” (160 cm)","118.5 lb (85.5 kg)",Stat(79, 83, 100, 85, 105, 78)));

  pokemonList.add(Pokemon("#010", "Pikachu", "assets/images/Pikachu.png",
      ["Electric"], kElectric, " Mouse Pokemon",
      "",
      "1’4” (40.6 cm)","13.2 lb (6 kg)",Stat(2, 2, 3, 4, 5, 6)));

  return pokemonList;
}
