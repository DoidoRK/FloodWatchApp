import 'package:get/get.dart';

class LoginController extends GetxController {
  // Observáveis para os campos de texto
  final RxString cpf = ''.obs;
  final RxString senha = ''.obs;

  // Observável para mensagens de erro
  final RxString errorMessage = ''.obs;

  // Observável para controlar a visibilidade da senha
  final RxBool obscureText = true.obs;

  // Função para realizar o login
  void login() {
    if (cpf.value.isEmpty || senha.value.isEmpty) {
      // Se algum campo estiver vazio, exibe mensagem de erro
      errorMessage.value = 'Por favor, preencha todos os campos.';
      return;
    }

    // Caso contrário, limpa a mensagem de erro e continua com o login
    errorMessage.value = '';

    // Aqui você pode adicionar a lógica de autenticação
    print('CPF: ${cpf.value}');
    print('Senha: ${senha.value}');

    // Exemplo de navegação após o login bem-sucedido (ajuste conforme necessário)
    // Get.to(HomePage());
  }

  // Método para alternar a visibilidade da senha
  void toggleObscureText() {
    obscureText.value = !obscureText.value;
    print(
        'Obscure text: ${obscureText.value}'); // Adicione esta linha para depuração
  }
}
