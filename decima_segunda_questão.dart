import "dart:io";

void main() {
  
  print("Favor inserir o número a ser invertido: ");
  String? numero = stdin.readLineSync();

  print(numero?.split('').reversed.join());
}
