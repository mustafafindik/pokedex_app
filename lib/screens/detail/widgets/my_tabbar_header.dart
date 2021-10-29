import 'package:flutter/material.dart';
import 'package:pokedex_app/constants.dart';
import 'package:pokedex_app/screens/detail/widgets/my_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
        MyTab(index: tabController.index,title: AppLocalizations.of(context)!.about,tabIndex: 0,),
        MyTab(index: tabController.index,title: AppLocalizations.of(context)!.stats,tabIndex: 1,),
        MyTab(index: tabController.index,title: AppLocalizations.of(context)!.evolution,tabIndex: 2,),
      ],
    );
  }
}