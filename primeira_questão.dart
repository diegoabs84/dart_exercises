import 'dart:io';

const boloPrecos = {'ovos': 5.5, 'chocolate': 7.5, 'cenoura': 6.5};

var pedido = [];
num totalPedido = 0.0;

void valor(String bolo){
  MapEntry par = boloPrecos.entries.firstWhere((element) => element.key==bolo);
  num preco = par.value;
  totalPedido+=preco;
  
  }



void main() {
  
  while (true){
    print('Informe o tipo de bolo que deseja: ');
    String bolo = stdin.readLineSync()!;
    if (!boloPrecos.containsKey(bolo)){
      print("Bolo de $bolo não está no cardápio!");
    }else{
    pedido.add(bolo);
    valor(bolo);
    }
    print('Deseja mais algum?(s)(n) ');
    String? resposta = stdin.readLineSync();
    
    if (resposta == 's') {
      continue;
    } else{
      break;
    }

    
  }



