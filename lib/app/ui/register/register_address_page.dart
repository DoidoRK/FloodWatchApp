import 'package:flood_watch_app/app/controllers/register_address_controller.dart';
import 'package:flood_watch_app/app/ui/widgets/bottom_button_widget.dart';
import 'package:flood_watch_app/app/ui/widgets/custom_scaffold_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterAddressPage extends StatelessWidget {
  final RegisterAddressController cadastroController =
      Get.put(RegisterAddressController());

  List<DropdownMenuItem<String>> statesDropDownItems = [
    const DropdownMenuItem(value: 'AC', child: Text('AC')),
    const DropdownMenuItem(value: 'AL', child: Text('AL')),
    const DropdownMenuItem(value: 'AP', child: Text('AP')),
    const DropdownMenuItem(value: 'AM', child: Text('AM')),
    const DropdownMenuItem(value: 'BA', child: Text('BA')),
    const DropdownMenuItem(value: 'CE', child: Text('CE')),
    const DropdownMenuItem(value: 'DF', child: Text('DF')),
    const DropdownMenuItem(value: 'ES', child: Text('ES')),
    const DropdownMenuItem(value: 'GO', child: Text('GO')),
    const DropdownMenuItem(value: 'MA', child: Text('MA')),
    const DropdownMenuItem(value: 'MT', child: Text('MT')),
    const DropdownMenuItem(value: 'MS', child: Text('MS')),
    const DropdownMenuItem(value: 'MG', child: Text('MG')),
    const DropdownMenuItem(value: 'PA', child: Text('PA')),
    const DropdownMenuItem(value: 'PB', child: Text('PB')),
    const DropdownMenuItem(value: 'PR', child: Text('PR')),
    const DropdownMenuItem(value: 'PE', child: Text('PE')),
    const DropdownMenuItem(value: 'PI', child: Text('PI')),
    const DropdownMenuItem(value: 'RJ', child: Text('RJ')),
    const DropdownMenuItem(value: 'RN', child: Text('RN')),
    const DropdownMenuItem(value: 'RS', child: Text('RS')),
    const DropdownMenuItem(value: 'RO', child: Text('RO')),
    const DropdownMenuItem(value: 'RR', child: Text('RR')),
    const DropdownMenuItem(value: 'SC', child: Text('SC')),
    const DropdownMenuItem(value: 'SP', child: Text('SP')),
    const DropdownMenuItem(value: 'SE', child: Text('SE')),
    const DropdownMenuItem(value: 'TO', child: Text('TO')),
  ];

  RegisterAddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffoldWidget(
      title: "Endereço",
      onBack: cadastroController.onBack,
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
                    items: statesDropDownItems,
                    onChanged: (value) => cadastroController.setCep(value.toString()), // Desabilitado
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
                onChanged: (value) => cadastroController.setCidade(value),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Bairro',
                  border: OutlineInputBorder(),
                ),
                enabled: false,
                onChanged: (value) => cadastroController.setBairro(value),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: const InputDecoration(
                  labelText: 'Rua',
                  border: OutlineInputBorder(),
                ),
                enabled: false,
                onChanged: (value) => cadastroController.setRua(value),
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
          const SizedBox(height: 48),
          Center(
            child: BottomButtonWidget(
                text: 'Continuar',
                onPressed: cadastroController.onNext,
                disabled: cadastroController.isFormInvalid),
          ),
        ],
      ),
    );
  }
}