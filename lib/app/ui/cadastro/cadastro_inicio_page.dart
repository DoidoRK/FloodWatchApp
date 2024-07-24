import 'package:flood_watch_app/app/controllers/cadastro_controller.dart';
import 'package:flood_watch_app/app/theme/app_theme.dart';
import 'package:flood_watch_app/app/ui/widgets/bottom_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CadastroPage extends StatelessWidget {
  final CadastroController cadastroController = Get.put(CadastroController());

  CadastroPage({super.key});

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
                      onPressed: () => cadastroController.onBack(),
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
                      child: BottomButtonWidget(text: 'Continuar', onPressed: ()=>{Get.offNamed('/cadastro2')}, disabled: cadastroController.isFormInvalid),
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