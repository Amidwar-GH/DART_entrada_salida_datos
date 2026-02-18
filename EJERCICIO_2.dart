//Conversion de un numero a binario

import 'dart:io';

void main(){
    stdout.write("Ingrese un número entero positivo: ");
    int numero = int.parse(stdin.readLineSync()!);

    int original = numero;
    String binario = "";

    while(numero>0){
        binario = (numero%2).toString()+binario;
        numero ~/=2;
    }

    print("El numero $original en binario es: $binario");
}