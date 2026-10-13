import 'dart:io';
import 'listarlibro.dart';
import 'AgregarLibro.dart';

void eliminarLibro() {
  if (libros.isEmpty) {
    print('No hay libros registrados.');
    return;
  }

  listarLibros();

  int? indice;

  while (indice == null) {
    stdout.write('Índice a eliminar: ');
    String entrada = stdin.readLineSync() ?? '';

    indice = int.tryParse(entrada);

    if (indice == null) {
      print('El índice debe ser un número.');
    } else if (indice < 0 || indice >= libros.length) {
      print('El índice no existe.');
      indice = null;
    }
  }

  libros.removeAt(indice);

  print('Libro eliminado correctamente.');
}