import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';

class StartUpPage extends StatefulWidget {
  const StartUpPage({Key? key}) : super(key: key);

  @override
  _StartUpPageState createState() => _StartUpPageState();
}

class _StartUpPageState extends State<StartUpPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    double sizedBoxHeight = screenHeight / 2;

    return Scaffold(
      body: Center(
        child: Column (
          children: [
            SizedBox(
              height: sizedBoxHeight,
              width: screenWidth,
              child: DecoratedBox (
                decoration: BoxDecoration (
                  color: HexColor("#ee1515")
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
