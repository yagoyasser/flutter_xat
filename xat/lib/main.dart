import 'package:flutter/material.dart';
import 'package:xat/config/tema/tema_app.dart';

void main () => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xat',
      debugShowCheckedModeBanner: false,
      theme: TemaApp().tema(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Xat'),
        ),
        body: Center(
          child: FilledButton.tonal(
            onPressed: () {},
            child: const Text('Clica\'m')
          )
        )
      ),
    );
  }
}