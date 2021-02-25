import 'package:desafio_dart_avan/repositories/estados_repository.dart';
import 'package:desafio_dart_avan/repositories/i_estados_repository.dart';

import 'con_mysql.dart';

Future<void> cadastrarRegiao() async {
  IEstadoRepository estadoRepository = EstadosRepository();
  List estados = await estadoRepository.catchAllEstados();

  var conn = await getConnection();

  estados.forEach((estado) => conn.query(
      'insert regiao(id_regiao,sigla,nome) values(?,?,?)',
      [estado.regiao.id, estado.regiao.sigla, estado.regiao.nome]));
}
