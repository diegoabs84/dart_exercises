void main() {
  var vetor = [3, 8, 5, 3, 8, 7, 3, 7, 3, 7];

  var map = Map();

  vetor.forEach((numero) {
    if (!map.containsKey(numero)) {
      map[numero] = 1;
    } else {
      map[numero] += 1;
    }
  });

  print(map);
}
