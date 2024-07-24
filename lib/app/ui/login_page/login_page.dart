import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flood_watch_app/app/controllers/login_controller.dart';
import 'package:flood_watch_app/app/theme/app_theme.dart';
import 'package:flood_watch_app/app/ui/widgets/bottom_button_widget.dart';

class LoginPage extends GetView<LoginController> {
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
                      icon: Icon(Icons.chevron_left, color: Colors.white),
                      iconSize: 60,
                      onPressed: () {
                        // Ação do botão de voltar
                      },
                    ),
                  ),
                  // Texto "FloodWatch" dentro do Container azul
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 90.0),
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
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(height: 20),
                  // Exibe mensagem de erro, se houver
                  Obx(() {
                    return loginController.errorMessage.isNotEmpty
                        ? Text(
                            loginController.errorMessage.value,
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        : SizedBox.shrink();
                  }),
                  SizedBox(height: 20),
                  TextField(
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
                  SizedBox(height: 20),
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
                  SizedBox(height: 20),
                  Center(
                      child: BottomButtonWidget(
                          text: 'Continuar',
                          onPressed: () => {},
                          disabled: loginController.isFormInvalid)),
                  SizedBox(height: 20),
                  Text(
                    'Ainda não tem cadastro?',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Navegar para a página de cadastro
                    },
                    child: Text(
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
        ],
      ),
    );
  }
}
