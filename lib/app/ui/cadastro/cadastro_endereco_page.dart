import 'package:flood_watch_app/app/controllers/cadastro_endereco_controller.dart';
import 'package:flood_watch_app/app/ui/widgets/bottom_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CadastroPageEndereco extends StatelessWidget {
  final CadastroEnderecoController cadastroController =
      Get.put(CadastroEnderecoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.chevron_left,
          ),
          onPressed: () {
            Get.offNamed('/cadastro');
          },
        ),
        title: const Text(
          'Cadastro',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 32),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: const InputDecoration(
                          labelText: 'Cep',
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (value) => cadastroController.setCep(value),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      
                      flex: 1,
                      child: DropdownButtonFormField<String>(
                        decoration: const InputDecoration(
                          labelText: 'Estado',
                          border: OutlineInputBorder(),
                        ),
                        items: [
                          DropdownMenuItem(value: 'SP', child: Text('São Paulo')),
                          DropdownMenuItem(value: 'RJ', child: Text('Rio de Janeiro')),
                          // Adicione mais itens conforme necessário
                        ],
                        onChanged: null, // Desabilitado
                        disabledHint: Text('RS'),
                      
                      ),
                    ),
                  ],
                ),
                 SizedBox(height: 20),
              Column(
                children: [
                  TextField(
                    decoration: const InputDecoration(
                      labelText: 'Cidade',
                      border: OutlineInputBorder(),
                    ),
                    enabled: false,
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    decoration: const InputDecoration(
                      labelText: 'Bairro',
                      border: OutlineInputBorder(),
                    ),
                    enabled: false,
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    decoration: const InputDecoration(
                      labelText: 'Rua',
                      border: OutlineInputBorder(),
                    ),
                    enabled: false,
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    decoration: const InputDecoration(
                      labelText: 'Complemento',
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) => cadastroController.setComplemento(value),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    decoration: const InputDecoration(
                      labelText: 'Número',
                      border: OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: (value) => cadastroController.setNumero(value),
                  ),
                ],
              ),
              const SizedBox(height: 160),
              Center(
                child: BottomButtonWidget(
                    text: 'Continuar',
                    onPressed: () => {Get.offNamed('/cadastro3')},
                    disabled: cadastroController.isFormInvalid),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
