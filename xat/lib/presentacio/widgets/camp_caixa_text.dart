import 'package:flutter/material.dart';

class CampCaixaText extends StatelessWidget {
  final ValueChanged<String> onValue;

  const CampCaixaText({
    super.key,
    required this.onValue
  });

  @override
  Widget build(BuildContext context) {
    final controladorText = TextEditingController();
    final focusNode = FocusNode();

    final VoraCaixaEnviarMissatge = UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.transparent),
        borderRadius: BorderRadius.circular(30)
    );

    final CaixaEnviarMissatge = InputDecoration(
      hintText: 'Missatge',
      enabledBorder: VoraCaixaEnviarMissatge,
        focusedBorder: VoraCaixaEnviarMissatge,
        filled: true,
        suffixIcon: IconButton(
          icon: Icon(Icons.send_outlined),
          onPressed: () {
            final missatge = controladorText.value.text;
            onValue(missatge);
            controladorText.clear();
          }
        ),
    );

    return TextFormField(
      controller: controladorText,
      decoration: CaixaEnviarMissatge,
      focusNode: focusNode,
      onFieldSubmitted: (value) {
        onValue(value);
        controladorText.clear();
        focusNode.requestFocus(); // El teclat no es minimitzarà una vegada premut Enter/Fet
      },
      onTapOutside: (event) {
        focusNode.unfocus(); // El teclat es minimitzarà si es prem fora del teclat
      },
    );
  }
}