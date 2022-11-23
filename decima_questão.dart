import 'dart:math';
import 'dart:io';

void main() {
  var Nomes = [];
  var Sexo = [];
  var Idade = [];
  var Exp = [];

  print("Caso não deseje prosseguir, digite FIM ao ser solicitado o nome para cadastro");

  while (true) {
    print("");
    print("Favor informar o  nome: ");
    String? nome = stdin.readLineSync();
    if (nome == "FIM"){
      break;
    }else{
      Nomes.add(nome);
    }
    
    print("Favor informar o sexo (M/F): ");
    String? sexo = stdin.readLineSync();
    Sexo.add(sexo);

    print("Favor informar a sua idade: ");
    int idade = int.parse(stdin.readLineSync()!);
    Idade.add(idade);

    print("Favor informar se possui experiencia(S/N): ");
    String? experiencia = (stdin.readLineSync());
    Exp.add(experiencia);
  }

  //O número de candidatos do sexo feminino e masculino.

  var homens = [];
  var mulheres = [];

  for (int i = 0; i < Sexo.length; i++) {
    if (Sexo[i] == "M") {
      homens.add(Sexo[i]);
    } else {
      mulheres.add(Sexo[i]);
    }
  }

  print("Relatório: ");
  if (homens.length > 0) {
    print("O número de candidatos masculinos é: ${homens.length}");
  } else {
    print("Não foram cadastrados candidatos masculinos.");
  }

  print("");
  if (mulheres.length > 0) {
    print("O número de candidatas femininos é: ${mulheres.length}");
  } else {
    print("Não foram cadastradas candidatas femininas.");
  }

  //A idade média dos homens que já tem experiência no serviço.

  num idadeH = 0;

  for (int i = 0; i < Idade.length; i++) {
    if (Exp[i] == "S") {
      idadeH += Idade[i];
    }
  }

  double iMH = idadeH / Idade.length;

  print("");
  if (Idade.length > 0) {
    print(
        "A idade média dos homens que já tem experiência no serviço é $iMH");
  } else {
    print("Não foram encontrados homens com experiência ou não existem nenhum cadastrados.");
  }

  //A porcentagem dos homens com mais de 45 anos com relação ao total de homens.

  var pH45 = [];

  for (int i = 0; i < Idade.length; i++) {
    if (Sexo[i] == "M" && Idade[i] > 45) {
      pH45.add(Idade[i]);
    }
  }

  var pHT = pH45.length * 100;
  var porcM45 =
      pHT / Idade.length;

  print("");
  if (Idade.length > 0) {
    print(
        "A porcentagem de homens com mais de 45 anos é: $porcM45 %");
  } else {
    print("Não foram encontrados dados de homens com idade superior a 45 anos.");
  }

// O número de mulheres com idade inferior a 30 anos e com experiência no serviço.

  num mME = 0;

  for (int i = 0; i < Sexo.length; i++) {
    if (Sexo[i] == "F" &&
        Idade[i] < 30 &&
        Exp[i] == "S") {
      mME += 1;
    }
  }

  print("");
  if (Sexo.length > 0) {
    print(
        "O número de mulheres com idade inferior a 30 anos e com experiência no serviço é  $mME");
  } else {
    print(
        "Não foram encontradas mulheres com idade inferior a 30 anos ou com experiência no serviço");
  }

  // O nome da candidata com a menor idade que já tem experiência no serviço.

  
  var LSFem = [];
  var LISFem = [];
  var LESFem = [];

  //separando sexo feminino na lista e já tem experiencia
  print("");
  if (Sexo.contains("F")) {
    for (int i = 0; i < Sexo.length; i++) {
      if (Sexo[i] == "F" && Exp[i] == "S") {
        LSFem.add(Nomes[i]);
        LISFem.add(Sexo[i]);
        LESFem.add(Exp[i]);
      }
    }
  } else {
    print("Não encontramos mulheres cadastradas no sistema.");
  }

  var mIFem = 0;

  for (int i = 0; i < LESFem.length; i++) {
    var a = LISFem[i];
    var b = LISFem[i + 1];

    if (!b) {
      b = 0;
    }

    var menor;

    if (a < b) {
      menor = a;
    } else if (b < a) {
      menor = b;
    } else if (a == b) {
      menor = a;
    }

    mIFem = menor;
  }

  var menIExpF;

  for (int i = 0; i < LSFem.length; i++) {
    if (LISFem[i] == mIFem) {
      menIExpF = LSFem[i];
    }
  }

  print("");
  if (LESFem.length > 0) {
    print(
        "A candidata com a menor idade que possui experiência no serviço é $menIExpF");
  } else {
    print("Não encontramos dados.");
  }
}
