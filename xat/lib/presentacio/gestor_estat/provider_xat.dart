import 'package:flutter/material.dart';
import 'package:xat/domini/entitats/missatge.dart';

class ProviderXat extends ChangeNotifier{
  final ScrollController controladorScroll = ScrollController();

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
    if (misstage.isEmpty) return;

    final nouMissatge = Missatge(text: misstage, autorMissatge: AutorMissatge.propi);
    missatges.add(nouMissatge);

    notifyListeners();
    moureScrollBaix();
  }

  void moureScrollBaix() {

    controladorScroll.animateTo(
      controladorScroll.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut);
  }
}