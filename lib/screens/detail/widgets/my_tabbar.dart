import 'package:flutter/material.dart';
import 'package:pokedex_app/models/pokemon.dart';
import 'package:pokedex_app/screens/detail/widgets/about_view.dart';
import 'package:pokedex_app/screens/detail/widgets/evolution_view.dart';
import 'package:pokedex_app/screens/detail/widgets/my_tabbar_header.dart';
import 'package:pokedex_app/screens/detail/widgets/stat_view.dart';

class MyTabBar extends StatefulWidget {
  const MyTabBar({
    Key? key,
    required this.pokemon,
  }) : super(key: key);

  final Pokemon pokemon;

  @override
  State<MyTabBar> createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this, initialIndex: 0);
    tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyTabBarHeader(tabController: tabController, color: widget.pokemon.color),
        Expanded(
          child: TabBarView(controller: tabController, children:  [
            AboutView(pokemon: widget.pokemon,),
            StatView(pokemon: widget.pokemon,),
            EvolutionView(pokemon: widget.pokemon,)
          ]),
        )
      ],
    );
  }
}




