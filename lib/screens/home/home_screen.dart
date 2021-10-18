import 'package:flutter/material.dart';
import 'package:pokedex_app/screens/home/widgets/home_body.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      body: HomeBody(),
    );
  }
}




