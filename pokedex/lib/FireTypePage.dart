import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:pokedex/poke_fetch.dart';
import 'package:pokedex/pokedetail.dart';

const colors = [Colors.amberAccent, Colors.orangeAccent, Colors.deepOrangeAccent];

class FireTypePage extends StatefulWidget {
  const FireTypePage({Key? key}) : super(key: key);

  @override
  _FireTypePageState createState() => _FireTypePageState();
}

class _FireTypePageState extends State<FireTypePage> {
  var url = Uri.parse("https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json");
  PokeHub _pokeHub = PokeHub();

  @override
  void initState(){
    super.initState();

    fetchData();
  }
  fetchData() async {
    var res = await http.get(url);
    var decodedJson = jsonDecode(res.body);
    setState(() {
      _pokeHub = PokeHub.fromJson(decodedJson);
    });
  }

  @override
  Widget build(BuildContext context) {
    var pokeColour = 0;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Fire Type",
          style: TextStyle(
            fontFamily: "Pokemon GB",
            fontSize: 20.0,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
          decoration: BoxDecoration (
              image: DecorationImage (
                  image: AssetImage ("assets/images/background.png"),
                  fit: BoxFit.cover,
                  alignment: Alignment.bottomCenter
              )
          ),
          // If JSON loaded - render Pokemons
          child:  _pokeHub.pokemon != null ? GridView.count(
              crossAxisCount: 2,
              children: _pokeHub.pokemon!.map((poke) => (
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PokeDetail(
                                  pokemon: poke,
                                )
                            )
                        );
                      },
                      child: Hero(
                        tag: poke.img,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: colors[(pokeColour++) % 3],
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment:
                            MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                height: MediaQuery.of(context).size.height *
                                    0.15,
                                width:
                                MediaQuery.of(context).size.width * 0.3,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(poke.img))),
                              ),
                              Text(
                                poke.name,
                                style: TextStyle(
                                    fontFamily: "Pokemon GB",
                                    fontSize: 13
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ))
              ).toList()
          )
          // If JSON loading - loading screen
              : Center(
            child: Text (
              "Loading...",
              style: TextStyle(
                  fontFamily: "Pokemon GB",
                  fontSize: 25,
                  color: Colors.white
              ),
            ),
          )
      ),
    );
  }
}
