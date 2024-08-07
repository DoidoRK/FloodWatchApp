import 'package:flood_watch_app/app/controllers/register_login_controller.dart';
import 'package:flood_watch_app/app/ui/widgets/bottom_button_widget.dart';
import 'package:flood_watch_app/app/ui/widgets/custom_scaffold_widget.dart';
import 'package:flutter/material.dart';
import 'package:flood_watch_app/app/theme/app_theme.dart';
import 'package:get/get.dart';

class RegisterInitialPageLogin extends StatelessWidget {
  final RegisterLoginController registerController = Get.put(RegisterLoginController());

  RegisterInitialPageLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffoldWidget(
      title: "Login",
      onBack: registerController.onBack,
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
                  onChanged: (value) => registerController.setCpf(value),
                  decoration: InputDecoration(
                    labelText: 'CPF',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Obx(() => TextField(
                      obscureText: registerController.obscureText.value,
                      onChanged: (value) => registerController.setSenha(value),
                      decoration: InputDecoration(
                        labelText: 'Senha',
                        suffixIcon: IconButton(
                          icon: Icon(
                            registerController.obscureText.value
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: appThemeData.primaryColor,
                          ),
                          onPressed: () {
                            registerController.toggleObscureText();
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
                    value: registerController.isChecked.value,
                    onChanged: (bool? newValue) {
                      registerController.setChecked(newValue ?? false);
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
              child: BottomButtonWidget(text: 'Continuar', onPressed: registerController.onNext, disabled: registerController.isFormInvalid),
            ),
          ],
        ),
      )
    );
  }
}


