import 'package:flutter/material.dart';
import 'package:xat/config/helpers/si_no_resposta.dart';
import 'package:xat/domini/entitats/missatge.dart';

class ProviderXat extends ChangeNotifier{
  final ScrollController controladorScroll = ScrollController();
  final SiNoResposta obtinMissatge = SiNoResposta();

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

  Future<void> enviarMissatge(String missatage) async {
    if (missatage.isEmpty) return;

    final nouMissatge = Missatge(text: missatage, autorMissatge: AutorMissatge.propi);
    missatges.add(nouMissatge);

    if (missatage.endsWith('?')) {
      await rebreMissatge();
    }

    notifyListeners();
    moureScrollBaix();
  }

  Future<void> rebreMissatge() async {
    final missatgeAlie = await obtinMissatge.obtinResposta();
  }

  void moureScrollBaix() {

    controladorScroll.animateTo(
      controladorScroll.position.maxScrollExtent,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut);
  }
}