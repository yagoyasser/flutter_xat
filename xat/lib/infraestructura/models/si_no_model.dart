import 'package:xat/domini/entitats/missatge.dart';

class SiNoModel {
  String resposta;
  bool forced;
  String imatge;

  SiNoModel({
    required this.resposta,
    required this.forced,
    required this.imatge,
  });

  factory SiNoModel.fromJsonMap(Map<String, dynamic> json) => 
    SiNoModel(
      resposta: json['answer'],
      forced: json['forced'],
      imatge: json['image']
    );

  Map<String, dynamic> toJson() => {
    "answer": resposta,
    "forced": forced,
    "image": imatge,
  };

  Missatge aEntitatMissatge() => Missatge(
    text: resposta == 'yes' ? 'Sí' : 'No',
    autorMissatge: AutorMissatge.alie,
    imatgeUrl: imatge 
  );
}