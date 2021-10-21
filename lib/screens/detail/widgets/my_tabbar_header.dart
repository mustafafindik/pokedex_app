import 'package:flutter/material.dart';
import 'package:pokedex_app/constants.dart';
import 'package:pokedex_app/screens/detail/widgets/my_tab.dart';

class MyTabBarHeader extends StatelessWidget {
  const MyTabBarHeader({
    Key? key,
    required this.tabController,
    required this.color,
  }) : super(key: key);

  final TabController tabController;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: tabController,
      indicatorColor: color!.withOpacity(0.5),
      indicatorPadding:const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      indicatorWeight: 3.0,
      indicatorSize: TabBarIndicatorSize.tab,
      tabs: [
        MyTab(index: tabController.index,title: "About     ",tabIndex: 0,),
        MyTab(index: tabController.index,title: "Stats",tabIndex: 1,),
        MyTab(index: tabController.index,title: "Evolution",tabIndex: 2,),
      ],
    );
  }
}