import 'package:flutter/material.dart';
import 'package:pokedex_app/constants.dart';

class MyTab extends StatelessWidget {
  const MyTab({
    Key? key,
    required this.index,
    required this.title,
    required this.tabIndex,
  }) : super(key: key);

  final int index;
  final int tabIndex;
  final String title;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var ori = MediaQuery.of(context).orientation;

    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Text(
        title,
        style: TextStyle(
            color: index == tabIndex ? kTextColor : kLightTextColor,
            fontWeight: FontWeight.w600,
            fontSize: ori == Orientation.portrait? (size.width * .04) :(size.height * .04) ),
      ),
    );
  }
}
