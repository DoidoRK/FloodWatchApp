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
    await Future.delayed(const Duration(seconds: 2));

    // Navegar para a tela principal (ou qualquer outra tela desejada)
    Get.offAllNamed('/home');
  }
}
