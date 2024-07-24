import 'package:flood_watch_app/app/data/address_model.dart';
import 'package:flood_watch_app/app/data/flood_report_model.dart';
import 'package:flood_watch_app/app/data/user_model.dart';

import 'package:get/get.dart';

class UserController extends GetxController {
  var isLogged = false.obs;
  List<User> registeredUsers = [
    User(
      nome: 'João Carlos',
      senha: '123456',
      cpf: '00451604148',
      dataNascimento: '23031998',
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
    ),
    User(
      nome: 'Antonio Vinicius',
      senha: '123456',
      cpf: '07646031321',
      dataNascimento: '05062002',
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
    ),
  ];

  User newUser = User(
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
    newUser.nome = nome;
  }

  void setSenha(String senha) {
    newUser.senha = senha;
  }

  void setCpf(String cpf) {
    newUser.cpf = cpf;
  }

  void setDataNascimento(String dataNascimento) {
    newUser.dataNascimento = dataNascimento;
  }

  void setEndereco(Endereco endereco) {
    newUser.endereco = endereco;
  }

  void setEmail(String email) {
    newUser.email = email;
  }

  void setNumeroDeTelefone(String numeroDeTelefone) {
    newUser.numeroDeTelefone = numeroDeTelefone;
  }

  void adicionarPontoRelatado(RelatoAlagamento relato) {
    newUser.pontosRelatados.add(relato);
  }

  void logIn() {
    isLogged.value = true;
  }

  void logOut() {
    isLogged.value = false;
    newUser = User(
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

  void addToRegisteredUsers(){
    registeredUsers.add(newUser);
    newUser = User(
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
