import 'package:flutter/material.dart';
import 'package:pokedex_app/constants.dart';
import 'package:pokedex_app/models/pokemon.dart';
import 'package:pokedex_app/screens/detail/widgets/my_tabbar_header.dart';

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
          child: TabBarView(controller: tabController, children: [
            Container(
              color: Colors.red,
              child: Text(
                "About",
                style: TextStyle(color: kLightTextColor, fontSize: 16),
              ),
            ),
            Container(
              color: Colors.indigo,
              child: Text("Stats",
                  style: TextStyle(color: kLightTextColor, fontSize: 16)),
            ),
            Container(
              color: Colors.teal,
              child: Text("Evolution",
                  style: TextStyle(color: kLightTextColor, fontSize: 16)),
            ),
          ]),
        )
      ],
    );
  }
}




