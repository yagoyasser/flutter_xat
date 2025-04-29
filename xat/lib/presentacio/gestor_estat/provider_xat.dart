import 'package:flutter/material.dart';
import 'package:xat/domini/entitats/missatge.dart';

class ProviderXat extends ChangeNotifier{
  List<Missatge> missatges = [
    Missatge(
      text: 'Missatge genèric',
      autorMissatge: AutorMissatge.propi
    ),
    Missatge(
      text: 'qwer qwer qwer',
      autorMissatge: AutorMissatge.alie
    ),
  ];

  Future<void> enviarMissatge(String misstage) async {
    
  }
}