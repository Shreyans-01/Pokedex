import 'package:flutter/material.dart';

class PokeballsList extends StatefulWidget {
  const PokeballsList({Key? key}) : super(key: key);

  @override
  _PokeballsListState createState() => _PokeballsListState();
}

class _PokeballsListState extends State<PokeballsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text (
          "Pokeballs",
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
      ),
    );
  }
}
