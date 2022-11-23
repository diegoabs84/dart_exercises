import 'dart:io';

void main(List<String> args) {
  var candidatos = [];
  while (true) {
    print("Favor informar o código do candidato: ");
    String? cod = stdin.readLineSync();
    if (cod == '0000') break;
    print("Qual o curso escolhido: (CC/SI)");
    String? curso = stdin.readLineSync();

    print("Favor inserir o nome: ");
    String? nome = stdin.readLineSync();

    print("Favor inserir o sexo: (M/F)");
    String? sexo = stdin.readLineSync();

    print("Favor inserir sua pontuação: ");
    String? pts = stdin.readLineSync();
    
    print("Caso não queira continuar, favor informar o código 0000 ao ser solicitado o código do candidato, caso contrário, favor continuar.");

    candidatos.add({
      'codigo': cod,
      'curso': curso,
      'nome': nome,
      'sexo': sexo,
      'pontuação': int.parse(pts!)
    });
  }

  for (var candidato in candidatos) {
    if (candidato['curso'] == 'CC' && candidato['pontuação'] > 2500) print(candidato);
  }

  var topM = candidatos[0];
  for (var aluno in candidatos) {
    if (aluno['sexo'] == 'M' && aluno['pontuação'] > topM['pontuação'])
      topM = aluno;
  }
  print('o candidato ${topM["nome"]} teve a maior pontuação');

  var topMSI = candidatos[0];
  for (var aluno in candidatos) {
    if (aluno['sexo'] == 'M' &&
        aluno['curso'] == 'SI' &&
        aluno['pontuação'] > topMSI['pontuação']) topMSI = aluno;
  }
  print("O código do aluno com maior pontuação em Sistemas de informação é : ${topMSI['cod']}");

  int totM = 0;
  int totF = 0;
  for (var aluno in candidatos) {
    if (aluno['sexo'] == 'M') totM++;
    if (aluno['sexo'] == 'F') totF++;
  }
  print("Percentual de candidatos do sexo Feminino: ${(totF * 100) / candidatos.length}%");
  print("percentual de candidatos do sexo Masculino: ${(totM * 100) / candidatos.length}%");
}
