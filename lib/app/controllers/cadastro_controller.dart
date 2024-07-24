import 'package:get/get.dart';

class CadastroController extends GetxController {
  var nome = ''.obs;
  var telefone = ''.obs;
  var dataNascimento = ''.obs;

  void setNome(String value) {
    nome.value = value;
  }

  void setTelefone(String value) {
    telefone.value = value;
  }

  void setDataNascimento(String value) {
    dataNascimento.value = value;
  }

  bool isFormValid() {
    return nome.isNotEmpty && telefone.isNotEmpty && dataNascimento.isNotEmpty;
  }
}