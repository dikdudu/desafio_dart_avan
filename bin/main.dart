import 'package:desafio_dart_avan/cadastrar_estado.dart';
import 'package:desafio_dart_avan/cadastrar_municipio.dart';
import 'package:desafio_dart_avan/cadastrar_regiao.dart';

Future main() async {
  await cadastrarRegiao();
  await cadastrarEstado();
  await cadastrarMunicipio();
}
