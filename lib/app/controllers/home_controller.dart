import 'package:get/get.dart';

class HomeController extends GetxController {
  var user = null;
  var currentIndex = 1.obs;

  void changePage(int index) {
    currentIndex.value = index;
    if(index == 0)  //Verifica se é o perfil
    {
      //Verificar se o usuário está logado
      //Se ele tiver logado, redireciona para widget de perfil.
      //Se não, abre a página de login e seta index para 1.
    }
  }
}