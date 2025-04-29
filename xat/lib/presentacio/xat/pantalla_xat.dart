import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xat/domini/entitats/missatge.dart';
import 'package:xat/presentacio/gestor_estat/provider_xat.dart';
import 'package:xat/presentacio/widgets/bambolla_missatge_alie.dart';
import 'package:xat/presentacio/widgets/bambolla_missatge_propi.dart';
import 'package:xat/presentacio/widgets/camp_caixa_text.dart';

class PantallaXat extends StatelessWidget {
  const PantallaXat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(3.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://static.wikia.nocookie.net/gensin-impact/images/5/51/Kamisato_Ayaka_Icon.png/revision/latest/scale-to-width-down/250?cb=20211221231648'),
          )),
        title: Text('Nom Contacte'),
        centerTitle: true,
      ),
      body: _CosPantallaXat()
    );
  }
}

class _CosPantallaXat extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final providerXat = context.watch<ProviderXat>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: providerXat.missatges.length,
                itemBuilder: (context, index) {
                  final missatge = providerXat.missatges[index];

                  return ( missatge.autorMissatge == AutorMissatge.propi )
                    ? BambollaMissatgePropi(missatge: missatge)
                    : BambollaMissatgeAlie( missatge: missatge);
                },
              ),
            ),
            CampCaixaText(),
          ],
        ),
      ),
    );
  }
}