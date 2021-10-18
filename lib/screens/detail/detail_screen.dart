import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_app/models/pokemon.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key, required this.pokemon}) : super(key: key);
  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: pokemon.id,
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              snap: false,
              floating: false,
              backgroundColor: pokemon.color,
              leading: IconButton(
                icon:
                    const Icon(CupertinoIcons.arrow_left, color: Colors.white),
                onPressed: () => Navigator.of(context).pop(),
              ),
              actions: [
                IconButton(
                  icon: const Icon(CupertinoIcons.heart, color: Colors.white),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ],
              expandedHeight: 250.0,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text(
                    pokemon.name,
                    textAlign: TextAlign.center,
                  ),
                  background: Container(
                    color: pokemon.color,
                  )),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (_, int index) {
                  return ListTile(
                    leading: Container(
                        padding: EdgeInsets.all(8),
                        width: 100,
                        child: Placeholder()),
                    title: Text('Place ${index + 1}', textScaleFactor: 2),
                  );
                },
                childCount: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
