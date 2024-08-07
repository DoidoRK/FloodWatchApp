import 'package:flood_watch_app/app/ui/widgets/custom_scaffold_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flood_watch_app/app/controllers/login_controller.dart';
import 'package:flood_watch_app/app/ui/widgets/bottom_button_widget.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController loginController = Get.put(LoginController());

    return CustomScaffoldWidget(
      title: "FloodWatch",
      onBack: loginController.onBack,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 20),
          // Exibe mensagem de erro, se houver
          Obx(() {
            return loginController.errorMessage.isNotEmpty
                ? Text(
                    loginController.errorMessage.value,
                    style: const TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                : const SizedBox.shrink();
          }),
          const SizedBox(height: 20),
          TextField(
            keyboardType: TextInputType.datetime,
            onChanged: (value) => loginController.setCpf(value),
            decoration: const InputDecoration(
              labelText: 'CPF',
            ),
          ),
          const SizedBox(height: 20),
          Obx(() => TextField(
                obscureText: loginController.obscureText.value,
                onChanged: (value) => loginController.setSenha(value),
                decoration: InputDecoration(
                  labelText: 'Senha',
                  suffixIcon: IconButton(
                    icon: Icon(
                      loginController.obscureText.value
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      loginController.toggleObscureText();
                    },
                  ),
                ),
              )),
          const SizedBox(height: 20,),
          Center(child: BottomButtonWidget(text: 'Continuar',onPressed: loginController.onLogin, disabled: loginController.isFormInvalid)),
          const SizedBox(height: 20),
          const Text(
            'Ainda não tem cadastro?',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          TextButton(
            onPressed: loginController.onNext,
            child: const Text(
              'Cadastrar-se',
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          ),
        ],
      ),
    );
  }
}