import 'Dart:io';

void main() {
  menu();
}

void menu() {
  print("Digite [1] para Somar");
  print("Digite [2] para Subtrair");
  print("Digite [3] para Multiplicar");
  print("Digite [4] para Dividir");

  String? entrada = stdin.readLineSync();

  if (entrada != null) {
    if (entrada.isNotEmpty) {
      try {
        final int op = int.parse(entrada);
        print(op);
      } catch (e) {
        throw (Exception('\n ERRO! o valor $entrada não é numérico \n'));
      }
    } else {
      print("ERRO! Digite um valor válido.");
    }
  } else {
    print("ERRO! Valor nulo");
  }
}
