import 'dart:io';

void main() {
  var recemNascidos = [];
print("Favor pressionar o número 0 ao ser solicitado o nome do recém-nascido caso não deseje continuar.");
  while (true) {
    print("Favor informar o nome: ");
    String? nome = stdin.readLineSync();
    if (nome == '0') break;
    print("Favor informar o sexo do bebê: ");
    String? sexo = stdin.readLineSync();
    print("Favor informar o peso do bebê: ");
    String? peso = stdin.readLineSync();
    recemNascidos.add(
        {'nome': nome, 'sexo': sexo, 'peso': double.parse(peso!), 'class': ''});
  }

  for (var bebe in recemNascidos) {
    if (bebe['peso'] >= 0 && bebe['peso'] <= 2) {
      bebe['class'] = 'Baixo Peso';
    } else if (bebe['peso'] > 2 && bebe['peso'] <= 4) {
      bebe['class'] = 'Normal';
    } else {
      bebe['class'] = 'Alto Peso';
    }
    print(bebe);
  }

  var topF = recemNascidos[0];
  for (var bebe in recemNascidos) {
    if (bebe['sexo'] == 'F' && bebe['peso'] > topF['peso']) topF = bebe;
  }
  print('${topF["nome"]} é o bebê com o maior peso');

  int x = 0;
  int y = 0;
  int z = 0;
  for (var bebe in recemNascidos) {
    if (bebe['class'] == 'Baixo Peso') x += 1;
    if (bebe['class'] == 'Normal') y += 1;
    if (bebe['class'] == 'Alto Peso') z += 1;
  }

  print("Faixas de peso obtidas:");
  print("Normal: ${(y * 100) / recemNascidos.length}%");
  print("Abaixo do peso normal: ${(x * 100) / recemNascidos.length}%");
  print("Acima do peso normal: ${(z * 100) / recemNascidos.length}%");
}
