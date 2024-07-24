import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flood_watch_app/app/controllers/login_controller.dart';
import 'package:flood_watch_app/app/theme/app_theme.dart';
import 'package:flood_watch_app/app/ui/widgets/bottom_button_widget.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Instanciar o LoginController
    final LoginController loginController = Get.put(LoginController());

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // Container Azul no fundo
          Positioned.fill(
            child: Container(
              color: appThemeData.primaryColor,
              child: Stack(
                children: [
                  // Adiciona o botão de voltar dentro do Container azul
                  Positioned(
                    top: 40,
                    left: 20,
                    child: IconButton(
                      icon: const Icon(Icons.chevron_left, color: Colors.white),
                      iconSize: 60,
                      onPressed: () => loginController.onBack(),
                    ),
                  ),
                  // Texto "FloodWatch" dentro do Container azul
                  const Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(top: 90.0),
                      child: Text(
                        'FloodWatch',
                        style: TextStyle(
                          fontSize: 48,
                          fontFamily: 'Lobster',
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Container Branco sobreposto
          Positioned(
            top: 250,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: SingleChildScrollView(
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
                      decoration: InputDecoration(
                        labelText: 'CPF',
                        labelStyle: TextStyle(color: appThemeData.primaryColor),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: appThemeData.primaryColor, width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: appThemeData.primaryColor, width: 2),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: appThemeData.primaryColor, width: 2),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Obx(() => TextField(
                          obscureText: loginController.obscureText.value,
                          onChanged: (value) => loginController.setSenha(value),
                          decoration: InputDecoration(
                            labelText: 'Senha',
                            labelStyle:
                                TextStyle(color: appThemeData.primaryColor),
                            suffixIcon: IconButton(
                              icon: Icon(
                                loginController.obscureText.value
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: appThemeData.primaryColor,
                              ),
                              onPressed: () {
                                loginController.toggleObscureText();
                              },
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: appThemeData.primaryColor, width: 2),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: appThemeData.primaryColor, width: 2),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: appThemeData.primaryColor, width: 2),
                            ),
                          ),
                        )),
                    const SizedBox(height: 20,),
                    Center(child: BottomButtonWidget(text: 'Continuar',onPressed: () => {},disabled: loginController.isFormInvalid)),
                    const SizedBox(height: 20),
                    const Text(
                      'Ainda não tem cadastro?',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                          Get.offNamed('/cadastro');
                      },
                      child: const Text(
                        'Cadastrar-se',
                        style: TextStyle(
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
