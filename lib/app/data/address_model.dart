class Endereco {
  String rua;
  String numero;
  String complemento;
  String bairro;
  String cidade;
  String cep;
  String estado;

  Endereco({
    this.rua = '',
    this.numero = '',
    this.complemento = '',
    this.bairro = '',
    this.cidade = '',
    this.cep = '',
    this.estado = '',
  });

  // Método para converter um mapa em um objeto Endereco
  factory Endereco.fromMap(Map<String, dynamic> map) {
    return Endereco(
      rua: map['rua'] ?? '',
      numero: map['numero'] ?? '',
      complemento: map['complemento'] ?? '',
      bairro: map['bairro'] ?? '',
      cidade: map['cidade'] ?? '',
      cep: map['cep'] ?? '',
      estado: map['estado'] ?? '',
    );
  }

  // Método para converter um objeto Endereco em um mapa
  Map<String, dynamic> toMap() {
    return {
      'rua': rua,
      'numero': numero,
      'complemento': complemento,
      'bairro': bairro,
      'cidade': cidade,
      'cep': cep,
      'estado': estado,
    };
  }

  @override
  String toString() {
    return 'Endereco(rua: $rua, numero: $numero, complemento: $complemento, bairro: $bairro, cidade: $cidade, cep: $cep, estado: $estado)';
  }
}