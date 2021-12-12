import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pokedex/poke_fetch.dart';

class PokeDetail extends StatelessWidget {
  final Pokemon pokemon;

  PokeDetail({required this.pokemon});

  bodyWidget(BuildContext context) => Container(
    decoration: BoxDecoration (
        image: DecorationImage (
            image: AssetImage ("assets/images/background.png"),
            fit: BoxFit.cover,
            alignment: Alignment.bottomCenter
        )
    ),
    child: Stack(
      children: <Widget>[
        Positioned(
          height: MediaQuery.of(context).size.height / 1.5,
          width: MediaQuery.of(context).size.width - 20,
          left: 10.0,
          top: MediaQuery.of(context).size.height * 0.1,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                SizedBox(
                  height: 90.0,
                ),
                Text(
                  pokemon.name,
                  style:
                  TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Pokemon GB"
                  ),
                ),
                Text(
                  "Height: ${pokemon.height}",
                  style: TextStyle(
                    fontFamily: "Pokemon GB"
                  )
                ),
                Text(
                  "Weight: ${pokemon.weight}",
                  style: TextStyle(
                    fontFamily: "Pokemon GB"
                  ),
                ),
                Text(
                  "Types",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "Pokemon GB"
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: pokemon.type
                      .map((t) => FilterChip(
                      backgroundColor: Colors.amber,
                      label: Text(
                        t,
                        style: TextStyle(fontFamily: "Pokemon GB",
                          fontSize: 9
                        ),
                      ),
                      onSelected: (b) {}))
                      .toList(),
                ),
                Text("Weakness",
                    style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "Pokemon GB")),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: pokemon.weaknesses
                      .map((t) => FilterChip(
                      backgroundColor: Colors.red,
                      label: Text(
                        t,
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Pokemon GB",
                            fontSize: 9
                        ),
                      ),
                      onSelected: (b) {}))
                      .toList(),
                ),
                Text("Next Evolution",
                    style: TextStyle(fontWeight: FontWeight.bold, fontFamily: "Pokemon GB")),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: pokemon.nextEvolution == null
                      ? <Widget>[Text(
                    "This is the final form",
                    style: TextStyle(
                      fontFamily: "Pokemon GB",
                        fontSize: 9
                    )
                  )]
                      : pokemon.nextEvolution
                      .map((n) => FilterChip(
                    backgroundColor: Colors.green,
                    label: Text(
                      n.name,
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Pokemon GB",
                          fontSize: 9
                      ),
                    ),
                    onSelected: (b) {},
                  ))
                      .toList(),
                )

                ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Hero(
              tag: pokemon.img,
              child: Container(
                height: 200.0,
                width: 200.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: NetworkImage(pokemon.img))),
              )),
        )
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.cyan,
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
            pokemon.name,
          style: TextStyle (
              fontFamily: "Pokemon GB"
          ),
        ),
        backgroundColor: HexColor("#495352"),
      ),
      body: bodyWidget(context),
    );
  }
}