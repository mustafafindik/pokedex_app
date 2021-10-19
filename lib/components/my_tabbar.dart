import 'package:flutter/material.dart';

class MyTabBar extends StatefulWidget {
  const MyTabBar({
    Key? key,
  }) : super(key: key);

  @override
  State<TabBar> createState() => _TabBarState();
}

class _TabBarState extends State<TabBar> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    var tabController = TabController(length: 4, vsync: this,initialIndex: 0);
    return  TabBar(
      controller:  tabController,
      tabs: const [
        Tab(icon: Icon(Icons.directions_car)),
        Tab(icon: Icon(Icons.directions_car)),
        Tab(icon: Icon(Icons.directions_transit)),
        Tab(icon: Icon(Icons.directions_bike)),
      ],
    );
  }
}