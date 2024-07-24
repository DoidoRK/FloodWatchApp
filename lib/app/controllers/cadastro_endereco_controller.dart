import 'package:flood_watch_app/app/controllers/user_controller.dart';
import 'package:get/get.dart';

class CadastroEnderecoController extends GetxController {
  final UserController userController = Get.find<UserController>();
  var rua = ''.obs;
  var numero = ''.obs;
  var complemento = ''.obs;
  var bairro = ''.obs;
  var cidade = ''.obs;
  var cep = ''.obs;
  var estado = ''.obs;
  var isFormInvalid = true.obs;

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

  void setRua(String value) {
    rua.value = value;
    checkFormIsValid();
  }

  void setBairro(String value) {
    bairro.value = value;
    checkFormIsValid();
  }

  void setCidade(String value) {
    cidade.value = value;
    checkFormIsValid();
  }

  void setEstado(String value) {
    estado.value = value;
    checkFormIsValid();
  }

  void confirmInputs() {
    if (isFormInvalid.value) {
    } else {
      print("Formulário inválido");
    }
  }

  void checkFormIsValid() {
    if (
      cep.isNotEmpty &&
      complemento.isNotEmpty &&
      numero.isNotEmpty
      // estado.isNotEmpty &&
      // rua.isNotEmpty &&
      // bairro.isNotEmpty &&
      // cidade.isNotEmpty
      ) {
      isFormInvalid.value = false;
    } else {
      isFormInvalid.value = true;
    }
  }

  void onBack() {
    Get.back();
  }

  void onNext() {
    userController.usuario.endereco.rua = rua.value;
    userController.usuario.endereco.numero = numero.value;
    userController.usuario.endereco.complemento = complemento.value;
    userController.usuario.endereco.bairro = bairro.value;
    userController.usuario.endereco.cidade = cidade.value;
    userController.usuario.endereco.cep = cep.value;
    userController.usuario.endereco.estado = estado.value;
    Get.toNamed('/cadastro3');
  }
}
