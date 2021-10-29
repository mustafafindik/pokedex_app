import 'package:flutter/cupertino.dart';
import 'package:pokedex_app/constants.dart';
import 'package:pokedex_app/models/evolution_chain.dart';
import 'package:pokedex_app/models/pokemon.dart';
import 'package:pokedex_app/models/stat.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

List<Pokemon> getPokemonList(BuildContext context) {
  var grass = AppLocalizations.of(context)!.grass;
  var poison = AppLocalizations.of(context)!.poison;
  var fire = AppLocalizations.of(context)!.fire;
  var fly = AppLocalizations.of(context)!.fly;
  var water = AppLocalizations.of(context)!.water;
  var electric = AppLocalizations.of(context)!.electric;

  var seedPokemon = AppLocalizations.of(context)!.seed +" Pokemon";
  var lizardPokemon = AppLocalizations.of(context)!.lizard +" Pokemon";
  var flamePokemon = AppLocalizations.of(context)!.flame +" Pokemon";
  var tinyTurtlePokemon = AppLocalizations.of(context)!.tinyTurtle +" Pokemon";
  var turtlePokemon = AppLocalizations.of(context)!.turtle +" Pokemon";
  var shellfishPokemon = AppLocalizations.of(context)!.shellfish +" Pokemon";
  var mousePokemon = AppLocalizations.of(context)!.mouse +" Pokemon";

  var aboutBulbasaur = AppLocalizations.of(context)!.aboutBulbasaur;
  var aboutIvysaur = AppLocalizations.of(context)!.aboutIvysaur;
  var aboutVenusar = AppLocalizations.of(context)!.aboutVenusar;
  var aboutCharmander = AppLocalizations.of(context)!.aboutCharmander;
  var aboutCharmeleon = AppLocalizations.of(context)!.aboutCharmeleon;
  var aboutCharizard = AppLocalizations.of(context)!.aboutCharizard;
  var aboutSquirtle = AppLocalizations.of(context)!.aboutSquirtle;
  var aboutWartortle = AppLocalizations.of(context)!.aboutWartortle;
  var aboutBlastoise = AppLocalizations.of(context)!.aboutBlastoise;
  var aboutPikachu = AppLocalizations.of(context)!.aboutPikachu;



  List<Pokemon> pokemonList = <Pokemon>[];
  pokemonList.add(Pokemon("#001", "Bulbasaur", "assets/images/Bulbasaur.png",
      [grass, poison], kGrass, seedPokemon,
      aboutBulbasaur,
      "2’4” (71.1 cm)",
      "15.2 lb (6.9 kg)",
      Stat(45, 49, 49, 65, 65, 45),
      ["assets/types/Fire.png","assets/types/Psychic.png","assets/types/Flying.png","assets/types/Ice.png"],
      [EvolutionChain("assets/images/Bulbasaur.png", "assets/images/Ivysaur.png"),EvolutionChain("assets/images/Ivysaur.png","assets/images/Venusaur.png")]
  ));

  pokemonList.add(Pokemon("#002", "Ivysaur", "assets/images/Ivysaur.png",
      [grass, poison], kGrass, seedPokemon,
      aboutIvysaur,
      "3’03” (100 cm)",
      "28.7 lb (13 kg)",
      Stat(60, 62, 63, 80, 80, 60),
      ["assets/types/Fire.png","assets/types/Psychic.png","assets/types/Flying.png","assets/types/Ice.png"],
      [EvolutionChain("assets/images/Ivysaur.png","assets/images/Venusaur.png")]
  ));

  pokemonList.add(Pokemon("#003", "Venusaur", "assets/images/Venusaur.png",
      [grass, poison], kGrass, seedPokemon,
      aboutVenusar,
      "6’07” (200.1 cm)",
      "220.5 lb (100 kg)",
      Stat(80, 82, 83, 100, 100, 80),
      ["assets/types/Fire.png","assets/types/Psychic.png","assets/types/Flying.png","assets/types/Ice.png"],
      [EvolutionChain("assets/images/Venusaur.png", "assets/images/MegaVenusaur.png")]
  ));

  pokemonList.add(Pokemon("#004", "Charmander", "assets/images/Charmander.png",
      [fire], kFire, lizardPokemon,
      aboutCharmander,
      "2’0” (61 cm)",
      "18.7 lb (8.5 kg)",
      Stat(39, 52, 43, 60, 50, 65),
      ["assets/types/Water.png","assets/types/Ground.png","assets/types/Rock.png"],
      [EvolutionChain("assets/images/Charmander.png", "assets/images/Charmeleon.png"),EvolutionChain("assets/images/Charmeleon.png","assets/images/Charizard.png")]
  ));

  pokemonList.add(Pokemon("#005", "Charmeleon", "assets/images/Charmeleon.png",
      [fire], kFire, flamePokemon,
      aboutCharmeleon,
      "3’07” (110 cm)",
      "41.9 lb (19 kg)",
      Stat(58, 64, 58, 80, 65, 80),
      ["assets/types/Water.png","assets/types/Ground.png","assets/types/Rock.png"],
      [EvolutionChain("assets/images/Charmeleon.png", "assets/images/Charizard.png")]

  ));

  pokemonList.add(Pokemon("#006", "Charizard", "assets/images/Charizard.png",
      [fire, fly], kFire, flamePokemon,
      aboutCharizard,
      "5’7” (170.2 cm)",
      "199.5 lb (90.5 kg)",
      Stat(78, 84, 78, 109, 85, 100),
      ["assets/types/Water.png","assets/types/Ground.png","assets/types/Rock.png"],
      [EvolutionChain("assets/images/Charizard.png", "assets/images/MegaCharizardY.png"),EvolutionChain("assets/images/Charizard.png", "assets/images/MegaCharizardX.png")]
  ));

  pokemonList.add(Pokemon("#007", "Squirtle", "assets/images/Squirtle.png",
      [water], kWater, tinyTurtlePokemon,
      aboutSquirtle,
      "1’8” (50.8 cm)",
      "19.8 lb (9 kg)",
      Stat(44, 48, 65, 50, 64, 43),
      ["assets/types/Grass.png","assets/types/Electric.png"],
      [EvolutionChain("assets/images/Squirtle.png", "assets/images/Wartortle.png"),EvolutionChain("assets/images/Wartortle.png","assets/images/Blastoise.png")]
  ));

  pokemonList.add(Pokemon("#008", "Wartortle", "assets/images/Wartortle.png",
      [water], kWater, turtlePokemon,
      aboutWartortle,
      "3’03” (100 cm)",
      "49.6 lb (22.5 kg)",
      Stat(59, 63, 80, 65, 80, 58),
      ["assets/types/Grass.png","assets/types/Electric.png"],
      [EvolutionChain("assets/images/Wartortle.png","assets/images/Blastoise.png")]
  ));

  pokemonList.add(Pokemon("#009", "Blastoise", "assets/images/Blastoise.png",
      [water], kWater, shellfishPokemon,
      aboutBlastoise,
      "5’03” (160 cm)",
      "118.5 lb (85.5 kg)",
      Stat(79, 83, 100, 85, 105, 78),
      ["assets/types/Grass.png","assets/types/Electric.png"],
      [EvolutionChain("assets/images/Blastoise.png", "assets/images/MegaBlastoise.png")]
  ));

  pokemonList.add(Pokemon("#010", "Pikachu", "assets/images/Pikachu.png",
      [electric], kElectric, mousePokemon,
      aboutPikachu,
      "1’4” (40.6 cm)",
      "13.2 lb (6 kg)",
      Stat(35, 55, 40, 50, 50, 90),
      ["assets/types/Ground.png"],
      [EvolutionChain("assets/images/Pikachu.png", "assets/images/Raichu.png")]
  ));

  return pokemonList;
}


