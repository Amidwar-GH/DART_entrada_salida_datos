//EJERCICIO 5: Conteo de frecuencia de palabras

import 'dart:io';

void main(){
  stdout.write("Ingrese una frase: ");
  String frase = stdin.readLineSync()!.toLowerCase();

  List<String> palabras = frase.split(" ");
  Map<String, int> frecuencia = {};

  for(String palabra in palabras){
    frecuencia[palabra]=(frecuencia[palabra]??0)+1;
  }

  print("\nFrecuencia de palabras: ");
  frecuencia.forEach((palabra, conteo){
    print("$palabra: $conteo");
  });
}