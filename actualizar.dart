import 'dart:io';
import 'listarlibro.dart';
import 'AgregarLibro.dart';

void actualizarLibro() {
  listarLibros();
  print('Índice a actualizar: ');
  int indice = int.parse(stdin.readLineSync()!);

  print('Nuevo título: ');
  libros[indice]['titulo'] = stdin.readLineSync()!;

  print('Nuevo autor: ');
  libros[indice]['autor'] = stdin.readLineSync()!;

  print('Nuevo año: ');
  libros[indice]['anio'] = int.parse(stdin.readLineSync()!);

  print('Libro actualizado.');
}