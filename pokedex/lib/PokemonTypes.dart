import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:pokedex/GenerationList.dart';

class Types extends StatefulWidget {
  const Types({Key? key}) : super(key: key);

  @override
  _TypesState createState() => _TypesState();
}

class _TypesState extends State<Types> {
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
            "Pokemon List",
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
        child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        shrinkWrap: true,
        children: List.generate(18, (index) {
          String s = "assets/images/types/" + index.toString() + ".png";
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage (s),
                ),
                borderRadius:
                BorderRadius.all(Radius.circular(20.0),),
              ),
            ),
          );
        },),
      ),
    )
    );
  }
}
