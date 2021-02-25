import 'dart:convert';

class MunicipioModel {
  final int id;
  final String nome;
  final int idEstado;

  const MunicipioModel({this.id, this.nome, this.idEstado});

  factory MunicipioModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return MunicipioModel(
      id: map['id'],
      nome: map['nome'],
      idEstado: map['municipio']['regiao-imediata']['regiao-intermediaria']
          ['UF']['id'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'idEstado': idEstado,
    };
  }

  String toJson() => json.encode(toMap());

  factory MunicipioModel.fromJson(String source) =>
      MunicipioModel.fromMap(json.decode(source));
}
