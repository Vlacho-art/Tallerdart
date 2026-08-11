import 'dart:io';
import 'listarlibro.dart';
import 'AgregarLibro.dart';

void eliminarLibro() {
  listarLibros();
  print('Índice a eliminar: ');
  int indice = int.parse(stdin.readLineSync()!);

  libros.removeAt(indice);
  print('Libro eliminado.');
}