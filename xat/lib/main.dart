import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xat/config/tema/tema_app.dart';
import 'package:xat/presentacio/gestor_estat/provider_xat.dart';
import 'package:xat/presentacio/xat/pantalla_xat.dart';

void main () => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProviderXat())
      ],
      child: MaterialApp(
        title: 'Xat',
        debugShowCheckedModeBanner: false,
        theme: TemaApp(colorSeleccionat: 0).tema(),
        home: PantallaXat()
      ),
    );
  }
}