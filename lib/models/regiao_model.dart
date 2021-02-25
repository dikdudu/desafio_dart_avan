import 'dart:convert';

class RegiaoModel {
  final int id;
  final String sigla;
  final String nome;

  const RegiaoModel({this.id, this.sigla, this.nome});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'sigla': sigla,
      'nome': nome,
    };
  }

  factory RegiaoModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return RegiaoModel(
      id: map['id'],
      sigla: map['sigla'],
      nome: map['nome'],
    );
  }

  String toJson() => json.encode(toMap());

  factory RegiaoModel.fromJson(String source) =>
      RegiaoModel.fromMap(json.decode(source));
}
