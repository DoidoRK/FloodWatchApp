import 'package:get/get.dart';

class HomeController extends GetxController {

// final MyRepository repository;
// HomeController(this.repository);
HomeController();

  final _obj = ''.obs;
  set obj(value) => this._obj.value = value;
  get obj => this._obj.value;
}