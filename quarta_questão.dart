import "dart:io";

void main() {
  var nome = [];
  var sexo = [];
  var matricula = [];
  var notas = [];
  var faltas = [];
  var media = [];
  double sum = 0;

  for (int i = 0; i < 3; i++) {
    
    print("Favor informar o nome do aluno(a): ");
    nome.add(stdin.readLineSync());
    
    print("Favor informar o sexo: ");
    sexo.add(stdin.readLineSync());
    
    print("Favor informar a matricula: ");
    matricula.add(stdin.readLineSync());

    print("Favor informar a primeira nota: ");
    double nota1 = double.parse(stdin.readLineSync()!);

    print("Favor informar a segunda nota: ");
    double nota2 = double.parse(stdin.readLineSync()!);

    print("Favor informar a terceira nota: ");
    double nota3 = double.parse(stdin.readLineSync()!);
    
    print("Digite as faltas: ");
    faltas.add(int.parse(stdin.readLineSync()!));
    
    double totalNotas = nota1 + nota2 + nota3;
    media.add(totalNotas/3);
    

    notas.add(totalNotas);
    

    
  }

  for (var i = 0; i < media.length; i++) {
    sum += media[i];
 }

  double mediaTurma = sum/3;

  print("A media da turma é: " + mediaTurma.toString());

  //percentual de alunos aprovados

  var listaAprovados = [];
  for (int i = 0; i < matricula.length; i++) {
    if (notas[i] >= 7.0 && faltas[i] <= 18) {
      listaAprovados.add(matricula[i]);
    }
  }

  var porcentagemAprovados = listaAprovados.length * 100;

  var aprovadosDaSala = porcentagemAprovados / matricula.length;

  print("O percentual de alunos aprovados é de: $aprovadosDaSala");

  //A matrícula do aluno do sexo masculino e feminino que possui a maior média e que
  //foi aprovado.

  var matriculaMMF = [];
  for (int i = 0; i < matricula.length; i++) {
    if ((sexo[i] == "F") ||
        (sexo[i] == "M") && notas[i] / 3 >= 7.0 && faltas[i] <= 18) {
      matriculaMMF.add(matricula[i]);
    }
  }

  print(
      "A matrícula dos alunos que obtiveram a maior média e que foram aprovados é: $matriculaMMF");

  //A média dos alunos do sexo feminino.

  var listaF = [];

  for (int i = 0; i < matricula.length; i++) {
    if (sexo[i] == "F") {
      listaF.add(notas[i]);
    }
  }

  double mediaF = 0.0;

  for (int i = 0; i < listaF.length; i++) {
    var nota = listaF[i] / 3;
    mediaF = nota;
  }

  var mediaAlunas =
      mediaF / listaF.length;

  print(
      "A média das alunas foi: $mediaAlunas");
}


