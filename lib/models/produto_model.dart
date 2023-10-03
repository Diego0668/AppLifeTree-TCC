import 'dart:convert';
import 'dart:typed_data';

class ProdutoModel {
  late final int id;
  late final String nome;
  late final Uint8List? imagem;
  late final String statusProd;
  late final int quantidade;

  ProdutoModel({id, nome, imagem, statusProd, quantidade});

  int get getId {
    return id;
  }

  String get getNome {
    return nome;
  }

  Uint8List get getImagem {
    return imagem!;
  }

  String get getStatusProd {
    return statusProd;
  }

  int get getQuantidade {
    return quantidade;
  }

  Map<String, dynamic> toMap() => {
        "id": id,
        "nome": nome,
        "imagem": imagem,
        "statusProd": statusProd,
        "quantidade": quantidade
      };

  String toJson() => jsonEncode(toMap());

  factory ProdutoModel.fromMap(Map<String, dynamic> map) {
    return ProdutoModel(
        id: map['id'],
        nome: map['nome'],
        imagem: map['imagem'],
        statusProd: map['statusProd'],
        quantidade: map['quantidade']);
  }

  factory ProdutoModel.fromJson(String json) =>
      ProdutoModel.fromMap(jsonDecode(json));

  void setId(elementAt) {
    this.id = elementAt;
  }

  void setNome({required nome}) {
    this.nome = nome;
  }

  void setImagem(Uint8List decode) {
    this.imagem = decode;
  }

  void setStatusProd({required statusProd}) {
    this.statusProd = statusProd;
  }

  void setQuantidade({required quantidade}) {
    this.quantidade = quantidade;
  }
}
