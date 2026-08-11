import 'dart:io';

List<Map<String, dynamic>> libros = [];

void agregarLibro() {
  String titulo = '';
  while (titulo.trim().isEmpty) {
    stdout.write('Título: ');
    titulo = stdin.readLineSync() ?? '';
    if (titulo.trim().isEmpty) {
      print('El título no puede estar vacío.');
    }
  }

  String autor = '';
  while (autor.trim().isEmpty) {
    stdout.write('Autor: ');
    autor = stdin.readLineSync() ?? '';
    if (autor.trim().isEmpty) {
      print('El autor no puede estar vacío.');
    }
  }

  int? anio;
  while (anio == null) {
    stdout.write('Año: ');
    String entrada = stdin.readLineSync() ?? '';
    anio = int.tryParse(entrada);
    if (anio == null || anio <= 0) {
      print(' Ingresa un año válido (número entero positivo).');
      anio = null;
    }
  }

  libros.add({'titulo': titulo.trim(), 'autor': autor.trim(), 'anio': anio});
  print('Libro agregado.');
}

