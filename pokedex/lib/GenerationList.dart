import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pokedex/poke_fetch.dart';
import 'package:http/http.dart' as http;
import 'package:pokedex/poke_fetch.dart';
import 'package:pokedex/pokedetail.dart';

class GenerationList extends StatefulWidget {
  const GenerationList({Key? key}) : super(key: key);

  @override
  _GenerationListState createState() => _GenerationListState();
}

class _GenerationListState extends State<GenerationList> {
  var url = Uri.parse("https://raw.githubusercontent.com/DetainedDeveloper/Pokedex/master/pokedex_raw/pokedex_raw_array.json");
  PokeHub pokeHub = PokeHub();
  PokeHub pokeHub = PokeHub();
  @override
    void initState(){
      super.initState();

    fetchData();
  }
  fetchData() async {
    var res = await http.get(url);
    var decodedJson = jsonDecode(res.body);
    pokeHub = PokeHub.fromJson(decodedJson);
    print(pokeHub.toJson());
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text("Poke App"),
        backgroundColor: Colors.transparent,
      ),
      body: pokeHub == null
          ? Center(
        child: CircularProgressIndicator(),
      )
          : GridView.count(
        crossAxisCount: 2,
        children: if(pokeHub.pokemon!=null){
          pokeHub.pokemon.map((poke) => Padding(
          padding: const EdgeInsets.all(2.0),
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
              child: Card(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.height *
                          0.4,
                      width:
                      MediaQuery.of(context).size.width * 0.2,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(poke.img))),
                    ),
                    Text(
                      poke.name,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ))}
            .toList(),
      ),
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.transparent,
        child: Icon(Icons.refresh),
      ),
    );
  }
}