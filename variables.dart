void main() {
  // var name = "ed";

  // final name = "ed"; //es un const y se asigna en tiempo de ejecucion
  // late final lastName; //es un const tardia
  // const name = "ed"; //es un const y se asigna en tiempo de construccion app BUILD

  // final String name = "ed";
  String name = "ed";
  final int age = 80;
  // int age = 80;
  final bool isAlive = true;

  final List<String> abilities = ["dev", "cycle"];
  // final abilities = <String> ["dev"];

  final Map<String, dynamic> pokemon = {
    //es un objeto, cuando se tipa, se debe tipar las keys y values del obj
    "namePoke": "pikachu",
    "hp": 100,
    "isAlive": true,
    "abilities": ["rayo", "piedra"],
    "sons": <int, dynamic>{1: "pika", 2: "piko"}
  };
// print(pokemon.namePoke); //no es permitido
  print(pokemon["namePoke"]);
  print(pokemon["sons"][1]);

  final List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 8];
  final numbersIter = numbers.reversed;
  print("iterable $numbers");
  print("iterable $numbersIter");
  print("iterable ${numbersIter.toList()}");
  print("iterable ${numbersIter.toSet()}");
print(numbers.map((e) => e));
print(numbersIter.map((e) => e));

  dynamic action = "adios"; //es un any
  action = " dormir";
  action = [1, " sdf", true];

  name = "pepe";

  print(
      "Hola $name, tienes $age años y estas ${isAlive ? " vivo" : "muerto"} ${abilities.map((e) => e)} $action");

  print("Hola ${name.toUpperCase()}");

  print(abilities);
}
