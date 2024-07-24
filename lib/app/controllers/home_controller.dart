import 'package:flood_watch_app/app/controllers/user_controller.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final UserController userController = Get.find<UserController>();
  var currentIndex = 1.obs;

  void changePage(int index) {
    currentIndex.value = index;
    if(index == 0)  //Verifica se é o perfil
    {
      if(!userController.isLogged.value){
        Get.toNamed('/login');
        currentIndex.value = 1;
      }
    }
  }
}