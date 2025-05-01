import 'package:dio/dio.dart';
import 'package:xat/domini/entitats/missatge.dart';
import 'package:xat/infraestructura/models/si_no_model.dart';

class SiNoResposta {
  final _dio = Dio();

  Future<Missatge> obtinResposta() async {
      final resposta = await _dio.get('https://yesno.wtf/api');
      final siNoModel = SiNoModel.fromJsonMap(resposta.data);
      
      return siNoModel.aEntitatMissatge();
  }
}