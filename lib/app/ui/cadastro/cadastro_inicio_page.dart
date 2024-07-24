import 'package:flood_watch_app/app/controllers/cadastro_controller.dart';
import 'package:flood_watch_app/app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CadastroPage extends StatelessWidget {
  final CadastroController cadastroController = Get.put(CadastroController());

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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                border: OutlineInputBorder(),
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
            const SizedBox(height: 20),
            Center(
              child: FilledButton(
                onPressed: () {
                  if (cadastroController.isFormValid()) {
                  } else {
                    Get.snackbar('Erro', 'Preencha todos os campos');
                  }
                },
                child: const Text('Continuar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
