import 'package:get/get.dart';

class CadastroController extends GetxController {
  var nome = ''.obs;
  var telefone = ''.obs;
  var dataNascimento = ''.obs;
  var isFormInvalid = true.obs;

  void setNome(String value) {
    nome.value = value;
    checkFormIsValid();
  }

  void setTelefone(String value) {
    telefone.value = value;
    checkFormIsValid();
  }

  void setDataNascimento(String value) {
    dataNascimento.value = value;
    checkFormIsValid();
  }

  void confirmInputs() {
    if(isFormInvalid.value){
      
    } else {
      print("Formulário inválido");
    }
  }

  void checkFormIsValid() {
    if(nome.isNotEmpty && telefone.isNotEmpty && dataNascimento.isNotEmpty) {
      isFormInvalid.value = false;
    } else {
      isFormInvalid.value = true;
    }
  }

  void onBack() {
    Get.back();
  }
}