import 'dart:convert';

import 'package:desafio_dart_avan/models/estado_model.dart';
import 'package:desafio_dart_avan/repositories/i_estados_repository.dart';
import 'package:http/http.dart' as http;

class EstadosRepository implements IEstadoRepository {
  @override
  Future<List<EstadoModel>> catchAllEstados() async {
    var response = await http
        .get('https://servicodados.ibge.gov.br/api/v1/localidades/estados');

    List<dynamic> responseMap = jsonDecode(response.body);
    return responseMap.map((value) => EstadoModel.fromMap(value)).toList();
  }
}
