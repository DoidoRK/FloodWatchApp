import 'package:flood_watch_app/app/controllers/cadastro_controller.dart';
import 'package:flood_watch_app/app/ui/widgets/bottom_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CadastroPage extends StatelessWidget {
  final CadastroController cadastroController = Get.put(CadastroController());

  CadastroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.chevron_left,),
          onPressed: () {
            Get.back();
          },
        ),
        title: const Text(
          'Cadastro',
        ),
      ),
      body:Stack(
        children: [
          Container(
            color: Colors.blueAccent,
          ),
           Container(
            height: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const SizedBox(height: 48),
                    const Text(
                      'Bem-vindo ao FloodWatch!\nPara se cadastrar, preencha os campos e clique em continuar',
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      decoration: const InputDecoration(
                        labelText: 'Nome',
                        border: OutlineInputBorder(),
                      ),
                      onChanged: (value) => cadastroController.setNome(value),
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      decoration: const InputDecoration(
                        labelText: 'Número de telefone',
                      ),
                      keyboardType: TextInputType.phone,
                      onChanged: (value) => cadastroController.setTelefone(value),
                    ),
                    const SizedBox(height: 16),
                    TextField(
                      decoration: const InputDecoration(
                        labelText: 'Data de nascimento',
                        border: OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.datetime,
                      onChanged: (value) => cadastroController.setDataNascimento(value),
                    ),
                    const SizedBox(height: 160),
                    BottomButtonWidget(text: 'Continuar', onPressed: ()=>{}, disabled: cadastroController.isFormInvalid),
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