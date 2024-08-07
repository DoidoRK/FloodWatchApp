import 'package:flood_watch_app/app/controllers/user_controller.dart';
import 'package:get/get.dart';

class RegisterAddressController extends GetxController {
  final UserController newUserController = Get.find<UserController>();
  var rua = ''.obs;
  var numero = ''.obs;
  var complemento = ''.obs;
  var bairro = ''.obs;
  var cidade = ''.obs;
  var cep = ''.obs;
  var estado = ''.obs;
  var isFormInvalid = true.obs;
  final List<String> stateNames = [
    'AC',
    'AL',
    'AP',
    'AM',
    'BA',
    'CE',
    'DF',
    'ES',
    'GO',
    'MA',
    'MT',
    'MS',
    'MG',
    'PA',
    'PB',
    'PR',
    'PE',
    'PI',
    'RJ',
    'RN',
    'RS',
    'RO',
    'RR',
    'SC',
    'SP',
    'SE',
    'TO'
  ];

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
    newUserController.newUser.endereco.rua = rua.value;
    newUserController.newUser.endereco.numero = numero.value;
    newUserController.newUser.endereco.complemento = complemento.value;
    newUserController.newUser.endereco.bairro = bairro.value;
    newUserController.newUser.endereco.cidade = cidade.value;
    newUserController.newUser.endereco.cep = cep.value;
    newUserController.newUser.endereco.estado = estado.value;
    Get.toNamed('/cadastro3');
  }
}
