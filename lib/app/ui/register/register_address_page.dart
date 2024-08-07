import 'package:flood_watch_app/app/controllers/register_address_controller.dart';
import 'package:flood_watch_app/app/ui/widgets/bottom_button_widget.dart';
import 'package:flood_watch_app/app/ui/widgets/custom_scaffold_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterAddressPage extends StatelessWidget {
  final RegisterAddressController registerController =
      Get.put(RegisterAddressController());

  RegisterAddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffoldWidget(
      title: "Endereço",
      onBack: registerController.onBack,
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
                    onChanged: (value) => registerController.setCep(value),
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
                    items: registerController.stateNames.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (value) => registerController.setCep(value.toString()), // Desabilitado
                    disabledHint: const Text('RS'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
          Column(
            children: [
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Cidade',
                  border: OutlineInputBorder(),
                ),
                enabled: false,
                onChanged: (value) => registerController.setCidade(value),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Bairro',
                  border: OutlineInputBorder(),
                ),
                enabled: false,
                onChanged: (value) => registerController.setBairro(value),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Rua',
                  border: OutlineInputBorder(),
                ),
                enabled: false,
                onChanged: (value) => registerController.setRua(value),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Complemento',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) => registerController.setComplemento(value),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Número',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                onChanged: (value) => registerController.setNumero(value),
              ),
            ],
          ),
          const SizedBox(height: 48),
          Center(
            child: BottomButtonWidget(
                text: 'Continuar',
                onPressed: registerController.onNext,
                disabled: registerController.isFormInvalid),
          ),
        ],
      ),
    );
  }
}