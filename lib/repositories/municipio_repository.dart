import 'dart:convert';

import 'package:desafio_dart_avan/models/municipio_model.dart';
import 'package:http/http.dart' as http;

class MunicipioRepository {
  Future<List<MunicipioModel>> catchAllMunicipio(int idEstado) async {
    var response = await http.get(
        'https://servicodados.ibge.gov.br/api/v1/localidades/estados/${idEstado}/distritos');

    List<dynamic> responseMap = jsonDecode(response.body);

    return responseMap.map((value) => MunicipioModel.fromMap(value)).toList();
  }
}
