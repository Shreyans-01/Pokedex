import 'package:flutter/material.dart';

class HoldItemsList extends StatefulWidget {
  const HoldItemsList({Key? key}) : super(key: key);

  @override
  _HoldItemsListState createState() => _HoldItemsListState();
}

class _HoldItemsListState extends State<HoldItemsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text (
          "Hold Items",
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
