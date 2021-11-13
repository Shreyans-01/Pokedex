import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pokedex/Menu.dart';

class PokemonFamily extends StatefulWidget {
  const PokemonFamily({Key? key}) : super(key: key);

  @override
  _PokemonFamilyState createState() => _PokemonFamilyState();
}

class _PokemonFamilyState extends State<PokemonFamily> {

  @override
  Widget build(BuildContext context) {
    // removes top and bottom bars. use on first page of app and it removes the menus for all further pages
    SystemChrome.setEnabledSystemUIOverlays([]);

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    // Calculating positions for Pokedex Logo and Pokeball
    // (height position required on screen) - (half of height of widget)
    double logoTopPad = (height * 0.25) - (125 / 2);
    // (difference between height position of logo and ball) - (half of height of logo) - (half of height of ball)
    double logoBotPad = (height * 0.25) - (125 / 2) - (70 / 2);

    return Scaffold(
      // appBar: AppBar (
      //   title: Text("Pokedex App"),
      // ),
      body: Container(
        // background
        decoration: BoxDecoration (
          image: DecorationImage (
            image: AssetImage ("assets/images/pokemon-wallpaper-7-03.jpg"),
            fit: BoxFit.cover
          )
        ),
        child: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Menu()));
          },
          child: Center (
            child: Column (
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, logoTopPad, 0, logoBotPad),
                  child: Image(image: AssetImage ("assets/images/Pokédex_logo (1).png")),
                ),
                Image(
                  image: AssetImage ("assets/images/pokeball.png"),
                  height: 70,
                  width: 70,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
