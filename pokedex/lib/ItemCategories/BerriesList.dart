import 'package:flutter/material.dart';

const ImageName = ['aguav-berry.png', 'apicot-berry.png', 'belue-berry.png', 'bluk-berry.png', 'cheri-berry.png', 'chilan-berry.png', 'cornn-berry.png', 'durin-berry.png', 'enigma-berry.png', 'ganlon-berry.png', 'golden-pinap-berry.png', 'grepa-berry.png', 'haban-berry.png', 'hondew-berry.png', 'kasib-berry.png', 'kee-berry.png', 'leppa-berry.png', 'liechi-berry.png', 'mago-berry.png', 'magost-berry.png', 'maranga-berry.png', 'nanab-berry.png', 'nomel-berry.png', 'occa-berry.png', 'oran-berry.png', 'passho-berry.png', 'payapa-berry.png', 'persim-berry.png', 'petaya-berry.png', 'pomeg-berry.png', 'qualot-berry.png', 'razz-berry.png', 'rindo-berry.png', 'silver-nanab-berry.png', 'silver-pinap-berry.png', 'sitrus-berry.png', 'spelon-berry.png', 'tamato-berry.png', 'tanga-berry.png', 'wacan-berry.png', 'watmel-berry.png', 'wepear-berry.png', 'yache-berry.png'];
const BerriesName = ['Aguav Berry', 'Apicot Berry', 'Belue Berry', 'Bluk Berry', 'Cheri Berry', 'Chilan Berry', 'Cornn Berry', 'Durin Berry', 'Enigma Berry', 'Ganlon Berry', 'Golden Pinap Berry', 'Grepa Berry', 'Haban Berry', 'Hondew Berry', 'Kasib Berry', 'Kee Berry', 'Leppa Berry', 'Liechi Berry', 'Mago Berry', 'Magost Berry', 'Maranga Berry', 'Nanab Berry', 'Nomel Berry', 'Occa Berry', 'Oran Berry', 'Passho Berry', 'Payapa Berry', 'Persim Berry', 'Petaya Berry', 'Pomeg Berry', 'Qualot Berry', 'Razz Berry', 'Rindo Berry', 'Silver Nanab Berry', 'Silver Pinap Berry', 'Sitrus Berry', 'Spelon Berry', 'Tamato Berry', 'Tanga Berry', 'Wacan Berry', 'Watmel Berry', 'Wepear Berry', 'Yache Berry'];
const colors = [Colors.amberAccent, Colors.greenAccent, Colors.cyanAccent, Colors.lightBlueAccent, Colors.orangeAccent, Colors.deepOrangeAccent];

class BerriesList extends StatefulWidget {
  const BerriesList({Key? key}) : super(key: key);

  @override
  _BerriesListState createState() => _BerriesListState();
}

class _BerriesListState extends State<BerriesList> {
  var imageURLStart = "assets/images/items/berries/";
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

        child: GridView.count(
            crossAxisCount: 2,
            children: BerriesName.asMap().entries.map((name) => (Padding(
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
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                        child: Text(
                          name.value,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: "Pokemon GB",
                              fontSize: 15
                          ),
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



