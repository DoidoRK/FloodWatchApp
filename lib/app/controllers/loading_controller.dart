import 'package:get/get.dart';
//import 'package:flutter/material.dart';

class LoadingController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    _navigateToNextPage();
  }

  void _navigateToNextPage() async {
    // Simular um atraso para mostrar a tela de carregamento
    await Future.delayed(Duration(seconds: 5));

    // Navegar para a tela principal (ou qualquer outra tela desejada)
    Get.offNamed('/login');
  }
}
