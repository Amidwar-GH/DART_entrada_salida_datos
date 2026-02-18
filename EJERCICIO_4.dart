import 'dart:io';

void main(){
  double saldo = 100;
  int opcion;

  do{
    print("\n---Menu Bancario---\n");
    print("1. Consultar saldo");
    print("2. Depositar");
    print("3. Retirar");
    print("4. Salir");
    
    stdout.write("Seleccione una opcion: ");
    opcion = int.parse(stdin.readLineSync()!);

    switch(opcion){
      case 1:
        print("\n----------------------");
        print("Saldo actual: s/$saldo");
        break;
      
      case 2:
        print("\n-------------------------");
        stdout.write("Monto a depositar: ");
        double precio = double.parse(stdin.readLineSync()!);
        saldo = saldo+precio;
        print("El dinero se desposito exitosamente");
        break;

      case 3:
      print("\n----------------------------");
        stdout.write("Monto a retirar: ");
        double retiro = double.parse(stdin.readLineSync()!);
        if(retiro<=saldo){
          saldo=saldo-retiro;
          print("Se retiró exitosamente s/$retiro");
          print("Saldo actual: $saldo");
        }else{
          print("No cuentas con suficiente saldo");
          print("Saldo actual: $saldo");
          break;
        }
    }

  }while(opcion!=4);
  print("Transaccion finalizada, vuelva pronto :)");
}