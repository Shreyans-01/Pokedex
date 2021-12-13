import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:flutter/services.dart';
import 'package:pokedex/GenerationsPage.dart';
import 'package:pokedex/GenerationList.dart';
import 'package:pokedex/ItemsList.dart';
import 'package:pokedex/LegendaryList.dart';
import 'package:pokedex/PokemonTypes.dart';


class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);

    return Scaffold(
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
          child: SingleChildScrollView(
            child: Column (
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Pokemon Logo
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 50),
                  child: Image(image: AssetImage ("assets/images/Pokédex_logo (1).png")),
                ),
                // Generations Button
                InkWell(
                  onTap: () {
                  //  Navigator thingy
                    Navigator.push(context, MaterialPageRoute(builder: (context) => GenerationList()));
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular (5.0),
                      color: Colors.greenAccent,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Row (
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image(
                            image: AssetImage ("assets/images/pokemonGenerations.png"),
                          ),
                          Text(
                            "Pokemon List",
                            textAlign: TextAlign.right,
                            style: TextStyle (
                              fontFamily: "Pokemon GB",
                            ),
                          )
                        ],
                      ),
                    )
                  ),
                ),
                // Evolutions, Items and Pokemon types Buttons
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
                          InkWell(
                            onTap: () {
                              //  Navigator thingy
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => ItemsList())
                              );
                            },
                            child: Container(
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
                            ),
                          )
                        ],
                      ),
            InkWell(
              onTap: () {
                //  Navigator thingy
                Navigator.push(context, MaterialPageRoute(builder: (context) => Types()));
              },
                      child: Container(
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
                      ),
            ),
                    ],
                  ),
                ),
                // Moves Button
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
                // Legendary Pokemon Button
                InkWell(
                  onTap: () {
                    //  Navigator thingy
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LegendaryList()));
                  },
                  child: Container(
                      margin: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 5.0),
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular (5.0),
                        color: Colors.cyanAccent,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30.0, 25.0, 30.0, 25.0),
                        child: Row (
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  "Legendary Pokemon",
                                  textAlign: TextAlign.right,
                                  style: TextStyle (fontFamily: "Pokemon GB"),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                  ),
                ),
                // Space at the bottom
                Padding(padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
