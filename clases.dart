void main(List<String> args) {
  final Map<String, dynamic> rawJson = {
    'name': 'Tony Stark',
    'power': 'Money',
    'isAlive': true
  };

  // final ironMan = Hero( "Tony", "mark 2"); //args posicionales
  final ironMan = Hero.fromJson(rawJson);
  print(ironMan.name);


  final mySquare = Square(side: -10);
  print('área: ${mySquare.area}');
}

class Hero {
  String? name;
  String? power;
  bool? isAlive;

  // Hero (this.name, this.power); //args posicionales
  Hero({required this.name, required this.power});

  Hero.fromJson(Map<String, dynamic> json)
      : name = json['name'] ?? 'No name found',
        power = json['power'] ?? 'No power found',
        isAlive = json['isAlive'] ?? 'No isAlive found';

  @override //reescribe el metodo
  String toString() => "custom smg";
}


class Square {
  double _side; // side * side

  Square({required double side})
      : assert(side >= 0, 'side must be >= 0'),
        _side = side;

  double get area {
    return _side * _side;
  }

  set side(double value) {
    print('setting new value $value');
    if (value < 0) throw 'Value must be >=0';

    _side = value;
  }

  double calculateArea() {
    return _side * _side;
  }
}
