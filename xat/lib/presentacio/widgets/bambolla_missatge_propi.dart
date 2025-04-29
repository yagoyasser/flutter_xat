import 'package:flutter/material.dart';
import 'package:xat/domini/entitats/missatge.dart';

class BambollaMissatgePropi extends StatelessWidget {
  final Missatge missatge;
  
  const BambollaMissatgePropi({
    super.key,
    required this.missatge,
  });
  

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.primary,
            borderRadius: BorderRadius.circular(20)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              missatge.text,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        const SizedBox(height: 3)
      ],
    );
  }
}