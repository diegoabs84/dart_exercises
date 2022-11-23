import 'dart:io';

void main() {
  
  var nomes = [];
  var codigos = [];
  var listaSexo = [];
  var qtdeHoras = [];
  var salarioBruto = [];
  var salarioBrutoM = [];
  var salarioBrutoF = [];
  var salarioLiquido = [];
  var salarioLiquidoM = [];
  var salarioLiquidoF = [];

  double valorHoraAula = 12.30;

  print("Caso não deseje continuar com o cadastro, favor digitar 9999 ao ser solicitado o codigo");

  while (true) {
    print("Favor inserir o código: ");
    String? codigo = stdin.readLineSync();
    if (codigo == "9999"){
      break;
    }else{
      codigos.add(codigo);
    }
    
    print("Favor inserir o seu nome: ");
    String? nome = stdin.readLineSync();
    nomes.add(nome);

    print("Favor inserir o sexo(M/F):");
    String? sexo = stdin.readLineSync();
    listaSexo.add(sexo);

    print("Favor inserir a quantidade de horas trabalhadas: ");
    int horas = int.parse(stdin.readLineSync()!);
    qtdeHoras.add(horas);
  }

  
  for (int i = 0; i < codigos.length; i++) {
    double salarioBrutoProfessor = valorHoraAula * qtdeHoras[i];
    salarioBruto.add(salarioBrutoProfessor);

    if (listaSexo[i] == "M" || listaSexo[i] == "m") {
      salarioBrutoM.add(salarioBrutoProfessor);
    } else {
      salarioBrutoF.add(salarioBrutoProfessor);
    }
  }

  for (int i = 0; i < salarioBruto.length; i++) {
    double salarioBrutoProfessor = valorHoraAula * qtdeHoras[i];

    if (listaSexo[i] == "M" || listaSexo[i] == "m") {
      double calculoDesconto =
          (salarioBrutoProfessor * 1.10) - salarioBrutoProfessor;
      double salarioLiquido1 = salarioBrutoProfessor - calculoDesconto;
      salarioLiquidoM.add(salarioLiquido1);
      salarioLiquido.add(salarioLiquido1);
    } else {
      double calculoDesconto =
          (salarioBrutoProfessor * 1.05) - salarioBrutoProfessor;
      double salarioLiquido2 = salarioBrutoProfessor - calculoDesconto;
      salarioLiquidoF.add(salarioLiquido2);
      salarioLiquido.add(salarioLiquido2);
    }
  }

  
  if (codigos.length > 0) {
    print("Lista dos professores");
    for (int i = 0; i < codigos.length; i++) {
      print("Código: ${codigos[i]}");
      print("Nome: ${nomes[i]}");
      print("Salario Bruto: ${salarioBruto[i]}");
      print("Salario Liquido: ${salarioLiquido[i]}");
    }
  } else {
    print("Não há professores cadastrados.");
  }

  double totalSalarioLiquidoMasculino = 0.0;

  print("");

  if (salarioLiquidoM.length > 0) {
    for (int i = 0; i < salarioLiquidoM.length; i++) {
      totalSalarioLiquidoMasculino += salarioBrutoM[i];
    }
    print("A média do salario masculino é de: ${totalSalarioLiquidoMasculino / salarioBrutoM.length}");
  } else {
    print("Não temos salários masculinos cadastrados.");
  }

  double totalSalarioLiquidoFeminino = 0.0;

  if (salarioLiquidoF.length > 0) {
    for (int i = 0; i < salarioLiquidoF.length; i++) {
      totalSalarioLiquidoFeminino += salarioBrutoF[i];
    }
    print(
        "A média do salario feminino é de: ${totalSalarioLiquidoFeminino / salarioBrutoF.length}");
  } else {
    print("Não temos salários femininos cadastrados.");
  }
}
