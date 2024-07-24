import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    _navigateToNextPage();
  }

  void _navigateToNextPage() async {
    // Simular um atraso para mostrar a tela de splash
    await Future.delayed(const Duration(seconds: 1));

    // Navegar para a tela de loading
    Get.toNamed('/loading');
  }
}
