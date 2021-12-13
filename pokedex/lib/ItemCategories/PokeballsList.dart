import 'package:flutter/material.dart';

const ImageName = ['beast-ball.png', 'cherish-ball.png', 'dive-ball.png', 'dream-ball.png', 'dusk-ball.png', 'great-ball.png', 'heal-ball.png', 'love-ball.png', 'luxury-ball.png', 'master-ball.png', 'moon-ball.png', 'net-ball.png', 'park-ball.png', 'poke-ball.png', 'premier-ball.png', 'quick-ball.png', 'repeat-ball.png', 'safari-ball.png', 'sport-ball.png', 'timer-ball.png', 'ultra-ball.png'];
const PokeballsName = ['Beast Ball', 'Cherish Ball', 'Dive Ball', 'Dream Ball', 'Dusk Ball', 'Great Ball', 'Heal Ball', 'Love Ball', 'Luxury Ball', 'Master Ball', 'Moon Ball', 'Net Ball', 'Park Ball', 'Poke Ball', 'Premier Ball', 'Quick Ball', 'Repeat Ball', 'Safari Ball', 'Sport Ball', 'Timer Ball', 'Ultra Ball'];
const colors = [Colors.amberAccent, Colors.greenAccent, Colors.cyanAccent, Colors.lightBlueAccent, Colors.orangeAccent, Colors.deepOrangeAccent];

class PokeballsList extends StatefulWidget {
  const PokeballsList({Key? key}) : super(key: key);

  @override
  _PokeballsListState createState() => _PokeballsListState();
}

class _PokeballsListState extends State<PokeballsList> {
  var imageURLStart = "assets/images/items/pokeballs/";
  int pokeColour = 0;

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

        child: GridView.count(
            crossAxisCount: 2,
            children: PokeballsName.asMap().entries.map((name) => (Padding(
              padding: const EdgeInsets.all(10.0),
              child: Hero(
                tag: ImageName[name.key],
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: colors[(pokeColour++) % 6],
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment:
                    MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        height: MediaQuery.of(context).size.height *
                            0.1,
                        width:
                        MediaQuery.of(context).size.width * 0.2,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(imageURLStart + ImageName[name.key]))),
                      ),
                      Text(
                        name.value,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: "Pokemon GB",
                            fontSize: 12
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ))
            ).toList()
        ),
      ),
    );
  }
}
