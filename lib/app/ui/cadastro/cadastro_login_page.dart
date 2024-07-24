import 'package:flood_watch_app/app/controllers/cadastro_login_controller.dart';
import 'package:flood_watch_app/app/ui/widgets/bottom_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flood_watch_app/app/theme/app_theme.dart';
import 'package:get/get.dart';

class CadastroPageLogin extends StatelessWidget {
  final CadastroLoginController cadastroController = Get.put(CadastroLoginController());

  CadastroPageLogin({super.key});

  @override
  Widget build(BuildContext context) {
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
                      onPressed: cadastroController.onBack,
                    ),
                  ),
                  // Texto "FloodWatch" dentro do Container azul
                  const Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(top: 90.0),
                      child: Text(
                        'Login',
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const SizedBox(height: 20),
                          TextField(
                            keyboardType: TextInputType.datetime,
                            onChanged: (value) => cadastroController.setCpf(value),
                            decoration: InputDecoration(
                              labelText: 'CPF',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Obx(() => TextField(
                                obscureText: cadastroController.obscureText.value,
                                onChanged: (value) => cadastroController.setSenha(value),
                                decoration: InputDecoration(
                                  labelText: 'Senha',
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      cadastroController.obscureText.value
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                      color: appThemeData.primaryColor,
                                    ),
                                    onPressed: () {
                                      cadastroController.toggleObscureText();
                                    },
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              )),
                              const SizedBox(height: 100),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Obx(
                            () => Checkbox(
                              value: cadastroController.isChecked.value,
                              onChanged: (bool? newValue) {
                                cadastroController.setChecked(newValue ?? false);
                              },
                            ),
                          ),
                          const SizedBox(width: 16), // Espaçamento entre a checkbox e o texto
                          const SizedBox(
                            width: 240,
                            height: 80,
                            child: Text.rich(
                              TextSpan(
                                text: 'Ao marcar a checkbox, você estará concordando com os ', // primeira parte
                                children: [
                                  TextSpan(
                                    text: 'termos de uso', // segunda parte
                                    style: TextStyle(
                                      decoration: TextDecoration.underline,
                                      decorationColor: Colors.blueAccent,
                                      color: Colors.blueAccent,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '.', // terceira parte
                                  ),
                                ],
                              ),
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 160),
                      Center(
                        child: BottomButtonWidget(text: 'Continuar', onPressed: cadastroController.onNext, disabled: cadastroController.isFormInvalid),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}