import 'dart:io';

double obtenerMedia(List<double> calificaciones) {
  return calificaciones.reduce((a, b) => a + b) / calificaciones.length;
}

void main() {
  stdout.write("¿Cuántas calificaciones deseas ingresar? ");
  int cantidad = int.parse(stdin.readLineSync()!);

  List<double> calificaciones = [];

  for (int i = 0; i < cantidad; i++) {
    while (true) {
      stdout.write("Ingrese la calificación ${i + 1} (0 - 20): ");
      double valor = double.parse(stdin.readLineSync()!);

      if (valor >= 0 && valor <= 20) {
        calificaciones.add(valor);
        break;
      } else {
        print("Calificación inválida. Intente otra vez.");
      }
    }
  }

  double media = obtenerMedia(calificaciones);
  double mayor = calificaciones.reduce((a, b) => a > b ? a : b);
  double menor = calificaciones.reduce((a, b) => a < b ? a : b);

  print("\nMedia final: ${media.toStringAsFixed(2)}");
  print("Calificación más alta: $mayor");
  print("Calificación más baja: $menor");

  print(media >= 11 ? "Curso aprobado" : "Curso desaprobado");
}

