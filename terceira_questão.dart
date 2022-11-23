import 'dart:math';

void main() {
  
  var primeiroIncremento = [1];
  var segundoIncremento = [5];
  var terceiroIncremento = [100];
  var total = " ";
  var x = 0;


  for (int i = 1; i < 8; i++) {
    x = pow(2, i) as int;
    primeiroIncremento.add(x);
  }


  for (int i = 5; i < 40; i += 5) {
    var y = 5;
    y += i;

    segundoIncremento.add(y);
  }


  for (int i = 10; i < 80; i += 10) {
    var z = 100;
    z -= i;

    terceiroIncremento.add(z);
  }

  for (int i = 0; i < 8; i++) {
    total += primeiroIncremento[i].toString() +
        "  " +
        segundoIncremento[i].toString() +
        "  " +
        terceiroIncremento[i].toString() +
        "  ";
  }

  print(total);
}

