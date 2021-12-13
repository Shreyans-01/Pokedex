import 'package:flutter/material.dart';

class BerriesList extends StatefulWidget {
  const BerriesList({Key? key}) : super(key: key);

  @override
  _BerriesListState createState() => _BerriesListState();
}

class _BerriesListState extends State<BerriesList> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text (
          "Berries",
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
            ),
        ),
      ),
    );
  }
}


