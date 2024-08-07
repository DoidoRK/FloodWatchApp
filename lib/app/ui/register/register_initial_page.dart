import 'package:flood_watch_app/app/controllers/register_controller.dart';
import 'package:flood_watch_app/app/ui/widgets/bottom_button_widget.dart';
import 'package:flood_watch_app/app/ui/widgets/custom_scaffold_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterInitialPage extends StatelessWidget {
  final RegisterController cadastroController = Get.put(RegisterController());

  RegisterInitialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffoldWidget(
      title: "Cadastro",
      onBack: cadastroController.onBack,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          const Text(
            'Bem-vindo ao FloodWatch!\nPara se cadastrar, preencha os campos e clique em continuar',
          ),
          const SizedBox(height: 20),
          TextField(
            decoration: const InputDecoration(
              labelText: 'Nome',
              border: OutlineInputBorder(),
            ),
            onChanged: (value) => cadastroController.setNome(value),
          ),
          const SizedBox(height: 20),
          TextField(
            decoration: const InputDecoration(
              labelText: 'Número de telefone',
            ),
            keyboardType: TextInputType.phone,
            onChanged: (value) => cadastroController.setTelefone(value),
          ),
          const SizedBox(height: 20),
          TextField(
            decoration: const InputDecoration(
              labelText: 'Data de nascimento',
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.datetime,
            onChanged: (value) => cadastroController.setDataNascimento(value),
          ),
          const SizedBox(height: 160),
          Center(
            child: BottomButtonWidget(text: 'Continuar', onPressed: cadastroController.onNext, disabled: cadastroController.isFormInvalid),
          ),
        ],
      ),
    );
  }
}