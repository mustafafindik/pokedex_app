import 'package:flutter/material.dart';
import 'package:pokedex_app/constants.dart';

class TypeCard extends StatelessWidget {
  const TypeCard({
    Key? key,
    required this.type,
  }) : super(key: key);

  final String type;

  @override
  Widget build(BuildContext context) {
    return
    Card(
        elevation: 0,
        color: Colors.white.withOpacity(0.2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              vertical: kDefaultPadding / 7, horizontal: kDefaultPadding / 3),
          child: Text(
            type,
            style: const TextStyle(color: Colors.white, fontSize: 11),
          ),
        ),);
  }
}
