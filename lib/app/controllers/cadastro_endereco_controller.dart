import 'package:get/get.dart';

class CadastroEnderecoController extends GetxController {
  var cep = ''.obs;
  var complemento = ''.obs;
  var dataNascimento = ''.obs;
  var isFormInvalid = true.obs;
  var numero = ''.obs;

  void setCep(String value) {
    cep.value = value;
    checkFormIsValid();
  }

  void setComplemento(String value) {
    complemento.value = value;
    checkFormIsValid();
  }

  void setNumero(String value) {
    numero.value = value;
    checkFormIsValid();
  }

  void confirmInputs() {
    if (isFormInvalid.value) {
    } else {
      print("Formulário inválido");
    }
  }

  void checkFormIsValid() {
    if (cep.isNotEmpty && complemento.isNotEmpty && numero.isNotEmpty) {
      isFormInvalid.value = false;
    } else {
      isFormInvalid.value = true;
    }
  }
}
