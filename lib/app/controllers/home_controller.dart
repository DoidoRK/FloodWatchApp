import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class HomeController extends GetxController {
  var currentIndex = 1.obs;

  void changePage(int index) {
    currentIndex.value = index;
  }
}