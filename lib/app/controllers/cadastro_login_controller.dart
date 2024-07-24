import 'package:get/get.dart';

class CadastroLoginController extends GetxController {
  // Observáveis para os campos de texto
  final RxString cpf = ''.obs;
  var isChecked = false.obs;
  final RxString senha = ''.obs;
  var isFormInvalid = true.obs;
  
  // Observável para mensagens de erro
  final RxString errorMessage = ''.obs;

  // Observável para controlar a visibilidade da senha
  final RxBool obscureText = true.obs;

  // Função para realizar o login
  void login() {
    // Exemplo de navegação após o login bem-sucedido (ajuste conforme necessário)
    // Get.to(HomePage());
  }
  void checkFormIsValid() {
    if (cpf.value.isNotEmpty && senha.value.isNotEmpty && isChecked.value == true) {
      isFormInvalid.value = false;
    } else {
      isFormInvalid.value = true;
    }
  }

  void setCpf(String value) {
    cpf.value = value;
    checkFormIsValid();
  }

  void setSenha(String value) {
    senha.value = value;
    checkFormIsValid();
  }

  void setChecked(bool value) {
  isChecked.value = value;
  checkFormIsValid();
  }


  // Método para alternar a visibilidade da senha
  void toggleObscureText() {
    obscureText.value = !obscureText.value;
    print(
        'Obscure text: ${obscureText.value}'); // Adicione esta linha para depuração
  }
}
