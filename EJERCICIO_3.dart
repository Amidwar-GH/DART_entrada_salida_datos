//ejercicio 3: Matriz NxN
import 'dart:io';

void main(){
  stdout.write("Ingrese el tamaño de la matriz NxN: ");
  int n = int.parse(stdin.readLineSync()!);

  List<List<int>> matriz=[];

  for(int i=0; i<n; i++){
    List<int> fila = [];
    for(int j=0; j<n; j++){
      stdout.write("Elemento [$i][$j]: ");
      fila.add(int.parse(stdin.readLineSync()!));
    }
    matriz.add(fila);
  }

  int sumaPrincipal=0;
  int sumaSecundaria=0;

  for(int i=0; i<n; i++){
    sumaPrincipal+=matriz[i][i];
    sumaSecundaria+=matriz[i][n-1-i];
  }

  print("\nMatriz ingresada: ");
  for(var fila in matriz){
    print(fila);
  }
  print("Suma diagonal principal: $sumaPrincipal");
  print("Suma diagonal secundaria $sumaSecundaria");

}
