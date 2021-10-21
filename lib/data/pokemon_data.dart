import 'package:pokedex_app/constants.dart';
import 'package:pokedex_app/models/evolution_chain.dart';
import 'package:pokedex_app/models/pokemon.dart';
import 'package:pokedex_app/models/stat.dart';

List<Pokemon> getPokemonList() {
  List<Pokemon> pokemonList = <Pokemon>[];
  pokemonList.add(Pokemon("#001", "Bulbasaur", "assets/images/Bulbasaur.png",
      ["Grass", "Poison"], kGrass, "Seed Pokemon",
      "Bulbasaur resembles a small amphibian/frog, but it bears three claws on each of its feet and has no tail. It also has large, red eyes and small, sharp teeth. Its skin is a light, turquoise color with dark, green spots. It has three claws on all four of its legs. Its most notable feature, however, is the aforementioned bulb on its back, which according to its entry in the Pokédex, was planted there at birth.","2’4” (71.1 cm)",
      "15.2 lb (6.9 kg)",Stat(45, 49, 49, 65, 65, 45),
      ["assets/types/Fire.png","assets/types/Psychic.png","assets/types/Flying.png","assets/types/Ice.png"],
      [EvolutionChain("assets/images/Bulbasaur.png", "assets/images/Ivysaur.png"),EvolutionChain("assets/images/Ivysaur.png","assets/images/Venusaur.png")]
  ));

  pokemonList.add(Pokemon("#002", "Ivysaur", "assets/images/Ivysaur.png",
      ["Grass", "Poison"], kGrass, "Seed Pokemon",
      "Ivysaur is a quadrupedal Pokémon that has blue-green skin with darker patches. On top of its head are pointed ears with black insides and it has narrow red eyes. Ivysaur has a short, rounded snout with a wide mouth and two pointed teeth in its upper jaw. Each of its feet has three claws on them. The bulb on its back has bloomed into a large pink bud. A short brown trunk surrounded by leafy green fronds supports the bud.",
      "3’03” (100 cm)","28.7 lb (13 kg)",Stat(60, 62, 63, 80, 80, 60),
      ["assets/types/Fire.png","assets/types/Psychic.png","assets/types/Flying.png","assets/types/Ice.png"],
      [EvolutionChain("assets/images/Ivysaur.png","assets/images/Venusaur.png")]
  ));

  pokemonList.add(Pokemon("#003", "Venusaur", "assets/images/Venusaur.png",
      ["Grass", "Poison"], kGrass, "Seed Pokemon",
      "Venusaur is a squat, quadrupedal Pokémon with bumpy, blue-green skin. It has small, circular red eyes; a short, blunt snout; and a wide mouth with two pointed teeth in the upper jaw and four in the lower jaw. On top of its head are small, pointed ears with reddish pink insides. It has three clawed toes on each foot. The bud on its back has bloomed into a large pink, white-spotted flower. The flower is supported by a thick, brown trunk surrounded by green fronds. A female Venusaur will have a seed in the center of its flower.",
      "6’07” (200.1 cm)","220.5 lb (100 kg)",Stat(80, 82, 83, 100, 100, 80),
      ["assets/types/Fire.png","assets/types/Psychic.png","assets/types/Flying.png","assets/types/Ice.png"],
      [EvolutionChain("assets/images/Venusaur.png", "assets/images/MegaVenusaur.png")]
  ));

  pokemonList.add(Pokemon("#004", "Charmander", "assets/images/Charmander.png",
      ["Fire"], kFire, "Lizard Pokemon",
      "Charmander physically debuted in Charmander - The Stray Pokémon, where Ash, Misty, and Brock found it after it was abandoned by its Trainer, Damian, who only cared about raising strong Pokémon. At first, Charmander refused to leave the spot it was at, believing Damian would return for it. However, when a rainstorm picked up, Charmander grew ill and Ash took it to a Pokémon Center. Charmander realized that Damian was no good, and allowed Ash to catch it. It has since evolved into Charmeleon, and then Charizard.",
      "2’0” (61 cm)","18.7 lb (8.5 kg)",Stat(39, 52, 43, 60, 50, 65),
      ["assets/types/Water.png","assets/types/Ground.png","assets/types/Rock.png"],
      [EvolutionChain("assets/images/Charmander.png", "assets/images/Charmeleon.png"),EvolutionChain("assets/images/Charmeleon.png","assets/images/Charizard.png")]
  ));

  pokemonList.add(Pokemon("#005", "Charmeleon", "assets/images/Charmeleon.png",
      ["Fire"], kFire, "Flame Pokemon",
      "Charmeleon is a bipedal, reptilian Pokémon. It has dark red scales and a cream underside from the chest down. It has blue eyes and a long snout with a slightly hooked tip. On the back of its head is a single horn-like protrusion. It has relatively long arms with three sharp claws. Its short legs have plantigrade feet with three claws and cream-colored soles. The tip of its long, powerful tail has a flame burning on it. The temperature rises to unbearable levels if Charmeleon swings its tail.",
      "3’07” (110 cm)","41.9 lb (19 kg)",Stat(58, 64, 58, 80, 65, 80),
      ["assets/types/Water.png","assets/types/Ground.png","assets/types/Rock.png"],
      [EvolutionChain("assets/images/Charmeleon.png", "assets/images/Charizard.png")]

  ));

  pokemonList.add(Pokemon("#006", "Charizard", "assets/images/Charizard.png",
      ["Fire", "Fly"], kFire, "Flame Pokemon",
      "Charizard is a draconic, bipedal Pokémon. It is primarily orange with a cream underside from the chest to the tip of its tail. It has a long neck, small blue eyes, slightly raised nostrils, and two horn-like structures protruding from the back of its rectangular head. There are two fangs visible in the upper jaw when its mouth is closed. Two large wings with blue-green undersides sprout from its back, and a horn-like appendage juts out from the top of the third joint of each wing. ",
      "5’7” (170.2 cm)","199.5 lb (90.5 kg)",Stat(78, 84, 78, 109, 85, 100),
      ["assets/types/Water.png","assets/types/Ground.png","assets/types/Rock.png"],
      [EvolutionChain("assets/images/Charizard.png", "assets/images/MegaCharizardY.png"),EvolutionChain("assets/images/Charizard.png", "assets/images/MegaCharizardX.png")]
  ));

  pokemonList.add(Pokemon("#007", "Squirtle", "assets/images/Squirtle.png",
      ["Water"], kWater, "Tiny Turtle Pokemon",
      "Squirtle is a small Pokémon that resembles a light-blue turtle. While it typically walks on its two short legs, it has been shown to run on all fours in Super Smash Bros. Brawl. It has large, purplish or reddish eyes and a slightly hooked upper lip. Each of its hands and feet have three pointed digits. The end of its long tail curls inward. Its body is encased by a tough shell that forms and hardens after birth. This shell is brown on the top, pale yellow on the bottom, and has a thick white ridge between the two halves.",
      "1’8” (50.8 cm)","19.8 lb (9 kg)",Stat(44, 48, 65, 50, 64, 43),
      ["assets/types/Grass.png","assets/types/Electric.png"],
      [EvolutionChain("assets/images/Squirtle.png", "assets/images/Wartortle.png"),EvolutionChain("assets/images/Wartortle.png","assets/images/Blastoise.png")]
  ));

  pokemonList.add(Pokemon("#008", "Wartortle", "assets/images/Wartortle.png",
      ["Water"], kWater, " Turtle Pokemon",
      "Wartortle is a bipedal, indigo Pokémon similar to a turtle. It has brown eyes, a dark blue streak on each cheek, and two sharp teeth protruding from its upper jaw. It has three clawed fingers and pointed toes. On each side of its head are feather-like ears covered in pale blue fur. A brown shell with a pale yellow underside encases its body. A thick, white rim separates the upper and lower halves of the shell. An older Wartortle may have scars and algae growing on its shell. ",
      "3’03” (100 cm)","49.6 lb (22.5 kg)",Stat(59, 63, 80, 65, 80, 58),
      ["assets/types/Grass.png","assets/types/Electric.png"],
      [EvolutionChain("assets/images/Wartortle.png","assets/images/Blastoise.png")]
  ));

  pokemonList.add(Pokemon("#009", "Blastoise", "assets/images/Blastoise.png",
      ["Water"], kWater, " Shellfish Pokemon",
      "Blastoise is a large, bipedal turtle-like Pokémon. Its body is blue and is mostly hidden by its tough, brown shell. This shell has a cream-colored underside and a white ridge encircling its arms and separating the upper and lower halves. Two powerful water cannons reside at the top of its shell over its shoulders. These cannons can be extended or withdrawn. Blastoise's head has triangular ears that are black on the inside, small brown eyes, and a cream-colored lower jaw. ",
      "5’03” (160 cm)","118.5 lb (85.5 kg)",Stat(79, 83, 100, 85, 105, 78),
      ["assets/types/Grass.png","assets/types/Electric.png"],
      [EvolutionChain("assets/images/Blastoise.png", "assets/images/MegaBlastoise.png")]
  ));

  pokemonList.add(Pokemon("#010", "Pikachu", "assets/images/Pikachu.png",
      ["Electric"], kElectric, " Mouse Pokemon",
      "Pikachu is a short, chubby rodent Pokémon. It is covered in yellow fur with two horizontal brown stripes on its back. It has a small mouth, long, pointed ears with black tips, and brown eyes. Each cheek is a red circle that contains a pouch for electricity storage. It has short forearms with five fingers on each paw, and its feet each have three toes. At the base of its lightning bolt-shaped tail is a patch of brown fur. A female will have a V-shaped notch at the end of its tail, which looks like the top of a heart. ",
      "1’4” (40.6 cm)","13.2 lb (6 kg)",Stat(35, 55, 40, 50, 50, 90),
      ["assets/types/Ground.png"],
      [EvolutionChain("assets/images/Pikachu.png", "assets/images/Raichu.png")]
  ));

  return pokemonList;
}


