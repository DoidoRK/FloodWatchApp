import 'package:get/get.dart';

class LoadingController extends GetxController {

// final MyRepository repository;
// LoadingController(this.repository);
LoadingController();

  final _obj = ''.obs;
  set obj(value) => this._obj.value = value;
  get obj => this._obj.value;
}