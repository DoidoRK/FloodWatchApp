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
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.chevron_left,),
          onPressed: () {
            Get.offNamed('/cadastro2');
          },
        ),
        title: const Text(
          'Cadastro',
        ),
      ),
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 32),
        child: SingleChildScrollView(
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
                        obscureText: cadastroController.obscureText.value,
                        onChanged: (value) => cadastroController.setSenha(value),
                        decoration: InputDecoration(
                          labelText: 'Senha',
                          labelStyle:
                              TextStyle(color: appThemeData.primaryColor),
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
                      const SizedBox(height: 100),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Obx(
                    () => Checkbox(
                      value: cadastroController.isChecked.value,
                      onChanged: (bool? newValue) {
                        cadastroController.setChecked(newValue ?? false);
                      },
                    ),
                  ),
                  const SizedBox(width: 10), // Espaçamento entre a checkbox e o texto
                  Text(
                    'Ao marcar a checkbox, você estará concordando com os termos de uso',
                    style: TextStyle(
                      color: appThemeData.primaryColor, // Altere para a cor desejada
                    ),
                  ),
                ],
              ),


              const SizedBox(height: 160),
              Center(
                child: BottomButtonWidget(text: 'Continuar', onPressed: ()=>{}, disabled: cadastroController.isFormInvalid),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
