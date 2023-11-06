void main(List<String> args) {
// final windPlat = EnergyPlant(); //no se puede por lo q es abstracta
  final windPlant = WindPlant(initialEnergy: 100);
  final nuclearPlant = NuclearPlant(energyLeft: 250);
  print("wind ${chargePhone(plant: windPlant, comsume: 10)}");
  print("nuclaer ${chargePhone(plant: nuclearPlant, comsume: 5)}");
}

double chargePhone({required EnergyPlant plant, required int comsume}) {
  if (plant.energyLeft < 10) throw Exception("Not enough energy");
  return plant.energyLeft - comsume;
}

enum PlantType { nuclear, wind, water }

abstract class EnergyPlant {
  double energyLeft;
  final PlantType type;

  EnergyPlant({required this.energyLeft, required this.type});

  void consumeEnergy(double amount);
}

//Extends toda la clase
class WindPlant extends EnergyPlant {
  WindPlant({required double initialEnergy})
      : super(energyLeft: initialEnergy, type: PlantType.wind);

  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

//Implements solo lo q yo quiera de la clase
class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;

  @override
  final PlantType type = PlantType.nuclear;
  NuclearPlant({required this.energyLeft});

  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
}
