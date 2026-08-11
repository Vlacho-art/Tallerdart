import 'dart:io';
import 'AgregarLibro.dart';

void listarLibros() {
  if (libros.isEmpty) {
    print('No hay libros registrados.');
    return;
  }

  for (int i = 0; i < libros.length; i++) {
    print('$i. ${libros[i]['titulo']} - ${libros[i]['autor']} - ${libros[i]['anio']}');
  }
}