import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pokedex/GenerationList.dart';

const colors = [Colors.amberAccent, Colors.greenAccent, Colors.cyanAccent, Colors.lightBlueAccent, Colors.orangeAccent, Colors.deepOrangeAccent];

class GenerationPage extends StatefulWidget {
  const GenerationPage({Key key}) : super(key: key);

  @override
  _GenerationPageState createState() => _GenerationPageState();
}

class _GenerationPageState extends State<GenerationPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar (
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Generations",
          style: TextStyle(
            fontFamily: "Pokemon GB",
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        // background
        decoration: BoxDecoration (
          image: DecorationImage (
            image: AssetImage ("assets/images/background.png"),
            fit: BoxFit.cover,
            alignment: Alignment.bottomCenter
          )
        ),
        child: Center(
          child: ListView(
            children: [
              _tile("assets/images/GenerationPrototype/Gen1.png", "Generation I", 0),
              _tile("assets/images/GenerationPrototype/Gen2.png", "Generation II", 1),
              _tile("assets/images/GenerationPrototype/Gen3.png", "Generation III", 2),
              _tile("assets/images/GenerationPrototype/Gen4.png", "Generation IV", 3),
              _tile("assets/images/GenerationPrototype/Gen5.png", "Generation V", 4),
              _tile("assets/images/GenerationPrototype/Gen6.png", "Generation VI", 5),
              _tile("assets/images/GenerationPrototype/Gen7.png", "Generation VII", 6),
              _tile("assets/images/GenerationPrototype/Gen8.png", "Generation VIII", 7),
            ],
          )
        ),
      ),
    );
  }
}

Container _tile(String imageURL, String text, int index) {
  var randomNumberGen = new Random();
  var colorIndex = randomNumberGen.nextInt(5);

  var leftMargin;
  var rightMargin;

  if (index % 2 == 0) {
  //  odd block
    leftMargin = 15.0;
    rightMargin = 60.0;
  } else {
    // even block
    leftMargin = 60.0;
    rightMargin = 15.0;
  }
  return Container(
      margin: EdgeInsets.fromLTRB(leftMargin, 10.0, rightMargin, 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: colors[colorIndex],
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 75,
              // width: ,
              child: Image(image: AssetImage(imageURL)),
            ),
            Text(
              text,
              style: TextStyle(
                fontFamily: "Pokemon GB",
                fontSize: 11.5
              ),
            )
          ],
        ),
      ));
}
