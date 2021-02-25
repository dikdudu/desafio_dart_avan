import 'dart:convert';

import 'package:desafio_dart_avan/models/regiao_model.dart';

class EstadoModel {
  final int id;
  final String sigla;
  final String nome;
  final RegiaoModel regiao;

  const EstadoModel({this.id, this.sigla, this.nome, this.regiao});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'sigla': sigla,
      'nome': nome,
      'regiao': regiao?.toMap(),
    };
  }

  factory EstadoModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return EstadoModel(
      id: map['id'],
      sigla: map['sigla'],
      nome: map['nome'],
      regiao: RegiaoModel.fromMap(map['regiao']),
    );
  }

  String toJson() => json.encode(toMap());

  factory EstadoModel.fromJson(String source) =>
      EstadoModel.fromMap(json.decode(source));
}
