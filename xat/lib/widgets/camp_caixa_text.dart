import 'package:flutter/material.dart';

class CampCaixaText extends StatelessWidget {
  const CampCaixaText({super.key});

  @override
  Widget build(BuildContext context) {
    final VoraCaixaEnviarMissatge = UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.transparent),
        borderRadius: BorderRadius.circular(30)
    );

    final CaixaEnviarMissatge = InputDecoration(
      enabledBorder: VoraCaixaEnviarMissatge,
        focusedBorder: VoraCaixaEnviarMissatge,
        filled: true,
        suffixIcon: IconButton(
          icon: Icon(Icons.send_outlined),
          onPressed: () {
            // Fer coses
          }
        ),
    );

    return TextFormField(
      decoration: CaixaEnviarMissatge,
      onFieldSubmitted: (value) {
        print('Tecla Enter premuda. Missatge: $value');
      },
      onChanged: (value) {
        print('Missatge actualitzat: $value');
      },
    );
  }
}