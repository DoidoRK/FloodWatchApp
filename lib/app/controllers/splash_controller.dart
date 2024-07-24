import 'package:get/get.dart';
//import 'package:flutter/material.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    _navigateToNextPage();
  }

  void _navigateToNextPage() async {
    // Simular um atraso para mostrar a tela de splash
    await Future.delayed(Duration(seconds: 3));

    // Navegar para a tela de loading
    Get.offNamed('/loading');
  }
}
