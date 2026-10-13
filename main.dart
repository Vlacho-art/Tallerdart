import 'dart:io';
import 'AgregarLibro.dart';
import 'listarlibro.dart';
import 'actualizar.dart';
import 'eliminar.dart';

void main() {
  bool continuar = true;

  while (continuar) {
    mostrarMenu();
    String? opcion = stdin.readLineSync();

    switch (opcion) {
      case '1':
        agregarLibro();
        break;
      case '2':
        listarLibros();
        break;
      case '3':
        actualizarLibro();
        break;
      case '4':
        eliminarLibro();
        break;
      case '5':
        print('\nSaliendo del programa... ¡Hasta pronto!');
        continuar = false;
        break;
      default:
        print('\n⚠️  Opción inválida. Por favor seleccione una opción del 1 al 5.');
    }
  }
}

void mostrarMenu() {
  print('\n===== GESTIÓN DE BIBLIOTECA =====');
  print('1. Agregar libro');
  print('2. Listar libros');
  print('3. Actualizar libro');
  print('4. Eliminar libro');
  print('5. Salir');
  stdout.write('Seleccione una opción: ');
}