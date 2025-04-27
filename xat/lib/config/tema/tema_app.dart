import 'package:flutter/material.dart';


const Color _colorPersonalitzat = Color(0xFF6667AB);
const List<Color> _ColorsTema = [
  _colorPersonalitzat,
  Colors.pink,
  Colors.purple,
  Colors.cyan,
  Colors.greenAccent,
  Colors.teal,
];

class TemaApp {
  final int colorSeleccionat;

  TemaApp({
    this.colorSeleccionat = 0
  }): assert (colorSeleccionat >= 0 && colorSeleccionat <= _ColorsTema.length - 1, 'L\'index del color indicat ha de ser entre 0 i ${ _ColorsTema.length }');

  ThemeData tema() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _ColorsTema[colorSeleccionat], 
      // Tema oscur
      // brightness: Brightness.dark,
    );
  }
}