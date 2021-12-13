import 'package:flutter/material.dart';

const HoldItemName = ['Ability Capsule', 'Abomasite', 'Absorb Bulb', 'Adrenaline Orb', 'Aerodactylite', 'Air Balloon', 'Aloraichium Z', 'Altarianite', 'Ampharosite', 'Amulet Coin', 'Assault Vest', 'Beedrillite', 'Big Root', 'Binding Band', 'Bug Gem', 'Cell Battery', 'Charcoal', 'Chill Drive', 'Choice Specs', 'Cleanse Tag', 'Dark Gem', 'Dragon Fang', 'Electric Gem', 'Elevator Key', 'Flame Orb', 'Full Incense', 'Heat Rock', 'Honor Of Kalos', 'Lustrous Orb', 'Metal Coat', 'Mystic Water', 'Odd Incense', 'Pink Nectar', 'Poison Barb', 'Power Lens', 'Prison Bottle', 'Red Card', 'Safety Goggles', 'Sticky Barb', 'Zoom Lens'];
const ImageName = ['ability-capsule.png', 'abomasite.png', 'absorb-bulb.png', 'adrenaline-orb.png', 'aerodactylite.png', 'air-balloon.png', 'aloraichium-z.png', 'altarianite.png', 'ampharosite.png', 'amulet-coin.png', 'assault-vest.png', 'beedrillite.png', 'big-root.png', 'binding-band.png', 'bug-gem.png', 'cell-battery.png', 'charcoal.png', 'chill-drive.png', 'choice-specs.png', 'cleanse-tag.png', 'dark-gem.png', 'dragon-fang.png', 'electric-gem.png', 'elevator-key.png', 'flame-orb.png', 'full-incense.png', 'heat-rock.png', 'honor-of-kalos.png', 'lustrous-orb.png', 'metal-coat.png', 'mystic-water.png', 'odd-incense.png', 'pink-nectar.png', 'poison-barb.png', 'power-lens.png', 'prison-bottle.png', 'red-card.png', 'safety-goggles.png', 'sticky-barb.png', 'zoom-lens.png'];
const colors = [Colors.amberAccent, Colors.greenAccent, Colors.cyanAccent, Colors.lightBlueAccent, Colors.orangeAccent, Colors.deepOrangeAccent];

class HoldItemsList extends StatefulWidget {
  const HoldItemsList({Key? key}) : super(key: key);

  @override
  _HoldItemsListState createState() => _HoldItemsListState();
}

class _HoldItemsListState extends State<HoldItemsList> {
  var imageURLStart = "assets/images/items/hold-items/";
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

        child: GridView.count(
            crossAxisCount: 2,
            children: HoldItemName.asMap().entries.map((name) => (Padding(
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
