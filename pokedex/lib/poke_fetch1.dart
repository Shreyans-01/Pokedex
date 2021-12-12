class PokeHub {
  List<Pokemon>? pokemon = [];

  PokeHub({this.pokemon});

  PokeHub.fromJson(Map<String, dynamic> json) {
    if (json['pokemon'] != null) {
      pokemon = new List<Pokemon>.empty(growable: true);
      json['pokemon'].forEach((v) {
        pokemon?.add(new Pokemon.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.pokemon != null) {
      data['pokemon'] = this.pokemon?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Pokemon {
  int id=0;
  String num="";
  String name="";
  String img="";
  List<String> type=[];
  String height="";
  String weight="";
  String candy="";
  int candyCount=0;
  String egg="";
  String spawnChance="";
  String avgSpawns="";
  String spawnTime="";
  List<double> multipliers=[];
  List<String> weaknesses=[];
  List<NextEvolution> nextEvolution = [];

  Pokemon(
      {required this.id,
        required this.num,
        required this.name,
        required this.img,
        required this.type,
        required this.height,
        required this.weight,
        required this.candy,
        required this.candyCount,
        required this.egg,
        required this.spawnChance,
        required this.avgSpawns,
        required this.spawnTime,
        required this.multipliers,
        required this.weaknesses,
        required this.nextEvolution});

  Pokemon.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    num = json['num'];
    name = json['name'];
    img = json['img'];
    type = json['type'].cast<String>();
    height = json['height'];
    weight = json['weight'];
    candy = json['candy'];
    candyCount = json['candy_count'];
    egg = json['egg'];
    spawnChance = json['spawn_chance'].toString();
    avgSpawns = json['avg_spawns'].toString();
    spawnTime = json['spawn_time'];
    multipliers = json['multipliers']?.cast<double>();
    weaknesses = json['weaknesses'].cast<String>();
    if (json['next_evolution'] != null) {
      nextEvolution = new List<NextEvolution>.empty(growable: true);
      json['next_evolution'].forEach((v) {
        nextEvolution.add(new NextEvolution.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['num'] = this.num;
    data['name'] = this.name;
    data['img'] = this.img;
    data['type'] = this.type;
    data['height'] = this.height;
    data['weight'] = this.weight;
    data['candy'] = this.candy;
    data['candy_count'] = this.candyCount;
    data['egg'] = this.egg;
    data['spawn_chance'] = this.spawnChance;
    data['avg_spawns'] = this.avgSpawns;
    data['spawn_time'] = this.spawnTime;
    data['multipliers'] = this.multipliers;
    data['weaknesses'] = this.weaknesses;
    data['next_evolution'] =
        this.nextEvolution.map((v) => v.toJson()).toList();
    return data;
  }
}

class NextEvolution {
  String num="";
  String name="";

  NextEvolution({required this.num, required this.name});

  NextEvolution.fromJson(Map<String, dynamic> json) {
    num = json['num'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['num'] = this.num;
    data['name'] = this.name;
    return data;
  }
}