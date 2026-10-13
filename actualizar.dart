import 'dart:io';
import 'listarlibro.dart';
import 'AgregarLibro.dart';

void actualizarLibro() {
  if (libros.isEmpty) {
    print('No hay libros registrados.');
    return;
  }

  listarLibros();

  int? indice;

  while (indice == null) {
    stdout.write('Índice a actualizar: ');
    String entrada = stdin.readLineSync() ?? '';

    indice = int.tryParse(entrada);

    if (indice == null) {
      print('El índice debe ser un número.');
    } else if (indice < 0 || indice >= libros.length) {
      print('El índice no existe.');
      indice = null;
    }
  }

  String titulo = '';

  while (titulo.trim().isEmpty) {
    stdout.write('Nuevo título: ');
    titulo = stdin.readLineSync() ?? '';

    if (titulo.trim().isEmpty) {
      print('El título no puede estar vacío.');
    }
  }

  String autor = '';

  while (autor.trim().isEmpty) {
    stdout.write('Nuevo autor: ');
    autor = stdin.readLineSync() ?? '';

    if (autor.trim().isEmpty) {
      print('El autor no puede estar vacío.');
    }
  }

  int? anio;

  while (anio == null) {
    stdout.write('Nuevo año: ');
    String entrada = stdin.readLineSync() ?? '';

    anio = int.tryParse(entrada);

    if (anio == null || anio <= 0) {
      print('Ingresa un año válido.');
      anio = null;
    }
  }

  libros[indice]['titulo'] = titulo.trim();
  libros[indice]['autor'] = autor.trim();
  libros[indice]['anio'] = anio;

  print('Libro actualizado correctamente.');
}