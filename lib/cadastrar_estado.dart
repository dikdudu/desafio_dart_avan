import 'package:desafio_dart_avan/con_mysql.dart';
import 'package:desafio_dart_avan/repositories/estados_repository.dart';
import 'package:desafio_dart_avan/repositories/i_estados_repository.dart';

Future<void> cadastrarEstado() async {
  IEstadoRepository estadoRepository = EstadosRepository();
  List estados = await estadoRepository.catchAllEstados();

  var conn = await getConnection();

  estados.forEach((estado) => conn.query(
      'insert estado(id_estado, sigla, nome,id_regiao) values(?,?,?,?)',
      [estado.id, estado.sigla, estado.nome, estado.regiao.id]));
}
