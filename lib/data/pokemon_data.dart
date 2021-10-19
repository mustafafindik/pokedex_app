import 'package:pokedex_app/constants.dart';
import 'package:pokedex_app/models/pokemon.dart';

List<Pokemon> getPokemonList(){
  List<Pokemon> pokemonList = <Pokemon>[];
  pokemonList.add(Pokemon("#001","Bulbasaur","assets/images/Bulbasaur.png",["Grass","Poison"],kGrass,"Seed Pokemon"));
  pokemonList.add(Pokemon("#002","Ivysaur","assets/images/Ivysaur.png",["Grass","Poison"],kGrass,"Seed Pokemon"));
  pokemonList.add(Pokemon("#003","Venusaur","assets/images/Venusaur.png",["Grass","Poison"],kGrass,"Seed Pokemon"));
  pokemonList.add(Pokemon("#004","Charmander","assets/images/Charmander.png",["Fire"],kFire,"Lizard Pokemon"));
  pokemonList.add(Pokemon("#005","Charmeleon","assets/images/Charmeleon.png",["Fire"],kFire,"Flame Pokemon"));
  pokemonList.add(Pokemon("#006","Charizard","assets/images/Charizard.png",["Fire","Fly"],kFire,"Flame Pokemon"));
  pokemonList.add(Pokemon("#007","Squirtle","assets/images/Squirtle.png",["Water"],kWater,"Tiny Turtle Pokemon"));
  pokemonList.add(Pokemon("#008","Wartortle","assets/images/Wartortle.png",["Water"],kWater," Turtle Pokemon"));
  pokemonList.add(Pokemon("#009","Blastoise","assets/images/Blastoise.png",["Water"],kWater," Shellfish Pokemon"));
  pokemonList.add(Pokemon("#010","Pikachu","assets/images/Pikachu.png",["Electric"],kElectric," Mouse Pokemon"));


  return pokemonList;
}