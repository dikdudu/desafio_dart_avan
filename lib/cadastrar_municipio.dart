import 'package:desafio_dart_avan/con_mysql.dart';
import 'package:desafio_dart_avan/repositories/estados_repository.dart';
import 'package:desafio_dart_avan/repositories/i_estados_repository.dart';

import 'repositories/municipio_repository.dart';

Future<void> cadastrarMunicipio() async {
  var mRepository = MunicipioRepository();
  IEstadoRepository eRepository = EstadosRepository();

  var conn = await getConnection();

  List listEstado = await eRepository.catchAllEstados();

  for (var estado in listEstado) {
    List listMunicipio = await mRepository.catchAllMunicipio(estado.id);

    listMunicipio.forEach((municipio) => conn.query(
        'insert cidade(id_cidade,nome_cidade,id_estado) values(?,?,?)',
        [municipio.id, municipio.nome, municipio.idEstado]));
  }
}
