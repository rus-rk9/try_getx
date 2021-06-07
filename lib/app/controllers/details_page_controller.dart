import 'package:get/get.dart';

class DetailsPageController extends GetxController {
  // DetailsPageController() : assert(repository != null);
  DetailsPageController();

  final _obj = ''.obs;
  set obj(value) => this._obj.value = value;
  get obj => this._obj.value;
}
