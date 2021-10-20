import 'package:flutter/material.dart';
import 'package:pokedex_app/constants.dart';
import 'package:pokedex_app/models/pokemon.dart';

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
        TabBar(
          controller: tabController,
          indicatorColor: widget.pokemon.color!.withOpacity(0.5),
          indicatorPadding:
              const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          indicatorWeight: 3.0,
          indicatorSize: TabBarIndicatorSize.tab,
          tabs: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                "About",
                style: TextStyle(
                  color:
                      tabController.index == 0 ? kTextColor : kLightTextColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text("Stats",
                  style: TextStyle(
                      color: tabController.index == 1
                          ? kTextColor
                          : kLightTextColor)),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text("Evolution",
                  style: TextStyle(
                    color:
                        tabController.index == 2 ? kTextColor : kLightTextColor,
                  )),
            ),
          ],
        ),
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
