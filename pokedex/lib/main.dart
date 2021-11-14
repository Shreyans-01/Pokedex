import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'PokemonFamily.dart';
import 'StartupPage.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // temporary, will be replaced with background image in future
        scaffoldBackgroundColor: HexColor("#909090"),
      ),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
      home: PokemonFamily(),
    );
  }
}
