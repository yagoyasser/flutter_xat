enum AutorMissatge { propi, alie }

class Missatge {
  final String text;
  final String? imatgeUrl;
  final AutorMissatge autorMissatge;

  Missatge({
    required this.text,
    this.imatgeUrl,
    required this.autorMissatge
  });
}