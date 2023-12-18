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
            print("Digite o primeiro valor \n");
            String? num1 = stdin.readLineSync();
            print("Digite o Segundo valor \n");
            String? num2 = stdin.readLineSync();

            if (num1 != null && num2 != null) {
              if (num1.isNotEmpty && num2.isNotEmpty) {
                try {
                  num valor1 = num.parse(num1);
                  num valor2 = num.parse(num2);
                  soma(valor1, valor2);
                } catch (e) {
                  throw (Exception('\n ERRO! os valores $num1 e $num2 \n'));
                }
              } else {
                print("ERRO! Digite algum valor !!! \n");
              }
            } else {
              print("ERRO ! digite valores válidos \n");
            }
            break;
          case 2:
            print("Digite o primeiro valor \n");
            String? num1 = stdin.readLineSync();
            print("Digite o Segundo valor \n");
            String? num2 = stdin.readLineSync();

            if (num1 != null && num2 != null) {
              if (num1.isNotEmpty && num2.isNotEmpty) {
                try {
                  num valor1 = num.parse(num1);
                  num valor2 = num.parse(num2);
                  subtracao(valor1, valor2);
                } catch (e) {
                  throw (Exception('\n ERRO! os valores $num1 e $num2 \n'));
                }
              } else {
                print("ERRO! Digite algum valor !!! \n");
              }
            } else {
              print("ERRO ! digite valores válidos \n");
            }
            break;
          case 3:
            print("Digite o primeiro valor \n");
            String? num1 = stdin.readLineSync();
            print("Digite o Segundo valor \n");
            String? num2 = stdin.readLineSync();

            if (num1 != null && num2 != null) {
              if (num1.isNotEmpty && num2.isNotEmpty) {
                try {
                  num valor1 = num.parse(num1);
                  num valor2 = num.parse(num2);
                  multiplicacao(valor1, valor2);
                } catch (e) {
                  throw (Exception('\n ERRO! os valores $num1 e $num2 \n'));
                }
              } else {
                print("ERRO! Digite algum valor !!! \n");
              }
            } else {
              print("ERRO ! digite valores válidos \n");
            }
            break;
          case 4:
            print("Digite o primeiro valor \n");
            String? num1 = stdin.readLineSync();
            print("Digite o Segundo valor \n");
            String? num2 = stdin.readLineSync();

            if (num1 != null && num2 != null) {
              if (num1.isNotEmpty && num2.isNotEmpty) {
                try {
                  num valor1 = num.parse(num1);
                  num valor2 = num.parse(num2);
                  multiplicacao(valor1, valor2);
                } catch (e) {
                  throw (Exception('\n ERRO! os valores $num1 e $num2 \n'));
                }
              } else {
                print("ERRO! Digite algum valor !!! \n");
              }
            } else {
              print("ERRO ! digite valores válidos \n");
            }
            break;
          default:
            print("Valor fora da faixa ! \n");
            exit(0);
        }
      } catch (e) {
        throw (Exception('\n ERRO! o valor $entrada não é numérico \n'));
      }
    } else {
      print("ERRO! Digite um valor válido. \n");
    }
  } else {
    print("ERRO! Valor nulo \n");
  }
}

void soma(num valorA, num valorB) {
  print("\n O Resultado da soma é ${valorA + valorB} \n");
}

void subtracao(num valorA, num valorB) {
  print("\n O Resultado da subtração é ${valorA - valorB}\n");
}

void multiplicacao(num valorA, num valorB) {
  print("\n O Resultado da Multiplicação é ${valorA * valorB} \n");
}

void divisao(num valorA, num valorB) {
  print('\n O resultado da Divisão é ${valorA / valorB}\n');
}
