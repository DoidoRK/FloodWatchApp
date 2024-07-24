import 'package:flood_watch_app/app/data/address_model.dart';
import 'package:flood_watch_app/app/data/flood_report_model.dart';

class Usuario {
  String nome;
  String senha;
  String cpf;
  Endereco endereco;
  String email;
  String numeroDeTelefone;
  List<RelatoAlagamento> pontosRelatados;

  Usuario({
    required this.nome,
    required this.senha,
    required this.cpf,
    required this.endereco,
    required this.email,
    required this.numeroDeTelefone,
    required this.pontosRelatados,
  });

  factory Usuario.fromMap(Map<String, dynamic> map) {
    return Usuario(
      nome: map['nome'],
      senha: map['senha'],
      cpf: map['cpf'],
      endereco: Endereco.fromMap(map['endereco']),
      email: map['email'],
      numeroDeTelefone: map['numeroDeTelefone'],
      pontosRelatados: List<RelatoAlagamento>.from(
        map['pontosRelatados']?.map((x) => RelatoAlagamento.fromMap(x))),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'nome': nome,
      'senha': senha,
      'cpf': cpf,
      'endereco': endereco.toMap(),
      'email': email,
      'numeroDeTelefone': numeroDeTelefone,
      'pontosRelatados': pontosRelatados.map((x) => x.toMap()).toList(),
    };
  }

  @override
  String toString() {
    return 'Usuario(nome: $nome, senha: $senha, cpf: $cpf, endereco: $endereco, email: $email, numeroDeTelefone: $numeroDeTelefone, pontosRelatados: $pontosRelatados)';
  }
}