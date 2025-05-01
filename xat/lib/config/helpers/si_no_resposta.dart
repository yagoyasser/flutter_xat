import 'package:dio/dio.dart';
import 'package:xat/domini/entitats/missatge.dart';

class SiNoResposta {
  final _dio = Dio();

  Future<Missatge> obtinResposta() async {
      final resposta = await _dio.get('http://yesno.wtf/api');

  }
}