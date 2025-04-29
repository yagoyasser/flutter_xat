import 'package:flutter/material.dart';
import 'package:xat/domini/entitats/missatge.dart';

class BambollaMissatgeAlie extends StatelessWidget {
  final Missatge missatge;

  const BambollaMissatgeAlie({
    super.key,
    required this.missatge,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
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
        const SizedBox(height: 10),
        _Imatge(),
        const SizedBox(height: 20),
      ],
    );
  }
}

class _Imatge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final midaDispositiu = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        'https://wallpapers.com/images/hd/1920-x-1080-naruto-puo1nvsest4fw828.jpg',
        width: midaDispositiu.width * 0.75,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null ) return child;
          return Container(
            width: midaDispositiu.width * 0.75,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: const Text('Carregant imatge')
          );
        },
      )
    );
  }
}