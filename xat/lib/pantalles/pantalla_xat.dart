import 'package:flutter/material.dart';
import 'package:xat/widgets/bambolla_missatge_alie.dart';
import 'package:xat/widgets/bambolla_missatge_propi.dart';
import 'package:xat/widgets/camp_caixa_text.dart';

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
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return (index % 2 == 0)
                    ? BambollaMissatgeAlie()
                    : BambollaMissatgePropi();
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