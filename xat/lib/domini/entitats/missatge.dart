enum autor { propi, alie }

class Missatge {
  final String text;
  final String? imatgeUrl;
  final autor autorMissatge;

  Missatge({
    required this.text,
    this.imatgeUrl,
    required this.autorMissatge
  });
}