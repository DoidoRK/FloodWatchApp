import 'package:flood_watch_app/app/data/address_model.dart';
import 'package:flood_watch_app/app/data/flood_report_model.dart';
import 'package:flood_watch_app/app/data/user_model.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
  var isLogged = false.obs;
  Usuario usuario = Usuario(
    nome: '',
    senha: '',
    cpf: '',
    dataNascimento: '',
    endereco: Endereco(
      rua: '',
      numero: '',
      complemento: '',
      bairro: '',
      cidade: '',
      cep: '',
      estado: '',
    ),
    email: '',
    numeroDeTelefone: '',
    pontosRelatados: [],
  );

  void setNome(String nome) {
    usuario.nome = nome;
  }

  void setSenha(String senha) {
    usuario.senha = senha;
  }

  void setCpf(String cpf) {
    usuario.cpf = cpf;
  }

  void setDataNascimento(String dataNascimento) {
    usuario.dataNascimento = dataNascimento;
  }

  void setEndereco(Endereco endereco) {
    usuario.endereco = endereco;
  }

  void setEmail(String email) {
    usuario.email = email;
  }

  void setNumeroDeTelefone(String numeroDeTelefone) {
    usuario.numeroDeTelefone = numeroDeTelefone;
  }

  void adicionarPontoRelatado(RelatoAlagamento relato) {
    usuario.pontosRelatados.add(relato);
  }

  void logIn() {
    isLogged.value = true;
  }

  void logOut() {
    isLogged.value = false;
    usuario = Usuario(
      nome: '',
      senha: '',
      cpf: '',
      dataNascimento: '',
      endereco: Endereco(
        rua: '',
        numero: '',
        complemento: '',
        bairro: '',
        cidade: '',
        cep: '',
        estado: '',
      ),
      email: '',
      numeroDeTelefone: '',
      pontosRelatados: [],
    );
  }
}
