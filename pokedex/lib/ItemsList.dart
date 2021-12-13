import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pokedex/ItemCategories/BerriesList.dart';
import 'package:pokedex/ItemCategories/HoldItemsList.dart';
import 'package:pokedex/ItemCategories/PokeballsList.dart';
import 'package:pokedex/LegendaryList.dart';

class ItemsList extends StatefulWidget {
  const ItemsList({Key? key}) : super(key: key);

  @override
  _ItemsListState createState() => _ItemsListState();
}

class _ItemsListState extends State<ItemsList> {
  @override
  Widget build(BuildContext context) {
    var colorIndex = 0;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text (
          "Items",
          style: TextStyle (
              fontFamily: "Pokemon GB",
              fontSize: 20,
              color: Colors.white
          ),
        ),
      ),
      body: Container (
        // background
        decoration: BoxDecoration (
            image: DecorationImage (
                image: AssetImage ("assets/images/background.png"),
                fit: BoxFit.cover,
                alignment: Alignment.bottomCenter
            )
        ),
        
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 50.0, 0.0, 0.0),
          child: Column (
            children: [
              _tile("assets/images/items/berries/aguav-berry.png", "Berries", colorIndex++, context, BerriesList()),
              _tile("assets/images/items/hold-items/binding-band.png", "Hold Items", colorIndex++, context, HoldItemsList()),
              _tile("assets/images/items/pokeballs/poke-ball.png", "Pokeballs", colorIndex++, context, PokeballsList())
              // _tile("assets/images/Legendary/azelf.png", "Azelf", colorIndex++)
            ],
          ),
        ),
      ),
    );
  }
}

InkWell _tile(String imageURL, String text, int colorIndex, BuildContext context, Widget nextPage) {
  // var randomNumberGen = new Random();
  const colors = [Colors.amberAccent, Colors.greenAccent, Colors.cyanAccent, Colors.lightBlueAccent, Colors.orangeAccent, Colors.deepOrangeAccent];

  var leftMargin = 15.0;
  var rightMargin = 15.0;

  return InkWell(
    onTap: () {
      //  Navigator thingy
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => nextPage)
      );
    },
    child: Container(
        height: 150,
        margin: EdgeInsets.fromLTRB(leftMargin, 10.0, rightMargin, 10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: colors[colorIndex++ % 6],
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 40.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                child: Image.asset(
                  imageURL,
                  scale: 0.2,
                ),
              ),
              Text(
                text,
                style: TextStyle(
                    fontFamily: "Pokemon GB",
                    fontSize: 17.5
                ),
              )
            ],
          ),
        )
    ),
  );
}