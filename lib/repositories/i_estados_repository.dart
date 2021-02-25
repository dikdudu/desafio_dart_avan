import 'package:desafio_dart_avan/models/estado_model.dart';

abstract class IEstadoRepository {
  Future<List<EstadoModel>> catchAllEstados();
}
