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
        //print(op);
        switch (op) {
          case 1:
            print("Digite o primeiro valor");
            String? num1 = stdin.readLineSync();
            print("Digite o Segundo valor");
            String? num2 = stdin.readLineSync();

            if (num1 != null && num2 != null) {
              if (num1.isNotEmpty && num2.isNotEmpty) {
                try {
                  num valor1 = num.parse(num1);
                  num valor2 = num.parse(num2);
                } catch (e) {
                  throw (Exception('\n ERRO! os valores $num1 e $num2 \n'));
                }
              } else {
                print("ERRO! Digite algum valor !!!");
              }
            } else {
              print("ERRO ! digite valores válidos");
            }
            break;
          case 2:
            break;
          case 3:
            break;
          case 4:
            break;
          default:
            print("Valor fora da faixa ! ");
            exit(0);
        }
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

void soma(num valorA, num valorB) {
  print("O Resultado da soma é ${valorA + valorB}");
}
