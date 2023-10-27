void main(List<String> args) {
  print(saludo());
  print(sumar(1, 2));
  print(sumarOpcional(1));
  print(restar(valor1: 1, valor2: 2));
}

// String saludo() => "Hi";
String saludo() {
  return "Hi";
}

int sumar(int a, int b) => a + b;
int sumarOpcional(int a, [int? b]) {
// int sumarOpcional(int a, [int b = 0]) {
  // b = b ?? 0; lo mismo de abajo
  b ??= 0;
  return a + b;
}

int restar({required int valor1, required int valor2}) => valor1 - valor2;
