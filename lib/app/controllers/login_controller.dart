import 'package:flood_watch_app/app/controllers/user_controller.dart';
import 'package:flood_watch_app/app/data/address_model.dart';
import 'package:flood_watch_app/app/data/user_model.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final UserController newUserController = Get.find<UserController>();
  // Observáveis para os campos de texto
  final RxString cpf = ''.obs;
  final RxString senha = ''.obs;
  var isFormInvalid = true.obs;
  // Observável para mensagens de erro
  final RxString errorMessage = ''.obs;

  // Observável para controlar a visibilidade da senha
  final RxBool obscureText = true.obs;

  // Função para realizar o login
  void onLogin() {
    User loggedUser = newUserController.registeredUsers.singleWhere((user) => user.cpf == cpf.value && user.senha == senha.value,
    orElse: () => User(
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
    ),
  );
  if (loggedUser.cpf != '' && loggedUser.senha != '') {
    newUserController.isLogged.value = true;
    Get.offAllNamed('/home');
  } 
    
  }
  void checkFormIsValid() {
    if (cpf.value.isNotEmpty && senha.value.isNotEmpty) {
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

  // Método para alternar a visibilidade da senha
  void toggleObscureText() {
    obscureText.value = !obscureText.value;
    print(
        'Obscure text: ${obscureText.value}'); // Adicione esta linha para depuração
  }

  void onBack(){
    Get.back();
  }

  void onNext(){
    Get.toNamed('/cadastro');
  }
}
