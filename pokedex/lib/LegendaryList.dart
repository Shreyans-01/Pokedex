import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var imageNames = ['articuno.png', 'azelf.png', 'calyrex.png', 'cobalion.png', 'cosmoem.png', 'cosmog.png', 'cresselia.png', 'dialga.png', 'entei.png', 'eternatus.png', 'giratina.png', 'glastrier.png', 'groudon.png', 'heatran.png', 'Ho-Oh.png', 'kubfu.png', 'kyogre.png', 'kyurem.png', 'landorus.png', 'latias.png', 'latios.png', 'lugia.png', 'lunala.png', 'mespirit.png', 'mewtwo.png', 'moltres.png', 'necrozma.png', 'nihilego.png', 'palkia.png', 'raikou.png', 'rayquaza.png', 'regice.png', 'regidrago.png', 'regielki.png', 'regigas.png', 'regirock.png', 'registeel.png', 'reshiram.png', 'silvally.png', 'solgaleo.png', 'spectrier.png', 'suicune.png', 'tapubulu.png', 'tapufini.png', 'tapukoko.png', 'tapulele.png', 'terrakion.png', 'thundrus.png', 'tornadus.png', 'TypeNull.png', 'urshifu.png', 'uxie.png', 'virizion.png', 'xerneas.png', 'yveltal.png', 'zacian.png', 'zamazenta.png', 'zapdos.png', 'zekrom.png', 'zygarde.png'];
var legendaryNames = ['Articuno', 'Azelf', 'Calyrex', 'Cobalion', 'Cosmoem', 'Cosmog', 'Cresselia', 'Dialga', 'Entei', 'Eternatus', 'Giratina', 'Glastrier', 'Groudon', 'Heatran', 'Ho-oh', 'Kubfu', 'Kyogre', 'Kyurem', 'Landorus', 'Latias', 'Latios', 'Lugia', 'Lunala', 'Mespirit', 'Mewtwo', 'Moltres', 'Necrozma', 'Nihilego', 'Palkia', 'Raikou', 'Rayquaza', 'Regice', 'Regidrago', 'Regielki', 'Regigas', 'Regirock', 'Registeel', 'Reshiram', 'Silvally', 'Solgaleo', 'Spectrier', 'Suicune', 'Tapubulu', 'Tapufini', 'Tapukoko', 'Tapulele', 'Terrakion', 'Thundrus', 'Tornadus', 'Typenull', 'Urshifu', 'Uxie', 'Virizion', 'Xerneas', 'Yveltal', 'Zacian', 'Zamazenta', 'Zapdos', 'Zekrom', 'Zygarde'];
const colors = [Colors.amberAccent, Colors.greenAccent, Colors.cyanAccent, Colors.lightBlueAccent, Colors.orangeAccent, Colors.deepOrangeAccent];

class LegendaryList extends StatefulWidget {
  const LegendaryList({Key? key}) : super(key: key);

  @override
  _LegendaryListState createState() => _LegendaryListState();
}

class _LegendaryListState extends State<LegendaryList> {
  @override
  Widget build(BuildContext context) {
    var pokeColour = 0;
    var imageURLStart = "assets/images/Legendary/";

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text (
          "Legendary",
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
            children: legendaryNames.asMap().entries.map((name) => (Padding(
              padding: const EdgeInsets.all(10.0),
              child: Hero(
                tag: imageNames[name.key],
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
                            0.15,
                        width:
                        MediaQuery.of(context).size.width * 0.3,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(imageURLStart + imageNames[name.key]))),
                      ),
                      Text(
                        name.value,
                        style: TextStyle(
                            fontFamily: "Pokemon GB",
                            fontSize: 13
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

class Dummy extends StatefulWidget {
  const Dummy({Key? key}) : super(key: key);

  @override
  _DummyState createState() => _DummyState();
}

class _DummyState extends State<Dummy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text(
        "bruh",
        style: TextStyle(
          fontSize: 70
        ),
      ),
    );
  }
}


