import 'package:flutter/material.dart';
import 'package:xat/config/tema/tema_app.dart';
import 'package:xat/pantalles/pantalla_xat.dart';

void main () => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xat',
      debugShowCheckedModeBanner: false,
      theme: TemaApp(colorSeleccionat: 0).tema(),
      home: PantallaXat()
    );
  }
}