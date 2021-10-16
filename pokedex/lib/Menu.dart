import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column (
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 30, 0, 50),
              child: Image(image: AssetImage ("assets/images/Pokédex_logo (1).png")),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular (5.0),
                color: Colors.greenAccent,
              ),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Row (
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage ("assets/images/pokemonGenerations.png"),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                      child: Text(
                        "Generations",
                        style: TextStyle (fontFamily: "Pokemon GB"),
                      ),
                    )
                  ],
                ),
              )
            ),
            Container(
              margin: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
              child: Row (
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                      //  Evolutions
                        margin: EdgeInsets.fromLTRB(5.0, 15.0, 5.0, 5.0),
                        constraints: BoxConstraints(minWidth: 210),
                        decoration: BoxDecoration (
                          borderRadius: BorderRadius.circular (5.0),
                          color: Colors.lightBlueAccent,
                        ),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(12.0, 17.5, 12.0, 17.5),
                          child: Center(
                            child: Text(
                              "Evolutions",
                              style: TextStyle (fontFamily: "Pokemon GB", fontSize: 12.5),
                            ),
                          ),
                        ),
                      ),
                      Container(
                      //  Items
                        margin: EdgeInsets.fromLTRB(5.0, 5.0, 5.0, 15.0),
                        constraints: BoxConstraints(minWidth: 210),
                        decoration: BoxDecoration (
                          borderRadius: BorderRadius.circular (5.0),
                          color: Colors.lightBlueAccent,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(17.5),
                          child: Center(
                            child: Text(
                              "Items",
                              style: TextStyle (fontFamily: "Pokemon GB", fontSize: 12.5),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                  //  pokemon type buttons
                  //   constraints: BoxConstraints (minWidth: 160),
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular (5.0),
                      color: Colors.lightBlueAccent,
                    ),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      // child: Text(
                      //   "Type Buttons",
                      //   // style: TextStyle (fontFamily: "Pokemon GB"),
                      // ),
                      child: Column(
                        children: [
                          Row (
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Image(
                                  image: AssetImage ("assets/images/pokemonTypeSymbols/fireType.png"),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Image(
                                  image: AssetImage ("assets/images/pokemonTypeSymbols/plantType.png"),
                                ),
                              ),
                            ],
                          ),
                          Image(
                            image: AssetImage ("assets/images/pokemonTypeSymbols/waterType.png"),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
                margin: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
                decoration: BoxDecoration (
                  borderRadius: BorderRadius.circular (5.0),
                  color: Colors.amberAccent,
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(60.0, 25.0, 60.0, 25.0),
                  child: Row (
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(
                        image: AssetImage ("assets/images/moves.png"),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                        child: Text(
                          "Moves",
                          style: TextStyle (fontFamily: "Pokemon GB"),
                        ),
                      )
                    ],
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}
